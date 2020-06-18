-------------------------------------------------------------------------------
-- Title      : FPGA test
-- Project    : 
-------------------------------------------------------------------------------
-- File       : fpga_test_top.vhd
-- Author     :   <dgutierrez@DESKTOP-16SBGVD>
-- Company    : 
-- Created    : 2020-05-10
-- Last update: 2020-05-10
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2020 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-05-10  1.0      dgutierrez	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use ieee.std_logic_unsigned.all;
use std.textio.all;

entity fpga_test_top is
    
    generic (
        g_NBITS              : integer := 16; -- Number of bits of the data
        g_LOG2NBITS          : integer := 4;   -- Log2 of NBITS
        g_SPIKEGEN_METHOD    : integer := 0;  -- Spike generator method selector
        g_TWO_POW_NBITS_DATA : integer := 65536          -- Result of 2^NBITS
    );
    port (
        i_clock        : in  std_logic;   -- Main clock
        i_nreset       : in  std_logic;   -- Reset
        o_output_spike : out std_logic    -- Output spikes from TDE
    );

end entity fpga_test_top;

architecture Behavioral of fpga_test_top is
    
    ---------------------------------------------------------------------------
    -- Signals declaration
    ---------------------------------------------------------------------------
    
        
    --
    -- Microseconds
    --
--     constant c_tw_tick_divisor_value : integer := 48;  -- Clock divider value trtick
    
--     constant c_tau : std_logic_vector((g_LOG2NBITS - 1) downto 0) := x"0";     -- TDE tau value
--     constant c_weight : std_logic_vector((g_LOG2NBITS - 1) downto 0) := x"4";  -- TDE weight value
--     constant c_decay : std_logic_vector((g_LOG2NBITS - 1) downto 0):= x"2";    -- TDE decay value

--     constant c_detection_time : std_logic_vector((g_NBITS - 1) downto 0) := x"02BC"; -- TDE detection value: 700 us

--     constant c_faci_sat_value : std_logic_vector((g_NBITS - 1) downto 0) := x"0300";  -- TDE faci timer sat value
--     constant c_trig_sat_value : std_logic_vector((g_NBITS - 1) downto 0) := x"0300"; --TDE trig timer sat value
    

--     constant c_facilitatory_generator_clock_divisor : integer := 50000;  -- Clock divisor value
--     constant c_trigger_generator_clock_divisor : integer := 54801;  -- Clock divisor value -> time diff = 100 us
--     constant c_stimuli_generation_clock_divisor : integer := 48007681;  -- Clock divisor value -> repetition period = 1 sec
    
    --
    -- Milliseconds ztex
    --
--    constant c_tw_tick_divisor_value : integer := 48008;  -- Clock divider value trtick
    
--    constant c_tau : std_logic_vector((g_LOG2NBITS - 1) downto 0) := x"0";  -- TDE tau value
--    constant c_weight : std_logic_vector((g_LOG2NBITS - 1) downto 0) := x"0";  -- TDE weight value
--    constant c_decay : std_logic_vector((g_LOG2NBITS - 1) downto 0):= x"3";  -- TDE decay value

--    constant c_detection_time : std_logic_vector((g_NBITS - 1) downto 0) := x"0046";  -- TDE detection value: 70 ms

--    constant c_faci_sat_value : std_logic_vector((g_NBITS - 1) downto 0) := x"0300";  -- TDE faci timer sat value
--    constant c_trig_sat_value : std_logic_vector((g_NBITS - 1) downto 0) := x"0300"; --TDE trig timer sat value
    

--    constant c_facilitatory_generator_clock_divisor : integer := 50000;  -- Clock divisor value
--    constant c_trigger_generator_clock_divisor : integer := 1488238;-- Time dif = 30 ms; 480078;  -- Clock divisor value -> time diff = 10 ms
--    constant c_stimuli_generation_clock_divisor : integer := 48007681;  -- Clock divisor value -> repetition period = 1 sec
    
    --
    -- Milliseconds node
    --
    constant c_tw_tick_divisor_value : integer := 50000;  -- Clock divider value trtick
    
    constant c_tau : std_logic_vector((g_LOG2NBITS - 1) downto 0) := x"0";  -- TDE tau value
    constant c_weight : std_logic_vector((g_LOG2NBITS - 1) downto 0) := x"0";  -- TDE weight value
    constant c_decay : std_logic_vector((g_LOG2NBITS - 1) downto 0):= x"3";  -- TDE decay value

    constant c_detection_time : std_logic_vector((g_NBITS - 1) downto 0) := x"0046";  -- TDE detection value: 70 ms

    constant c_faci_sat_value : std_logic_vector((g_NBITS - 1) downto 0) := x"0300";  -- TDE faci timer sat value
    constant c_trig_sat_value : std_logic_vector((g_NBITS - 1) downto 0) := x"0300"; --TDE trig timer sat value
    

    constant c_facilitatory_generator_clock_divisor : integer := 50000;  -- Clock divisor value
    constant c_trigger_generator_clock_divisor : integer := 1550000;-- Time dif = 30 ms; 480078;  -- Clock divisor value -> time diff = 10 ms
    constant c_stimuli_generation_clock_divisor : integer := 50000000;  -- Clock divisor value -> repetition period = 1 sec
	
	--
	--
	--

    signal w_tr_tick : std_logic;       -- Time reference tick
    signal w_facilitatory : std_logic;  -- Facilitatory
    signal w_trigger : std_logic;       -- Trigger


    ---------------------------------------------------------------------------
    -- Components declaration
    ---------------------------------------------------------------------------

    --
    -- TDE
    --
    component tde is
        generic (
            g_NBITS              : integer range 0 to 32 := 16;
            g_LOG2NBITS          : integer range 0 to 5  := 4;
            g_SPIKEGEN_METHOD    : integer range 0 to 1  := 1;
            g_TWO_POW_NBITS_DATA : integer               := 65536
        );
        port (
            i_clock          : in  std_logic;
            i_nreset         : in  std_logic;
            i_tr_tick        : in  std_logic;
            i_facilitatory   : in  std_logic;
            i_trigger        : in  std_logic;
            i_tau            : in  std_logic_vector((g_LOG2NBITS - 1) downto 0);
            i_weight         : in  std_logic_vector((g_LOG2NBITS - 1) downto 0);
            i_decay          : in  std_logic_vector((g_LOG2NBITS - 1) downto 0);
            i_detection_time : in  std_logic_vector((g_NBITS - 1) downto 0);
            i_faci_sat_value : in  std_logic_vector((g_NBITS - 1) downto 0);
            i_trig_sat_value : in  std_logic_vector((g_NBITS - 1) downto 0);
            o_output_spike   : out std_logic
        );
    end component tde;


begin  -- architecture Behavioral

    tde_1: entity work.tde
        generic map (
            g_NBITS              => g_NBITS,
            g_LOG2NBITS          => g_LOG2NBITS,
            g_SPIKEGEN_METHOD    => g_SPIKEGEN_METHOD,
            g_TWO_POW_NBITS_DATA => g_TWO_POW_NBITS_DATA)
        port map (
            i_clock          => i_clock,
            i_nreset         => i_nreset,
            i_tr_tick        => w_tr_tick,
            i_facilitatory   => w_facilitatory,
            i_trigger        => w_trigger,
            i_tau            => c_tau,
            i_weight         => c_weight,
            i_decay          => c_decay,
            i_detection_time => c_detection_time,
            i_faci_sat_value => c_faci_sat_value,
            i_trig_sat_value => c_trig_sat_value,
            o_output_spike   => o_output_spike
        );


    -- purpose: i_tr_tick clock generation
    -- type   : sequential
    -- inputs : i_clock, i_nreset
    -- outputs: i_tr_tick
    p_countdown: process (i_nreset, i_clock)
        variable v_tr_tick_counter : integer range 0 to c_tw_tick_divisor_value := 0;  -- internal counter
    begin  -- process p_countdown
        if (i_nreset = '0') then          -- asynchronous reset (active low)
            v_tr_tick_counter := 0;
            w_tr_tick <= '0';
        elsif (i_clock'event and i_clock = '1') then  -- rising clock edge
            v_tr_tick_counter := v_tr_tick_counter + 1;
            if (v_tr_tick_counter = c_tw_tick_divisor_value) then
                v_tr_tick_counter := 0;
                w_tr_tick <= '1';
            else
                w_tr_tick <= '0';
            end if;
        else
            
        end if;

    end process p_countdown;

    -- purpose: facilitatory & trigger  pulse generationn
    -- type   : sequential
    -- inputs : i_clock, i_nreset
    -- outputs: w_facilitatory, w_trigger
    p_stimuli_generation: process (i_clock, i_nreset) is
        variable v_faci_gen_internal_counter : integer := 0;
        variable v_trig_gen_internal_counter : integer := 0;
        variable v_idle_internal_counter     : integer := 0;
    begin  -- process p_stimuli_generation
        if i_nreset = '0' then          -- asynchronous reset (active low)
            v_faci_gen_internal_counter := 0;
            v_trig_gen_internal_counter := 0;
            v_idle_internal_counter := 0;
            w_facilitatory <= '0';
            w_trigger <= '0';
        elsif i_clock'event and i_clock = '1' then  -- rising clock edge
            v_faci_gen_internal_counter := v_faci_gen_internal_counter + 1;
            v_trig_gen_internal_counter := v_trig_gen_internal_counter + 1;
            v_idle_internal_counter := v_idle_internal_counter + 1;
            
            if v_faci_gen_internal_counter = c_facilitatory_generator_clock_divisor then
                w_facilitatory <= '1';
            else
                w_facilitatory <= '0';
            end if;

            if v_trig_gen_internal_counter = c_trigger_generator_clock_divisor then
                w_trigger <= '1';
            else
                w_trigger <= '0';
            end if;

            if v_idle_internal_counter = c_stimuli_generation_clock_divisor then
                v_faci_gen_internal_counter := 0;
                v_trig_gen_internal_counter := 0;
                v_idle_internal_counter := 0;
            end if;

        end if;
    end process p_stimuli_generation;
    

end architecture Behavioral;
