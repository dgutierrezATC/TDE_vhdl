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
-- Title      : generic register
-- Project    : TDE_vhdl
-------------------------------------------------------------------------------
-- File       : generic_register.vhd
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

-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------
entity generic_register is
    
    generic (
        g_NBITS    : integer range 0 to 32 := 16                   -- Number of bits of the data
    );
    port (
        i_clock    : in std_logic;                                 -- Main clock
        i_nreset   : in std_logic;                                 -- Asynchronous reset (active low)
        i_data_in  : in std_logic_vector((g_NBITS - 1) downto 0);  -- Input data
        i_load     : in std_logic;                                 -- Load signal
        i_clear    : in std_logic;                                 -- Clear signal
        o_data_out : out std_logic_vector((g_NBITS - 1) downto 0)  -- Output data
    );

end entity generic_register;

-------------------------------------------------------------------------------
-- Architectures
-------------------------------------------------------------------------------
architecture Behavioral of generic_register is

    -----------------------------------------------------------------------------
    -- Signals declaration
    -----------------------------------------------------------------------------
    

begin  -- architecture Behavioral

    -----------------------------------------------------------------------------
    -- Processes
    -----------------------------------------------------------------------------

    -- purpose: Register data update
    -- type   : sequential
    -- inputs : i_clock, i_nreset
    -- outputs: o_data_out
    p_register_update: process (i_clock, i_nreset) is
    begin  -- process p_register_update
        if i_nreset = '0' then          -- asynchronous reset (active low)
            o_data_out <= (others => '0');
        elsif i_clock'event and i_clock = '1' then  -- rising clock edge
            if i_clear = '1' then
                o_data_out <= (others => '0');
            elsif i_load = '1' then
                o_data_out <= i_data_in;
            else

            end if;
                
        end if;
    end process p_register_update;

end architecture Behavioral;
