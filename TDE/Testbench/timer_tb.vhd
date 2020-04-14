--/////////////////////////////////////////////////////////////////////////////////
--//                                                                             //
--//    Copyright © 2020  Daniel Gutierrez-Galan                                 //
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
-- Title      : Testbench for design "timer"
-- Project    : TDE_vhdl
-------------------------------------------------------------------------------
-- File       : timer_tb.vhd
-- Author     : Daniel Gutierrez-Galan (dgutierrez@atc.us.es)
-- Company    : University of Seville
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
            g_NBITS            : integer range 0 to 32 := 16
        );
        port (
            i_clock            : in  std_logic;
            i_nreset           : in  std_logic;
            i_tr_tick          : in  std_logic;
            i_start            : in  std_logic;
            i_initial_value    : in  std_logic_vector((g_NBITS - 1) downto 0);
            i_saturation_value : in std_logic_vector((g_NBITS - 1) downto 0);
            o_current_value    : out std_logic_vector((g_NBITS - 1) downto 0);
            o_timeout          : out std_logic               
        );
    end component timer;

    ---------------------------------------------------------------------------
    -- UUT signals declaration
    ---------------------------------------------------------------------------
    -- Generics
    constant g_NBITS          : integer range 0 to 32                    := 16;

    -- Inputs
    signal i_clock            : std_logic                                := '0';
    signal i_nreset           : std_logic                                := '0';
    signal i_tr_tick          : std_logic                                := '0';
    signal i_start            : std_logic                                := '0';
    signal i_initial_value    : std_logic_vector((g_NBITS - 1) downto 0) := (others => '0');
    signal i_saturation_value : std_logic_vector((g_NBITS - 1) downto 0) := (others => '0');
    
    -- Outputs
    signal o_current_value    : std_logic_vector((g_NBITS - 1) downto 0);
    signal o_timeout          : std_logic;

    ---------------------------------------------------------------------------
    -- Testbench signals declaration
    ---------------------------------------------------------------------------
    
    -- Clock
    constant c_i_clock_period          : time                   := 20 ns;
    constant c_i_tr_tick_divisor_value : integer range 0 to 100 := 50;  -- 20 ns * 50 = 1000 ns = 1 us

begin  -- architecture Structural
    
    ---------------------------------------------------------------------------
    -- basic_timer_control_tb(Behavioral) (timer_control_tb.vhd) timer_control_tb.vhd
    ---------------------------------------------------------------------------
    UUT: entity work.timer
        generic map (
            g_NBITS            => g_NBITS
        )
        port map (
            i_clock            => i_clock,
            i_nreset           => i_nreset,
            i_tr_tick          => i_tr_tick,
            i_start            => i_start,
            i_initial_value    => i_initial_value,
            i_saturation_value => i_saturation_value,
            o_current_value    => o_current_value
        );

    ---------------------------------------------------------------------------
    -- Clocks generation
    ---------------------------------------------------------------------------

    i_clock <= not i_clock after c_i_clock_period/2;
    
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
    
    ---------------------------------------------------------------------------
    -- Processes
    ---------------------------------------------------------------------------
    
    -- purpose: Set the signals to generate the stimuli
    -- type   : combinational
    -- inputs : 
    -- outputs: 
    p_stimuli: process
    begin
        -- insert signal assignments here

        --
        -- First reset
        --

        -- Set the initial value to a value
        i_initial_value <= x"0190"; -- 400 us
        
        -- Set the saturation value
        i_saturation_value <= x"04B0";
        
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
        
        ---------
        -- Case 6: five pulses arriving in a row
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
        
        -- Wait for one clock cycle
        wait for c_i_clock_period;

        -- The third pulse
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';

        -- Wait for one clock cycle
        wait for c_i_clock_period;

        -- The fourth pulse
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';
        
        -- Wait for one clock cycle
        wait for c_i_clock_period;

        -- The fifth pulse
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';
        
        -- Wait until the end of the timer (800 us + some microseconds)
        wait for 810 us;

        -- Check the output
        report "End of CASE 6." severity note;

        -- Wait for a few of microseconds
        wait for 5 us;

        report "end of the testbench." severity warning;
        
        wait;
    end process p_stimuli;

end architecture Behavioral;

-------------------------------------------------------------------------------

configuration timer_tb_Behavioral_cfg of timer_tb is
    for Behavioral
    end for;
end timer_tb_Behavioral_cfg;

-------------------------------------------------------------------------------
