-------------------------------------------------------------------------------
-- Title      : Testbench for design "timer"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : timer_tb.vhd
-- Author     :   <dgutierrez@DESKTOP-16SBGVD>
-- Company    : 
-- Created    : 2020-01-15
-- Last update: 2020-01-15
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2020 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-01-15  1.0      dgutierrez	Created
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Libraries
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;



-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------
entity timer_tb is

end entity timer_tb;

-------------------------------------------------------------------------------
-- Architectures
-------------------------------------------------------------------------------
architecture Behavioral of timer_tb is
    -------------------------------------------------------------------------------
    -- Component declaration for the unit under test (UUT)
    -------------------------------------------------------------------------------
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

    ---------------------------------------------------------------------------
    -- UUT signals declaration
    ---------------------------------------------------------------------------
    -- Generics
    constant g_NBITS : integer range 0 to 32 := 16;

    -- component ports

    -- Inputs
    signal i_clock         : std_logic := '0';
    signal i_nreset        : std_logic := '0';
    signal i_tr_tick       : std_logic := '0';
    signal i_start         : std_logic := '0';
    signal i_initial_value : std_logic_vector((g_NBITS - 1) downto 0) := (others => '0');

    -- Outputs
    signal o_current_value : std_logic_vector((g_NBITS - 1) downto 0);

    ---------------------------------------------------------------------------
    -- Testbench signals declaration
    ---------------------------------------------------------------------------
    -- clock period
    constant c_i_clock_period : time := 20 ns;

    -- Clock divisor value
    constant c_i_tr_tick_divisor_value : integer range 0 to 100 := 50;  -- Clock divisor value

    

begin  -- architecture Structural
    
    ---------------------------------------------------------------------------
    -- UUT instantiation
    ---------------------------------------------------------------------------
    DUT: entity work.timer
        generic map (
            g_NBITS => g_NBITS
        )
        port map (
            i_clock         => i_clock,
            i_nreset        => i_nreset,
            i_tr_tick       => i_tr_tick,
            i_start         => i_start,
            i_initial_value => i_initial_value,
            o_current_value => o_current_value
        );

    ---------------------------------------------------------------------------
    -- Testbench processes
    ---------------------------------------------------------------------------
    
    -- clock generation
    i_clock <= not i_clock after c_i_clock_period/2;

    -- waveform generation
    WaveGen_Proc: process
    begin
        -- insert signal assignments here

        --
        -- First reset
        --

        -- Set the initial value to a value
        i_initial_value <= x"0190"; -- 400 us
        
        -- Set reset to 0
        i_nreset <= '0';
        -- Hold reset to 0 for 1 us;
        wait for 1 us;
        -- Clear reset
        i_nreset <= '1';

        --
        -- Idle
        --
        
        -- Let the system in IDLE for 10 us
        wait for 10 us;

        --
        -- Cases
        --

        ---------
        -- Case 0: a single pulse in i_start, and wait until the end.
        ---------

        -- Sync
        wait until i_clock'event and  i_clock = '1';
        wait for c_i_clock_period;

        -- Inconming pulse
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';

        -- Wait until the end of the timer (400 us + some microseconds)
        wait for 410 us;

        -- Check the output
        report "End of CASE 0." severity note;

        -- Wait for a few of microseconds
        wait for 5 us;

        ---------
        -- Case 1: a single pulse in i_start. Another pulse close to the first.
        ---------

        -- Sync
        wait until i_clock'event and  i_clock = '1';
        wait for c_i_clock_period;

        -- First pulse
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';

        -- Wait for 20 us
        wait for 20 us;

        -- The second pulse
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';
        
        -- Wait until the end of the timer (800 us + some microseconds)
        wait for 810 us;

        -- Check the output
        report "End of CASE 1." severity note;

        -- Wait for a few of microseconds
        wait for 5 us;

        ---------
        -- Case 2: a single pulse in i_start. Another pulse at the middle
        ---------

        -- First pulse
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';

        -- Wait for 20 us
        wait for 200 us;

        -- The second pulse
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';

        -- Wait until the end of the timer (800 us + some microseconds)
        wait for 810 us;

        -- Check the output
        report "End of CASE 2." severity note;

        -- Wait for a few of microseconds
        wait for 5 us;

        ---------
        -- Case 3: a single pulse in i_start. Another pulse close to the end.
        ---------

        -- Sync
        wait until i_clock'event and  i_clock = '1';
        wait for c_i_clock_period;
        
        -- First pulse
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';

        -- Wait for 350 us
        wait for 350 us;

        -- The second pulse
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';
        
        -- Wait until the end of the timer (800 us + some microseconds)
        wait for 810 us;

        -- Check the output
        report "End of CASE 3." severity note;

        -- Wait for a few of microseconds
        wait for 5 us;

        ---------
        -- Case 4: a single pulse in i_start. Another pulse just after the end
        ---------
        
        -- Sync
        wait until i_clock'event and  i_clock = '1';
        wait for c_i_clock_period;
        
        -- First pulse
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';

        -- Wait for 400 us
        wait for 400 us;

        -- The second pulse
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';
        
        -- Wait until the end of the timer (800 us + some microseconds)
        wait for 810 us;

        -- Check the output
        report "End of CASE 4." severity note;

        -- Wait for a few of microseconds
        wait for 5 us;

        ---------
        -- Case 5: two pulses arriving in a row
        ---------
        
        -- Sync
        wait until i_clock'event and  i_clock = '1';
        wait for c_i_clock_period;
        
        -- First pulse
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';

        -- Wait for one clock cycle
        wait for c_i_clock_period;

        -- The second pulse
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';

        -- Wait until the end of the timer (800 us + some microseconds)
        wait for 810 us;

        -- Check the output
        report "End of CASE 5." severity note;

        -- Wait for a few of microseconds
        wait for 5 us;

        report "end of the testbench." severity warning;
        
        wait;
    end process WaveGen_Proc;
    
    -- purpose: i_tr_tick clock generation
    -- type   : sequential
    -- inputs : i_clock, i_nreset
    -- outputs: i_tr_tick
    p_countdown: process (i_nreset, i_clock)
        variable v_tr_tick_counter : integer range 0 to c_i_tr_tick_divisor_value := 0;  -- internal counter variable
    begin  -- process p_countdown
        if (i_nreset = '0') then          -- asynchronous reset (active low)
            v_tr_tick_counter := 0;
            i_tr_tick <= '0';
        elsif (i_clock'event and i_clock = '1') then  -- rising clock edge
            v_tr_tick_counter := v_tr_tick_counter + 1;
            if (v_tr_tick_counter = c_i_tr_tick_divisor_value) then
                v_tr_tick_counter := 0;
                i_tr_tick <= '1';
            else
                i_tr_tick <= '0';
            end if;
        else
            
        end if;
        
    end process p_countdown;

end architecture Behavioral;

-------------------------------------------------------------------------------

configuration timer_tb_Behavioral_cfg of timer_tb is
    for Behavioral
    end for;
end timer_tb_Behavioral_cfg;

-------------------------------------------------------------------------------
