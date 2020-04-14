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
-- Title      : basic timer
-- Project    : TDE_vhdl
-------------------------------------------------------------------------------
-- File       : basic_timer.vhd
-- Author     : Daniel Gutierrez-Galan (dgutierrez@atc.us.es)
-- Company    : University of Seville
-- Created    : 2020-01-07
-- Last update: 2020-04-13
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2020 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-01-07  1.0      dgutierrez	Created
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Libraries
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-----------------------------------------------------------------------------
-- Entity declaration
-----------------------------------------------------------------------------
entity basic_timer is

    generic (
        g_NBITS         : integer range 0 to 32 := 16                    -- Number of bits of the internal counter
    );
    port (
        i_clock         : in  std_logic;                                 -- Main clock
        i_nreset        : in  std_logic;                                 -- Asynchronous reset (active low)
        i_tr_tick       : in  std_logic;                                 -- Time resolution tick (secondary clock)
        i_enable        : in  std_logic;                                 -- Timer enable
        i_load          : in  std_logic;                                 -- Load the initial value of the timer
        i_load_value    : in  std_logic_vector((g_NBITS - 1) downto 0);  -- Initial value of the timer
        o_current_value : out std_logic_vector((g_NBITS - 1) downto 0)   -- Current value of the timer
    );
    
end basic_timer;

-------------------------------------------------------------------------------
-- Architectures
-------------------------------------------------------------------------------
architecture Behavioral of basic_timer is

    -----------------------------------------------------------------------------
    -- Signals declaration
    -----------------------------------------------------------------------------
    signal r_counter_value : std_logic_vector((g_NBITS - 1) downto 0);  -- Internal counter register

begin  -- architecture Behavioral

    -----------------------------------------------------------------------------
    -- Processes
    -----------------------------------------------------------------------------
        
    -- purpose: Internal counter countdown.
    -- type   : sequential
    -- inputs : i_clock, i_nreset, i_load_value
    -- outputs: r_counter_value
    p_countdown: process (i_nreset, i_clock)
        variable v_counter : std_logic_vector((g_NBITS - 1) downto 0) := (others => '0');  -- internal counter variable
    begin  -- process p_countdown
        if (i_nreset = '0') then          -- asynchronous reset (active low)
            v_counter := (others => '0');
        elsif (i_clock'event and i_clock = '1') then  -- rising clock edge
            if (i_load = '1') then  -- if load signal is active
                v_counter := i_load_value;
            elsif (i_enable = '1') then  -- if the counter is enabled
                if (i_tr_tick = '1') then
                    v_counter := v_counter - 1;
                else

                end if;
            else
                
            end if;
        else
            
        end if;

        r_counter_value <= v_counter;
        
    end process p_countdown;

    ---------------------------------------------------------------------------
    -- Output assign
    ---------------------------------------------------------------------------
    o_current_value <= r_counter_value;


end architecture Behavioral;
