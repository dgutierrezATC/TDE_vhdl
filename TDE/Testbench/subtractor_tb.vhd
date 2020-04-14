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
-- Title      : Testbench for design "subtractor"
-- Project    : TDE_vhdl
-------------------------------------------------------------------------------
-- File       : subtractor_tb.vhd
-- Author     : Daniel Gutierrez-Galan (dgutierrez@atc.us.es)
-- Company    : University of Seville
-- Created    : 2020-01-21
-- Last update: 2020-01-21
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2020 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-01-21  1.0      dgutierrez	Created
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Libraries
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------

entity subtractor_tb is

end entity subtractor_tb;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture Behavioral of subtractor_tb is

    ---------------------------------------------------------------------------
    -- Component declaration for the Unit Under Test (UUT)
    ---------------------------------------------------------------------------
    component subtractor is
        generic (
            g_NBITS        : integer range 0 to 32 := 16
        );
        port (
            i_input_data_a : in  std_logic_vector((g_NBITS - 1) downto 0);
            i_input_data_b : in  std_logic_vector((g_NBITS - 1) downto 0);
            o_output_data  : out std_logic_vector((g_NBITS - 1) downto 0)
        );
    end component subtractor;

    ---------------------------------------------------------------------------
    -- UUT signals declaration
    ---------------------------------------------------------------------------
    
    -- component generics
    constant g_NBITS      : integer range 0 to 32                    := 16;

    -- component input ports
    signal i_input_data_a : std_logic_vector((g_NBITS - 1) downto 0) := (others => '0');
    signal i_input_data_b : std_logic_vector((g_NBITS - 1) downto 0) := (others => '0');

    -- component output ports
    signal o_output_data  : std_logic_vector((g_NBITS - 1) downto 0);
    
    ---------------------------------------------------------------------------
    -- Testbench signals declaration
    ---------------------------------------------------------------------------

begin  -- architecture Behavioral

    ---------------------------------------------------------------------------
    -- Instantiate the Unit Under Test (UUT)
    ---------------------------------------------------------------------------
    UUT: entity work.subtractor(Behavioral)
        generic map (
            g_NBITS        => g_NBITS
        )
        port map (
            i_input_data_a => i_input_data_a,
            i_input_data_b => i_input_data_b,
            o_output_data  => o_output_data
        );

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

        --
        -- Idle
        --

        -- Wait some microseconds
        wait for 1 us;

        --
        -- Case 1: Set A to 10, set B to 0
        --

        -- Set the input A to 10
        i_input_data_a <= x"000A";

        -- Wait
        wait for 0 ns;

        -- Set the input B to 0
        i_input_data_b <= x"0000";

        -- Wait some nanoseconds
        wait for 10 ns;

        -- Check the output
        assert (o_output_data = x"000A") report "FAILED case 1" severity error;

        --
        -- Case 2: Set A to 10, set B to 5
        --
        
        -- Set the input A to 10
        i_input_data_a <= x"000A";

        -- Wait
        wait for 0 ns;

        -- Set the input B to 0
        i_input_data_b <= x"0005";

        -- Wait some nanoseconds
        wait for 10 ns;

        -- Check the output
        assert (o_output_data = x"0005") report "FAILED case 2" severity error;

        --
        -- Case 3: Set A to 10, set B to 5 after 10 ns
        --
        
        -- Set the input B to 11
        i_input_data_a <= x"000B";

        -- Wait
        wait for 10 ns;

        -- Set the input B to 0
        i_input_data_b <= x"0003";

        -- Wait some nanoseconds
        wait for 10 ns;

        -- Check the output
        assert (o_output_data = x"0008") report "FAILED case 3" severity error;

        --
        -- Case 4: Set A to 10, set B to 5 after 10 ns
        --
        
        -- Set the input B to 11
        i_input_data_a <= x"000B";

        -- Wait
        wait for 10 ns;

        -- Set the input B to 15
        i_input_data_b <= x"000F";

        -- Wait some nanoseconds
        wait for 10 ns;

        -- Check the output
        assert (o_output_data = x"FFFC") report "FAILED case 4" severity error;
        
        --
        -- End of the simulation
        --

        -- Wait for some microseconds
        wait for 1 us;

        -- End of the simulation
        report "END OF THE SIMULATION!" severity note;
        

        wait;
    end process p_stimuli;

    

end architecture Behavioral;

-------------------------------------------------------------------------------

configuration subtractor_tb_Behavioral_cfg of subtractor_tb is
    for Behavioral
    end for;
end subtractor_tb_Behavioral_cfg;

-------------------------------------------------------------------------------
