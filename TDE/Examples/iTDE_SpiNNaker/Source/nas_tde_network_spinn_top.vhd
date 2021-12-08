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
        i_ack_out_from_spinnaker : in  std_logic;
        --Data: SpiNNaker to FPGA
        i_data_in_from_spinnaker : in  std_logic_vector(6 downto 0);
        o_ack_in_to_spinnaker    : out std_logic;
        --SpiNNaker driver - User interface
        o_spinn_ui_status_active : out std_logic;
        o_spinn_ui_status_reset  : out std_logic;
        o_spinn_ui_status_dump   : out std_logic;
        o_spinn_ui_status_error  : out std_logic
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

    --Signals to connect AER interface from SpiNN-AER interface module with AER processing module
    signal aer_data_spinn_to_fpga : std_logic_vector(15 downto 0);
    signal aer_req_spinn_to_fpga  : std_logic;
    signal aer_ack_spinn_to_fpga  : std_logic;

    --Dummy signals
    signal modesel : std_logic;
    signal d_7seg  : std_logic_vector(7 downto 0);
    signal strobe  : std_logic_vector(3 downto 0);

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
    -- SpiNNaker - AER interface
    --

    component raggedstone_spinn_aer_if_top is
        port(
            ext_nreset : in std_logic;
            ext_clk    : in std_logic;

            --// display interface (7-segment and leds)
            ext_mode_sel : in  std_logic;
            ext_7seg     : out std_logic_vector(7 downto 0);
            ext_strobe   : out std_logic_vector(3 downto 0);
            ext_led2     : out std_logic;
            ext_led3     : out std_logic;
            ext_led4     : out std_logic;
            ext_led5     : out std_logic;

            --// input from SpiNNaker link interface
            data_2of7_from_spinnaker : in  std_logic_vector(6 downto 0);
            ack_to_spinnaker         : out std_logic;

            --// output to SpiNNaker link interface
            data_2of7_to_spinnaker : out std_logic_vector(6 downto 0);
            ack_from_spinnaker     : in  std_logic;

            --// input from AER device interface
            iaer_data : in  std_logic_vector(15 downto 0);
            iaer_req  : in  std_logic;
            iaer_ack  : out std_logic;

            --// output to AER device interface
            oaer_data : out std_logic_vector(15 downto 0);
            oaer_req  : out std_logic;
            oaer_ack  : in  std_logic
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
    -- SpiNNaker - AER interface
    --
    U_SpiNNaker_driver : raggedstone_spinn_aer_if_top
        port map(
            ext_nreset => i_ext_nreset,
            ext_clk    => i_ext_clock,

            --// display interface (7-segment and leds)
            ext_mode_sel => modesel,
            ext_7seg     => d_7seg,
            ext_strobe   => strobe,
            ext_led2     => o_spinn_ui_status_active,
            ext_led3     => o_spinn_ui_status_reset,
            ext_led4     => o_spinn_ui_status_dump,
            ext_led5     => o_spinn_ui_status_error,

            --// input from SpiNNaker link interface
            data_2of7_from_spinnaker => i_data_in_from_spinnaker,
            ack_to_spinnaker         => o_ack_in_to_spinnaker,

            --// output to SpiNNaker link interface
            data_2of7_to_spinnaker => o_data_out_to_spinnaker,
            ack_from_spinnaker     => i_ack_out_from_spinnaker,

            --// input from AER device interface
            iaer_data => aer_data_NAS_to_spinn,
            iaer_req  => aer_req_NAS_to_spinn,
            iaer_ack  => aer_ack_NAS_to_spinn,

            --// output to AER device interface
            oaer_data => aer_data_spinn_to_fpga,
            oaer_req  => aer_req_spinn_to_fpga,
            oaer_ack  => aer_ack_spinn_to_fpga
            );

end Structural;
