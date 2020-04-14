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
-- Title      : timer
-- Project    : TDE_vhdl
-------------------------------------------------------------------------------
-- File       : timer.vhd
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
use ieee.std_logic_unsigned.all;

-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------
entity timer is
    
    generic (
        g_NBITS            : integer range 0 to 32 := 16);                  -- Number of bits of the input data

    port (
        i_clock            : in  std_logic;                                 -- Main clock
        i_nreset           : in  std_logic;                                 -- Asynchronous reset (active low)
        i_tr_tick          : in  std_logic;                                 -- Time resolution tick (secondary clock)
        i_start            : in  std_logic;                                 -- Start signal for enabling the timer
        i_initial_value    : in  std_logic_vector((g_NBITS - 1) downto 0);  -- Initial value of the timer
        i_saturation_value : in std_logic_vector((g_NBITS - 1) downto 0);   -- Max value of the timer
        o_current_value    : out std_logic_vector((g_NBITS - 1) downto 0);  -- Current value of the timer
        o_timeout          : out std_logic                                  -- Timeout flag
    ); 

end entity timer;

-------------------------------------------------------------------------------
-- Architectures
-------------------------------------------------------------------------------
architecture Structural of timer is
    ---------------------------------------------------------------------------
    -- Signals declaration
    ---------------------------------------------------------------------------
    signal w_enable        : std_logic;                                 -- Timer enable signal from timer control to timer counter
    signal w_load          : std_logic;                                 -- Timer load signal from timer control to timer counter
    signal w_load_value    : std_logic_vector((g_NBITS - 1) downto 0);  -- Timer load value
    signal w_current_value : std_logic_vector((g_NBITS - 1) downto 0);  -- Timer current value signal
    signal w_timeout       : std_logic;                                 -- Timer timeout signal from timer to th etimer control
    
    ---------------------------------------------------------------------------
    -- Components declaration
    ---------------------------------------------------------------------------

    --
    -- Basic timer
    --
    component basic_timer is
        generic (
            g_NBITS         : integer range 0 to 32 := 16
        );
        port (
            i_clock         : in  std_logic;
            i_nreset        : in  std_logic;
            i_tr_tick       : in  std_logic;
            i_enable        : in  std_logic;
            i_load          : in  std_logic;
            i_load_value    : in  std_logic_vector((g_NBITS - 1) downto 0);
            o_current_value : out std_logic_vector((g_NBITS - 1) downto 0)
        );
    end component basic_timer;

    --
    -- Basic timer control
    --
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

begin  -- architecture Structural
    ---------------------------------------------------------------------------
    -- Components instantiation
    ---------------------------------------------------------------------------

    --
    -- Basic timer
    --
    basic_timer_1: entity work.basic_timer
        generic map (
            g_NBITS         => g_NBITS
        )
        port map (
            i_clock         => i_clock ,
            i_nreset        => i_nreset,
            i_tr_tick       => i_tr_tick,
            i_enable        => w_enable,
            i_load          => w_load,
            i_load_value    => w_load_value,
            o_current_value => w_current_value
        );

    --
    -- Basic timer control
    --
    basic_timer_control_1: entity work.basic_timer_control
        generic map (
            g_NBITS            => g_NBITS
        )
        port map (
            i_start            => i_start,
            i_initial_value    => i_initial_value,
            i_saturation_value => i_saturation_value,
            i_current_value    => w_current_value,
            o_enable           => w_enable,
            o_timeout          => w_timeout,
            o_load             => w_load,
            o_load_value       => w_load_value
        );
    
    ---------------------------------------------------------------------------
    -- Assigns
    ---------------------------------------------------------------------------
    o_current_value <= w_current_value;
    o_timeout       <= w_timeout;

end architecture Structural;
