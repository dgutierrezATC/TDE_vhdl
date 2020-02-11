-------------------------------------------------------------------------------
-- Title      : TDE project
-- Project    : 
-------------------------------------------------------------------------------
-- File       : tde.vhd
-- Author     :   <dgutierrez@DESKTOP-16SBGVD>
-- Company    : 
-- Created    : 2020-01-20
-- Last update: 2020-02-10
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: Main module
-------------------------------------------------------------------------------
-- Copyright (c) 2020 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-01-20  1.0      dgutierrez	Created
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Libraries
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------
entity tde is

    generic (
        g_NBITS     : integer range 0 to 32 := 16;          -- Number of bits of the input data
        g_LOG2NBITS : integer range 0 to 5  := 4  -- Log2 of the NBITS
    );         
    port (
        i_clock          : in  std_logic;   -- Main clock
        i_nreset         : in  std_logic;   -- Asynchronous reset (active low)
        i_tr_tick        : in  std_logic;   -- Time resolution tick
        i_facilitatory   : in  std_logic;   -- Facilitatory input
        i_trigger        : in  std_logic;   -- Trigger input
        i_weight         : in  std_logic_vector((g_LOG2NBITS - 1) downto 0);   -- Weight value
        i_decay          : in  std_logic_vector((g_LOG2NBITS - 1) downto 0);   -- Decay value
        i_detection_time : in  std_logic_vector((g_NBITS - 1) downto 0);  -- Detection
        o_output_spike   : out std_logic    -- Output spike
    );  

end entity tde;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture Structural of tde is
 
    ---------------------------------------------------------------------------
    -- Signals declaration
    ---------------------------------------------------------------------------
    signal w_trigger : std_logic;       -- Trigger signal
    signal w_facilitation : std_logic;  -- Facilitation signal

    signal w_facilitation_timer_value : std_logic_vector((g_NBITS - 1) downto 0);  -- Current value of the facilitation timer
    signal w_facilitation_timer_value_weighted : std_logic_vector((g_NBITS - 1) downto 0);  -- Current value of the facilitation timer weighted
    signal w_value_to_generate : std_logic_vector((g_NBITS - 1) downto 0);  -- Value to generate in the spike generator
    
    signal w_trigger_timer_value : std_logic_vector((g_NBITS - 1) downto 0);  -- Current value of the trigger timer
    signal w_trigger_timer_value_shifted : std_logic_vector((g_NBITS - 1) downto 0);  -- Clock divisor value of the spike generator
    
    signal w_sgen_clkdiv_ref_value : std_logic_vector((g_NBITS - 1) downto 0);  -- Registered clkdiv value used as reference
    signal w_sgen_clkdiv_current_value : std_logic_vector((g_NBITS - 1) downto 0);  -- Registered clkdiv current value
    signal w_sgen_val2gen_feedback : std_logic_vector((g_NBITS - 1) downto 0);  -- Registered value to generate
    signal w_clkdiv_value : std_logic_vector((g_NBITS - 1) downto 0);  -- Registered clkdiv valid value
    signal w_clkdiv_clear : std_logic; -- Clear signal to disable the spike generator
    signal w_sgen_val2gen_clear : std_logic; -- Clear signal to the register which store the last loaded value into the sgen
    constant c_all_zeros : std_logic_vector((g_NBITS - 1) downto 0) := (others => '0'); -- All zeros register
    
    signal r_trigger_latched : std_logic; -- Latch

    ---------------------------------------------------------------------------
    -- Components declaration
    ---------------------------------------------------------------------------
    
    --
    -- Timer
    --
    component timer is
        generic (
            g_NBITS : integer range 0 to 32 := 16
        );
        port (
            i_clock         : in  std_logic;
            i_nreset        : in  std_logic;
            i_tr_tick       : in  std_logic;
            i_start         : in  std_logic;
            i_initial_value : in  std_logic_vector((g_NBITS - 1) downto 0);
            o_current_value : out std_logic_vector((g_NBITS - 1) downto 0)
        );
    end component timer;

    --
    -- Barrel Shifter
    --
    component shift_register is
        generic (
            g_NBITS     : integer range 0 to 32 := 16;
            g_LOG2NBITS : integer range 0 to 5  := 4
        );
        port (
            i_data_in       : in  std_logic_vector((g_NBITS - 1) downto 0);
            o_data_out      : out std_logic_vector((g_NBITS - 1) downto 0);
            i_left_right    : in  std_logic;
            i_num_positions : in  std_logic_vector((g_LOG2NBITS - 1) downto 0)
        );
    end component shift_register;

    --
    -- Generic register
    --
    component generic_register is
        generic (
            g_NBITS : integer range 0 to 32 := 16
        );
        port (
            i_clock    : in  std_logic;
            i_nreset   : in  std_logic;
            i_data_in  : in  std_logic_vector((g_NBITS - 1) downto 0);
            i_load     : in  std_logic;
            i_clear    : in  std_logic;
            o_data_out : out std_logic_vector((g_NBITS - 1) downto 0)
        );
    end component generic_register;

    --
    -- Adder
    --
    component adder is
        generic (
            g_NBITS : integer range 0 to 32 := 16
        );
        port (
            i_input_data_a : in  std_logic_vector((g_NBITS - 1) downto 0);
            i_input_data_b : in  std_logic_vector((g_NBITS - 1) downto 0);
            o_output_data  : out std_logic_vector((g_NBITS - 1) downto 0)
        );
    end component adder;

    --
    -- Subtractor
    --
    component subtractor is
        generic (
            g_NBITS : integer range 0 to 32 := 16
        );
        port (
            i_input_data_a : in  std_logic_vector((g_NBITS - 1) downto 0);
            i_input_data_b : in  std_logic_vector((g_NBITS - 1) downto 0);
            o_output_data  : out std_logic_vector((g_NBITS - 1) downto 0)
        );
    end component subtractor;
    
    --
    -- Comparator
    --
    component comparator is
        generic (
            g_NBITS : integer range 0 to 32 := 16
        );
        port (
            i_input_a : in  std_logic_vector((g_NBITS - 1) downto 0);
            i_input_b : in  std_logic_vector((g_NBITS - 1) downto 0);
            o_equal   : out std_logic
        );
    end component comparator;
    
    --
    -- Spikes generator unsigned bitwise
    --
    component spikes_generator_unsigned_bw is
        generic (
            g_NBITS_DATA    : integer range 0 to 32 := 19;
            g_NBITS_FREQDIV : integer range 0 to 32 := 19
        );
        port (
            i_clock           : in  std_logic;
            i_nreset          : in  std_logic;
            i_genfreq_divisor : in  std_logic_vector((g_NBITS_FREQDIV - 1) downto 0);
            i_data_in         : in  std_logic_vector((g_NBITS_DATA-1) downto 0);
            i_write           : in  std_logic;
            i_clear           : in  std_logic;
            o_spike_out       : out std_logic
        );
    end component spikes_generator_unsigned_bw;

    --
    --
    --
    
begin  -- architecture Structural
    
    process(i_clock, i_nreset)
    begin
        if i_nreset = '0' then
            r_trigger_latched <= '0';
        elsif i_clock'event and i_clock = '1' then
            r_trigger_latched <= w_trigger;
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- Components instantiation
    ---------------------------------------------------------------------------
    w_facilitation <= i_facilitatory;
    w_trigger <= i_trigger;
    
    --
    -- Facilitation timer
    --
    faci_timer: timer
        generic map (
            g_NBITS => g_NBITS
        )
        port map (
            i_clock         => i_clock,
            i_nreset        => i_nreset,
            i_tr_tick       => i_tr_tick,
            i_start         => w_facilitation,
            i_initial_value => i_detection_time,
            o_current_value => w_facilitation_timer_value
        );

    --
    -- Weight the value to generate
    --
    sgen_value_weighter: shift_register
        generic map (
            g_NBITS     => g_NBITS,
            g_LOG2NBITS => g_LOG2NBITS
        )
        port map (
            i_data_in       => w_facilitation_timer_value,
            o_data_out      => w_facilitation_timer_value_weighted,
            i_left_right    => '0',
            i_num_positions => i_weight
            );

    --
    -- Value to generate feedback adder
    --
    sgen_value_feedback_adder: adder
        generic map (
            g_NBITS => g_NBITS
        )
        port map (
            i_input_data_a => w_facilitation_timer_value_weighted,
            i_input_data_b => w_sgen_val2gen_feedback,
            o_output_data  => w_value_to_generate
        );

    --
    -- Value to generate register
    --
    sgen_val2gen_register: generic_register
        generic map (
            g_NBITS => g_NBITS
        )
        port map (
            i_clock    => i_clock,
            i_nreset   => i_nreset,
            i_data_in  => w_value_to_generate,
            i_load     => r_trigger_latched,
            i_clear    => w_sgen_val2gen_clear,
            o_data_out => w_sgen_val2gen_feedback
        );

    --
    -- End of facilitatory timer detection
    --
    sgen_val2gen_reg_clear: comparator
    generic map (
        g_NBITS => g_NBITS
    )
    port map (
        i_input_a => w_facilitation_timer_value,
        i_input_b => c_all_zeros,
        o_equal   => w_sgen_val2gen_clear
    );
    
    --
    -- Trigger timer
    --
    trigg_timer: timer
        generic map (
            g_NBITS => g_NBITS
            )
        port map (
            i_clock         => i_clock,
            i_nreset        => i_nreset,
            i_tr_tick       => i_tr_tick,
            i_start         => w_trigger,
            i_initial_value => w_facilitation_timer_value,
            o_current_value => w_trigger_timer_value
        );


    --
    -- Weight the jump of the decay
    --
    sgen_clockdiv_weighter: shift_register
        generic map (
            g_NBITS     => g_NBITS,
            g_LOG2NBITS => g_LOG2NBITS
        )
        port map (
            i_data_in       => w_trigger_timer_value,
            o_data_out      => w_trigger_timer_value_shifted,
            i_left_right    => '0',
            i_num_positions => i_decay
        );

    --
    -- Spikes generator clk_div ref value register
    --
    sgen_clockdiv_ref_register: generic_register
        generic map (
            g_NBITS => g_NBITS
        )
        port map (
            i_clock    => i_clock,
            i_nreset   => i_nreset,
            i_data_in  => w_trigger_timer_value_shifted,
            i_load     => r_trigger_latched,
            i_clear    => '0',
            o_data_out => w_sgen_clkdiv_ref_value
        );

    --
    -- Spikes generator clk_div current value register
    --
    sgen_clockdiv_val_register: generic_register
        generic map (
            g_NBITS => g_NBITS
        )
        port map (
            i_clock    => i_clock,
            i_nreset   => i_nreset,
            i_data_in  => w_trigger_timer_value_shifted,
            i_load     => '1',
            i_clear    => '0',
            o_data_out => w_sgen_clkdiv_current_value
        );

    --
    -- Spikes generator clk_div value computation
    --
    sgen_clockdiv_sub: subtractor
        generic map (
            g_NBITS => g_NBITS
        )
        port map (
            i_input_data_a => w_sgen_clkdiv_ref_value,
            i_input_data_b => w_sgen_clkdiv_current_value,
            o_output_data  => w_clkdiv_value
        );
        
    --
    -- Comparator
    --
    sgen_clear_detection: comparator
        generic map (
            g_NBITS => g_NBITS
        )
        port map (
            i_input_a => w_trigger_timer_value_shifted,--w_sgen_clkdiv_current_value,
            i_input_b => c_all_zeros,
            o_equal   => w_clkdiv_clear
        );
    
    --
    -- Spikes generator
    --
    sgen_unsigned_bw: spikes_generator_unsigned_bw
        generic map (
            g_NBITS_DATA    => g_NBITS,
            g_NBITS_FREQDIV => g_NBITS
        )
        port map (
            i_clock           => i_clock,
            i_nreset          => i_nreset,
            i_genfreq_divisor => w_clkdiv_value,
            i_data_in         => w_value_to_generate,
            i_write           => r_trigger_latched,
            i_clear           => w_clkdiv_clear,
            o_spike_out       => o_output_spike
        );

    --
    --
    --
    
end architecture Structural;
