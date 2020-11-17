--/////////////////////////////////////////////////////////////////////////////////
--//                                                                             //
--//    Copyright  2020  Daniel Gutierrez-Galan                                  //
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
-- Title      : tde_network
-- Project    : TDE_vhdl
-------------------------------------------------------------------------------
-- File       : tde_network.vhd
-- Author     : Daniel Gutierrez-Galan
-- Company    : University of Seville
-- Created    : 2020-07-20
-- Last update: 2020-07-20
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2020 University of Seville
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-06-17  1.0      dgutierrez	Created
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Libraries
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------
entity tde_network is

    generic (
        g_NBITS              : integer range 0 to 32 := 16;     -- Data width
        g_LOG2NBITS          : integer range 0 to 5  := 4;      -- Log2 of g_NBITS
        g_TWO_POW_NBITS_DATA : integer               := 65536;  -- 2**g_NBITS
        g_SPIKEGEN_METHOD    : integer range 0 to 1  := 0;      -- Spike generator mode selector
        g_NNETWORKS          : integer range 0 to 32 := 2;      -- Number of networks
        g_NNEURONSNETWORK    : integer range 0 to 32 := 4;      -- Number of TDE neurons per network
        g_NNEURONSTOTAL      : integer range 0 to 1024 := 8     -- Number of total TDE neurons
    );

    port (
        i_clock         : in  std_logic;  -- Main clock
        i_nreset        : in  std_logic;  -- Low active reset
        i_tr_tick       : in  std_logic;  -- Time resolution tick
        i_left_stim     : in  std_logic;  -- Facilitatory input
        i_right_stim    : in  std_logic;  -- Trigger input
        o_output_spikes : out std_logic_vector((g_NNEURONSTOTAL - 1) downto 0)
    );  -- Output spikes

end entity tde_network;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture Structural of tde_network is

    ---------------------------------------------------------------------------
    -- Signals declaration
    ---------------------------------------------------------------------------
    constant c_filename_params_netowrk_0 : string := "D:\Universidad\Repositorios\GitHub\Doctorado\TDE_vhdl\TDE\Examples\Network\Source\tde_population_000_params.data";
    signal w_network_0_output_spikes     : std_logic_vector((g_NNEURONSNETWORK - 1) downto 0);

    constant c_filename_params_netowrk_1 : string := "D:\Universidad\Repositorios\GitHub\Doctorado\TDE_vhdl\TDE\Examples\Network\Source\tde_population_001_params.data";
    signal w_network_1_output_spikes     : std_logic_vector((g_NNEURONSNETWORK - 1) downto 0);
    
    ---------------------------------------------------------------------------
    -- Components declaration
    ---------------------------------------------------------------------------

    --
    -- TDE
    --
    component tde_population is

        generic (
            g_NBITS              : integer range 0 to 32 := 16;
            g_LOG2NBITS          : integer range 0 to 5  := 4;
            g_TWO_POW_NBITS_DATA : integer               := 65536;
            g_SPIKEGEN_METHOD    : integer range 0 to 1  := 0;
            g_NNEURONS           : integer range 0 to 32 := 4;
            g_NEURONS_PARAMS     : string                := "tde_population_000_params.data"
        );
    
        port (
            i_clock         : in  std_logic;
            i_nreset        : in  std_logic;
            i_tr_tick       : in  std_logic;
            i_facilitatory  : in  std_logic;
            i_trigger       : in  std_logic;
            o_output_spikes : out std_logic_vector((g_NNEURONS - 1) downto 0)
        );
    
    end component tde_population;

begin  -- architecture Structural

    ---------------------------------------------------------------------------
    -- Components instantiation
    ---------------------------------------------------------------------------

    --
    -- TDE network 0
    --
    tde_network_0: entity work.tde_population
        generic map (
            g_NBITS              => g_NBITS,
            g_LOG2NBITS          => g_LOG2NBITS,
            g_TWO_POW_NBITS_DATA => g_TWO_POW_NBITS_DATA,
            g_SPIKEGEN_METHOD    => g_SPIKEGEN_METHOD,
            g_NNEURONS           => g_NNEURONSNETWORK,
            g_NEURONS_PARAMS     => c_filename_params_netowrk_0
        )
        port map (
            i_clock => i_clock,
            i_nreset => i_nreset,
            i_tr_tick => i_tr_tick,
            i_facilitatory => i_left_stim,
            i_trigger => i_right_stim,
            o_output_spikes => w_network_0_output_spikes
        );

    --
    -- TDE network 1
    --
    tde_network_1: entity work.tde_population
    generic map (
        g_NBITS              => g_NBITS,
        g_LOG2NBITS          => g_LOG2NBITS,
        g_TWO_POW_NBITS_DATA => g_TWO_POW_NBITS_DATA,
        g_SPIKEGEN_METHOD    => g_SPIKEGEN_METHOD,
        g_NNEURONS           => g_NNEURONSNETWORK,
        g_NEURONS_PARAMS     => c_filename_params_netowrk_1
    )
    port map (
        i_clock => i_clock,
        i_nreset => i_nreset,
        i_tr_tick => i_tr_tick,
        i_facilitatory => i_right_stim,
        i_trigger => i_left_stim,
        o_output_spikes => w_network_1_output_spikes
    );

    --
    -- Output assign
    --
    o_output_spikes <= w_network_1_output_spikes & w_network_0_output_spikes;

end architecture Structural;
