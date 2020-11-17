--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: fpga_test_top_synthesis.vhd
-- /___/   /\     Timestamp: Wed Jul 01 12:48:47 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm fpga_test_top -w -dir netgen/synthesis -ofmt vhdl -sim fpga_test_top.ngc fpga_test_top_synthesis.vhd 
-- Device	: xc6slx150t-3-fgg484
-- Input file	: fpga_test_top.ngc
-- Output file	: D:\Universidad\Repositorios\GitHub\Doctorado\TDE_vhdl\TDE\Examples\FPGA_test\fpga_ise\netgen\synthesis\fpga_test_top_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: fpga_test_top
-- Xilinx	: D:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity fpga_test_top is
  port (
    i_clock : in STD_LOGIC := 'X'; 
    i_nreset : in STD_LOGIC := 'X'; 
    i_aer_ack_out : in STD_LOGIC := 'X'; 
    o_output_spike : out STD_LOGIC; 
    o_aer_req_out : out STD_LOGIC; 
    o_aer_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end fpga_test_top;

architecture Structure of fpga_test_top is
  signal i_clock_BUFGP_0 : STD_LOGIC; 
  signal i_nreset_IBUF_1 : STD_LOGIC; 
  signal o_output_spike_OBUF_2 : STD_LOGIC; 
  signal w_tr_tick_3 : STD_LOGIC; 
  signal w_facilitatory_4 : STD_LOGIC; 
  signal w_trigger_5 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_25_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_24_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_23_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_22_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_21_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_20_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_19_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_18_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_17_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_16_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_15_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_14_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_13_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_12_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_11_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_10_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_9_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_8_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_7_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_6_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_5_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_4_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_3_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_2_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_1_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_0_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_25_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_24_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_23_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_22_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_21_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_20_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_19_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_18_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_17_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_16_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_15_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_14_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_13_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_12_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_11_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_10_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_9_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_8_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_7_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_6_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_5_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_4_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_3_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_2_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_1_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_0_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_24_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_23_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_22_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_21_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_20_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_19_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_18_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_17_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_16_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_15_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_14_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_13_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_12_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_11_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_10_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_9_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_8_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_7_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_6_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_5_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_4_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_3_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_2_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_1_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_0_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_24_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_23_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_22_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_21_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_20_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_19_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_18_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_17_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_16_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_15_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_14_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_13_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_12_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_11_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_10_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_9_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_8_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_7_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_6_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_5_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_4_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_3_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_2_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_1_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_5_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_4_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_3_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_2_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_1_Q : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o : STD_LOGIC; 
  signal PWR_6_o_p_countdown_v_tr_tick_counter_5_equal_3_o : STD_LOGIC; 
  signal i_nreset_inv : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_0_Q_142 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_Q_143 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_Q_144 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_Q_145 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_Q_146 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_Q_147 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_Q_148 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_Q_149 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_Q_150 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_Q_151 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_Q_152 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_Q_153 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_Q_154 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_Q_155 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_Q_156 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_Q_157 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_Q_158 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_Q_159 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_Q_160 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_Q_161 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_Q_162 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_Q_163 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_Q_164 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_Q_165 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_24_Q_166 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_lut_0_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_0_Q_168 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_Q_169 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_Q_170 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_Q_171 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_Q_172 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_Q_173 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_Q_174 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_Q_175 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_Q_176 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_Q_177 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_Q_178 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_Q_179 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_Q_180 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_Q_181 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_Q_182 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_Q_183 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_Q_184 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_Q_185 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_Q_186 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_Q_187 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_Q_188 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_Q_189 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_Q_190 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_Q_191 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_24_Q_192 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_lut_0_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_0_Q_195 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_Q_196 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_Q_197 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_Q_198 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_Q_199 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_Q_200 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_Q_201 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_Q_202 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_Q_203 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_Q_204 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_Q_205 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_Q_206 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_Q_207 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_Q_208 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_Q_209 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_Q_210 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_Q_211 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_Q_212 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_Q_213 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_Q_214 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_Q_215 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_Q_216 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_Q_217 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_Q_218 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_24_Q_219 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o : STD_LOGIC; 
  signal tde_1_w_sgen_val2gen_clear : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q_229 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q_230 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q_231 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_8_Q_232 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q_233 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q_234 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q_235 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_6_Q_236 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q_237 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q_238 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q_239 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q_240 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q_241 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q_242 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_2_Q_243 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q_244 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_1_Q_245 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_1_Q_246 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_0_Q_247 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_0_Q_248 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q_296 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q_298 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q_299 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q_301 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q_302 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q_304 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q_306 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_2_Q_308 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter9 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter8 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter7 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter6 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter5 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter4 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter3 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter2 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter1 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_n0024_inv : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter9 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter8 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter7 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter6 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter5 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter4 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter3 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter2 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter1 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_n0024_inv : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_1_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_0_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_Q : STD_LOGIC; 
  signal tde_1_reg_0_n0011_inv : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_15_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_14_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_13_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_12_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_11_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_10_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_9_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_8_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_7_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_6_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_5_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_4_Q : STD_LOGIC; 
  signal tde_1_r_trigger_latched_449 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_7_Q_480 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_6_Q_481 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_6_Q_482 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_5_Q_483 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_5_Q_484 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_4_Q_485 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_4_Q_486 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_Q_487 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_3_Q_488 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_2_Q_489 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_2_Q_490 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_1_Q_491 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_1_Q_492 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_0_Q_493 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_0_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_30_Q_495 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_Q_496 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_Q_497 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_Q_498 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_Q_499 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_Q_500 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_Q_501 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_Q_502 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_Q_503 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_Q_504 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_Q_505 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_Q_506 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_Q_507 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_Q_508 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_Q_509 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_Q_510 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_Q_511 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_Q_512 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_Q_513 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_Q_514 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_Q_515 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_Q_516 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_Q_517 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_Q_518 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_Q_519 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_Q_520 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_Q_521 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_Q_522 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_Q_523 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_Q_524 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_0_Q_525 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_lut_0_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi6_529 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi5_532 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi4_535 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi3_538 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi2_541 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi1_544 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_7_Q_548 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_6_Q_549 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_6_Q_550 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_5_Q_551 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_5_Q_552 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_4_Q_553 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_4_Q_554 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_Q_555 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_3_Q_556 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_2_Q_557 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_2_Q_558 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_1_Q_559 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_1_Q_560 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_0_Q_561 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_0_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle15 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle14 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle13 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle12 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle11 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle10 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle9 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle8 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle7 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle6 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle5 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle4 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle3 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle2 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle1 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle : STD_LOGIC; 
  signal tde_1_spike_generator_0_i_write_inv : STD_LOGIC; 
  signal tde_1_spike_generator_0_n0047_inv : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter31 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter30 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter29 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter28 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter27 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter26 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter25 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter24 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter23 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter22 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter21 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter20 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter19 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter18 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter17 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter16 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter15 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter14 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter13 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter12 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter11 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter10 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter9 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter8 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter7 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter6 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter5 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter4 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter3 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter2 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter1 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter : STD_LOGIC; 
  signal tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o_inv : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_0_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_1_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_2_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_3_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_4_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_5_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_6_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_7_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_8_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_9_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_10_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_11_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_12_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_13_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_14_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_15_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_16_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_17_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_18_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_19_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_20_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_21_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_22_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_23_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_24_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_25_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_26_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_27_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_28_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_29_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_30_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_31_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o : STD_LOGIC; 
  signal tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o : STD_LOGIC; 
  signal tde_1_spike_generator_0_w_tick_806 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_Q : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_1_820 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_2_821 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_3_822 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_Q : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_1_824 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_2_825 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_3_826 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_4_827 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_5_828 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_Q : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o2 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21_835 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o2 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21_837 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_n0024_inv1_839 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_n0024_inv2_840 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmux_o_spike_out1 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmux_o_spike_out11_842 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_1 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_rt_864 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_rt_865 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_rt_866 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_rt_867 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_rt_868 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_rt_869 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_rt_870 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_rt_871 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_rt_872 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_rt_873 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_rt_874 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_rt_875 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_rt_876 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_rt_877 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_rt_878 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_rt_879 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_rt_880 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_rt_881 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_rt_882 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_rt_883 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_rt_884 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_rt_885 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_rt_886 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_24_rt_887 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_rt_888 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_rt_889 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_rt_890 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_rt_891 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_rt_892 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_rt_893 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_rt_894 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_rt_895 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_rt_896 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_rt_897 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_rt_898 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_rt_899 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_rt_900 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_rt_901 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_rt_902 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_rt_903 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_rt_904 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_rt_905 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_rt_906 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_rt_907 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_rt_908 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_rt_909 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_rt_910 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_24_rt_911 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_rt_912 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_rt_913 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_rt_914 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_rt_915 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_rt_916 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_rt_917 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_rt_918 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_rt_919 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_rt_920 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_rt_921 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_rt_922 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_rt_923 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_rt_924 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_rt_925 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_rt_926 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_rt_927 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_rt_928 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_rt_929 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_rt_930 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_rt_931 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_rt_932 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_rt_933 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_rt_934 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_24_rt_935 : STD_LOGIC; 
  signal tde_1_add_0_Madd_o_output_data_cy_14_rt_936 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_rt_937 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_rt_938 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_30_rt_939 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_rt_940 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_rt_941 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_rt_942 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_rt_943 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_rt_944 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_rt_945 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_rt_946 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_rt_947 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_rt_948 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_rt_949 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_rt_950 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_rt_951 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_rt_952 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_rt_953 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_rt_954 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_rt_955 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_rt_956 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_rt_957 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_rt_958 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_rt_959 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_rt_960 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_rt_961 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_rt_962 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_rt_963 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_rt_964 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_rt_965 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_rt_966 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_rt_967 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_rt_968 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_rt_969 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o_inv1_lut : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_CARRYOUTF_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_CARRYOUT_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_16_UNCONNECTED : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter : STD_LOGIC_VECTOR ( 24 downto 1 ); 
  signal p_countdown_v_tr_tick_counter : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal tde_1_reg_0_o_data_out : STD_LOGIC_VECTOR ( 15 downto 4 ); 
  signal tde_1_add_0_Madd_o_output_data_cy : STD_LOGIC_VECTOR ( 14 downto 4 ); 
  signal tde_1_add_0_Madd_o_output_data_lut : STD_LOGIC_VECTOR ( 13 downto 4 ); 
  signal tde_1_sub_0_Msub_o_output_data_cy : STD_LOGIC_VECTOR ( 14 downto 2 ); 
  signal tde_1_sub_0_Msub_o_output_data_lut : STD_LOGIC_VECTOR ( 12 downto 2 ); 
  signal tde_1_timer_1_basic_timer_1_p_countdown_v_counter : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal tde_1_timer_0_basic_timer_1_p_countdown_v_counter : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal tde_1_w_clkdiv_value : STD_LOGIC_VECTOR ( 15 downto 2 ); 
  signal tde_1_w_value_to_generate : STD_LOGIC_VECTOR ( 15 downto 4 ); 
  signal tde_1_w_sgen_clkdiv_current_value : STD_LOGIC_VECTOR ( 11 downto 2 ); 
  signal tde_1_reg_1_o_data_out : STD_LOGIC_VECTOR ( 11 downto 2 ); 
  signal tde_1_spike_generator_0_Mcompar_w_generate_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal tde_1_spike_generator_0_Mcount_r_cicle_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal tde_1_spike_generator_0_Mcount_r_cicle_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal tde_1_spike_generator_0_w_mult_result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal tde_1_spike_generator_0_r_cicle : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal tde_1_spike_generator_0_r_value_to_generate : STD_LOGIC_VECTOR ( 15 downto 4 ); 
begin
  XST_VCC : VCC
    port map (
      P => tde_1_sub_0_Msub_o_output_data_lut(12)
    );
  XST_GND : GND
    port map (
      G => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q
    );
  w_tr_tick : FDC
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => PWR_6_o_p_countdown_v_tr_tick_counter_5_equal_3_o,
      Q => w_tr_tick_3
    );
  w_facilitatory : FDC
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o,
      Q => w_facilitatory_4
    );
  w_trigger : FDC
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o,
      Q => w_trigger_5
    );
  p_stimuli_generation_v_faci_gen_internal_counter_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_1_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(1)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_2_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(2)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_3_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(3)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_4_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(4)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_5_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(5)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_6_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(6)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_7_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(7)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_8_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(8)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_9_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(9)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_10_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(10)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_11_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(11)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_12_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(12)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_13_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(13)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_14_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(14)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_15_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(15)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_16_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(16)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_17_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(17)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_18_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(18)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_19_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(19)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_20_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(20)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_21_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(21)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_22_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(22)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_23 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_23_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(23)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_24 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_24_Q,
      Q => p_stimuli_generation_v_faci_gen_internal_counter(24)
    );
  p_countdown_v_tr_tick_counter_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_Q,
      Q => p_countdown_v_tr_tick_counter(0)
    );
  p_countdown_v_tr_tick_counter_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_1_Q,
      Q => p_countdown_v_tr_tick_counter(1)
    );
  p_countdown_v_tr_tick_counter_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_2_Q,
      Q => p_countdown_v_tr_tick_counter(2)
    );
  p_countdown_v_tr_tick_counter_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_3_Q,
      Q => p_countdown_v_tr_tick_counter(3)
    );
  p_countdown_v_tr_tick_counter_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_4_Q,
      Q => p_countdown_v_tr_tick_counter(4)
    );
  p_countdown_v_tr_tick_counter_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_5_Q,
      Q => p_countdown_v_tr_tick_counter(5)
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_0_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_1,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_0_Q_142
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_0_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_1,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_0_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_0_Q_142,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_rt_864,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_Q_143
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_1_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_0_Q_142,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_rt_864,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_1_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_Q_143,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_rt_865,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_Q_144
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_Q_143,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_rt_865,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_2_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_Q_144,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_rt_866,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_Q_145
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_Q_144,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_rt_866,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_3_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_Q_145,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_rt_867,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_Q_146
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_Q_145,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_rt_867,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_4_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_Q_146,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_rt_868,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_Q_147
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_5_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_Q_146,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_rt_868,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_5_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_Q_147,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_rt_869,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_Q_148
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_6_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_Q_147,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_rt_869,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_6_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_Q_148,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_rt_870,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_Q_149
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_7_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_Q_148,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_rt_870,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_7_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_Q_149,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_rt_871,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_Q_150
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_8_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_Q_149,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_rt_871,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_8_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_Q_150,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_rt_872,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_Q_151
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_9_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_Q_150,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_rt_872,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_9_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_Q_151,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_rt_873,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_Q_152
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_10_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_Q_151,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_rt_873,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_10_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_Q_152,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_rt_874,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_Q_153
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_11_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_Q_152,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_rt_874,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_11_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_Q_153,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_rt_875,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_Q_154
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_12_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_Q_153,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_rt_875,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_12_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_Q_154,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_rt_876,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_Q_155
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_13_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_Q_154,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_rt_876,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_13_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_Q_155,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_rt_877,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_Q_156
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_14_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_Q_155,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_rt_877,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_14_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_Q_156,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_rt_878,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_Q_157
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_15_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_Q_156,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_rt_878,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_15_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_Q_157,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_rt_879,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_Q_158
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_16_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_Q_157,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_rt_879,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_16_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_Q_158,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_rt_880,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_Q_159
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_17_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_Q_158,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_rt_880,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_17_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_Q_159,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_rt_881,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_Q_160
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_18_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_Q_159,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_rt_881,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_18_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_Q_160,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_rt_882,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_Q_161
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_19_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_Q_160,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_rt_882,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_19_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_Q_161,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_rt_883,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_Q_162
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_20_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_Q_161,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_rt_883,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_20_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_Q_162,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_rt_884,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_Q_163
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_21_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_Q_162,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_rt_884,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_21_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_Q_163,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_rt_885,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_Q_164
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_22_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_Q_163,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_rt_885,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_22_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_Q_164,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_rt_886,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_Q_165
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_23_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_Q_164,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_rt_886,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_23_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_24_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_Q_165,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_24_rt_887,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_24_Q_166
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_24_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_Q_165,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_24_rt_887,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_24_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_24_Q_166,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_25_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_0_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_lut_0_Q,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_0_Q_168
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_0_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_lut_0_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_0_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_0_Q_168,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_rt_888,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_Q_169
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_1_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_0_Q_168,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_rt_888,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_1_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_Q_169,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_rt_889,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_Q_170
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_Q_169,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_rt_889,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_2_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_Q_170,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_rt_890,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_Q_171
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_Q_170,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_rt_890,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_3_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_Q_171,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_rt_891,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_Q_172
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_Q_171,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_rt_891,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_4_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_Q_172,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_rt_892,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_Q_173
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_5_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_Q_172,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_rt_892,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_5_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_Q_173,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_rt_893,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_Q_174
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_6_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_Q_173,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_rt_893,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_6_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_Q_174,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_rt_894,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_Q_175
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_7_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_Q_174,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_rt_894,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_7_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_Q_175,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_rt_895,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_Q_176
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_8_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_Q_175,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_rt_895,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_8_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_Q_176,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_rt_896,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_Q_177
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_9_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_Q_176,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_rt_896,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_9_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_Q_177,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_rt_897,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_Q_178
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_10_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_Q_177,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_rt_897,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_10_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_Q_178,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_rt_898,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_Q_179
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_11_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_Q_178,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_rt_898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_11_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_Q_179,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_rt_899,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_Q_180
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_12_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_Q_179,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_rt_899,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_12_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_Q_180,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_rt_900,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_Q_181
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_13_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_Q_180,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_rt_900,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_13_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_Q_181,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_rt_901,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_Q_182
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_14_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_Q_181,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_rt_901,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_14_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_Q_182,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_rt_902,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_Q_183
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_15_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_Q_182,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_rt_902,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_15_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_Q_183,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_rt_903,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_Q_184
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_16_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_Q_183,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_rt_903,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_16_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_Q_184,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_rt_904,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_Q_185
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_17_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_Q_184,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_rt_904,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_17_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_Q_185,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_rt_905,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_Q_186
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_18_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_Q_185,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_rt_905,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_18_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_Q_186,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_rt_906,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_Q_187
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_19_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_Q_186,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_rt_906,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_19_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_Q_187,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_rt_907,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_Q_188
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_20_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_Q_187,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_rt_907,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_20_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_Q_188,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_rt_908,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_Q_189
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_21_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_Q_188,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_rt_908,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_21_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_Q_189,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_rt_909,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_Q_190
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_22_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_Q_189,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_rt_909,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_22_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_Q_190,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_rt_910,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_Q_191
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_23_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_Q_190,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_rt_910,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_23_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_24_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_Q_191,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_24_rt_911,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_24_Q_192
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_24_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_Q_191,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_24_rt_911,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_24_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_24_Q_192,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_25_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_0_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_lut_0_Q,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_0_Q_195
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_0_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_lut_0_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_0_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_0_Q_195,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_rt_912,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_Q_196
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_1_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_0_Q_195,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_rt_912,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_1_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_Q_196,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_rt_913,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_Q_197
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_Q_196,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_rt_913,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_2_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_Q_197,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_rt_914,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_Q_198
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_Q_197,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_rt_914,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_3_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_Q_198,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_rt_915,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_Q_199
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_Q_198,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_rt_915,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_4_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_Q_199,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_rt_916,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_Q_200
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_5_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_Q_199,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_rt_916,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_5_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_Q_200,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_rt_917,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_Q_201
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_6_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_Q_200,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_rt_917,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_6_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_Q_201,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_rt_918,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_Q_202
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_7_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_Q_201,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_rt_918,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_7_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_Q_202,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_rt_919,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_Q_203
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_8_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_Q_202,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_rt_919,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_8_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_Q_203,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_rt_920,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_Q_204
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_9_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_Q_203,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_rt_920,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_9_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_Q_204,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_rt_921,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_Q_205
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_10_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_Q_204,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_rt_921,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_10_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_Q_205,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_rt_922,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_Q_206
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_11_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_Q_205,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_rt_922,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_11_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_Q_206,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_rt_923,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_Q_207
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_12_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_Q_206,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_rt_923,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_12_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_Q_207,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_rt_924,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_Q_208
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_13_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_Q_207,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_rt_924,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_13_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_Q_208,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_rt_925,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_Q_209
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_14_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_Q_208,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_rt_925,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_14_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_Q_209,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_rt_926,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_Q_210
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_15_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_Q_209,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_rt_926,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_15_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_Q_210,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_rt_927,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_Q_211
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_16_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_Q_210,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_rt_927,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_16_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_Q_211,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_rt_928,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_Q_212
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_17_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_Q_211,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_rt_928,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_17_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_Q_212,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_rt_929,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_Q_213
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_18_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_Q_212,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_rt_929,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_18_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_Q_213,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_rt_930,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_Q_214
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_19_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_Q_213,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_rt_930,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_19_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_Q_214,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_rt_931,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_Q_215
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_20_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_Q_214,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_rt_931,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_20_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_Q_215,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_rt_932,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_Q_216
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_21_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_Q_215,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_rt_932,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_21_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_Q_216,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_rt_933,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_Q_217
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_22_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_Q_216,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_rt_933,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_22_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_Q_217,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_rt_934,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_Q_218
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_23_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_Q_217,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_rt_934,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_23_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_24_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_Q_218,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_24_rt_935,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_24_Q_219
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_24_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_Q_218,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_24_rt_935,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_24_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_24_Q_219,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q_229,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_9_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q_231,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q_230,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q_231,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q_230,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q_229
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(9),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q_230
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_8_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q_233,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_8_Q_232,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q_233,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_8_Q_232,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q_231
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(8),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_8_Q_232
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_7_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q_235,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q_234,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q_235,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q_234,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q_233
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(7),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q_234
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_6_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q_237,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_6_Q_236,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q_237,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_6_Q_236,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q_235
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(6),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_6_Q_236
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_5_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q_239,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q_238,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q_239,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q_238,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q_237
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(5),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q_238
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_4_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q_241,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q_240,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q_241,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q_240,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q_239
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(4),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q_240
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_3_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_2_Q_243,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q_242,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_2_Q_243,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q_242,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q_241
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(3),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q_242
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_2_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_1_Q_245,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q_244,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_2_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_1_Q_245,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q_244,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_2_Q_243
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(2),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q_244
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_1_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_0_Q_247,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_1_Q_246,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_1_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_1_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_0_Q_247,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_1_Q_246,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_1_Q_245
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(1),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_1_Q_246
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_0_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_0_Q_248,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_0_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_0_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_0_Q_248,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_0_Q_247
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(0),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_0_Q_248
    );
  tde_1_add_0_Madd_o_output_data_xor_15_Q : XORCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(14),
      LI => tde_1_reg_0_o_data_out(15),
      O => tde_1_w_value_to_generate(15)
    );
  tde_1_add_0_Madd_o_output_data_xor_14_Q : XORCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(13),
      LI => tde_1_add_0_Madd_o_output_data_cy_14_rt_936,
      O => tde_1_w_value_to_generate(14)
    );
  tde_1_add_0_Madd_o_output_data_cy_14_Q : MUXCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(13),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_add_0_Madd_o_output_data_cy_14_rt_936,
      O => tde_1_add_0_Madd_o_output_data_cy(14)
    );
  tde_1_add_0_Madd_o_output_data_xor_13_Q : XORCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(12),
      LI => tde_1_add_0_Madd_o_output_data_lut(13),
      O => tde_1_w_value_to_generate(13)
    );
  tde_1_add_0_Madd_o_output_data_cy_13_Q : MUXCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(12),
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
      S => tde_1_add_0_Madd_o_output_data_lut(13),
      O => tde_1_add_0_Madd_o_output_data_cy(13)
    );
  tde_1_add_0_Madd_o_output_data_lut_13_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
      I1 => tde_1_reg_0_o_data_out(13),
      O => tde_1_add_0_Madd_o_output_data_lut(13)
    );
  tde_1_add_0_Madd_o_output_data_xor_12_Q : XORCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(11),
      LI => tde_1_add_0_Madd_o_output_data_lut(12),
      O => tde_1_w_value_to_generate(12)
    );
  tde_1_add_0_Madd_o_output_data_cy_12_Q : MUXCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(11),
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
      S => tde_1_add_0_Madd_o_output_data_lut(12),
      O => tde_1_add_0_Madd_o_output_data_cy(12)
    );
  tde_1_add_0_Madd_o_output_data_lut_12_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
      I1 => tde_1_reg_0_o_data_out(12),
      O => tde_1_add_0_Madd_o_output_data_lut(12)
    );
  tde_1_add_0_Madd_o_output_data_xor_11_Q : XORCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(10),
      LI => tde_1_add_0_Madd_o_output_data_lut(11),
      O => tde_1_w_value_to_generate(11)
    );
  tde_1_add_0_Madd_o_output_data_cy_11_Q : MUXCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(10),
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
      S => tde_1_add_0_Madd_o_output_data_lut(11),
      O => tde_1_add_0_Madd_o_output_data_cy(11)
    );
  tde_1_add_0_Madd_o_output_data_lut_11_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
      I1 => tde_1_reg_0_o_data_out(11),
      O => tde_1_add_0_Madd_o_output_data_lut(11)
    );
  tde_1_add_0_Madd_o_output_data_xor_10_Q : XORCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(9),
      LI => tde_1_add_0_Madd_o_output_data_lut(10),
      O => tde_1_w_value_to_generate(10)
    );
  tde_1_add_0_Madd_o_output_data_cy_10_Q : MUXCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(9),
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
      S => tde_1_add_0_Madd_o_output_data_lut(10),
      O => tde_1_add_0_Madd_o_output_data_cy(10)
    );
  tde_1_add_0_Madd_o_output_data_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
      I1 => tde_1_reg_0_o_data_out(10),
      O => tde_1_add_0_Madd_o_output_data_lut(10)
    );
  tde_1_add_0_Madd_o_output_data_xor_9_Q : XORCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(8),
      LI => tde_1_add_0_Madd_o_output_data_lut(9),
      O => tde_1_w_value_to_generate(9)
    );
  tde_1_add_0_Madd_o_output_data_cy_9_Q : MUXCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(8),
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      S => tde_1_add_0_Madd_o_output_data_lut(9),
      O => tde_1_add_0_Madd_o_output_data_cy(9)
    );
  tde_1_add_0_Madd_o_output_data_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      I1 => tde_1_reg_0_o_data_out(9),
      O => tde_1_add_0_Madd_o_output_data_lut(9)
    );
  tde_1_add_0_Madd_o_output_data_xor_8_Q : XORCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(7),
      LI => tde_1_add_0_Madd_o_output_data_lut(8),
      O => tde_1_w_value_to_generate(8)
    );
  tde_1_add_0_Madd_o_output_data_cy_8_Q : MUXCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(7),
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      S => tde_1_add_0_Madd_o_output_data_lut(8),
      O => tde_1_add_0_Madd_o_output_data_cy(8)
    );
  tde_1_add_0_Madd_o_output_data_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      I1 => tde_1_reg_0_o_data_out(8),
      O => tde_1_add_0_Madd_o_output_data_lut(8)
    );
  tde_1_add_0_Madd_o_output_data_xor_7_Q : XORCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(6),
      LI => tde_1_add_0_Madd_o_output_data_lut(7),
      O => tde_1_w_value_to_generate(7)
    );
  tde_1_add_0_Madd_o_output_data_cy_7_Q : MUXCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(6),
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      S => tde_1_add_0_Madd_o_output_data_lut(7),
      O => tde_1_add_0_Madd_o_output_data_cy(7)
    );
  tde_1_add_0_Madd_o_output_data_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      I1 => tde_1_reg_0_o_data_out(7),
      O => tde_1_add_0_Madd_o_output_data_lut(7)
    );
  tde_1_add_0_Madd_o_output_data_xor_6_Q : XORCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(5),
      LI => tde_1_add_0_Madd_o_output_data_lut(6),
      O => tde_1_w_value_to_generate(6)
    );
  tde_1_add_0_Madd_o_output_data_cy_6_Q : MUXCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(5),
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      S => tde_1_add_0_Madd_o_output_data_lut(6),
      O => tde_1_add_0_Madd_o_output_data_cy(6)
    );
  tde_1_add_0_Madd_o_output_data_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      I1 => tde_1_reg_0_o_data_out(6),
      O => tde_1_add_0_Madd_o_output_data_lut(6)
    );
  tde_1_add_0_Madd_o_output_data_xor_5_Q : XORCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(4),
      LI => tde_1_add_0_Madd_o_output_data_lut(5),
      O => tde_1_w_value_to_generate(5)
    );
  tde_1_add_0_Madd_o_output_data_cy_5_Q : MUXCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(4),
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      S => tde_1_add_0_Madd_o_output_data_lut(5),
      O => tde_1_add_0_Madd_o_output_data_cy(5)
    );
  tde_1_add_0_Madd_o_output_data_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      I1 => tde_1_reg_0_o_data_out(5),
      O => tde_1_add_0_Madd_o_output_data_lut(5)
    );
  tde_1_add_0_Madd_o_output_data_xor_4_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      LI => tde_1_add_0_Madd_o_output_data_lut(4),
      O => tde_1_w_value_to_generate(4)
    );
  tde_1_add_0_Madd_o_output_data_cy_4_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      S => tde_1_add_0_Madd_o_output_data_lut(4),
      O => tde_1_add_0_Madd_o_output_data_cy(4)
    );
  tde_1_add_0_Madd_o_output_data_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      I1 => tde_1_reg_0_o_data_out(4),
      O => tde_1_add_0_Madd_o_output_data_lut(4)
    );
  tde_1_sub_0_Msub_o_output_data_xor_15_Q : XORCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(14),
      LI => tde_1_sub_0_Msub_o_output_data_lut(12),
      O => tde_1_w_clkdiv_value(15)
    );
  tde_1_sub_0_Msub_o_output_data_xor_14_Q : XORCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(13),
      LI => tde_1_sub_0_Msub_o_output_data_lut(12),
      O => tde_1_w_clkdiv_value(14)
    );
  tde_1_sub_0_Msub_o_output_data_cy_14_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(13),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_sub_0_Msub_o_output_data_lut(12),
      O => tde_1_sub_0_Msub_o_output_data_cy(14)
    );
  tde_1_sub_0_Msub_o_output_data_xor_13_Q : XORCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(12),
      LI => tde_1_sub_0_Msub_o_output_data_lut(12),
      O => tde_1_w_clkdiv_value(13)
    );
  tde_1_sub_0_Msub_o_output_data_cy_13_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(12),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_sub_0_Msub_o_output_data_lut(12),
      O => tde_1_sub_0_Msub_o_output_data_cy(13)
    );
  tde_1_sub_0_Msub_o_output_data_xor_12_Q : XORCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(11),
      LI => tde_1_sub_0_Msub_o_output_data_lut(12),
      O => tde_1_w_clkdiv_value(12)
    );
  tde_1_sub_0_Msub_o_output_data_cy_12_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(11),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_sub_0_Msub_o_output_data_lut(12),
      O => tde_1_sub_0_Msub_o_output_data_cy(12)
    );
  tde_1_sub_0_Msub_o_output_data_xor_11_Q : XORCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(10),
      LI => tde_1_sub_0_Msub_o_output_data_lut(11),
      O => tde_1_w_clkdiv_value(11)
    );
  tde_1_sub_0_Msub_o_output_data_cy_11_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(10),
      DI => tde_1_reg_1_o_data_out(11),
      S => tde_1_sub_0_Msub_o_output_data_lut(11),
      O => tde_1_sub_0_Msub_o_output_data_cy(11)
    );
  tde_1_sub_0_Msub_o_output_data_lut_11_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => tde_1_reg_1_o_data_out(11),
      I1 => tde_1_w_sgen_clkdiv_current_value(11),
      O => tde_1_sub_0_Msub_o_output_data_lut(11)
    );
  tde_1_sub_0_Msub_o_output_data_xor_10_Q : XORCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(9),
      LI => tde_1_sub_0_Msub_o_output_data_lut(10),
      O => tde_1_w_clkdiv_value(10)
    );
  tde_1_sub_0_Msub_o_output_data_cy_10_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(9),
      DI => tde_1_reg_1_o_data_out(10),
      S => tde_1_sub_0_Msub_o_output_data_lut(10),
      O => tde_1_sub_0_Msub_o_output_data_cy(10)
    );
  tde_1_sub_0_Msub_o_output_data_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => tde_1_reg_1_o_data_out(10),
      I1 => tde_1_w_sgen_clkdiv_current_value(10),
      O => tde_1_sub_0_Msub_o_output_data_lut(10)
    );
  tde_1_sub_0_Msub_o_output_data_xor_9_Q : XORCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(8),
      LI => tde_1_sub_0_Msub_o_output_data_lut(9),
      O => tde_1_w_clkdiv_value(9)
    );
  tde_1_sub_0_Msub_o_output_data_cy_9_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(8),
      DI => tde_1_reg_1_o_data_out(9),
      S => tde_1_sub_0_Msub_o_output_data_lut(9),
      O => tde_1_sub_0_Msub_o_output_data_cy(9)
    );
  tde_1_sub_0_Msub_o_output_data_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => tde_1_reg_1_o_data_out(9),
      I1 => tde_1_w_sgen_clkdiv_current_value(9),
      O => tde_1_sub_0_Msub_o_output_data_lut(9)
    );
  tde_1_sub_0_Msub_o_output_data_xor_8_Q : XORCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(7),
      LI => tde_1_sub_0_Msub_o_output_data_lut(8),
      O => tde_1_w_clkdiv_value(8)
    );
  tde_1_sub_0_Msub_o_output_data_cy_8_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(7),
      DI => tde_1_reg_1_o_data_out(8),
      S => tde_1_sub_0_Msub_o_output_data_lut(8),
      O => tde_1_sub_0_Msub_o_output_data_cy(8)
    );
  tde_1_sub_0_Msub_o_output_data_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => tde_1_reg_1_o_data_out(8),
      I1 => tde_1_w_sgen_clkdiv_current_value(8),
      O => tde_1_sub_0_Msub_o_output_data_lut(8)
    );
  tde_1_sub_0_Msub_o_output_data_xor_7_Q : XORCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(6),
      LI => tde_1_sub_0_Msub_o_output_data_lut(7),
      O => tde_1_w_clkdiv_value(7)
    );
  tde_1_sub_0_Msub_o_output_data_cy_7_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(6),
      DI => tde_1_reg_1_o_data_out(7),
      S => tde_1_sub_0_Msub_o_output_data_lut(7),
      O => tde_1_sub_0_Msub_o_output_data_cy(7)
    );
  tde_1_sub_0_Msub_o_output_data_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => tde_1_reg_1_o_data_out(7),
      I1 => tde_1_w_sgen_clkdiv_current_value(7),
      O => tde_1_sub_0_Msub_o_output_data_lut(7)
    );
  tde_1_sub_0_Msub_o_output_data_xor_6_Q : XORCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(5),
      LI => tde_1_sub_0_Msub_o_output_data_lut(6),
      O => tde_1_w_clkdiv_value(6)
    );
  tde_1_sub_0_Msub_o_output_data_cy_6_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(5),
      DI => tde_1_reg_1_o_data_out(6),
      S => tde_1_sub_0_Msub_o_output_data_lut(6),
      O => tde_1_sub_0_Msub_o_output_data_cy(6)
    );
  tde_1_sub_0_Msub_o_output_data_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => tde_1_reg_1_o_data_out(6),
      I1 => tde_1_w_sgen_clkdiv_current_value(6),
      O => tde_1_sub_0_Msub_o_output_data_lut(6)
    );
  tde_1_sub_0_Msub_o_output_data_xor_5_Q : XORCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(4),
      LI => tde_1_sub_0_Msub_o_output_data_lut(5),
      O => tde_1_w_clkdiv_value(5)
    );
  tde_1_sub_0_Msub_o_output_data_cy_5_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(4),
      DI => tde_1_reg_1_o_data_out(5),
      S => tde_1_sub_0_Msub_o_output_data_lut(5),
      O => tde_1_sub_0_Msub_o_output_data_cy(5)
    );
  tde_1_sub_0_Msub_o_output_data_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => tde_1_reg_1_o_data_out(5),
      I1 => tde_1_w_sgen_clkdiv_current_value(5),
      O => tde_1_sub_0_Msub_o_output_data_lut(5)
    );
  tde_1_sub_0_Msub_o_output_data_xor_4_Q : XORCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(3),
      LI => tde_1_sub_0_Msub_o_output_data_lut(4),
      O => tde_1_w_clkdiv_value(4)
    );
  tde_1_sub_0_Msub_o_output_data_cy_4_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(3),
      DI => tde_1_reg_1_o_data_out(4),
      S => tde_1_sub_0_Msub_o_output_data_lut(4),
      O => tde_1_sub_0_Msub_o_output_data_cy(4)
    );
  tde_1_sub_0_Msub_o_output_data_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => tde_1_reg_1_o_data_out(4),
      I1 => tde_1_w_sgen_clkdiv_current_value(4),
      O => tde_1_sub_0_Msub_o_output_data_lut(4)
    );
  tde_1_sub_0_Msub_o_output_data_xor_3_Q : XORCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(2),
      LI => tde_1_sub_0_Msub_o_output_data_lut(3),
      O => tde_1_w_clkdiv_value(3)
    );
  tde_1_sub_0_Msub_o_output_data_cy_3_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(2),
      DI => tde_1_reg_1_o_data_out(3),
      S => tde_1_sub_0_Msub_o_output_data_lut(3),
      O => tde_1_sub_0_Msub_o_output_data_cy(3)
    );
  tde_1_sub_0_Msub_o_output_data_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => tde_1_reg_1_o_data_out(3),
      I1 => tde_1_w_sgen_clkdiv_current_value(3),
      O => tde_1_sub_0_Msub_o_output_data_lut(3)
    );
  tde_1_sub_0_Msub_o_output_data_xor_2_Q : XORCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_lut(12),
      LI => tde_1_sub_0_Msub_o_output_data_lut(2),
      O => tde_1_w_clkdiv_value(2)
    );
  tde_1_sub_0_Msub_o_output_data_cy_2_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_lut(12),
      DI => tde_1_reg_1_o_data_out(2),
      S => tde_1_sub_0_Msub_o_output_data_lut(2),
      O => tde_1_sub_0_Msub_o_output_data_cy(2)
    );
  tde_1_sub_0_Msub_o_output_data_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => tde_1_reg_1_o_data_out(2),
      I1 => tde_1_w_sgen_clkdiv_current_value(2),
      O => tde_1_sub_0_Msub_o_output_data_lut(2)
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q_296,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_9_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q_298,
      LI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q_298,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q,
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q_296
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_8_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q_299,
      LI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_rt_937,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q_299,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_rt_937,
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q_298
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_7_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q_301,
      LI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q_301,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q,
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q_299
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_6_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q_302,
      LI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_rt_938,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q_302,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_rt_938,
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q_301
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_5_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q_304,
      LI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q_304,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q,
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q_302
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_4_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q_306,
      LI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q_306,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q,
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q_304
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_3_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_2_Q_308,
      LI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_2_Q_308,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q,
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q_306
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      LI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_2_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q,
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_2_Q_308
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter9,
      Q => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(9)
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter8,
      Q => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(8)
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter7,
      Q => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(7)
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter6,
      Q => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(6)
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter5,
      Q => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(5)
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter4,
      Q => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(4)
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter3,
      Q => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(3)
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter2,
      Q => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(2)
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter1,
      Q => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(1)
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter,
      Q => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(0)
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_0_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter9,
      Q => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9)
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_0_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter8,
      Q => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8)
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_0_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter7,
      Q => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7)
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_0_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter6,
      Q => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6)
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_0_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter5,
      Q => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5)
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_0_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter4,
      Q => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4)
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_0_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter3,
      Q => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3)
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_0_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter2,
      Q => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2)
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_0_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter1,
      Q => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1)
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_timer_0_basic_timer_1_n0024_inv,
      CLR => i_nreset_inv,
      D => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter,
      Q => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0)
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(8),
      LI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(9),
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter9
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_8_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(7),
      LI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(8),
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter8
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_8_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(7),
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(8),
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(8)
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_7_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(6),
      LI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(7),
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter7
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(6),
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(7),
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(7)
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_6_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(5),
      LI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(6),
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter6
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_6_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(5),
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(6),
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(6)
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_5_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(4),
      LI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(5),
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter5
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_5_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(4),
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(5),
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(5)
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_4_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(3),
      LI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(4),
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter4
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_4_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(3),
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(4),
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(4)
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_3_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(2),
      LI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(3),
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter3
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(2),
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(3),
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(3)
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_2_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(1),
      LI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(2),
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter2
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_2_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(1),
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(2),
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(2)
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_1_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(0),
      LI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(1),
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter1
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_1_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(0),
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(1),
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(1)
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_0_Q : XORCY
    port map (
      CI => w_trigger_5,
      LI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(0),
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_0_Q : MUXCY
    port map (
      CI => w_trigger_5,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(0),
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy(0)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(8),
      LI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(9),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter9
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_8_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(7),
      LI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(8),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter8
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_8_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(7),
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(8),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(8)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_7_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(6),
      LI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(7),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter7
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(6),
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(7),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(7)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_6_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(5),
      LI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(6),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter6
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_6_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(5),
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(6),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(6)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_5_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(4),
      LI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(5),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter5
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_5_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(4),
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(5),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(5)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_4_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(3),
      LI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(4),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter4
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_4_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(3),
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(4),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(4)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_3_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(2),
      LI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(3),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter3
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(2),
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(3),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(3)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_2_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(1),
      LI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(2),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter2
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_2_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(1),
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(2),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(2)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_1_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(0),
      LI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(1),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter1
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_1_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(0),
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(1),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(1)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_0_Q : XORCY
    port map (
      CI => w_facilitatory_4,
      LI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(0),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_0_Q : MUXCY
    port map (
      CI => w_facilitatory_4,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(0),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(0)
    );
  tde_1_reg_1_o_data_out_11 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(9),
      Q => tde_1_reg_1_o_data_out(11)
    );
  tde_1_reg_1_o_data_out_10 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(8),
      Q => tde_1_reg_1_o_data_out(10)
    );
  tde_1_reg_1_o_data_out_9 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(7),
      Q => tde_1_reg_1_o_data_out(9)
    );
  tde_1_reg_1_o_data_out_8 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(6),
      Q => tde_1_reg_1_o_data_out(8)
    );
  tde_1_reg_1_o_data_out_7 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(5),
      Q => tde_1_reg_1_o_data_out(7)
    );
  tde_1_reg_1_o_data_out_6 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(4),
      Q => tde_1_reg_1_o_data_out(6)
    );
  tde_1_reg_1_o_data_out_5 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(3),
      Q => tde_1_reg_1_o_data_out(5)
    );
  tde_1_reg_1_o_data_out_4 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(2),
      Q => tde_1_reg_1_o_data_out(4)
    );
  tde_1_reg_1_o_data_out_3 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(1),
      Q => tde_1_reg_1_o_data_out(3)
    );
  tde_1_reg_1_o_data_out_2 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(0),
      Q => tde_1_reg_1_o_data_out(2)
    );
  tde_1_w_sgen_clkdiv_current_value_11 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(9),
      Q => tde_1_w_sgen_clkdiv_current_value(11)
    );
  tde_1_w_sgen_clkdiv_current_value_10 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(8),
      Q => tde_1_w_sgen_clkdiv_current_value(10)
    );
  tde_1_w_sgen_clkdiv_current_value_9 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(7),
      Q => tde_1_w_sgen_clkdiv_current_value(9)
    );
  tde_1_w_sgen_clkdiv_current_value_8 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(6),
      Q => tde_1_w_sgen_clkdiv_current_value(8)
    );
  tde_1_w_sgen_clkdiv_current_value_7 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(5),
      Q => tde_1_w_sgen_clkdiv_current_value(7)
    );
  tde_1_w_sgen_clkdiv_current_value_6 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(4),
      Q => tde_1_w_sgen_clkdiv_current_value(6)
    );
  tde_1_w_sgen_clkdiv_current_value_5 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(3),
      Q => tde_1_w_sgen_clkdiv_current_value(5)
    );
  tde_1_w_sgen_clkdiv_current_value_4 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(2),
      Q => tde_1_w_sgen_clkdiv_current_value(4)
    );
  tde_1_w_sgen_clkdiv_current_value_3 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(1),
      Q => tde_1_w_sgen_clkdiv_current_value(3)
    );
  tde_1_w_sgen_clkdiv_current_value_2 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(0),
      Q => tde_1_w_sgen_clkdiv_current_value(2)
    );
  tde_1_reg_0_o_data_out_15 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_reg_0_n0011_inv,
      CLR => i_nreset_inv,
      D => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_15_Q,
      Q => tde_1_reg_0_o_data_out(15)
    );
  tde_1_reg_0_o_data_out_14 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_reg_0_n0011_inv,
      CLR => i_nreset_inv,
      D => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_14_Q,
      Q => tde_1_reg_0_o_data_out(14)
    );
  tde_1_reg_0_o_data_out_13 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_reg_0_n0011_inv,
      CLR => i_nreset_inv,
      D => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_13_Q,
      Q => tde_1_reg_0_o_data_out(13)
    );
  tde_1_reg_0_o_data_out_12 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_reg_0_n0011_inv,
      CLR => i_nreset_inv,
      D => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_12_Q,
      Q => tde_1_reg_0_o_data_out(12)
    );
  tde_1_reg_0_o_data_out_11 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_reg_0_n0011_inv,
      CLR => i_nreset_inv,
      D => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_11_Q,
      Q => tde_1_reg_0_o_data_out(11)
    );
  tde_1_reg_0_o_data_out_10 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_reg_0_n0011_inv,
      CLR => i_nreset_inv,
      D => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_10_Q,
      Q => tde_1_reg_0_o_data_out(10)
    );
  tde_1_reg_0_o_data_out_9 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_reg_0_n0011_inv,
      CLR => i_nreset_inv,
      D => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_9_Q,
      Q => tde_1_reg_0_o_data_out(9)
    );
  tde_1_reg_0_o_data_out_8 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_reg_0_n0011_inv,
      CLR => i_nreset_inv,
      D => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_8_Q,
      Q => tde_1_reg_0_o_data_out(8)
    );
  tde_1_reg_0_o_data_out_7 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_reg_0_n0011_inv,
      CLR => i_nreset_inv,
      D => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_7_Q,
      Q => tde_1_reg_0_o_data_out(7)
    );
  tde_1_reg_0_o_data_out_6 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_reg_0_n0011_inv,
      CLR => i_nreset_inv,
      D => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_6_Q,
      Q => tde_1_reg_0_o_data_out(6)
    );
  tde_1_reg_0_o_data_out_5 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_reg_0_n0011_inv,
      CLR => i_nreset_inv,
      D => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_5_Q,
      Q => tde_1_reg_0_o_data_out(5)
    );
  tde_1_reg_0_o_data_out_4 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_reg_0_n0011_inv,
      CLR => i_nreset_inv,
      D => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_4_Q,
      Q => tde_1_reg_0_o_data_out(4)
    );
  tde_1_r_trigger_latched : FD
    port map (
      C => i_clock_BUFGP_0,
      D => w_trigger_5,
      Q => tde_1_r_trigger_latched_449
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_7_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_6_Q_481,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_7_Q_480,
      O => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_6_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_5_Q_483,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_6_Q_482,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_6_Q_481
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_5_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_4_Q_485,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_5_Q_484,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_5_Q_483
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_4_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_Q_487,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_4_Q_486,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_4_Q_485
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_2_Q_489,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_3_Q_488,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_Q_487
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_2_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_1_Q_491,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_2_Q_490,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_2_Q_489
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_1_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_0_Q_493,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_1_Q_492,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_1_Q_491
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_0_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_lut(12),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_0_Q,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_0_Q_493
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_30_Q_495,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_rt_969,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_31_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_30_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_Q_496,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_30_rt_939,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_30_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_30_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_Q_496,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_30_rt_939,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_30_Q_495
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_29_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_Q_497,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_rt_940,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_29_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_Q_497,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_rt_940,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_Q_496
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_28_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_Q_498,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_rt_941,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_28_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_Q_498,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_rt_941,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_Q_497
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_27_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_Q_499,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_rt_942,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_27_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_Q_499,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_rt_942,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_Q_498
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_26_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_Q_500,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_rt_943,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_26_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_Q_500,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_rt_943,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_Q_499
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_25_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_Q_501,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_rt_944,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_25_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_Q_501,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_rt_944,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_Q_500
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_24_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_Q_502,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_rt_945,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_24_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_Q_502,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_rt_945,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_Q_501
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_23_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_Q_503,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_rt_946,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_23_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_Q_503,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_rt_946,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_Q_502
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_22_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_Q_504,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_rt_947,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_22_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_Q_504,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_rt_947,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_Q_503
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_21_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_Q_505,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_rt_948,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_21_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_Q_505,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_rt_948,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_Q_504
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_20_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_Q_506,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_rt_949,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_20_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_Q_506,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_rt_949,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_Q_505
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_19_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_Q_507,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_rt_950,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_19_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_Q_507,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_rt_950,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_Q_506
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_18_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_Q_508,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_rt_951,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_18_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_Q_508,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_rt_951,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_Q_507
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_17_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_Q_509,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_rt_952,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_17_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_Q_509,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_rt_952,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_Q_508
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_16_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_Q_510,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_rt_953,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_16_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_Q_510,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_rt_953,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_Q_509
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_15_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_Q_511,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_rt_954,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_15_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_Q_511,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_rt_954,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_Q_510
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_14_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_Q_512,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_rt_955,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_14_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_Q_512,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_rt_955,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_Q_511
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_13_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_Q_513,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_rt_956,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_13_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_Q_513,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_rt_956,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_Q_512
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_12_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_Q_514,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_rt_957,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_12_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_Q_514,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_rt_957,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_Q_513
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_11_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_Q_515,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_rt_958,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_11_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_Q_515,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_rt_958,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_Q_514
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_10_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_Q_516,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_rt_959,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_10_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_Q_516,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_rt_959,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_Q_515
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_9_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_Q_517,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_rt_960,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_9_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_Q_517,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_rt_960,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_Q_516
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_8_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_Q_518,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_rt_961,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_8_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_Q_518,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_rt_961,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_Q_517
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_7_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_Q_519,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_rt_962,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_7_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_Q_519,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_rt_962,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_Q_518
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_6_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_Q_520,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_rt_963,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_6_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_Q_520,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_rt_963,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_Q_519
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_5_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_Q_521,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_rt_964,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_5_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_Q_521,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_rt_964,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_Q_520
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_4_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_Q_522,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_rt_965,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_4_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_Q_522,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_rt_965,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_Q_521
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_3_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_Q_523,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_rt_966,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_3_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_Q_523,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_rt_966,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_Q_522
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_2_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_Q_524,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_rt_967,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_2_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_Q_524,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_rt_967,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_Q_523
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_1_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_0_Q_525,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_rt_968,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_1_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_0_Q_525,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_rt_968,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_Q_524
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_0_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_lut_0_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_0_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_0_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_lut_0_Q,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_0_Q_525
    );
  tde_1_spike_generator_0_Mcompar_w_generate_cy_6_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_w_generate_cy(5),
      DI => tde_1_spike_generator_0_Mcompar_w_generate_lutdi6_529,
      S => tde_1_spike_generator_0_Mcompar_w_generate_lut(6),
      O => tde_1_spike_generator_0_Mcompar_w_generate_cy(6)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lut_6_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => tde_1_spike_generator_0_r_value_to_generate(12),
      I1 => tde_1_spike_generator_0_w_mult_result(12),
      I2 => tde_1_spike_generator_0_r_value_to_generate(13),
      I3 => tde_1_spike_generator_0_w_mult_result(13),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lut(6)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lutdi6 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => tde_1_spike_generator_0_w_mult_result(13),
      I1 => tde_1_spike_generator_0_w_mult_result(12),
      I2 => tde_1_spike_generator_0_r_value_to_generate(12),
      I3 => tde_1_spike_generator_0_r_value_to_generate(13),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi6_529
    );
  tde_1_spike_generator_0_Mcompar_w_generate_cy_5_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_w_generate_cy(4),
      DI => tde_1_spike_generator_0_Mcompar_w_generate_lutdi5_532,
      S => tde_1_spike_generator_0_Mcompar_w_generate_lut(5),
      O => tde_1_spike_generator_0_Mcompar_w_generate_cy(5)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lut_5_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => tde_1_spike_generator_0_r_value_to_generate(10),
      I1 => tde_1_spike_generator_0_w_mult_result(10),
      I2 => tde_1_spike_generator_0_r_value_to_generate(11),
      I3 => tde_1_spike_generator_0_w_mult_result(11),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lut(5)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lutdi5 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => tde_1_spike_generator_0_w_mult_result(11),
      I1 => tde_1_spike_generator_0_w_mult_result(10),
      I2 => tde_1_spike_generator_0_r_value_to_generate(10),
      I3 => tde_1_spike_generator_0_r_value_to_generate(11),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi5_532
    );
  tde_1_spike_generator_0_Mcompar_w_generate_cy_4_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_w_generate_cy(3),
      DI => tde_1_spike_generator_0_Mcompar_w_generate_lutdi4_535,
      S => tde_1_spike_generator_0_Mcompar_w_generate_lut(4),
      O => tde_1_spike_generator_0_Mcompar_w_generate_cy(4)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lut_4_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => tde_1_spike_generator_0_r_value_to_generate(8),
      I1 => tde_1_spike_generator_0_w_mult_result(8),
      I2 => tde_1_spike_generator_0_r_value_to_generate(9),
      I3 => tde_1_spike_generator_0_w_mult_result(9),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lut(4)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lutdi4 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => tde_1_spike_generator_0_w_mult_result(9),
      I1 => tde_1_spike_generator_0_w_mult_result(8),
      I2 => tde_1_spike_generator_0_r_value_to_generate(8),
      I3 => tde_1_spike_generator_0_r_value_to_generate(9),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi4_535
    );
  tde_1_spike_generator_0_Mcompar_w_generate_cy_3_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_w_generate_cy(2),
      DI => tde_1_spike_generator_0_Mcompar_w_generate_lutdi3_538,
      S => tde_1_spike_generator_0_Mcompar_w_generate_lut(3),
      O => tde_1_spike_generator_0_Mcompar_w_generate_cy(3)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => tde_1_spike_generator_0_r_value_to_generate(6),
      I1 => tde_1_spike_generator_0_w_mult_result(6),
      I2 => tde_1_spike_generator_0_r_value_to_generate(7),
      I3 => tde_1_spike_generator_0_w_mult_result(7),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lut(3)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lutdi3 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => tde_1_spike_generator_0_w_mult_result(7),
      I1 => tde_1_spike_generator_0_w_mult_result(6),
      I2 => tde_1_spike_generator_0_r_value_to_generate(6),
      I3 => tde_1_spike_generator_0_r_value_to_generate(7),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi3_538
    );
  tde_1_spike_generator_0_Mcompar_w_generate_cy_2_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_w_generate_cy(1),
      DI => tde_1_spike_generator_0_Mcompar_w_generate_lutdi2_541,
      S => tde_1_spike_generator_0_Mcompar_w_generate_lut(2),
      O => tde_1_spike_generator_0_Mcompar_w_generate_cy(2)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => tde_1_spike_generator_0_r_value_to_generate(4),
      I1 => tde_1_spike_generator_0_w_mult_result(4),
      I2 => tde_1_spike_generator_0_r_value_to_generate(5),
      I3 => tde_1_spike_generator_0_w_mult_result(5),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lut(2)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => tde_1_spike_generator_0_w_mult_result(5),
      I1 => tde_1_spike_generator_0_w_mult_result(4),
      I2 => tde_1_spike_generator_0_r_value_to_generate(4),
      I3 => tde_1_spike_generator_0_r_value_to_generate(5),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi2_541
    );
  tde_1_spike_generator_0_Mcompar_w_generate_cy_1_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_w_generate_cy(0),
      DI => tde_1_spike_generator_0_Mcompar_w_generate_lutdi1_544,
      S => tde_1_spike_generator_0_Mcompar_w_generate_lut(1),
      O => tde_1_spike_generator_0_Mcompar_w_generate_cy(1)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_cy_0_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_lut(12),
      DI => tde_1_spike_generator_0_Mcompar_w_generate_lutdi,
      S => tde_1_spike_generator_0_Mcompar_w_generate_lut(0),
      O => tde_1_spike_generator_0_Mcompar_w_generate_cy(0)
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_7_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_6_Q_549,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_7_Q_548,
      O => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_7_Q : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(26),
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(27),
      I2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(28),
      I3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(29),
      I4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(30),
      I5 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(31),
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_7_Q_548
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_6_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_5_Q_551,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_6_Q_550,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_6_Q_549
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_6_Q : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(20),
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(21),
      I2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(22),
      I3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(23),
      I4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(24),
      I5 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(25),
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_6_Q_550
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_5_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_4_Q_553,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_5_Q_552,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_5_Q_551
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_5_Q : LUT6
    generic map(
      INIT => X"0000000200000001"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(15),
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(19),
      I2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(18),
      I3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(17),
      I4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(16),
      I5 => tde_1_w_clkdiv_value(15),
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_5_Q_552
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_4_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_Q_555,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_4_Q_554,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_4_Q_553
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_4_Q : LUT6
    generic map(
      INIT => X"8008400420021001"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(14),
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(13),
      I2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(12),
      I3 => tde_1_w_clkdiv_value(12),
      I4 => tde_1_w_clkdiv_value(14),
      I5 => tde_1_w_clkdiv_value(13),
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_4_Q_554
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_2_Q_557,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_3_Q_556,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_Q_555
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_3_Q : LUT6
    generic map(
      INIT => X"8008400420021001"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(11),
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(10),
      I2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(9),
      I3 => tde_1_w_clkdiv_value(9),
      I4 => tde_1_w_clkdiv_value(11),
      I5 => tde_1_w_clkdiv_value(10),
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_3_Q_556
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_2_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_1_Q_559,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_2_Q_558,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_2_Q_557
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_2_Q : LUT6
    generic map(
      INIT => X"8008400420021001"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(8),
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(7),
      I2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(6),
      I3 => tde_1_w_clkdiv_value(6),
      I4 => tde_1_w_clkdiv_value(8),
      I5 => tde_1_w_clkdiv_value(7),
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_2_Q_558
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_1_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_0_Q_561,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_1_Q_560,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_1_Q_559
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_1_Q : LUT6
    generic map(
      INIT => X"8008400420021001"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(5),
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(4),
      I2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(3),
      I3 => tde_1_w_clkdiv_value(3),
      I4 => tde_1_w_clkdiv_value(5),
      I5 => tde_1_w_clkdiv_value(4),
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_1_Q_560
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_0_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      DI => tde_1_sub_0_Msub_o_output_data_lut(12),
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_0_Q,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_0_Q_561
    );
  tde_1_spike_generator_0_r_cicle_15 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_spike_generator_0_n0047_inv,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_r_cicle15,
      Q => tde_1_spike_generator_0_r_cicle(15)
    );
  tde_1_spike_generator_0_r_cicle_14 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_spike_generator_0_n0047_inv,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_r_cicle14,
      Q => tde_1_spike_generator_0_r_cicle(14)
    );
  tde_1_spike_generator_0_r_cicle_13 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_spike_generator_0_n0047_inv,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_r_cicle13,
      Q => tde_1_spike_generator_0_r_cicle(13)
    );
  tde_1_spike_generator_0_r_cicle_12 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_spike_generator_0_n0047_inv,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_r_cicle12,
      Q => tde_1_spike_generator_0_r_cicle(12)
    );
  tde_1_spike_generator_0_r_cicle_11 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_spike_generator_0_n0047_inv,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_r_cicle11,
      Q => tde_1_spike_generator_0_r_cicle(11)
    );
  tde_1_spike_generator_0_r_cicle_10 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_spike_generator_0_n0047_inv,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_r_cicle10,
      Q => tde_1_spike_generator_0_r_cicle(10)
    );
  tde_1_spike_generator_0_r_cicle_9 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_spike_generator_0_n0047_inv,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_r_cicle9,
      Q => tde_1_spike_generator_0_r_cicle(9)
    );
  tde_1_spike_generator_0_r_cicle_8 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_spike_generator_0_n0047_inv,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_r_cicle8,
      Q => tde_1_spike_generator_0_r_cicle(8)
    );
  tde_1_spike_generator_0_r_cicle_7 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_spike_generator_0_n0047_inv,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_r_cicle7,
      Q => tde_1_spike_generator_0_r_cicle(7)
    );
  tde_1_spike_generator_0_r_cicle_6 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_spike_generator_0_n0047_inv,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_r_cicle6,
      Q => tde_1_spike_generator_0_r_cicle(6)
    );
  tde_1_spike_generator_0_r_cicle_5 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_spike_generator_0_n0047_inv,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_r_cicle5,
      Q => tde_1_spike_generator_0_r_cicle(5)
    );
  tde_1_spike_generator_0_r_cicle_4 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_spike_generator_0_n0047_inv,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_r_cicle4,
      Q => tde_1_spike_generator_0_r_cicle(4)
    );
  tde_1_spike_generator_0_r_cicle_3 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_spike_generator_0_n0047_inv,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_r_cicle3,
      Q => tde_1_spike_generator_0_r_cicle(3)
    );
  tde_1_spike_generator_0_r_cicle_2 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_spike_generator_0_n0047_inv,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_r_cicle2,
      Q => tde_1_spike_generator_0_r_cicle(2)
    );
  tde_1_spike_generator_0_r_cicle_1 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_spike_generator_0_n0047_inv,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_r_cicle1,
      Q => tde_1_spike_generator_0_r_cicle(1)
    );
  tde_1_spike_generator_0_r_cicle_0 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_spike_generator_0_n0047_inv,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_r_cicle,
      Q => tde_1_spike_generator_0_r_cicle(0)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter31,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(31)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_30 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter30,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(30)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_29 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter29,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(29)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_28 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter28,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(28)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_27 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter27,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(27)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_26 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter26,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(26)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_25 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter25,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(25)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_24 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter24,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(24)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_23 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter23,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(23)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter22,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(22)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter21,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(21)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter20,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(20)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter19,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(19)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter18,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(18)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter17,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(17)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter16,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(16)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter15,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(15)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter14,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(14)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter13,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(13)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter12,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(12)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter11,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(11)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter10,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(10)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter9,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(9)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter8,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(8)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter7,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(7)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter6,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(6)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter5,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(5)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter4,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(4)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter3,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(3)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter2,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(2)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter1,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(1)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter,
      Q => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(0)
    );
  tde_1_spike_generator_0_Mmult_w_mult_result : DSP48A1
    generic map(
      CARRYINSEL => "OPMODE5",
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      CREG => 0,
      MREG => 0,
      PREG => 0,
      OPMODEREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      RSTTYPE => "SYNC",
      DREG => 0
    )
    port map (
      CECARRYIN => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      RSTC => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      RSTCARRYIN => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      CED => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      RSTD => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      CEOPMODE => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      CEC => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      CARRYOUTF => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_CARRYOUTF_UNCONNECTED,
      RSTOPMODE => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      RSTM => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      CLK => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      RSTB => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      CEM => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      CEB => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      CARRYIN => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      CEP => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      CEA => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      CARRYOUT => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_CARRYOUT_UNCONNECTED,
      RSTA => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      RSTP => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      B(17) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      B(16) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      B(15) => tde_1_spike_generator_0_r_cicle(15),
      B(14) => tde_1_spike_generator_0_r_cicle(14),
      B(13) => tde_1_spike_generator_0_r_cicle(13),
      B(12) => tde_1_spike_generator_0_r_cicle(12),
      B(11) => tde_1_spike_generator_0_r_cicle(11),
      B(10) => tde_1_spike_generator_0_r_cicle(10),
      B(9) => tde_1_spike_generator_0_r_cicle(9),
      B(8) => tde_1_spike_generator_0_r_cicle(8),
      B(7) => tde_1_spike_generator_0_r_cicle(7),
      B(6) => tde_1_spike_generator_0_r_cicle(6),
      B(5) => tde_1_spike_generator_0_r_cicle(5),
      B(4) => tde_1_spike_generator_0_r_cicle(4),
      B(3) => tde_1_spike_generator_0_r_cicle(3),
      B(2) => tde_1_spike_generator_0_r_cicle(2),
      B(1) => tde_1_spike_generator_0_r_cicle(1),
      B(0) => tde_1_spike_generator_0_r_cicle(0),
      BCOUT(17) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT_0_UNCONNECTED,
      PCIN(47) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_47_UNCONNECTED,
      PCIN(46) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_46_UNCONNECTED,
      PCIN(45) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_45_UNCONNECTED,
      PCIN(44) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_44_UNCONNECTED,
      PCIN(43) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_43_UNCONNECTED,
      PCIN(42) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_42_UNCONNECTED,
      PCIN(41) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_41_UNCONNECTED,
      PCIN(40) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_40_UNCONNECTED,
      PCIN(39) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_39_UNCONNECTED,
      PCIN(38) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_38_UNCONNECTED,
      PCIN(37) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_37_UNCONNECTED,
      PCIN(36) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_36_UNCONNECTED,
      PCIN(35) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_35_UNCONNECTED,
      PCIN(34) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_34_UNCONNECTED,
      PCIN(33) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_33_UNCONNECTED,
      PCIN(32) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_32_UNCONNECTED,
      PCIN(31) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_31_UNCONNECTED,
      PCIN(30) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_30_UNCONNECTED,
      PCIN(29) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_29_UNCONNECTED,
      PCIN(28) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_28_UNCONNECTED,
      PCIN(27) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_27_UNCONNECTED,
      PCIN(26) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_26_UNCONNECTED,
      PCIN(25) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_25_UNCONNECTED,
      PCIN(24) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_24_UNCONNECTED,
      PCIN(23) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_23_UNCONNECTED,
      PCIN(22) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_22_UNCONNECTED,
      PCIN(21) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_21_UNCONNECTED,
      PCIN(20) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_20_UNCONNECTED,
      PCIN(19) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_19_UNCONNECTED,
      PCIN(18) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_18_UNCONNECTED,
      PCIN(17) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_17_UNCONNECTED,
      PCIN(16) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_16_UNCONNECTED,
      PCIN(15) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_15_UNCONNECTED,
      PCIN(14) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_14_UNCONNECTED,
      PCIN(13) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_13_UNCONNECTED,
      PCIN(12) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_12_UNCONNECTED,
      PCIN(11) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_11_UNCONNECTED,
      PCIN(10) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_10_UNCONNECTED,
      PCIN(9) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_9_UNCONNECTED,
      PCIN(8) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_8_UNCONNECTED,
      PCIN(7) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_7_UNCONNECTED,
      PCIN(6) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_6_UNCONNECTED,
      PCIN(5) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_5_UNCONNECTED,
      PCIN(4) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_4_UNCONNECTED,
      PCIN(3) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_3_UNCONNECTED,
      PCIN(2) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_2_UNCONNECTED,
      PCIN(1) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_1_UNCONNECTED,
      PCIN(0) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCIN_0_UNCONNECTED,
      C(47) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(46) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(45) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(44) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(43) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(42) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(41) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(40) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(39) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(38) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(37) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(36) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(35) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(34) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(33) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(32) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(31) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(30) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(29) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(28) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(27) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(26) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(25) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(24) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(23) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(22) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(21) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(20) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(19) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(18) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(17) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(16) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(15) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(14) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(13) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(12) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(11) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(10) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(9) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(8) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(7) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(6) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(5) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(4) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(3) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(2) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(1) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      C(0) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      P(47) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_47_UNCONNECTED,
      P(46) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_46_UNCONNECTED,
      P(45) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_45_UNCONNECTED,
      P(44) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_44_UNCONNECTED,
      P(43) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_43_UNCONNECTED,
      P(42) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_42_UNCONNECTED,
      P(41) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_41_UNCONNECTED,
      P(40) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_40_UNCONNECTED,
      P(39) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_39_UNCONNECTED,
      P(38) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_38_UNCONNECTED,
      P(37) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_37_UNCONNECTED,
      P(36) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_36_UNCONNECTED,
      P(35) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_35_UNCONNECTED,
      P(34) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_34_UNCONNECTED,
      P(33) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_33_UNCONNECTED,
      P(32) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_32_UNCONNECTED,
      P(31) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_31_UNCONNECTED,
      P(30) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_30_UNCONNECTED,
      P(29) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_29_UNCONNECTED,
      P(28) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_28_UNCONNECTED,
      P(27) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_27_UNCONNECTED,
      P(26) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_26_UNCONNECTED,
      P(25) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_25_UNCONNECTED,
      P(24) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_24_UNCONNECTED,
      P(23) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_23_UNCONNECTED,
      P(22) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_22_UNCONNECTED,
      P(21) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_21_UNCONNECTED,
      P(20) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_20_UNCONNECTED,
      P(19) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_19_UNCONNECTED,
      P(18) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_18_UNCONNECTED,
      P(17) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_17_UNCONNECTED,
      P(16) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_16_UNCONNECTED,
      P(15) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_15_UNCONNECTED,
      P(14) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_14_UNCONNECTED,
      P(13) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_13_UNCONNECTED,
      P(12) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_12_UNCONNECTED,
      P(11) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_11_UNCONNECTED,
      P(10) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_10_UNCONNECTED,
      P(9) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_9_UNCONNECTED,
      P(8) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_8_UNCONNECTED,
      P(7) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_7_UNCONNECTED,
      P(6) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_6_UNCONNECTED,
      P(5) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_5_UNCONNECTED,
      P(4) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_4_UNCONNECTED,
      P(3) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_3_UNCONNECTED,
      P(2) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_2_UNCONNECTED,
      P(1) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_1_UNCONNECTED,
      P(0) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_P_0_UNCONNECTED,
      OPMODE(7) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      OPMODE(6) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      OPMODE(5) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      OPMODE(4) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      OPMODE(3) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      OPMODE(2) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      OPMODE(1) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      OPMODE(0) => tde_1_sub_0_Msub_o_output_data_lut(12),
      D(17) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      D(16) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      D(15) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      D(14) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      D(13) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      D(12) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      D(11) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      D(10) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      D(9) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      D(8) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      D(7) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      D(6) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      D(5) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      D(4) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      D(3) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      D(2) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      D(1) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      D(0) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      PCOUT(47) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_47_UNCONNECTED,
      PCOUT(46) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_46_UNCONNECTED,
      PCOUT(45) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_45_UNCONNECTED,
      PCOUT(44) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_44_UNCONNECTED,
      PCOUT(43) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_43_UNCONNECTED,
      PCOUT(42) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_42_UNCONNECTED,
      PCOUT(41) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_41_UNCONNECTED,
      PCOUT(40) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_40_UNCONNECTED,
      PCOUT(39) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_39_UNCONNECTED,
      PCOUT(38) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_38_UNCONNECTED,
      PCOUT(37) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_37_UNCONNECTED,
      PCOUT(36) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_36_UNCONNECTED,
      PCOUT(35) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_35_UNCONNECTED,
      PCOUT(34) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_34_UNCONNECTED,
      PCOUT(33) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_33_UNCONNECTED,
      PCOUT(32) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_32_UNCONNECTED,
      PCOUT(31) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_31_UNCONNECTED,
      PCOUT(30) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_30_UNCONNECTED,
      PCOUT(29) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_29_UNCONNECTED,
      PCOUT(28) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_28_UNCONNECTED,
      PCOUT(27) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_27_UNCONNECTED,
      PCOUT(26) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_26_UNCONNECTED,
      PCOUT(25) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_25_UNCONNECTED,
      PCOUT(24) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_24_UNCONNECTED,
      PCOUT(23) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_23_UNCONNECTED,
      PCOUT(22) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_22_UNCONNECTED,
      PCOUT(21) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_21_UNCONNECTED,
      PCOUT(20) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_20_UNCONNECTED,
      PCOUT(19) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_19_UNCONNECTED,
      PCOUT(18) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_18_UNCONNECTED,
      PCOUT(17) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_17_UNCONNECTED,
      PCOUT(16) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_16_UNCONNECTED,
      PCOUT(15) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_15_UNCONNECTED,
      PCOUT(14) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_14_UNCONNECTED,
      PCOUT(13) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_13_UNCONNECTED,
      PCOUT(12) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_12_UNCONNECTED,
      PCOUT(11) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_11_UNCONNECTED,
      PCOUT(10) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_10_UNCONNECTED,
      PCOUT(9) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_9_UNCONNECTED,
      PCOUT(8) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_8_UNCONNECTED,
      PCOUT(7) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_7_UNCONNECTED,
      PCOUT(6) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_6_UNCONNECTED,
      PCOUT(5) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_5_UNCONNECTED,
      PCOUT(4) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_4_UNCONNECTED,
      PCOUT(3) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_3_UNCONNECTED,
      PCOUT(2) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_2_UNCONNECTED,
      PCOUT(1) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_1_UNCONNECTED,
      PCOUT(0) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT_0_UNCONNECTED,
      A(17) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      A(16) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      A(15) => tde_1_spike_generator_0_r_value_to_generate(15),
      A(14) => tde_1_spike_generator_0_r_value_to_generate(14),
      A(13) => tde_1_spike_generator_0_r_value_to_generate(13),
      A(12) => tde_1_spike_generator_0_r_value_to_generate(12),
      A(11) => tde_1_spike_generator_0_r_value_to_generate(11),
      A(10) => tde_1_spike_generator_0_r_value_to_generate(10),
      A(9) => tde_1_spike_generator_0_r_value_to_generate(9),
      A(8) => tde_1_spike_generator_0_r_value_to_generate(8),
      A(7) => tde_1_spike_generator_0_r_value_to_generate(7),
      A(6) => tde_1_spike_generator_0_r_value_to_generate(6),
      A(5) => tde_1_spike_generator_0_r_value_to_generate(5),
      A(4) => tde_1_spike_generator_0_r_value_to_generate(4),
      A(3) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      A(2) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      A(1) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      A(0) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      M(35) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_35_UNCONNECTED,
      M(34) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_34_UNCONNECTED,
      M(33) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_33_UNCONNECTED,
      M(32) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_32_UNCONNECTED,
      M(31) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_31_UNCONNECTED,
      M(30) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_30_UNCONNECTED,
      M(29) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_29_UNCONNECTED,
      M(28) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_28_UNCONNECTED,
      M(27) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_27_UNCONNECTED,
      M(26) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_26_UNCONNECTED,
      M(25) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_25_UNCONNECTED,
      M(24) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_24_UNCONNECTED,
      M(23) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_23_UNCONNECTED,
      M(22) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_22_UNCONNECTED,
      M(21) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_21_UNCONNECTED,
      M(20) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_20_UNCONNECTED,
      M(19) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_19_UNCONNECTED,
      M(18) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_18_UNCONNECTED,
      M(17) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_17_UNCONNECTED,
      M(16) => NLW_tde_1_spike_generator_0_Mmult_w_mult_result_M_16_UNCONNECTED,
      M(15) => tde_1_spike_generator_0_w_mult_result(15),
      M(14) => tde_1_spike_generator_0_w_mult_result(14),
      M(13) => tde_1_spike_generator_0_w_mult_result(13),
      M(12) => tde_1_spike_generator_0_w_mult_result(12),
      M(11) => tde_1_spike_generator_0_w_mult_result(11),
      M(10) => tde_1_spike_generator_0_w_mult_result(10),
      M(9) => tde_1_spike_generator_0_w_mult_result(9),
      M(8) => tde_1_spike_generator_0_w_mult_result(8),
      M(7) => tde_1_spike_generator_0_w_mult_result(7),
      M(6) => tde_1_spike_generator_0_w_mult_result(6),
      M(5) => tde_1_spike_generator_0_w_mult_result(5),
      M(4) => tde_1_spike_generator_0_w_mult_result(4),
      M(3) => tde_1_spike_generator_0_w_mult_result(3),
      M(2) => tde_1_spike_generator_0_w_mult_result(2),
      M(1) => tde_1_spike_generator_0_w_mult_result(1),
      M(0) => tde_1_spike_generator_0_w_mult_result(0)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_xor_15_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(14),
      LI => tde_1_spike_generator_0_Mcount_r_cicle_lut(15),
      O => tde_1_spike_generator_0_Mcount_r_cicle15
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_15_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_r_cicle(15),
      I2 => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(15)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_xor_14_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(13),
      LI => tde_1_spike_generator_0_Mcount_r_cicle_lut(14),
      O => tde_1_spike_generator_0_Mcount_r_cicle14
    );
  tde_1_spike_generator_0_Mcount_r_cicle_cy_14_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(13),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_r_cicle_lut(14),
      O => tde_1_spike_generator_0_Mcount_r_cicle_cy(14)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_14_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_r_cicle(14),
      I2 => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(14)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_xor_13_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(12),
      LI => tde_1_spike_generator_0_Mcount_r_cicle_lut(13),
      O => tde_1_spike_generator_0_Mcount_r_cicle13
    );
  tde_1_spike_generator_0_Mcount_r_cicle_cy_13_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(12),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_r_cicle_lut(13),
      O => tde_1_spike_generator_0_Mcount_r_cicle_cy(13)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_13_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_r_cicle(13),
      I2 => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(13)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_xor_12_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(11),
      LI => tde_1_spike_generator_0_Mcount_r_cicle_lut(12),
      O => tde_1_spike_generator_0_Mcount_r_cicle12
    );
  tde_1_spike_generator_0_Mcount_r_cicle_cy_12_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(11),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_r_cicle_lut(12),
      O => tde_1_spike_generator_0_Mcount_r_cicle_cy(12)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_12_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_r_cicle(12),
      I2 => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(12)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_xor_11_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(10),
      LI => tde_1_spike_generator_0_Mcount_r_cicle_lut(11),
      O => tde_1_spike_generator_0_Mcount_r_cicle11
    );
  tde_1_spike_generator_0_Mcount_r_cicle_cy_11_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(10),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_r_cicle_lut(11),
      O => tde_1_spike_generator_0_Mcount_r_cicle_cy(11)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_11_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_r_cicle(11),
      I2 => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(11)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_xor_10_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(9),
      LI => tde_1_spike_generator_0_Mcount_r_cicle_lut(10),
      O => tde_1_spike_generator_0_Mcount_r_cicle10
    );
  tde_1_spike_generator_0_Mcount_r_cicle_cy_10_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(9),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_r_cicle_lut(10),
      O => tde_1_spike_generator_0_Mcount_r_cicle_cy(10)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_10_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_r_cicle(10),
      I2 => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(10)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_xor_9_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(8),
      LI => tde_1_spike_generator_0_Mcount_r_cicle_lut(9),
      O => tde_1_spike_generator_0_Mcount_r_cicle9
    );
  tde_1_spike_generator_0_Mcount_r_cicle_cy_9_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(8),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_r_cicle_lut(9),
      O => tde_1_spike_generator_0_Mcount_r_cicle_cy(9)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_9_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_r_cicle(9),
      I2 => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(9)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_xor_8_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(7),
      LI => tde_1_spike_generator_0_Mcount_r_cicle_lut(8),
      O => tde_1_spike_generator_0_Mcount_r_cicle8
    );
  tde_1_spike_generator_0_Mcount_r_cicle_cy_8_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(7),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_r_cicle_lut(8),
      O => tde_1_spike_generator_0_Mcount_r_cicle_cy(8)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_8_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_r_cicle(8),
      I2 => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(8)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_xor_7_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(6),
      LI => tde_1_spike_generator_0_Mcount_r_cicle_lut(7),
      O => tde_1_spike_generator_0_Mcount_r_cicle7
    );
  tde_1_spike_generator_0_Mcount_r_cicle_cy_7_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(6),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_r_cicle_lut(7),
      O => tde_1_spike_generator_0_Mcount_r_cicle_cy(7)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_7_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_r_cicle(7),
      I2 => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(7)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_xor_6_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(5),
      LI => tde_1_spike_generator_0_Mcount_r_cicle_lut(6),
      O => tde_1_spike_generator_0_Mcount_r_cicle6
    );
  tde_1_spike_generator_0_Mcount_r_cicle_cy_6_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(5),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_r_cicle_lut(6),
      O => tde_1_spike_generator_0_Mcount_r_cicle_cy(6)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_6_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_r_cicle(6),
      I2 => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(6)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_xor_5_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(4),
      LI => tde_1_spike_generator_0_Mcount_r_cicle_lut(5),
      O => tde_1_spike_generator_0_Mcount_r_cicle5
    );
  tde_1_spike_generator_0_Mcount_r_cicle_cy_5_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(4),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_r_cicle_lut(5),
      O => tde_1_spike_generator_0_Mcount_r_cicle_cy(5)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_5_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_r_cicle(5),
      I2 => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(5)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_xor_4_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(3),
      LI => tde_1_spike_generator_0_Mcount_r_cicle_lut(4),
      O => tde_1_spike_generator_0_Mcount_r_cicle4
    );
  tde_1_spike_generator_0_Mcount_r_cicle_cy_4_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(3),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_r_cicle_lut(4),
      O => tde_1_spike_generator_0_Mcount_r_cicle_cy(4)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_4_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_r_cicle(4),
      I2 => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(4)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_xor_3_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(2),
      LI => tde_1_spike_generator_0_Mcount_r_cicle_lut(3),
      O => tde_1_spike_generator_0_Mcount_r_cicle3
    );
  tde_1_spike_generator_0_Mcount_r_cicle_cy_3_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(2),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_r_cicle_lut(3),
      O => tde_1_spike_generator_0_Mcount_r_cicle_cy(3)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_3_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_r_cicle(3),
      I2 => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(3)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_xor_2_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(1),
      LI => tde_1_spike_generator_0_Mcount_r_cicle_lut(2),
      O => tde_1_spike_generator_0_Mcount_r_cicle2
    );
  tde_1_spike_generator_0_Mcount_r_cicle_cy_2_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(1),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_r_cicle_lut(2),
      O => tde_1_spike_generator_0_Mcount_r_cicle_cy(2)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_2_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_r_cicle(2),
      I2 => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(2)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_xor_1_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(0),
      LI => tde_1_spike_generator_0_Mcount_r_cicle_lut(1),
      O => tde_1_spike_generator_0_Mcount_r_cicle1
    );
  tde_1_spike_generator_0_Mcount_r_cicle_cy_1_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy(0),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_r_cicle_lut(1),
      O => tde_1_spike_generator_0_Mcount_r_cicle_cy(1)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_1_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_r_cicle(1),
      I2 => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(1)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_xor_0_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_i_write_inv,
      LI => tde_1_spike_generator_0_Mcount_r_cicle_lut(0),
      O => tde_1_spike_generator_0_Mcount_r_cicle
    );
  tde_1_spike_generator_0_Mcount_r_cicle_cy_0_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_i_write_inv,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_r_cicle_lut(0),
      O => tde_1_spike_generator_0_Mcount_r_cicle_cy(0)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_0_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_r_cicle(0),
      I2 => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(0)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(30),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(31),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter31
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_30_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(29),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(30),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter30
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_30_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(29),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(30),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(30)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_29_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(28),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(29),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter29
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_29_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(28),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(29),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(29)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_28_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(27),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(28),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter28
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_28_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(27),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(28),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(28)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_27_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(26),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(27),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter27
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_27_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(26),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(27),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(27)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_26_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(25),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(26),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter26
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_26_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(25),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(26),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(26)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_25_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(24),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(25),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter25
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_25_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(24),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(25),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(25)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_24_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(23),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(24),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter24
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_24_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(23),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(24),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(24)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_23_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(22),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(23),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter23
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_23_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(22),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(23),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(23)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_22_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(21),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(22),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter22
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_22_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(21),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(22),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(22)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_21_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(20),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(21),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter21
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_21_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(20),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(21),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(21)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_20_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(19),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(20),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter20
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_20_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(19),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(20),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(20)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_19_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(18),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(19),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter19
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_19_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(18),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(19),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(19)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_18_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(17),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(18),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter18
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_18_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(17),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(18),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(18)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_17_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(16),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(17),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter17
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_17_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(16),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(17),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(17)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_16_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(15),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(16),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter16
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_16_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(15),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(16),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(16)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_15_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(14),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(15),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter15
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_15_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(14),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(15),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(15)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_14_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(13),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(14),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter14
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_14_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(13),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(14),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(14)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_13_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(12),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(13),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter13
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_13_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(12),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(13),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(13)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_12_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(11),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(12),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter12
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_12_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(11),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(12),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(12)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_11_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(10),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(11),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter11
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_11_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(10),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(11),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(11)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_10_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(9),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(10),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter10
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_10_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(9),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(10),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(10)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_9_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(8),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(9),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter9
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_9_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(8),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(9),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(9)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_8_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(7),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(8),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter8
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_8_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(7),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(8),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(8)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_7_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(6),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(7),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter7
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_7_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(6),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(7),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(7)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_6_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(5),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(6),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter6
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_6_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(5),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(6),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(6)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_5_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(4),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(5),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter5
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_5_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(4),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(5),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(5)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_4_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(3),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(4),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter4
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_4_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(3),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(4),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(4)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_3_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(2),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(3),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter3
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_3_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(2),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(3),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(3)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_2_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(1),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(2),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter2
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_2_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(1),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(2),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(2)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_1_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(0),
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(1),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter1
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_1_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(0),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(1),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(1)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_0_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o_inv,
      LI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(0),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_0_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o_inv,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(0),
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy(0)
    );
  tde_1_spike_generator_0_w_tick : FDC
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o,
      Q => tde_1_spike_generator_0_w_tick_806
    );
  tde_1_spike_generator_0_r_value_to_generate_15 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(15),
      Q => tde_1_spike_generator_0_r_value_to_generate(15)
    );
  tde_1_spike_generator_0_r_value_to_generate_14 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(14),
      Q => tde_1_spike_generator_0_r_value_to_generate(14)
    );
  tde_1_spike_generator_0_r_value_to_generate_13 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(13),
      Q => tde_1_spike_generator_0_r_value_to_generate(13)
    );
  tde_1_spike_generator_0_r_value_to_generate_12 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(12),
      Q => tde_1_spike_generator_0_r_value_to_generate(12)
    );
  tde_1_spike_generator_0_r_value_to_generate_11 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(11),
      Q => tde_1_spike_generator_0_r_value_to_generate(11)
    );
  tde_1_spike_generator_0_r_value_to_generate_10 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(10),
      Q => tde_1_spike_generator_0_r_value_to_generate(10)
    );
  tde_1_spike_generator_0_r_value_to_generate_9 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(9),
      Q => tde_1_spike_generator_0_r_value_to_generate(9)
    );
  tde_1_spike_generator_0_r_value_to_generate_8 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(8),
      Q => tde_1_spike_generator_0_r_value_to_generate(8)
    );
  tde_1_spike_generator_0_r_value_to_generate_7 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(7),
      Q => tde_1_spike_generator_0_r_value_to_generate(7)
    );
  tde_1_spike_generator_0_r_value_to_generate_6 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(6),
      Q => tde_1_spike_generator_0_r_value_to_generate(6)
    );
  tde_1_spike_generator_0_r_value_to_generate_5 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(5),
      Q => tde_1_spike_generator_0_r_value_to_generate(5)
    );
  tde_1_spike_generator_0_r_value_to_generate_4 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_449,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(4),
      Q => tde_1_spike_generator_0_r_value_to_generate(4)
    );
  PWR_6_o_p_countdown_v_tr_tick_counter_5_equal_3_o_5_1 : LUT6
    generic map(
      INIT => X"0000000800000000"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(5),
      I1 => p_countdown_v_tr_tick_counter(4),
      I2 => p_countdown_v_tr_tick_counter(3),
      I3 => p_countdown_v_tr_tick_counter(2),
      I4 => p_countdown_v_tr_tick_counter(1),
      I5 => p_countdown_v_tr_tick_counter(0),
      O => PWR_6_o_p_countdown_v_tr_tick_counter_5_equal_3_o
    );
  Mmux_p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT21 : LUT6
    generic map(
      INIT => X"6664666666666666"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(0),
      I1 => p_countdown_v_tr_tick_counter(1),
      I2 => p_countdown_v_tr_tick_counter(2),
      I3 => p_countdown_v_tr_tick_counter(3),
      I4 => p_countdown_v_tr_tick_counter(4),
      I5 => p_countdown_v_tr_tick_counter(5),
      O => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_1_Q
    );
  Mmux_p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT31 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(2),
      I1 => p_countdown_v_tr_tick_counter(0),
      I2 => p_countdown_v_tr_tick_counter(1),
      O => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_2_Q
    );
  Mmux_p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT51 : LUT6
    generic map(
      INIT => X"6A6AAAAAA8AAAAAA"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(4),
      I1 => p_countdown_v_tr_tick_counter(2),
      I2 => p_countdown_v_tr_tick_counter(3),
      I3 => p_countdown_v_tr_tick_counter(5),
      I4 => p_countdown_v_tr_tick_counter(0),
      I5 => p_countdown_v_tr_tick_counter(1),
      O => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_4_Q
    );
  Mmux_p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT61 : LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAA2A"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(5),
      I1 => p_countdown_v_tr_tick_counter(0),
      I2 => p_countdown_v_tr_tick_counter(4),
      I3 => p_countdown_v_tr_tick_counter(2),
      I4 => p_countdown_v_tr_tick_counter(3),
      I5 => p_countdown_v_tr_tick_counter(1),
      O => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_5_Q
    );
  Mmux_p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT41 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(3),
      I1 => p_countdown_v_tr_tick_counter(0),
      I2 => p_countdown_v_tr_tick_counter(1),
      I3 => p_countdown_v_tr_tick_counter(2),
      O => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_3_Q
    );
  tde_1_reg_0_n0011_inv1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_w_sgen_val2gen_clear,
      O => tde_1_reg_0_n0011_inv
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT161 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(9),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_9_Q
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT151 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(8),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_8_Q
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT141 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(7),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_7_Q
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT131 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(6),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_6_Q
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT121 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(5),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_5_Q
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT111 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(4),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_4_Q
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT71 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(15),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_15_Q
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT61 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(14),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_14_Q
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT51 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(13),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_13_Q
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT41 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(12),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_12_Q
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT31 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(11),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_11_Q
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT21 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(10),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_10_Q
    );
  tde_1_timer_0_basic_timer_1_n0024_inv1 : LUT3
    generic map(
      INIT => X"CE"
    )
    port map (
      I0 => w_tr_tick_3,
      I1 => w_facilitatory_4,
      I2 => tde_1_w_sgen_val2gen_clear,
      O => tde_1_timer_0_basic_timer_1_n0024_inv
    );
  tde_1_spike_generator_0_n0047_inv1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_w_tick_806,
      O => tde_1_spike_generator_0_n0047_inv
    );
  GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_1 : LUT6
    generic map(
      INIT => X"0000000000100000"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_1_Q,
      I1 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_0_Q,
      I2 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_15_Q,
      I3 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_16_Q,
      I4 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_14_Q,
      I5 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_17_Q,
      O => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_Q
    );
  GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_20_Q,
      I1 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_19_Q,
      I2 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_21_Q,
      I3 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_22_Q,
      I4 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_23_Q,
      I5 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_24_Q,
      O => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_1_820
    );
  GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_3 : LUT6
    generic map(
      INIT => X"0000000000100000"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_10_Q,
      I1 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_11_Q,
      I2 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_8_Q,
      I3 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_12_Q,
      I4 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_9_Q,
      I5 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_13_Q,
      O => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_2_821
    );
  GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_4 : LUT6
    generic map(
      INIT => X"0000000000100000"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_3_Q,
      I1 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_2_Q,
      I2 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_4_Q,
      I3 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_5_Q,
      I4 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_6_Q,
      I5 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_7_Q,
      O => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_3_822
    );
  GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_5 : LUT6
    generic map(
      INIT => X"0000000008000000"
    )
    port map (
      I0 => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_Q,
      I1 => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_1_820,
      I2 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_18_Q,
      I3 => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_2_821,
      I4 => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_3_822,
      I5 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_25_Q,
      O => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_1 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_13_Q,
      I1 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_14_Q,
      I2 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_15_Q,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_Q
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_2 : LUT6
    generic map(
      INIT => X"0000000100000000"
    )
    port map (
      I0 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_16_Q,
      I1 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_17_Q,
      I2 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_18_Q,
      I3 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_24_Q,
      I4 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_25_Q,
      I5 => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_Q,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_1_824
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_3 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_1_Q,
      I1 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_2_Q,
      I2 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_3_Q,
      I3 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_4_Q,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_2_825
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_4 : LUT5
    generic map(
      INIT => X"00400000"
    )
    port map (
      I0 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_5_Q,
      I1 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_6_Q,
      I2 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_7_Q,
      I3 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_19_Q,
      I4 => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_2_825,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_3_826
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_5 : LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_0_Q,
      I1 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_8_Q,
      I2 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_9_Q,
      I3 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_10_Q,
      I4 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_11_Q,
      I5 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_12_Q,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_4_827
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_6 : LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_20_Q,
      I1 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_21_Q,
      I2 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_22_Q,
      I3 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_23_Q,
      I4 => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_4_827,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_5_828
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_7 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_3_826,
      I1 => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_1_824,
      I2 => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_5_828,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o
    );
  GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_3_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_2_Q,
      I2 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_4_Q,
      O => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_Q
    );
  GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2 : LUT6
    generic map(
      INIT => X"0000000800000000"
    )
    port map (
      I0 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_19_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_20_Q,
      I2 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_5_Q,
      I3 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_7_Q,
      I4 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_8_Q,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_Q,
      O => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830
    );
  GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3 : LUT6
    generic map(
      INIT => X"0000040000000000"
    )
    port map (
      I0 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_0_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_14_Q,
      I2 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_15_Q,
      I3 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_16_Q,
      I4 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_17_Q,
      I5 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_18_Q,
      O => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831
    );
  GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4 : LUT6
    generic map(
      INIT => X"0200000000000000"
    )
    port map (
      I0 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_6_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_9_Q,
      I2 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_10_Q,
      I3 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_11_Q,
      I4 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_12_Q,
      I5 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_13_Q,
      O => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832
    );
  GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_5 : LUT5
    generic map(
      INIT => X"00400000"
    )
    port map (
      I0 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_1_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_21_Q,
      I2 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_22_Q,
      I3 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_23_Q,
      I4 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_24_Q,
      O => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833
    );
  tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_0_Q,
      I1 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_1_Q,
      I2 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_Q,
      I3 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_Q,
      I4 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_Q,
      I5 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_Q,
      O => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o2
    );
  tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o22 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_Q,
      I1 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_Q,
      O => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21_835
    );
  tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o23 : LUT6
    generic map(
      INIT => X"55FF557F557F557F"
    )
    port map (
      I0 => w_trigger_5,
      I1 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_Q,
      I2 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_Q,
      I3 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q,
      I4 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21_835,
      I5 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o2,
      O => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o
    );
  tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      I1 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      I2 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_Q,
      I3 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_Q,
      I4 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_Q,
      I5 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_Q,
      O => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o2
    );
  tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o22 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_Q,
      I1 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_Q,
      O => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21_837
    );
  tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o23 : LUT6
    generic map(
      INIT => X"55FF557F557F557F"
    )
    port map (
      I0 => w_facilitatory_4,
      I1 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_Q,
      I2 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_Q,
      I3 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q,
      I4 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21_837,
      I5 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o2,
      O => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o
    );
  tde_1_timer_0_basic_timer_control_1_w_timeout_15_SW0 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      I1 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
      I2 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
      I3 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
      I4 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
      O => N0
    );
  tde_1_timer_0_basic_timer_control_1_w_timeout_15_Q : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      I1 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      I2 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      I3 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      I4 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      I5 => N0,
      O => tde_1_w_sgen_val2gen_clear
    );
  tde_1_timer_1_basic_timer_1_n0024_inv1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(0),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(1),
      I2 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(8),
      I3 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(9),
      O => tde_1_timer_1_basic_timer_1_n0024_inv1_839
    );
  tde_1_timer_1_basic_timer_1_n0024_inv2 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(6),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(7),
      I2 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(4),
      I3 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(5),
      I4 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(2),
      I5 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(3),
      O => tde_1_timer_1_basic_timer_1_n0024_inv2_840
    );
  tde_1_timer_1_basic_timer_1_n0024_inv3 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => w_tr_tick_3,
      I1 => tde_1_timer_1_basic_timer_1_n0024_inv1_839,
      I2 => tde_1_timer_1_basic_timer_1_n0024_inv2_840,
      I3 => w_trigger_5,
      O => tde_1_timer_1_basic_timer_1_n0024_inv
    );
  tde_1_spike_generator_0_Mmux_o_spike_out11 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(5),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(4),
      I2 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(7),
      I3 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(6),
      I4 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(9),
      I5 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(8),
      O => tde_1_spike_generator_0_Mmux_o_spike_out1
    );
  tde_1_spike_generator_0_Mmux_o_spike_out12 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
    port map (
      I0 => tde_1_spike_generator_0_w_tick_806,
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(1),
      I2 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(0),
      I3 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(3),
      I4 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(2),
      I5 => tde_1_spike_generator_0_Mmux_o_spike_out1,
      O => tde_1_spike_generator_0_Mmux_o_spike_out11_842
    );
  i_nreset_IBUF : IBUF
    port map (
      I => i_nreset,
      O => i_nreset_IBUF_1
    );
  o_aer_data_out_15_OBUF : OBUF
    port map (
      I => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => o_aer_data_out(15)
    );
  o_aer_data_out_14_OBUF : OBUF
    port map (
      I => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => o_aer_data_out(14)
    );
  o_aer_data_out_13_OBUF : OBUF
    port map (
      I => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => o_aer_data_out(13)
    );
  o_aer_data_out_12_OBUF : OBUF
    port map (
      I => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => o_aer_data_out(12)
    );
  o_aer_data_out_11_OBUF : OBUF
    port map (
      I => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => o_aer_data_out(11)
    );
  o_aer_data_out_10_OBUF : OBUF
    port map (
      I => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => o_aer_data_out(10)
    );
  o_aer_data_out_9_OBUF : OBUF
    port map (
      I => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => o_aer_data_out(9)
    );
  o_aer_data_out_8_OBUF : OBUF
    port map (
      I => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => o_aer_data_out(8)
    );
  o_aer_data_out_7_OBUF : OBUF
    port map (
      I => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => o_aer_data_out(7)
    );
  o_aer_data_out_6_OBUF : OBUF
    port map (
      I => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => o_aer_data_out(6)
    );
  o_aer_data_out_5_OBUF : OBUF
    port map (
      I => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => o_aer_data_out(5)
    );
  o_aer_data_out_4_OBUF : OBUF
    port map (
      I => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => o_aer_data_out(4)
    );
  o_aer_data_out_3_OBUF : OBUF
    port map (
      I => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => o_aer_data_out(3)
    );
  o_aer_data_out_2_OBUF : OBUF
    port map (
      I => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => o_aer_data_out(2)
    );
  o_aer_data_out_1_OBUF : OBUF
    port map (
      I => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => o_aer_data_out(1)
    );
  o_aer_data_out_0_OBUF : OBUF
    port map (
      I => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => o_aer_data_out(0)
    );
  o_output_spike_OBUF : OBUF
    port map (
      I => o_output_spike_OBUF_2,
      O => o_output_spike
    );
  o_aer_req_out_OBUF : OBUF
    port map (
      I => tde_1_sub_0_Msub_o_output_data_lut(12),
      O => o_aer_req_out
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lut_1_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => tde_1_spike_generator_0_w_mult_result(2),
      I1 => tde_1_spike_generator_0_w_mult_result(3),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lut(1)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lutdi11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tde_1_spike_generator_0_w_mult_result(3),
      I1 => tde_1_spike_generator_0_w_mult_result(2),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi1_544
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lut_0_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => tde_1_spike_generator_0_w_mult_result(0),
      I1 => tde_1_spike_generator_0_w_mult_result(1),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lut(0)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lutdi1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tde_1_spike_generator_0_w_mult_result(1),
      I1 => tde_1_spike_generator_0_w_mult_result(0),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_0_1 : LUT4
    generic map(
      INIT => X"0201"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(2),
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(1),
      I2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(0),
      I3 => tde_1_w_clkdiv_value(2),
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_0_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(1),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_rt_864
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(2),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_rt_865
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(3),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_rt_866
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(4),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_rt_867
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(5),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_rt_868
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(6),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_rt_869
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(7),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_rt_870
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(8),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_rt_871
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(9),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_rt_872
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(10),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_rt_873
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(11),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_rt_874
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(12),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_rt_875
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(13),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_rt_876
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(14),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_rt_877
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(15),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_rt_878
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(16),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_rt_879
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(17),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_rt_880
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(18),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_rt_881
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(19),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_rt_882
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(20),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_rt_883
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(21),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_rt_884
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(22),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_rt_885
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(23),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_rt_886
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(24),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_24_rt_887
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(1),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_rt_888
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(2),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_rt_889
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(3),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_rt_890
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(4),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_rt_891
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(5),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_rt_892
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(6),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_rt_893
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(7),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_rt_894
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(8),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_rt_895
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(9),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_rt_896
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(10),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_rt_897
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(11),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_rt_898
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(12),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_rt_899
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(13),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_rt_900
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(14),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_rt_901
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(15),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_rt_902
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(16),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_rt_903
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(17),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_rt_904
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(18),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_rt_905
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(19),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_rt_906
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(20),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_rt_907
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(21),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_rt_908
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(22),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_rt_909
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(23),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_rt_910
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(24),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_24_rt_911
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(1),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_rt_912
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(2),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_rt_913
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(3),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_rt_914
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(4),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_rt_915
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(5),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_rt_916
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(6),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_rt_917
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(7),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_rt_918
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(8),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_rt_919
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(9),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_rt_920
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(10),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_rt_921
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(11),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_rt_922
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(12),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_rt_923
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(13),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_rt_924
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(14),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_rt_925
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(15),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_rt_926
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(16),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_rt_927
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(17),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_rt_928
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(18),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_rt_929
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(19),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_rt_930
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(20),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_rt_931
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(21),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_rt_932
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(22),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_rt_933
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(23),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_rt_934
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(24),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_24_rt_935
    );
  tde_1_add_0_Madd_o_output_data_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_reg_0_o_data_out(14),
      O => tde_1_add_0_Madd_o_output_data_cy_14_rt_936
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_rt_937
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_rt_938
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(30),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_30_rt_939
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(29),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_rt_940
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(28),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_rt_941
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(27),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_rt_942
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(26),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_rt_943
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(25),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_rt_944
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(24),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_rt_945
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(23),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_rt_946
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(22),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_rt_947
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(21),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_rt_948
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(20),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_rt_949
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(19),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_rt_950
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(18),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_rt_951
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(17),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_rt_952
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(16),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_rt_953
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(15),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_rt_954
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(14),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_rt_955
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(13),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_rt_956
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(12),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_rt_957
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(11),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_rt_958
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(10),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_rt_959
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(9),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_rt_960
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(8),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_rt_961
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(7),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_rt_962
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(6),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_rt_963
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(5),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_rt_964
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(4),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_rt_965
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(3),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_rt_966
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(2),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_rt_967
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(1),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_rt_968
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(31),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_rt_969
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_6_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_21_Q,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_20_Q,
      O => N2
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_7_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_27_Q,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_26_Q,
      O => N4
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_5_SW0 : LUT3
    generic map(
      INIT => X"BE"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_16_Q,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_15_Q,
      I2 => tde_1_w_clkdiv_value(15),
      O => N6
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_1_SW0 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => tde_1_w_clkdiv_value(3),
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_3_Q,
      I2 => tde_1_w_clkdiv_value(4),
      I3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_4_Q,
      O => N8
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_2_SW0 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => tde_1_w_clkdiv_value(6),
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_6_Q,
      I2 => tde_1_w_clkdiv_value(7),
      I3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_7_Q,
      O => N11
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_3_SW0 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => tde_1_w_clkdiv_value(9),
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_9_Q,
      I2 => tde_1_w_clkdiv_value(10),
      I3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_10_Q,
      O => N14
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_4_SW0 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => tde_1_w_clkdiv_value(12),
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_12_Q,
      I2 => tde_1_w_clkdiv_value(13),
      I3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_13_Q,
      O => N17
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tde_1_w_clkdiv_value(4),
      I1 => tde_1_w_clkdiv_value(3),
      O => N20
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tde_1_w_clkdiv_value(7),
      I1 => tde_1_w_clkdiv_value(6),
      O => N22
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW2 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tde_1_w_clkdiv_value(10),
      I1 => tde_1_w_clkdiv_value(9),
      O => N24
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW3 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tde_1_w_clkdiv_value(13),
      I1 => tde_1_w_clkdiv_value(12),
      O => N26
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW4 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_18_Q,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_17_Q,
      O => N28
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW5 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_23_Q,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_22_Q,
      O => N30
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW6 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_29_Q,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_28_Q,
      O => N32
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_0_Q : LUT4
    generic map(
      INIT => X"1DDD"
    )
    port map (
      I0 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(0),
      I1 => w_trigger_5,
      I2 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_0_Q,
      I3 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(0)
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_1_Q : LUT4
    generic map(
      INIT => X"1DDD"
    )
    port map (
      I0 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(1),
      I1 => w_trigger_5,
      I2 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_1_Q,
      I3 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(1)
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_2_Q : LUT4
    generic map(
      INIT => X"1DDD"
    )
    port map (
      I0 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(2),
      I1 => w_trigger_5,
      I2 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_Q,
      I3 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(2)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_0_Q : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      I1 => w_facilitatory_4,
      I2 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(0)
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o_inv1_cy : MUXCY
    port map (
      CI => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o_inv1_lut,
      O => tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o_inv
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_0_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(0),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(0)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_1_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(1),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(1)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_2_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(2),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(2)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_3_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(3),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(3)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_4_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(4),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(4)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_5_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(5),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(5)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_6_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(6),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(6)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_7_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(7),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(7)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_8_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(8),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(8)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_9_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(9),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(9)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_10_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(10),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(10)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_11_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(11),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(11)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_12_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(12),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(12)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_13_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(13),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(13)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_14_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(14),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(14)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_15_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(15),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(15)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_16_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(16),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(16)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_17_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(17),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(17)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_18_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(18),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(18)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_19_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(19),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(19)
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_0_1 : LUT6
    generic map(
      INIT => X"4444446555555555"
    )
    port map (
      I0 => tde_1_w_clkdiv_value(2),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_2_Q,
      I3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_0_Q,
      I4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_1_Q,
      I5 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_0_Q
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_20_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(20),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(20)
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_1_Q : LUT6
    generic map(
      INIT => X"000A414B000F000F"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_5_Q,
      I2 => tde_1_w_clkdiv_value(5),
      I3 => N20,
      I4 => N8,
      I5 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_1_Q_492
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_21_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(21),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(21)
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_2_Q : LUT6
    generic map(
      INIT => X"000A414B000F000F"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_8_Q,
      I2 => tde_1_w_clkdiv_value(8),
      I3 => N22,
      I4 => N11,
      I5 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_2_Q_490
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_22_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(22),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(22)
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_3_Q : LUT6
    generic map(
      INIT => X"000A414B000F000F"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_11_Q,
      I2 => tde_1_w_clkdiv_value(11),
      I3 => N24,
      I4 => N14,
      I5 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_3_Q_488
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_23_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(23),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(23)
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_4_Q : LUT6
    generic map(
      INIT => X"000A414B000F000F"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_14_Q,
      I2 => tde_1_w_clkdiv_value(14),
      I3 => N26,
      I4 => N17,
      I5 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_4_Q_486
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_24_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(24),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(24)
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_5_Q : LUT6
    generic map(
      INIT => X"2222272233333333"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_w_clkdiv_value(15),
      I2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_19_Q,
      I3 => N28,
      I4 => N6,
      I5 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_5_Q_484
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_25_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(25),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(25)
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_6_Q : LUT6
    generic map(
      INIT => X"AAABAAAAFFFFFFFF"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_24_Q,
      I2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_25_Q,
      I3 => N2,
      I4 => N30,
      I5 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_6_Q_482
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_26_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(26),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(26)
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_7_Q : LUT6
    generic map(
      INIT => X"AAABAAAAFFFFFFFF"
    )
    port map (
      I0 => tde_1_r_trigger_latched_449,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_30_Q,
      I2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_31_Q,
      I3 => N4,
      I4 => N32,
      I5 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_7_Q_480
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_27_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(27),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(27)
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_3_Q : LUT4
    generic map(
      INIT => X"1DDD"
    )
    port map (
      I0 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(3),
      I1 => w_trigger_5,
      I2 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_Q,
      I3 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(3)
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_4_Q : LUT4
    generic map(
      INIT => X"1DDD"
    )
    port map (
      I0 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(4),
      I1 => w_trigger_5,
      I2 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_Q,
      I3 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(4)
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_5_Q : LUT4
    generic map(
      INIT => X"1DDD"
    )
    port map (
      I0 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(5),
      I1 => w_trigger_5,
      I2 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_Q,
      I3 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(5)
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_6_Q : LUT4
    generic map(
      INIT => X"1DDD"
    )
    port map (
      I0 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(6),
      I1 => w_trigger_5,
      I2 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_Q,
      I3 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(6)
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_7_Q : LUT4
    generic map(
      INIT => X"1DDD"
    )
    port map (
      I0 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(7),
      I1 => w_trigger_5,
      I2 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_Q,
      I3 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(7)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_1_Q : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      I1 => w_facilitatory_4,
      I2 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(1)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_2_Q : LUT4
    generic map(
      INIT => X"1DDD"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      I1 => w_facilitatory_4,
      I2 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_Q,
      I3 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(2)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_3_Q : LUT4
    generic map(
      INIT => X"1DDD"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      I1 => w_facilitatory_4,
      I2 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_Q,
      I3 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(3)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_4_Q : LUT4
    generic map(
      INIT => X"1DDD"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      I1 => w_facilitatory_4,
      I2 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_Q,
      I3 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(4)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_5_Q : LUT4
    generic map(
      INIT => X"1DDD"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      I1 => w_facilitatory_4,
      I2 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_Q,
      I3 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(5)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_6_Q : LUT4
    generic map(
      INIT => X"1DDD"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
      I1 => w_facilitatory_4,
      I2 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_Q,
      I3 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(6)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_7_Q : LUT4
    generic map(
      INIT => X"1DDD"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
      I1 => w_facilitatory_4,
      I2 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_Q,
      I3 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(7)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_28_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(28),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(28)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_29_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(29),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(29)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_30_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(30),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(30)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_31_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(31),
      I1 => tde_1_r_trigger_latched_449,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(31)
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT321 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_9_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_9_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT311 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_8_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_8_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT301 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_7_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_7_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT291 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_6_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_6_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT281 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_5_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_5_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT271 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_4_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_4_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT261 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_3_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_3_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT231 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_2_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_2_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT171 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_24_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_24_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT161 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_23_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_23_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT151 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_22_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_22_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT141 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_21_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_21_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT131 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_20_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_20_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT121 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_1_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_1_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT111 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_19_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_19_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT101 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_18_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_18_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT91 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_17_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_17_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT81 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_16_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_16_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT71 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_15_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_15_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT61 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_14_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_14_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT51 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_13_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_13_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT41 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_12_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_12_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT31 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_11_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_11_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT21 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_10_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_832,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_831,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_833,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_830,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_10_Q
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_8_Q : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => w_trigger_5,
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(8),
      I2 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_Q,
      I3 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q,
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(8)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_8_Q : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => w_facilitatory_4,
      I1 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
      I2 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_Q,
      I3 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q,
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(8)
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_9_Q : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => w_trigger_5,
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(9),
      I2 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_Q,
      I3 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q,
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(9)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_9_Q : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => w_facilitatory_4,
      I1 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
      I2 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_Q,
      I3 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q,
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(9)
    );
  tde_1_spike_generator_0_Mmux_o_spike_out13 : LUT6
    generic map(
      INIT => X"008080A0A0A8A8AA"
    )
    port map (
      I0 => tde_1_spike_generator_0_Mmux_o_spike_out11_842,
      I1 => tde_1_spike_generator_0_r_value_to_generate(14),
      I2 => tde_1_spike_generator_0_r_value_to_generate(15),
      I3 => tde_1_spike_generator_0_w_mult_result(14),
      I4 => tde_1_spike_generator_0_Mcompar_w_generate_cy(6),
      I5 => tde_1_spike_generator_0_w_mult_result(15),
      O => o_output_spike_OBUF_2
    );
  i_clock_BUFGP : BUFGP
    port map (
      I => i_clock,
      O => i_clock_BUFGP_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_INV_0 : INV
    port map (
      I => p_countdown_v_tr_tick_counter(0),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_lut_0_INV_0 : INV
    port map (
      I => p_countdown_v_tr_tick_counter(0),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_lut_0_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_lut_0_INV_0 : INV
    port map (
      I => p_countdown_v_tr_tick_counter(0),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_lut_0_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_INV_0 : INV
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_INV_0 : INV
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_INV_0 : INV
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_INV_0 : INV
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_INV_0 : INV
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_INV_0 : INV
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_lut_0_INV_0 : INV
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(0),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_lut_0_Q
    );
  i_nreset_inv1_INV_0 : INV
    port map (
      I => i_nreset_IBUF_1,
      O => i_nreset_inv
    );
  tde_1_spike_generator_0_i_write_inv1_INV_0 : INV
    port map (
      I => tde_1_r_trigger_latched_449,
      O => tde_1_spike_generator_0_i_write_inv
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_1_INV_0 : INV
    port map (
      I => p_countdown_v_tr_tick_counter(0),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_1
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o_inv1_lut_INV_0 : INV
    port map (
      I => tde_1_r_trigger_latched_449,
      O => tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o_inv1_lut
    );

end Structure;

