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
-- Title      : Testbench for design "adder"
-- Project    : TDE_vhdl
-------------------------------------------------------------------------------
-- File       : adder_tb.vhd
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
-----------------------------------------------------------------------------
entity adder_tb is

end entity adder_tb;

-------------------------------------------------------------------------------
-- Architectures
-------------------------------------------------------------------------------
architecture Behavioral of adder_tb is

    ---------------------------------------------------------------------------
    -- Component declaration for the Unit Under Test (UUT)
    ---------------------------------------------------------------------------
    component adder is
        generic (
            g_NBITS        : integer
        );
        port (
            i_input_data_a : in  std_logic_vector((g_NBITS - 1) downto 0);
            i_input_data_b : in  std_logic_vector((g_NBITS - 1) downto 0);
            o_output_data  : out std_logic_vector((g_NBITS - 1) downto 0)
        );
    end component adder;

    ---------------------------------------------------------------------------
    -- UUT signals declaration
    ---------------------------------------------------------------------------
    
    -- Generics
    constant c_NBITS      : integer                                  := 16;

    -- Inputs
    signal i_input_data_a : std_logic_vector((c_NBITS - 1) downto 0) := (others => '0');
    signal i_input_data_b : std_logic_vector((c_NBITS - 1) downto 0) := x"0100";

    -- Output
    signal o_output_data  : std_logic_vector((c_NBITS - 1) downto 0);
    
    ---------------------------------------------------------------------------
    -- Testbench signals declaration
    ---------------------------------------------------------------------------

begin  -- architecture Behavioral

    ---------------------------------------------------------------------------
    -- Instantiate the Unit Under Test (UUT)
    ---------------------------------------------------------------------------
    UUT: entity work.adder(Behavioral)
        generic map (
            g_NBITS        => c_NBITS
        )
        port map (
            i_input_data_a => i_input_data_a,
            i_input_data_b => i_input_data_b,
            o_output_data  => o_output_data
        );


    -----------------------------------------------------------------------------
    -- Processes
    -----------------------------------------------------------------------------
    p_stimuli: process
    begin
        -- insert signal assignments here

        -- Wait for 1 us
        wait for 1 us;

        -- Change current value of the timer
        i_input_data_a <= x"0001";

        -- Wait for 100 ns
        wait for 100 ns;

        -- Change current value of the timer
        i_input_data_a <= x"0100";

        -- Wait
        wait;
        
    end process p_stimuli;

    

end architecture Behavioral;

-------------------------------------------------------------------------------

configuration adder_tb_Behavioral_cfg of adder_tb is
    for Behavioral
    end for;
end adder_tb_Behavioral_cfg;

-------------------------------------------------------------------------------
