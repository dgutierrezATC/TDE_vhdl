--/////////////////////////////////////////////////////////////////////////////////
--//                                                                             //
--//    Copyright � 2020  Daniel Gutierrez-Galan                                 //
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
-- Title      : basic timer control
-- Project    : TDE_vhdl
-------------------------------------------------------------------------------
-- File       : basic_timer_control.vhd
-- Author     : Daniel Gutierrez-Galan (dgutierrez@atc.us.es)
-- Company    : University of Seville
-- Created    : 2020-01-08
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
-- 2020-01-08  1.0      Dani	Created
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
entity basic_timer_control is

    generic (
        g_NBITS            : integer range 0 to 32 := 16                   -- Number of bits of the data
    );
    port (
        i_start            : in  std_logic;                                -- External start signal
        i_initial_value    : in std_logic_vector((g_NBITS - 1) downto 0);  -- Initial value of the counter
        i_saturation_value : in std_logic_vector((g_NBITS - 1) downto 0);  -- Max value to be loaded
        i_current_value    : in std_logic_vector((g_NBITS - 1) downto 0);  -- Current output value
        o_enable           : out std_logic;                                -- Enable the timer
        o_timeout          : out std_logic;                                -- Timeout flag
        o_load             : out std_logic;                                -- Load flag
        o_load_value       : out std_logic_vector((g_NBITS - 1) downto 0)  -- Value to be loaded
    );

end entity basic_timer_control;

-------------------------------------------------------------------------------
-- Architectures
-------------------------------------------------------------------------------
architecture Behavioral of basic_timer_control is
    
    ---------------------------------------------------------------------------
    -- Signals declaration
    ---------------------------------------------------------------------------
    signal w_timeout        : std_logic;                                 -- HIGH when the internal counter reaches ZERO; Otherwise, LOW.
    signal w_saturated      : std_logic;                                 -- Saturation flag
    signal w_feedback_value : std_logic_vector((g_NBITS - 1) downto 0);  -- Calculated feedback value
    signal w_load_value     : std_logic_vector((g_NBITS - 1) downto 0);  -- Calculated load value

    constant c_all_zeros : std_logic_vector((g_NBITS - 1) downto 0) := (others => '0');  -- All zeros constant value

begin  -- architecture Behavioral

    -----------------------------------------------------------------------------
    -- Processes
    -----------------------------------------------------------------------------

    -- purpose: Feedback value calculation
    -- type   : combinational
    -- inputs : i_initial_value, i_current_value, i_start
    -- outputs: w_feedback_value
    p_feedback_value_calculation: process (i_initial_value, i_current_value, i_start) is
    begin  -- process p_feedback_value_calculation
        if i_start = '1' then 
            w_feedback_value <= i_initial_value + i_current_value;
        else
            w_feedback_value <= (others => '0');
        end if;
    end process p_feedback_value_calculation;

    -- purpose: Detection of the saturation level
    -- type   : combinational
    -- inputs : w_feedback_value, i_saturation_value
    -- outputs: w_saturated
    p_saturation_detection: process (w_feedback_value, i_saturation_value) is
    begin  -- process p_saturation_detection
        if w_feedback_value > i_saturation_value then
            w_saturated <= '1';
        else
            w_saturated <= '0';
        end if;
    end process p_saturation_detection;

    -- purpose: Mux for selecting the load value of the timer
    -- type   : combinational
    -- inputs : w_saturated, w_feedback_value, i_saturation_value
    -- outputs: w_load_value
    with w_saturated select
        w_load_value <=
                        w_feedback_value   when '0',
                        i_saturation_value when '1',
                        c_all_zeros        when others;

    -- purpose: Timeout detection. The timeout flag is set HIGH when the timer counter value reaches ZERO.
    -- type   : combinational
    -- inputs : i_current_value
    -- outputs: w_timeout
    p_timeout_detection : process (i_current_value)
    begin  -- process p_timeout_detection
        if (i_current_value = c_all_zeros) then
            w_timeout <= '1';
        else
            w_timeout <= '0';
        end if;

    end process p_timeout_detection;


    ---------------------------------------------------------------------------
    -- Output assign
    ---------------------------------------------------------------------------
    o_enable     <= not w_timeout;
    o_load       <= i_start;
    o_timeout    <= w_timeout;
    o_load_value <= w_load_value;

end architecture Behavioral;

