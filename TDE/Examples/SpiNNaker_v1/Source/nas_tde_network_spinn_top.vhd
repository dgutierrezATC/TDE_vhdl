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
-- Title      : nas_tde_network_spinn_top
-- Project    : TDE_vhdl
-------------------------------------------------------------------------------
-- File       : nas_tde_network_spinn_top.vhd
-- Author     : Daniel Gutierrez-Galan
-- Company    : University of Seville
-- Created    : 2021-11-29
-- Last update: 2021-11-29
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2021 University of Seville
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-06-17  1.0      dgutierrez      Created
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Libraries
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------
entity nas_tde_network_spinn_top is

    port(
        ----Clock and external reset button----
        i_ext_clock              : in  std_logic;
        i_ext_nreset             : in  std_logic;
        ----Spikes source: from external world to FPGA----
        --NAS I2S Bus
        i_nas_i2s_bclk           : in  std_logic;
        i_nas_i2s_din            : in  std_logic;
        i_nas_i2s_lr             : in  std_logic;
        ----Processing interface----
        --Data: FPGA to SpiNNaker
        o_data_out_to_spinnaker  : out std_logic_vector(6 downto 0);
        i_ack_out_from_spinnaker : in  std_logic
        );
end nas_tde_network_spinn_top;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture Structural of nas_tde_network_spinn_top is

    ---------------------------------------------------------------------------
    -- Signals declaration
    ---------------------------------------------------------------------------

    --Signals to connect AER interface from OpenNAS module to SpiNN-AER interface module
    signal aer_data_NAS_to_spinn : std_logic_vector(15 downto 0);
    signal aer_req_NAS_to_spinn  : std_logic;
    signal aer_ack_NAS_to_spinn  : std_logic;
	 
	 -- Inverted reset
	 signal w_nreset : std_logic;

    ---------------------------------------------------------------------------
    -- Components declaration
    ---------------------------------------------------------------------------

    --
    -- NAS with a TDE network inside
    --
    component OpenNas_Cascade_STEREO_64ch is
        port(
            clock        : in  std_logic;
            rst_ext      : in  std_logic;
            --I2S Bus
            i2s_bclk     : in  std_logic;
            i2s_d_in     : in  std_logic;
            i2s_lr       : in  std_logic;
            --AER Output
            AER_DATA_OUT : out std_logic_vector(15 downto 0);
            AER_REQ      : out std_logic;
            AER_ACK      : in  std_logic
            );
    end component;
	
	--
	-- SpiNNaker - AER interface v1
	--
	component spinn_aer_if is
		port (
			clk                    : in  std_logic;
			data_2of7_to_spinnaker : out std_logic_vector(6 downto 0);
			ack_from_spinnaker     : in  std_logic;
			aer_req                : in  std_logic;
			aer_data               : in  std_logic_vector(15 downto 0);
			aer_ack                : out std_logic;
			reset                  : in  std_logic
		);
	end component;

begin  -- architecture Structural

---------------------------------------------------------------------------
    -- Components instantiation
    ---------------------------------------------------------------------------

    --
    -- NAS with a TDE network inside
    --
    U_NAS : OpenNas_Cascade_STEREO_64ch
        port map(
            clock        => i_ext_clock,
            rst_ext      => i_ext_nreset,
            --I2S input data
            i2s_bclk     => i_nas_i2s_bclk,
            i2s_d_in     => i_nas_i2s_din,
            i2s_lr       => i_nas_i2s_lr,
            --AER Output
            AER_DATA_OUT => aer_data_NAS_to_spinn,
            AER_REQ      => aer_req_NAS_to_spinn,
            AER_ACK      => aer_ack_NAS_to_spinn
            );
	
	--
	-- SpiNNaker - AER interface v1
	--
	w_nreset <= not i_ext_nreset;
	
	U_spinn_aer_if: spinn_aer_if
		port map(
			clk                    => i_ext_clock,
			data_2of7_to_spinnaker => o_data_out_to_spinnaker,
			ack_from_spinnaker     => i_ack_out_from_spinnaker,
			aer_req                => aer_req_NAS_to_spinn,
			aer_data               => aer_data_NAS_to_spinn,
			aer_ack                => aer_ack_NAS_to_spinn,
			reset                  => w_nreset
			);

end Structural;
