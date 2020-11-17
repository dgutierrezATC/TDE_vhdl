##/////////////////////////////////////////////////////////////////////////////////
##//                                                                             //
##//    Copyright  2020  Daniel Gutierrez-Galan                                  //
##//                                                                             //
##//    This file is part of the TDE_vhdl project.                               //
##//                                                                             //
##//    TDE_vhdl is free software: you can redistribute it and/or modify         //
##//    it under the terms of the GNU General Public License as published by     //
##//    the Free Software Foundation, either version 3 of the License, or        //
##//    (at your option) any later version.                                      //
##//                                                                             //
##//    THE_vhdl is distributed in the hope that it will be useful,              //
##//    but WITHOUT ANY WARRANTY; without even the implied warranty of           //
##//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.See the              //
##//    GNU General Public License for more details.                             //
##//                                                                             //
##//    You should have received a copy of the GNU General Public License        //
##//    along with TDE_vhdl. If not, see <http://www.gnu.org/licenses/>.         //
##//                                                                             //
##/////////////////////////////////////////////////////////////////////////////////

##-----------------------------------------------------------------------------
## Title      : tde_network_constraints
## Project    : TDE_vhdl
##-----------------------------------------------------------------------------
## File       : tde_network_constraints.xdc
## Author     : Daniel Gutierrez-Galan
## Company    : University of Seville
## Created    : 2020-10-14
## Last update: 2020-10-14
## Platform   : 
## Standard   : VHDL'93/02
##-----------------------------------------------------------------------------
## Description: 
##-----------------------------------------------------------------------------
## Copyright (c) 2020 University of Seville
##-----------------------------------------------------------------------------
## Revisions  :
## Date        Version  Author  Description
## 2020-06-17  1.0      dgutierrez	Created
##-----------------------------------------------------------------------------

##-----------------------------------------------------------------------------
## Clock
##-----------------------------------------------------------------------------
create_clock -period 20 [get_ports i_clock]

set_property PACKAGE_PIN P15 [get_ports i_clock]
set_property IOSTANDARD LVCMOS33 [get_ports i_clock]

##-----------------------------------------------------------------------------
## Entity signals
##-----------------------------------------------------------------------------
set_property PACKAGE_PIN M6 [get_ports i_nreset]
set_property IOSTANDARD LVCMOS33 [get_ports i_nreset]

set_property PACKAGE_PIN N5 [get_ports i_tr_tick]
set_property IOSTANDARD LVCMOS33 [get_ports i_tr_tick]

#set_property PACKAGE_PIN L6 [get_ports i_left_stim]
#set_property IOSTANDARD LVCMOS33 [get_ports i_left_stim]

#set_property PACKAGE_PIN P4 [get_ports i_right_stim]
#set_property IOSTANDARD LVCMOS33 [get_ports i_right_stim]

set_property PACKAGE_PIN L6 [get_ports i_facilitatory]
set_property IOSTANDARD LVCMOS33 [get_ports i_facilitatory]

set_property PACKAGE_PIN P4 [get_ports i_trigger]
set_property IOSTANDARD LVCMOS33 [get_ports i_trigger]


set_property PACKAGE_PIN L5 [get_ports {o_output_spikes[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_output_spikes[0]}]

set_property PACKAGE_PIN P3 [get_ports {o_output_spikes[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_output_spikes[1]}]

set_property PACKAGE_PIN N4 [get_ports {o_output_spikes[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_output_spikes[2]}]

set_property PACKAGE_PIN T1 [get_ports {o_output_spikes[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_output_spikes[3]}]

#set_property PACKAGE_PIN M4 [get_ports {o_output_spikes[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {o_output_spikes[4]}]

#set_property PACKAGE_PIN R1 [get_ports {o_output_spikes[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {o_output_spikes[5]}]

#set_property PACKAGE_PIN M3 [get_ports {o_output_spikes[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {o_output_spikes[6]}]

#set_property PACKAGE_PIN R2 [get_ports {o_output_spikes[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {o_output_spikes[7]}]