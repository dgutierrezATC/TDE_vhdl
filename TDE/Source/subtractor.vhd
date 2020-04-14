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
-- Title      : subtractor
-- Project    : TDE_vhdl
-------------------------------------------------------------------------------
-- File       : subtractor.vhd
-- Author     : Daniel Gutierrez-Galan (dgutierrez@atc.us.es)
-- Company    : University of Seville
-- Created    : 2020-01-20
-- Last update: 2020-01-20
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
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
use ieee.std_logic_unsigned.all;

-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------
entity subtractor is
    
    generic (
        g_NBITS        : integer range 0 to 32 := 16                    -- Bits of the input and output data
    );  
    port (
        i_input_data_a : in  std_logic_vector((g_NBITS - 1) downto 0);  -- Input A
        i_input_data_b : in  std_logic_vector((g_NBITS - 1) downto 0);  -- Input B
        o_output_data  : out std_logic_vector((g_NBITS - 1) downto 0)   -- Output result A - B
    );  

end entity subtractor;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture Behavioral of subtractor is

    -----------------------------------------------------------------------------
    -- Signals declaration
    -----------------------------------------------------------------------------
    
    
begin  -- architecture Behavioral
    
    -----------------------------------------------------------------------------
    -- Processes
    -----------------------------------------------------------------------------
    
    -- purpose: Subtraction computation
    -- type   : combinational
    -- inputs : i_input_data_a, i_input_data_b
    -- outputs: o_output_data
    p_subtraction: process (i_input_data_a, i_input_data_b) is
    begin  -- process p_subtraction
        o_output_data <= i_input_data_a - i_input_data_b;
    end process p_subtraction;

end architecture Behavioral;
