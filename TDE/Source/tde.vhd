--/////////////////////////////////////////////////////////////////////////////////
--//                                                                             //
--//    Copyright (c) 2020  Daniel Gutierrez-Galan                               //
--//                                                                             //
--//    This file is part of the TDE_vhdl project.                               //
--//                                                                             //
--//    TDE_vhdl is free software: you can redistribute it and/or modify         //
--//    it under the terms of the GNU General Public License as published by     //
--//    the Free Software Foundation, either version 3 of the License, or        //
--//    (at your option) any later version.                                      //
--//                                                                             //
--//    THE_vhdl is distributed in the hope that it will be useful,              //
--//    but WITHOUT ANY WARRANTY; without even the implied warranty of           //
--//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.See the              //
--//    GNU General Public License for more details.                             //
--//                                                                             //
--//    You should have received a copy of the GNU General Public License        //
--//    along with TDE_vhdl. If not, see <http://www.gnu.org/licenses/>.         //
--//                                                                             //
--/////////////////////////////////////////////////////////////////////////////////

-------------------------------------------------------------------------------
-- Title      : tde
-- Project    : TDE_vhdl
-------------------------------------------------------------------------------
-- File       : tde.vhd
-- Author     : Daniel Gutierrez-Galan (dgutierrez@atc.us.es)
-- Company    : University of Seville
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
        g_NBITS              : integer range 0 to 32 := 16;                       -- Number of bits of the input data
        g_LOG2NBITS          : integer range 0 to 5  := 4;                        -- Log2(NBITS)
        g_SPIKEGEN_METHOD    : integer range 0 to 1  := 0;                        -- Spike generation method: 0--> Bitwise, 1-->modulus
        g_TWO_POW_NBITS_DATA : integer               := 65536                     -- 2^g_NBITS
    );         
    port (
        i_clock              : in  std_logic;                                     -- Main clock
        i_nreset             : in  std_logic;                                     -- Asynchronous reset (active low)
        i_tr_tick            : in  std_logic;                                     -- Time resolution tick
        i_mode               : in  std_logic;                                     -- Mode of the TDE (0--> Normal, 1--> Inverted)
        i_facilitatory       : in  std_logic;                                     -- Facilitatory input
        i_trigger            : in  std_logic;                                     -- Trigger input
        i_tau                : in  std_logic_vector((g_LOG2NBITS - 1) downto 0);  -- Tau value
        i_weight             : in  std_logic_vector((g_LOG2NBITS - 1) downto 0);  -- Weight value
        i_decay              : in  std_logic_vector((g_LOG2NBITS - 1) downto 0);  -- Decay value
        i_detection_time     : in  std_logic_vector((g_NBITS - 1) downto 0);      -- Detection
        i_faci_sat_value     : in  std_logic_vector((g_NBITS - 1) downto 0);      -- Facilitation timer saturation
        i_trig_sat_value     : in  std_logic_vector((g_NBITS - 1) downto 0);      -- Trigger timer saturation
        o_output_spike       : out std_logic                                      -- Output spike
    );  

end entity tde;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture Structural of tde is
 
    ---------------------------------------------------------------------------
    -- Signals declaration
    ---------------------------------------------------------------------------
    signal w_trigger      : std_logic;  -- Trigger signal
    signal w_facilitation : std_logic;  -- Facilitation signal

    signal w_detection_time_value_weighted                      : std_logic_vector((g_NBITS - 1) downto 0);  -- Detection time value weighted
    signal w_facilitation_timer_value                           : std_logic_vector((g_NBITS - 1) downto 0);  -- Current value of the facilitation timer
    signal w_facilitation_timer_value_weighted                  : std_logic_vector((g_NBITS - 1) downto 0);  -- Current value of the facilitation timer weighted
    signal w_facilitation_timer_value_to_trigger_timer_weighted : std_logic_vector((g_NBITS - 1) downto 0);  -- Current value of the facilitation timer weighted
    signal w_value_to_generate                                  : std_logic_vector((g_NBITS - 1) downto 0);  -- Value to generate in the spike generator
    signal w_value_to_generate_inverted                         : std_logic_vector((g_NBITS - 1) downto 0);  -- Inverted value to generate in the spike generator
    signal w_value_to_generate_mux                              : std_logic_vector((g_NBITS - 1) downto 0);  -- Muxed value to generate in the spike generator

    signal w_trigger_timer_value         : std_logic_vector((g_NBITS - 1) downto 0);  -- Current value of the trigger timer
    signal w_trigger_timer_value_shifted : std_logic_vector((g_NBITS - 1) downto 0);  -- Clock divisor value of the spike generator
    
    signal w_sgen_clkdiv_ref_value     : std_logic_vector((g_NBITS - 1) downto 0);  -- Registered clkdiv value used as reference
    signal w_sgen_clkdiv_current_value : std_logic_vector((g_NBITS - 1) downto 0);  -- Registered clkdiv current value
    signal w_sgen_val2gen_feedback     : std_logic_vector((g_NBITS - 1) downto 0);  -- Registered value to generate
    signal w_clkdiv_value              : std_logic_vector((g_NBITS - 1) downto 0);  -- Registered clkdiv valid value
    signal w_clkdiv_value_mux          : std_logic_vector((g_NBITS - 1) downto 0);  -- Registered clkdiv mux output value
    signal w_clkdiv_clear              : std_logic;                                 -- Clear signal to disable the spike generator
    signal w_sgen_val2gen_clear        : std_logic;                                 -- Clear signal to the register which store the last loaded value into the sgen
    
    signal r_trigger_latched : std_logic;  -- Latch

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
            i_clock            : in  std_logic;
            i_nreset           : in  std_logic;
            i_tr_tick          : in  std_logic;
            i_start            : in  std_logic;
            i_initial_value    : in  std_logic_vector((g_NBITS - 1) downto 0);
            i_saturation_value : in  std_logic_vector((g_NBITS - 1) downto 0);  
            o_current_value    : out std_logic_vector((g_NBITS - 1) downto 0);
            o_timeout          : out std_logic
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
    -- Spikes generator unsigned bitwise
    --
    component spikes_generator_unsigned_bw is
        generic (
            g_NBITS_DATA         : integer range 0 to 32 := 16;
            g_METHOD             : integer range 0 to 1  := 0;
            g_TWO_POW_NBITS_DATA : integer               := 65536
        );
        port (
            i_clock           : in  std_logic;
            i_nreset          : in  std_logic;
            i_genfreq_divisor : in  std_logic_vector((g_NBITS_DATA - 1) downto 0);
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

    ---------------------------------------------------------------------------
    -- Components instantiation
    ---------------------------------------------------------------------------
    w_facilitation <= i_facilitatory;
    w_trigger      <= i_trigger;
    
    --
    -- Facilitation timer
    --
    timer_0: timer
        generic map (
            g_NBITS            => g_NBITS
        )
        port map (
            i_clock            => i_clock,
            i_nreset           => i_nreset,
            i_tr_tick          => i_tr_tick,
            i_start            => w_facilitation,
            i_initial_value    => i_detection_time,
            i_saturation_value => i_faci_sat_value,
            o_current_value    => w_facilitation_timer_value,
            o_timeout          => w_sgen_val2gen_clear
        );

    --
    -- Weight the value to be loaded into the trigger timer
    --
    shift_0: shift_register
        generic map (
            g_NBITS         => g_NBITS,
            g_LOG2NBITS     => g_LOG2NBITS
        )
        port map (
            i_data_in       => w_facilitation_timer_value,
            o_data_out      => w_facilitation_timer_value_to_trigger_timer_weighted,
            i_left_right    => '0',
            i_num_positions => i_tau
        );

    --
    -- Weight the value to be used as input of the spike_gen input
    --
    shift_1: shift_register
        generic map (
            g_NBITS         => g_NBITS,
            g_LOG2NBITS     => g_LOG2NBITS
        )
        port map (
            i_data_in       => w_facilitation_timer_value,
            o_data_out      => w_facilitation_timer_value_weighted,
            i_left_right    => '0',
            i_num_positions => i_weight
        );

    --
    -- Reference shifted detection time
    --
    shift_3: shift_register
        generic map (
            g_NBITS         => g_NBITS,
            g_LOG2NBITS     => g_LOG2NBITS
        )
        port map (
            i_data_in       => i_detection_time,
            o_data_out      => w_detection_time_value_weighted,
            i_left_right    => '0',
            i_num_positions => i_weight
        );

    --
    -- Spikes generator clk_div value computation
    --
    sub_1: subtractor
        generic map (
            g_NBITS        => g_NBITS
        )
        port map (
            i_input_data_a => w_detection_time_value_weighted,
            i_input_data_b => w_value_to_generate,
            o_output_data  => w_value_to_generate_inverted
        );

    --
    -- Value to generate feedback adder
    --
    add_0: adder
        generic map (
            g_NBITS        => g_NBITS
        )
        port map (
            i_input_data_a => w_facilitation_timer_value_weighted,
            i_input_data_b => w_sgen_val2gen_feedback,
            o_output_data  => w_value_to_generate
        );

    --
    -- Value to generate register
    --
    reg_0: generic_register
        generic map (
            g_NBITS    => g_NBITS
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
    -- Trigger timer
    --
    timer_1: timer
        generic map (
            g_NBITS            => g_NBITS
            )
        port map (
            i_clock            => i_clock,
            i_nreset           => i_nreset,
            i_tr_tick          => i_tr_tick,
            i_start            => w_trigger,
            i_initial_value    => w_facilitation_timer_value_to_trigger_timer_weighted,
            i_saturation_value => i_trig_sat_value,
            o_current_value    => w_trigger_timer_value,
            o_timeout          => w_clkdiv_clear
        );
    
    --
    -- Trigger signal latch
    --
    process(i_clock)
    begin
        if i_clock'event and i_clock = '1' then
            r_trigger_latched <= w_trigger;
        end if;
    end process;

    --
    -- Weight the jump of the decay
    --
    shift_2: shift_register
        generic map (
            g_NBITS         => g_NBITS,
            g_LOG2NBITS     => g_LOG2NBITS
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
    reg_1: generic_register
        generic map (
            g_NBITS    => g_NBITS
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
    -- Trigger timer shifted value latched
    --
    process(i_clock)
    begin
        if i_clock'event and i_clock = '1' then
            w_sgen_clkdiv_current_value <= w_trigger_timer_value_shifted;
        end if;
    end process;

    --
    -- Spikes generator clk_div value computation
    --
    sub_0: subtractor
        generic map (
            g_NBITS        => g_NBITS
        )
        port map (
            i_input_data_a => w_sgen_clkdiv_ref_value,
            i_input_data_b => w_sgen_clkdiv_current_value,
            o_output_data  => w_clkdiv_value
        );
    
    --
    -- Multiplexer
    --
    w_clkdiv_value_mux      <= w_clkdiv_value when (i_mode = '0') else w_sgen_clkdiv_current_value;
    w_value_to_generate_mux <= w_value_to_generate when (i_mode = '0') else w_value_to_generate_inverted;
    
        
    --
    -- Spikes generator
    --
    spike_generator_0: spikes_generator_unsigned_bw
        generic map (
            g_NBITS_DATA         => g_NBITS,
            g_METHOD             => g_SPIKEGEN_METHOD,
            g_TWO_POW_NBITS_DATA => g_TWO_POW_NBITS_DATA
        )
        port map (
            i_clock              => i_clock,
            i_nreset             => i_nreset,
            i_genfreq_divisor    => w_clkdiv_value_mux,--w_clkdiv_value,
            i_data_in            => w_value_to_generate_mux,--w_value_to_generate,
            i_write              => r_trigger_latched,
            i_clear              => w_clkdiv_clear,
            o_spike_out          => o_output_spike
        );

    --
    --
    --
    
end architecture Structural;
