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
-- Title      : Testbench for design "timer_control"
-- Project    : TDE_vhdl
-------------------------------------------------------------------------------
-- File       : timer_control_tb.vhd
-- Author     : Daniel Gutierrez-Galan (dgutierrez@atc.us.es)
-- Company    : University of Seville
-- Created    : 2020-01-09
-- Last update: 2020-01-09
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2020
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-01-09  1.0      Dani	Created
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Libraries
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

-----------------------------------------------------------------------------
-- Entity declaration
---------------------------------------------------------------
entity basic_timer_control_tb is

end entity basic_timer_control_tb;

-------------------------------------------------------------------------------
-- Architectures
-------------------------------------------------------------------------------
architecture Behavioral of basic_timer_control_tb is

    ---------------------------------------------------------------------------
    -- Component declaration for the Unit Under Test (UUT)
    ---------------------------------------------------------------------------
    component basic_timer_control is
        generic (
            g_NBITS            : integer range 0 to 32 := 16
        );
        port (
            i_start            : in  std_logic;
            i_initial_value    : in std_logic_vector((g_NBITS - 1) downto 0);
            i_saturation_value : in std_logic_vector((g_NBITS - 1) downto 0);
            i_current_value    : in std_logic_vector((g_NBITS - 1) downto 0);
            o_enable           : out std_logic;
            o_timeout          : out std_logic;
            o_load             : out std_logic;
            o_load_value       : out std_logic_vector((g_NBITS - 1) downto 0)
        );
    end component basic_timer_control;

    ---------------------------------------------------------------------------
    -- UUT signals declaration
    ---------------------------------------------------------------------------
    
    -- Generics
    constant g_NBITS          : integer                                  := 16;

    -- Inputs
    signal i_start            : std_logic                                := '0';
    signal i_initial_value    : std_logic_vector((g_NBITS - 1) downto 0) := (others => '0');
    signal i_saturation_value : std_logic_vector((g_NBITS - 1) downto 0) := (others => '0');
    signal i_current_value    : std_logic_vector((g_NBITS - 1) downto 0) := (others => '0');

    -- Outputs
    signal o_enable           : std_logic;
    signal o_timeout          : std_logic;
    signal o_load             : std_logic;
    signal o_load_value       : std_logic_vector((g_NBITS - 1) downto 0);

    ---------------------------------------------------------------------------
    -- Testbench signals declaration
    ---------------------------------------------------------------------------
    
    -- Clock
    constant c_i_clock_period : time := 20 ns;

begin  -- architecture Behavioral

    ---------------------------------------------------------------------------
    -- Instantiate the Unit Under Test (UUT)
    ---------------------------------------------------------------------------
    UUT: entity work.basic_timer_control(Behavioral)
        generic map (
            g_NBITS            => g_NBITS
        )
        port map (
            i_start            => i_start,
            i_initial_value    => i_initial_value,
            i_saturation_value => i_saturation_value,
            i_current_value    => i_current_value,
            o_enable           => o_enable,
            o_timeout          => o_timeout,
            o_load             => o_load,
            o_load_value       => o_load_value
        );
        
    ---------------------------------------------------------------------------
    -- Clocks generation
    ---------------------------------------------------------------------------


    -----------------------------------------------------------------------------
    -- Processes
    -----------------------------------------------------------------------------

    -- purpose: Set the signals to generate the stimuli
    -- type   : combinational
    -- inputs : 
    -- outputs: 
    p_stimuli: process
    begin
        -- insert signal assignments here
        
        -- Configure the timer
        i_initial_value <= x"02BC";
        i_saturation_value <= x"1000";

        -- Wait for 1 us;
        wait for 1 us;

        --
        -- Case 1: signle i_start
        --
        
        -- Set i_start to HIGH for a clock cycle
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';

        -- Wait for 1 us;
        wait for 1 us;

        --
        -- Case 2: multiple i_start
        --

        -- Set i_start to HIGH for a clock cycle
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';

        -- Wait for 1 us;
        wait for 1 us;

        -- Set i_start to HIGH for a clock cycle
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';

        -- Wait for 1 us;
        wait for 1 us;

        -- Final wait
        wait;
        
    end process p_stimuli;

    

end architecture Behavioral;

-------------------------------------------------------------------------------

configuration basic_timer_control_tb_Behavioral_cfg of basic_timer_control_tb is
    for Behavioral
    end for;
end basic_timer_control_tb_Behavioral_cfg;

-------------------------------------------------------------------------------
