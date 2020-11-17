--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: fpga_test_top_synthesis.vhd
-- /___/   /\     Timestamp: Wed Jul 01 17:06:20 2020
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
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_15_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_14_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_13_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_12_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_11_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_10_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_9_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_8_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_7_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_6_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_5_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_4_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_3_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_2_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_1_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_0_Q : STD_LOGIC; 
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
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT_15_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT_14_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT_9_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT_8_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT_6_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT_4_Q : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o : STD_LOGIC; 
  signal PWR_6_o_p_countdown_v_tr_tick_counter_15_equal_3_o : STD_LOGIC; 
  signal i_nreset_inv : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_0_Q_169 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_Q_170 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_Q_171 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_Q_172 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_Q_173 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_Q_174 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_Q_175 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_Q_176 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_Q_177 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_Q_178 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_Q_179 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_Q_180 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_Q_181 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_Q_182 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_Q_183 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_Q_184 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_Q_185 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_Q_186 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_Q_187 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_Q_188 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_Q_189 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_Q_190 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_Q_191 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_Q_192 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_24_Q_193 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_lut_0_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_0_Q_195 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_Q_196 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_Q_197 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_Q_198 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_Q_199 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_Q_200 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_Q_201 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_Q_202 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_Q_203 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_Q_204 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_Q_205 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_Q_206 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_Q_207 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_Q_208 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_Q_209 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_Q_210 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_Q_211 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_Q_212 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_Q_213 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_Q_214 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_Q_215 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_Q_216 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_Q_217 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_Q_218 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_24_Q_219 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_lut_0_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_0_Q_222 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_Q_223 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_Q_224 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_Q_225 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_Q_226 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_Q_227 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_Q_228 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_Q_229 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_Q_230 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_Q_231 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_Q_232 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_Q_233 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_Q_234 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_Q_235 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_Q_236 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_Q_237 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_Q_238 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_Q_239 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_Q_240 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_Q_241 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_Q_242 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_Q_243 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_Q_244 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_Q_245 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_24_Q_246 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_lut_0_Q : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_0_Q_248 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_1_Q_249 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_2_Q_250 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_3_Q_251 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_4_Q_252 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_5_Q_253 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_6_Q_254 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_7_Q_255 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_8_Q_256 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_9_Q_257 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_10_Q_258 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_11_Q_259 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_12_Q_260 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_13_Q_261 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_14_Q_262 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q_263 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q_264 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q_265 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_8_Q_266 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q_267 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q_268 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q_269 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_6_Q_270 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q_271 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q_272 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q_273 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q_274 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q_275 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q_276 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_2_Q_277 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q_278 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_1_Q_279 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_1_Q_280 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_0_Q_281 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_0_Q_282 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q_337 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q_338 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q_339 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q_340 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q_341 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q_343 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q_344 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q : STD_LOGIC; 
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
  signal tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o : STD_LOGIC; 
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
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_3_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_2_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_1_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_0_Q : STD_LOGIC; 
  signal tde_1_r_trigger_latched_493 : STD_LOGIC; 
  signal tde_1_w_sgen_val2gen_clear : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_7_Q_525 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_6_Q_526 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_6_Q_527 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_5_Q_528 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_5_Q_529 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_4_Q_530 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_4_Q_531 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_Q_532 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_3_Q_533 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_2_Q_534 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_2_Q_535 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_1_Q_536 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_1_Q_537 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_0_Q_538 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_0_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_30_Q_540 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_Q_541 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_Q_542 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_Q_543 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_Q_544 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_Q_545 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_Q_546 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_Q_547 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_Q_548 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_Q_549 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_Q_550 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_Q_551 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_Q_552 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_Q_553 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_Q_554 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_Q_555 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_Q_556 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_Q_557 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_Q_558 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_Q_559 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_Q_560 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_Q_561 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_Q_562 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_Q_563 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_Q_564 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_Q_565 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_Q_566 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_Q_567 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_Q_568 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_Q_569 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_0_Q_570 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_lut_0_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi6_574 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi5_577 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi4_580 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi3_583 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi2_586 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi1_589 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi_592 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_7_Q_593 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_6_Q_594 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_6_Q_595 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_5_Q_596 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_5_Q_597 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_4_Q_598 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_4_Q_599 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_Q_600 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_3_Q_601 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_2_Q_602 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_2_Q_603 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_1_Q_604 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_1_Q_605 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_0_Q_606 : STD_LOGIC; 
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
  signal tde_1_spike_generator_0_w_tick_851 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_Q : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_1_869 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_2_870 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_3_871 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_Q : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_1_873 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_2_874 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_3_875 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_4_876 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_5_877 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_Q : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882 : STD_LOGIC; 
  signal PWR_6_o_p_countdown_v_tr_tick_counter_15_equal_3_o_15_Q : STD_LOGIC; 
  signal PWR_6_o_p_countdown_v_tr_tick_counter_15_equal_3_o_15_1_884 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o2 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o2 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21_888 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_n0024_inv1_889 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_n0024_inv2_890 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmux_o_spike_out1 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmux_o_spike_out11_892 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_rt_913 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_rt_914 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_rt_915 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_rt_916 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_rt_917 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_rt_918 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_rt_919 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_rt_920 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_rt_921 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_rt_922 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_rt_923 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_rt_924 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_rt_925 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_rt_926 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_rt_927 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_rt_928 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_rt_929 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_rt_930 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_rt_931 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_rt_932 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_rt_933 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_rt_934 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_rt_935 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_24_rt_936 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_rt_937 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_rt_938 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_rt_939 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_rt_940 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_rt_941 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_rt_942 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_rt_943 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_rt_944 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_rt_945 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_rt_946 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_rt_947 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_rt_948 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_rt_949 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_rt_950 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_rt_951 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_rt_952 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_rt_953 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_rt_954 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_rt_955 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_rt_956 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_rt_957 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_rt_958 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_rt_959 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_24_rt_960 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_rt_961 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_rt_962 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_rt_963 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_rt_964 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_rt_965 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_rt_966 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_rt_967 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_rt_968 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_rt_969 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_rt_970 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_rt_971 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_rt_972 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_rt_973 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_rt_974 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_rt_975 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_rt_976 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_rt_977 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_rt_978 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_rt_979 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_rt_980 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_rt_981 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_rt_982 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_rt_983 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_24_rt_984 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_1_rt_985 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_2_rt_986 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_3_rt_987 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_4_rt_988 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_5_rt_989 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_6_rt_990 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_7_rt_991 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_8_rt_992 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_9_rt_993 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_10_rt_994 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_11_rt_995 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_12_rt_996 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_13_rt_997 : STD_LOGIC; 
  signal Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_14_rt_998 : STD_LOGIC; 
  signal tde_1_add_0_Madd_o_output_data_cy_14_rt_999 : STD_LOGIC; 
  signal tde_1_add_0_Madd_o_output_data_cy_13_rt_1000 : STD_LOGIC; 
  signal tde_1_add_0_Madd_o_output_data_cy_12_rt_1001 : STD_LOGIC; 
  signal tde_1_add_0_Madd_o_output_data_cy_11_rt_1002 : STD_LOGIC; 
  signal tde_1_add_0_Madd_o_output_data_cy_10_rt_1003 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_rt_1004 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_rt_1005 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_rt_1006 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_rt_1007 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_rt_1008 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_30_rt_1009 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_rt_1010 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_rt_1011 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_rt_1012 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_rt_1013 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_rt_1014 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_rt_1015 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_rt_1016 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_rt_1017 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_rt_1018 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_rt_1019 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_rt_1020 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_rt_1021 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_rt_1022 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_rt_1023 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_rt_1024 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_rt_1025 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_rt_1026 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_rt_1027 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_rt_1028 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_rt_1029 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_rt_1030 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_rt_1031 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_rt_1032 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_rt_1033 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_rt_1034 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_rt_1035 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_rt_1036 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_rt_1037 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_rt_1038 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_rt_1039 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
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
  signal p_stimuli_generation_v_faci_gen_internal_counter : STD_LOGIC_VECTOR ( 24 downto 4 ); 
  signal p_countdown_v_tr_tick_counter : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal tde_1_reg_0_o_data_out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal tde_1_add_0_Madd_o_output_data_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal tde_1_add_0_Madd_o_output_data_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal tde_1_sub_0_Msub_o_output_data_cy : STD_LOGIC_VECTOR ( 14 downto 3 ); 
  signal tde_1_sub_0_Msub_o_output_data_lut : STD_LOGIC_VECTOR ( 13 downto 3 ); 
  signal tde_1_timer_1_basic_timer_1_p_countdown_v_counter : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal tde_1_timer_0_basic_timer_1_p_countdown_v_counter : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal tde_1_w_clkdiv_value : STD_LOGIC_VECTOR ( 15 downto 3 ); 
  signal tde_1_w_value_to_generate : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal tde_1_w_sgen_clkdiv_current_value : STD_LOGIC_VECTOR ( 12 downto 3 ); 
  signal tde_1_reg_1_o_data_out : STD_LOGIC_VECTOR ( 12 downto 3 ); 
  signal tde_1_spike_generator_0_Mcompar_w_generate_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal tde_1_spike_generator_0_Mcount_r_cicle_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal tde_1_spike_generator_0_Mcount_r_cicle_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal tde_1_spike_generator_0_w_mult_result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal tde_1_spike_generator_0_r_cicle : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal tde_1_spike_generator_0_r_value_to_generate : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => tde_1_sub_0_Msub_o_output_data_lut(13)
    );
  XST_GND : GND
    port map (
      G => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q
    );
  w_tr_tick : FDC
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => PWR_6_o_p_countdown_v_tr_tick_counter_15_equal_3_o,
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
      D => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_0_Q,
      Q => p_countdown_v_tr_tick_counter(0)
    );
  p_countdown_v_tr_tick_counter_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_1_Q,
      Q => p_countdown_v_tr_tick_counter(1)
    );
  p_countdown_v_tr_tick_counter_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_2_Q,
      Q => p_countdown_v_tr_tick_counter(2)
    );
  p_countdown_v_tr_tick_counter_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_3_Q,
      Q => p_countdown_v_tr_tick_counter(3)
    );
  p_countdown_v_tr_tick_counter_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT_4_Q,
      Q => p_countdown_v_tr_tick_counter(4)
    );
  p_countdown_v_tr_tick_counter_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_5_Q,
      Q => p_countdown_v_tr_tick_counter(5)
    );
  p_countdown_v_tr_tick_counter_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT_6_Q,
      Q => p_countdown_v_tr_tick_counter(6)
    );
  p_countdown_v_tr_tick_counter_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_7_Q,
      Q => p_countdown_v_tr_tick_counter(7)
    );
  p_countdown_v_tr_tick_counter_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT_8_Q,
      Q => p_countdown_v_tr_tick_counter(8)
    );
  p_countdown_v_tr_tick_counter_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT_9_Q,
      Q => p_countdown_v_tr_tick_counter(9)
    );
  p_countdown_v_tr_tick_counter_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_10_Q,
      Q => p_countdown_v_tr_tick_counter(10)
    );
  p_countdown_v_tr_tick_counter_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_11_Q,
      Q => p_countdown_v_tr_tick_counter(11)
    );
  p_countdown_v_tr_tick_counter_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_12_Q,
      Q => p_countdown_v_tr_tick_counter(12)
    );
  p_countdown_v_tr_tick_counter_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_13_Q,
      Q => p_countdown_v_tr_tick_counter(13)
    );
  p_countdown_v_tr_tick_counter_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT_14_Q,
      Q => p_countdown_v_tr_tick_counter(14)
    );
  p_countdown_v_tr_tick_counter_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clock_BUFGP_0,
      CLR => i_nreset_inv,
      D => p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT_15_Q,
      Q => p_countdown_v_tr_tick_counter(15)
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_0_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_Q,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_0_Q_169
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_0_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_0_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_0_Q_169,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_rt_913,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_Q_170
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_1_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_0_Q_169,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_rt_913,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_1_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_Q_170,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_rt_914,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_Q_171
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_Q_170,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_rt_914,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_2_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_Q_171,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_rt_915,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_Q_172
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_Q_171,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_rt_915,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_3_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_Q_172,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_rt_916,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_Q_173
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_Q_172,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_rt_916,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_4_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_Q_173,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_rt_917,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_Q_174
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_5_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_Q_173,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_rt_917,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_5_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_Q_174,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_rt_918,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_Q_175
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_6_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_Q_174,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_rt_918,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_6_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_Q_175,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_rt_919,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_Q_176
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_7_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_Q_175,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_rt_919,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_7_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_Q_176,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_rt_920,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_Q_177
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_8_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_Q_176,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_rt_920,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_8_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_Q_177,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_rt_921,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_Q_178
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_9_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_Q_177,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_rt_921,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_9_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_Q_178,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_rt_922,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_Q_179
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_10_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_Q_178,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_rt_922,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_10_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_Q_179,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_rt_923,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_Q_180
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_11_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_Q_179,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_rt_923,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_11_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_Q_180,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_rt_924,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_Q_181
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_12_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_Q_180,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_rt_924,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_12_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_Q_181,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_rt_925,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_Q_182
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_13_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_Q_181,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_rt_925,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_13_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_Q_182,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_rt_926,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_Q_183
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_14_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_Q_182,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_rt_926,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_14_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_Q_183,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_rt_927,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_Q_184
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_15_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_Q_183,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_rt_927,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_15_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_Q_184,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_rt_928,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_Q_185
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_16_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_Q_184,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_rt_928,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_16_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_Q_185,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_rt_929,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_Q_186
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_17_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_Q_185,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_rt_929,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_17_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_Q_186,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_rt_930,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_Q_187
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_18_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_Q_186,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_rt_930,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_18_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_Q_187,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_rt_931,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_Q_188
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_19_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_Q_187,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_rt_931,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_19_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_Q_188,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_rt_932,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_Q_189
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_20_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_Q_188,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_rt_932,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_20_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_Q_189,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_rt_933,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_Q_190
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_21_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_Q_189,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_rt_933,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_21_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_Q_190,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_rt_934,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_Q_191
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_22_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_Q_190,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_rt_934,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_22_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_Q_191,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_rt_935,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_Q_192
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_23_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_Q_191,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_rt_935,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_23_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_24_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_Q_192,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_24_rt_936,
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_24_Q_193
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_24_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_Q_192,
      LI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_24_rt_936,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_24_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_24_Q_193,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_25_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_0_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_lut_0_Q,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_0_Q_195
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_0_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_lut_0_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_0_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_0_Q_195,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_rt_937,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_Q_196
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_1_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_0_Q_195,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_rt_937,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_1_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_Q_196,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_rt_938,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_Q_197
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_Q_196,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_rt_938,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_2_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_Q_197,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_rt_939,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_Q_198
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_Q_197,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_rt_939,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_3_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_Q_198,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_rt_940,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_Q_199
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_Q_198,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_rt_940,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_4_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_Q_199,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_rt_941,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_Q_200
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_5_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_Q_199,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_rt_941,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_5_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_Q_200,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_rt_942,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_Q_201
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_6_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_Q_200,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_rt_942,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_6_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_Q_201,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_rt_943,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_Q_202
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_7_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_Q_201,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_rt_943,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_7_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_Q_202,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_rt_944,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_Q_203
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_8_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_Q_202,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_rt_944,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_8_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_Q_203,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_rt_945,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_Q_204
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_9_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_Q_203,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_rt_945,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_9_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_Q_204,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_rt_946,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_Q_205
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_10_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_Q_204,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_rt_946,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_10_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_Q_205,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_rt_947,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_Q_206
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_11_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_Q_205,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_rt_947,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_11_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_Q_206,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_rt_948,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_Q_207
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_12_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_Q_206,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_rt_948,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_12_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_Q_207,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_rt_949,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_Q_208
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_13_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_Q_207,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_rt_949,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_13_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_Q_208,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_rt_950,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_Q_209
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_14_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_Q_208,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_rt_950,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_14_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_Q_209,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_rt_951,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_Q_210
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_15_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_Q_209,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_rt_951,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_15_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_Q_210,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_rt_952,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_Q_211
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_16_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_Q_210,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_rt_952,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_16_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_Q_211,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_rt_953,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_Q_212
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_17_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_Q_211,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_rt_953,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_17_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_Q_212,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_rt_954,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_Q_213
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_18_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_Q_212,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_rt_954,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_18_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_Q_213,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_rt_955,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_Q_214
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_19_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_Q_213,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_rt_955,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_19_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_Q_214,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_rt_956,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_Q_215
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_20_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_Q_214,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_rt_956,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_20_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_Q_215,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_rt_957,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_Q_216
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_21_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_Q_215,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_rt_957,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_21_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_Q_216,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_rt_958,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_Q_217
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_22_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_Q_216,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_rt_958,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_22_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_Q_217,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_rt_959,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_Q_218
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_23_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_Q_217,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_rt_959,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_23_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_24_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_Q_218,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_24_rt_960,
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_24_Q_219
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_24_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_Q_218,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_24_rt_960,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_24_Q
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_24_Q_219,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_25_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_0_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_lut_0_Q,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_0_Q_222
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_0_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_lut_0_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_0_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_0_Q_222,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_rt_961,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_Q_223
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_1_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_0_Q_222,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_rt_961,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_1_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_Q_223,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_rt_962,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_Q_224
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_Q_223,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_rt_962,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_2_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_Q_224,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_rt_963,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_Q_225
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_Q_224,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_rt_963,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_3_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_Q_225,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_rt_964,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_Q_226
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_Q_225,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_rt_964,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_4_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_Q_226,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_rt_965,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_Q_227
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_5_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_Q_226,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_rt_965,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_5_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_Q_227,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_rt_966,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_Q_228
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_6_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_Q_227,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_rt_966,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_6_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_Q_228,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_rt_967,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_Q_229
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_7_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_Q_228,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_rt_967,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_7_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_Q_229,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_rt_968,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_Q_230
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_8_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_Q_229,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_rt_968,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_8_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_Q_230,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_rt_969,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_Q_231
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_9_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_Q_230,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_rt_969,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_9_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_Q_231,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_rt_970,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_Q_232
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_10_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_Q_231,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_rt_970,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_10_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_Q_232,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_rt_971,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_Q_233
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_11_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_Q_232,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_rt_971,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_11_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_Q_233,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_rt_972,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_Q_234
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_12_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_Q_233,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_rt_972,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_12_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_Q_234,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_rt_973,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_Q_235
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_13_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_Q_234,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_rt_973,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_13_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_Q_235,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_rt_974,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_Q_236
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_14_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_Q_235,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_rt_974,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_14_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_Q_236,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_rt_975,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_Q_237
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_15_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_Q_236,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_rt_975,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_15_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_Q_237,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_rt_976,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_Q_238
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_16_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_Q_237,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_rt_976,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_16_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_Q_238,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_rt_977,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_Q_239
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_17_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_Q_238,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_rt_977,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_17_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_Q_239,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_rt_978,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_Q_240
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_18_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_Q_239,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_rt_978,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_18_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_Q_240,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_rt_979,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_Q_241
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_19_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_Q_240,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_rt_979,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_19_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_Q_241,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_rt_980,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_Q_242
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_20_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_Q_241,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_rt_980,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_20_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_Q_242,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_rt_981,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_Q_243
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_21_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_Q_242,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_rt_981,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_21_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_Q_243,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_rt_982,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_Q_244
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_22_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_Q_243,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_rt_982,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_22_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_Q_244,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_rt_983,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_Q_245
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_23_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_Q_244,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_rt_983,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_23_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_24_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_Q_245,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_24_rt_984,
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_24_Q_246
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_24_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_Q_245,
      LI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_24_rt_984,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_24_Q
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_24_Q_246,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_0_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
      S => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_lut_0_Q,
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_0_Q_248
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_xor_0_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      LI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_lut_0_Q,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_0_Q
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_1_Q : MUXCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_0_Q_248,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_1_rt_985,
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_1_Q_249
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_xor_1_Q : XORCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_0_Q_248,
      LI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_1_rt_985,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_1_Q
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_2_Q : MUXCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_1_Q_249,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_2_rt_986,
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_2_Q_250
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_1_Q_249,
      LI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_2_rt_986,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_2_Q
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_2_Q_250,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_3_rt_987,
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_3_Q_251
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_2_Q_250,
      LI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_3_rt_987,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_3_Q
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_4_Q : MUXCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_3_Q_251,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_4_rt_988,
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_4_Q_252
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_3_Q_251,
      LI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_4_rt_988,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_4_Q
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_5_Q : MUXCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_4_Q_252,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_5_rt_989,
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_5_Q_253
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_xor_5_Q : XORCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_4_Q_252,
      LI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_5_rt_989,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_5_Q
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_6_Q : MUXCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_5_Q_253,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_6_rt_990,
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_6_Q_254
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_xor_6_Q : XORCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_5_Q_253,
      LI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_6_rt_990,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_6_Q
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_7_Q : MUXCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_6_Q_254,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_7_rt_991,
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_7_Q_255
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_xor_7_Q : XORCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_6_Q_254,
      LI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_7_rt_991,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_7_Q
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_8_Q : MUXCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_7_Q_255,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_8_rt_992,
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_8_Q_256
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_xor_8_Q : XORCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_7_Q_255,
      LI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_8_rt_992,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_8_Q
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_9_Q : MUXCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_8_Q_256,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_9_rt_993,
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_9_Q_257
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_xor_9_Q : XORCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_8_Q_256,
      LI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_9_rt_993,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_9_Q
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_10_Q : MUXCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_9_Q_257,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_10_rt_994,
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_10_Q_258
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_xor_10_Q : XORCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_9_Q_257,
      LI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_10_rt_994,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_10_Q
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_11_Q : MUXCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_10_Q_258,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_11_rt_995,
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_11_Q_259
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_xor_11_Q : XORCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_10_Q_258,
      LI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_11_rt_995,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_11_Q
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_12_Q : MUXCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_11_Q_259,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_12_rt_996,
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_12_Q_260
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_xor_12_Q : XORCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_11_Q_259,
      LI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_12_rt_996,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_12_Q
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_13_Q : MUXCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_12_Q_260,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_13_rt_997,
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_13_Q_261
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_xor_13_Q : XORCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_12_Q_260,
      LI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_13_rt_997,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_13_Q
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_14_Q : MUXCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_13_Q_261,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_14_rt_998,
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_14_Q_262
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_xor_14_Q : XORCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_13_Q_261,
      LI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_14_rt_998,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_14_Q
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_xor_15_Q : XORCY
    port map (
      CI => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_14_Q_262,
      LI => p_countdown_v_tr_tick_counter(15),
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_15_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q_263,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_9_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q_265,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q_264,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q_265,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q_264,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q_263
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(9),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q_264
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_8_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q_267,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_8_Q_266,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q_267,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_8_Q_266,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q_265
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(8),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_8_Q_266
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_7_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q_269,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q_268,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q_269,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q_268,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q_267
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(7),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q_268
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_6_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q_271,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_6_Q_270,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q_271,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_6_Q_270,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q_269
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(6),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_6_Q_270
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_5_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q_273,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q_272,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q_273,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q_272,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q_271
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(5),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q_272
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_4_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q_275,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q_274,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q_275,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q_274,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q_273
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(4),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q_274
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_3_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_2_Q_277,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q_276,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_2_Q_277,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q_276,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q_275
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(3),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q_276
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_2_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_1_Q_279,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q_278,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_2_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_1_Q_279,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q_278,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_2_Q_277
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(2),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q_278
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_1_Q : XORCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_0_Q_281,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_1_Q_280,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_1_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_1_Q : MUXCY
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_0_Q_281,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_1_Q_280,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_1_Q_279
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(1),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_1_Q_280
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_0_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      LI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_0_Q_282,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_0_Q
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_0_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      S => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_0_Q_282,
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_0_Q_281
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(0),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_0_Q_282
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
      LI => tde_1_add_0_Madd_o_output_data_cy_14_rt_999,
      O => tde_1_w_value_to_generate(14)
    );
  tde_1_add_0_Madd_o_output_data_cy_14_Q : MUXCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(13),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_add_0_Madd_o_output_data_cy_14_rt_999,
      O => tde_1_add_0_Madd_o_output_data_cy(14)
    );
  tde_1_add_0_Madd_o_output_data_xor_13_Q : XORCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(12),
      LI => tde_1_add_0_Madd_o_output_data_cy_13_rt_1000,
      O => tde_1_w_value_to_generate(13)
    );
  tde_1_add_0_Madd_o_output_data_cy_13_Q : MUXCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(12),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_add_0_Madd_o_output_data_cy_13_rt_1000,
      O => tde_1_add_0_Madd_o_output_data_cy(13)
    );
  tde_1_add_0_Madd_o_output_data_xor_12_Q : XORCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(11),
      LI => tde_1_add_0_Madd_o_output_data_cy_12_rt_1001,
      O => tde_1_w_value_to_generate(12)
    );
  tde_1_add_0_Madd_o_output_data_cy_12_Q : MUXCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(11),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_add_0_Madd_o_output_data_cy_12_rt_1001,
      O => tde_1_add_0_Madd_o_output_data_cy(12)
    );
  tde_1_add_0_Madd_o_output_data_xor_11_Q : XORCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(10),
      LI => tde_1_add_0_Madd_o_output_data_cy_11_rt_1002,
      O => tde_1_w_value_to_generate(11)
    );
  tde_1_add_0_Madd_o_output_data_cy_11_Q : MUXCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(10),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_add_0_Madd_o_output_data_cy_11_rt_1002,
      O => tde_1_add_0_Madd_o_output_data_cy(11)
    );
  tde_1_add_0_Madd_o_output_data_xor_10_Q : XORCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(9),
      LI => tde_1_add_0_Madd_o_output_data_cy_10_rt_1003,
      O => tde_1_w_value_to_generate(10)
    );
  tde_1_add_0_Madd_o_output_data_cy_10_Q : MUXCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(9),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_add_0_Madd_o_output_data_cy_10_rt_1003,
      O => tde_1_add_0_Madd_o_output_data_cy(10)
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
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
      S => tde_1_add_0_Madd_o_output_data_lut(9),
      O => tde_1_add_0_Madd_o_output_data_cy(9)
    );
  tde_1_add_0_Madd_o_output_data_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
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
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
      S => tde_1_add_0_Madd_o_output_data_lut(8),
      O => tde_1_add_0_Madd_o_output_data_cy(8)
    );
  tde_1_add_0_Madd_o_output_data_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
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
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
      S => tde_1_add_0_Madd_o_output_data_lut(7),
      O => tde_1_add_0_Madd_o_output_data_cy(7)
    );
  tde_1_add_0_Madd_o_output_data_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
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
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
      S => tde_1_add_0_Madd_o_output_data_lut(6),
      O => tde_1_add_0_Madd_o_output_data_cy(6)
    );
  tde_1_add_0_Madd_o_output_data_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
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
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      S => tde_1_add_0_Madd_o_output_data_lut(5),
      O => tde_1_add_0_Madd_o_output_data_cy(5)
    );
  tde_1_add_0_Madd_o_output_data_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      I1 => tde_1_reg_0_o_data_out(5),
      O => tde_1_add_0_Madd_o_output_data_lut(5)
    );
  tde_1_add_0_Madd_o_output_data_xor_4_Q : XORCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(3),
      LI => tde_1_add_0_Madd_o_output_data_lut(4),
      O => tde_1_w_value_to_generate(4)
    );
  tde_1_add_0_Madd_o_output_data_cy_4_Q : MUXCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(3),
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      S => tde_1_add_0_Madd_o_output_data_lut(4),
      O => tde_1_add_0_Madd_o_output_data_cy(4)
    );
  tde_1_add_0_Madd_o_output_data_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      I1 => tde_1_reg_0_o_data_out(4),
      O => tde_1_add_0_Madd_o_output_data_lut(4)
    );
  tde_1_add_0_Madd_o_output_data_xor_3_Q : XORCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(2),
      LI => tde_1_add_0_Madd_o_output_data_lut(3),
      O => tde_1_w_value_to_generate(3)
    );
  tde_1_add_0_Madd_o_output_data_cy_3_Q : MUXCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(2),
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      S => tde_1_add_0_Madd_o_output_data_lut(3),
      O => tde_1_add_0_Madd_o_output_data_cy(3)
    );
  tde_1_add_0_Madd_o_output_data_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      I1 => tde_1_reg_0_o_data_out(3),
      O => tde_1_add_0_Madd_o_output_data_lut(3)
    );
  tde_1_add_0_Madd_o_output_data_xor_2_Q : XORCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(1),
      LI => tde_1_add_0_Madd_o_output_data_lut(2),
      O => tde_1_w_value_to_generate(2)
    );
  tde_1_add_0_Madd_o_output_data_cy_2_Q : MUXCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(1),
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      S => tde_1_add_0_Madd_o_output_data_lut(2),
      O => tde_1_add_0_Madd_o_output_data_cy(2)
    );
  tde_1_add_0_Madd_o_output_data_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      I1 => tde_1_reg_0_o_data_out(2),
      O => tde_1_add_0_Madd_o_output_data_lut(2)
    );
  tde_1_add_0_Madd_o_output_data_xor_1_Q : XORCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(0),
      LI => tde_1_add_0_Madd_o_output_data_lut(1),
      O => tde_1_w_value_to_generate(1)
    );
  tde_1_add_0_Madd_o_output_data_cy_1_Q : MUXCY
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy(0),
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      S => tde_1_add_0_Madd_o_output_data_lut(1),
      O => tde_1_add_0_Madd_o_output_data_cy(1)
    );
  tde_1_add_0_Madd_o_output_data_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      I1 => tde_1_reg_0_o_data_out(1),
      O => tde_1_add_0_Madd_o_output_data_lut(1)
    );
  tde_1_add_0_Madd_o_output_data_xor_0_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      LI => tde_1_add_0_Madd_o_output_data_lut(0),
      O => tde_1_w_value_to_generate(0)
    );
  tde_1_add_0_Madd_o_output_data_cy_0_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      DI => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      S => tde_1_add_0_Madd_o_output_data_lut(0),
      O => tde_1_add_0_Madd_o_output_data_cy(0)
    );
  tde_1_add_0_Madd_o_output_data_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      I1 => tde_1_reg_0_o_data_out(0),
      O => tde_1_add_0_Madd_o_output_data_lut(0)
    );
  tde_1_sub_0_Msub_o_output_data_xor_15_Q : XORCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(14),
      LI => tde_1_sub_0_Msub_o_output_data_lut(13),
      O => tde_1_w_clkdiv_value(15)
    );
  tde_1_sub_0_Msub_o_output_data_xor_14_Q : XORCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(13),
      LI => tde_1_sub_0_Msub_o_output_data_lut(13),
      O => tde_1_w_clkdiv_value(14)
    );
  tde_1_sub_0_Msub_o_output_data_cy_14_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(13),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_sub_0_Msub_o_output_data_lut(13),
      O => tde_1_sub_0_Msub_o_output_data_cy(14)
    );
  tde_1_sub_0_Msub_o_output_data_xor_13_Q : XORCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(12),
      LI => tde_1_sub_0_Msub_o_output_data_lut(13),
      O => tde_1_w_clkdiv_value(13)
    );
  tde_1_sub_0_Msub_o_output_data_cy_13_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy(12),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_sub_0_Msub_o_output_data_lut(13),
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
      DI => tde_1_reg_1_o_data_out(12),
      S => tde_1_sub_0_Msub_o_output_data_lut(12),
      O => tde_1_sub_0_Msub_o_output_data_cy(12)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => tde_1_reg_1_o_data_out(12),
      I1 => tde_1_w_sgen_clkdiv_current_value(12),
      O => tde_1_sub_0_Msub_o_output_data_lut(12)
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
      CI => tde_1_sub_0_Msub_o_output_data_lut(13),
      LI => tde_1_sub_0_Msub_o_output_data_lut(3),
      O => tde_1_w_clkdiv_value(3)
    );
  tde_1_sub_0_Msub_o_output_data_cy_3_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_lut(13),
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
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q_337,
      LI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_9_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q_338,
      LI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_rt_1004,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q_338,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_rt_1004,
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q_337
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_8_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q_339,
      LI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_rt_1005,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q_339,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_rt_1005,
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_Q_338
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_7_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q_340,
      LI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_rt_1006,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q_340,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_rt_1006,
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q_339
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_6_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q_341,
      LI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_rt_1007,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q_341,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_rt_1007,
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_Q_340
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_5_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q_343,
      LI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q_343,
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
      S => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q,
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q_341
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_4_Q : XORCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q_344,
      LI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_rt_1008,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q : MUXCY
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q_344,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_rt_1008,
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_Q_343
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      LI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
      S => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q,
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q_344
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
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
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
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
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
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
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
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
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
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
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
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
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
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
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
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
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
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
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
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
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
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
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
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
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
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
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
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
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
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
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
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
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
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
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
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
      S => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(0),
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy(0)
    );
  tde_1_reg_1_o_data_out_12 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(9),
      Q => tde_1_reg_1_o_data_out(12)
    );
  tde_1_reg_1_o_data_out_11 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(8),
      Q => tde_1_reg_1_o_data_out(11)
    );
  tde_1_reg_1_o_data_out_10 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(7),
      Q => tde_1_reg_1_o_data_out(10)
    );
  tde_1_reg_1_o_data_out_9 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(6),
      Q => tde_1_reg_1_o_data_out(9)
    );
  tde_1_reg_1_o_data_out_8 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(5),
      Q => tde_1_reg_1_o_data_out(8)
    );
  tde_1_reg_1_o_data_out_7 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(4),
      Q => tde_1_reg_1_o_data_out(7)
    );
  tde_1_reg_1_o_data_out_6 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(3),
      Q => tde_1_reg_1_o_data_out(6)
    );
  tde_1_reg_1_o_data_out_5 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(2),
      Q => tde_1_reg_1_o_data_out(5)
    );
  tde_1_reg_1_o_data_out_4 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(1),
      Q => tde_1_reg_1_o_data_out(4)
    );
  tde_1_reg_1_o_data_out_3 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(0),
      Q => tde_1_reg_1_o_data_out(3)
    );
  tde_1_w_sgen_clkdiv_current_value_12 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(9),
      Q => tde_1_w_sgen_clkdiv_current_value(12)
    );
  tde_1_w_sgen_clkdiv_current_value_11 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(8),
      Q => tde_1_w_sgen_clkdiv_current_value(11)
    );
  tde_1_w_sgen_clkdiv_current_value_10 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(7),
      Q => tde_1_w_sgen_clkdiv_current_value(10)
    );
  tde_1_w_sgen_clkdiv_current_value_9 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(6),
      Q => tde_1_w_sgen_clkdiv_current_value(9)
    );
  tde_1_w_sgen_clkdiv_current_value_8 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(5),
      Q => tde_1_w_sgen_clkdiv_current_value(8)
    );
  tde_1_w_sgen_clkdiv_current_value_7 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(4),
      Q => tde_1_w_sgen_clkdiv_current_value(7)
    );
  tde_1_w_sgen_clkdiv_current_value_6 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(3),
      Q => tde_1_w_sgen_clkdiv_current_value(6)
    );
  tde_1_w_sgen_clkdiv_current_value_5 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(2),
      Q => tde_1_w_sgen_clkdiv_current_value(5)
    );
  tde_1_w_sgen_clkdiv_current_value_4 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(1),
      Q => tde_1_w_sgen_clkdiv_current_value(4)
    );
  tde_1_w_sgen_clkdiv_current_value_3 : FD
    port map (
      C => i_clock_BUFGP_0,
      D => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(0),
      Q => tde_1_w_sgen_clkdiv_current_value(3)
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
  tde_1_reg_0_o_data_out_3 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_reg_0_n0011_inv,
      CLR => i_nreset_inv,
      D => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_3_Q,
      Q => tde_1_reg_0_o_data_out(3)
    );
  tde_1_reg_0_o_data_out_2 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_reg_0_n0011_inv,
      CLR => i_nreset_inv,
      D => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_2_Q,
      Q => tde_1_reg_0_o_data_out(2)
    );
  tde_1_reg_0_o_data_out_1 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_reg_0_n0011_inv,
      CLR => i_nreset_inv,
      D => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_1_Q,
      Q => tde_1_reg_0_o_data_out(1)
    );
  tde_1_reg_0_o_data_out_0 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_reg_0_n0011_inv,
      CLR => i_nreset_inv,
      D => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_0_Q,
      Q => tde_1_reg_0_o_data_out(0)
    );
  tde_1_r_trigger_latched : FD
    port map (
      C => i_clock_BUFGP_0,
      D => w_trigger_5,
      Q => tde_1_r_trigger_latched_493
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_7_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_6_Q_526,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_7_Q_525,
      O => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_6_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_5_Q_528,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_6_Q_527,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_6_Q_526
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_5_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_4_Q_530,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_5_Q_529,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_5_Q_528
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_4_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_Q_532,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_4_Q_531,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_4_Q_530
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_2_Q_534,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_3_Q_533,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_Q_532
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_2_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_1_Q_536,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_2_Q_535,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_2_Q_534
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_1_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_0_Q_538,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_1_Q_537,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_1_Q_536
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_0_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_lut(13),
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_0_Q,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_0_Q_538
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_30_Q_540,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_rt_1039,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_31_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_30_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_Q_541,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_30_rt_1009,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_30_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_30_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_Q_541,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_30_rt_1009,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_30_Q_540
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_29_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_Q_542,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_rt_1010,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_29_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_Q_542,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_rt_1010,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_Q_541
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_28_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_Q_543,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_rt_1011,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_28_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_Q_543,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_rt_1011,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_Q_542
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_27_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_Q_544,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_rt_1012,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_27_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_Q_544,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_rt_1012,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_Q_543
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_26_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_Q_545,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_rt_1013,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_26_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_Q_545,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_rt_1013,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_Q_544
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_25_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_Q_546,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_rt_1014,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_25_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_Q_546,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_rt_1014,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_Q_545
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_24_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_Q_547,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_rt_1015,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_24_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_Q_547,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_rt_1015,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_Q_546
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_23_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_Q_548,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_rt_1016,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_23_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_Q_548,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_rt_1016,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_Q_547
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_22_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_Q_549,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_rt_1017,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_22_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_Q_549,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_rt_1017,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_Q_548
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_21_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_Q_550,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_rt_1018,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_21_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_Q_550,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_rt_1018,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_Q_549
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_20_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_Q_551,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_rt_1019,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_20_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_Q_551,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_rt_1019,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_Q_550
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_19_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_Q_552,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_rt_1020,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_19_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_Q_552,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_rt_1020,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_Q_551
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_18_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_Q_553,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_rt_1021,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_18_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_Q_553,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_rt_1021,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_Q_552
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_17_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_Q_554,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_rt_1022,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_17_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_Q_554,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_rt_1022,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_Q_553
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_16_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_Q_555,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_rt_1023,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_16_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_Q_555,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_rt_1023,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_Q_554
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_15_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_Q_556,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_rt_1024,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_15_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_Q_556,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_rt_1024,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_Q_555
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_14_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_Q_557,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_rt_1025,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_14_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_Q_557,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_rt_1025,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_Q_556
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_13_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_Q_558,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_rt_1026,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_13_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_Q_558,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_rt_1026,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_Q_557
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_12_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_Q_559,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_rt_1027,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_12_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_Q_559,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_rt_1027,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_Q_558
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_11_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_Q_560,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_rt_1028,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_11_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_Q_560,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_rt_1028,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_Q_559
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_10_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_Q_561,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_rt_1029,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_10_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_Q_561,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_rt_1029,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_Q_560
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_9_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_Q_562,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_rt_1030,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_9_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_Q_562,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_rt_1030,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_Q_561
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_8_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_Q_563,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_rt_1031,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_8_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_Q_563,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_rt_1031,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_Q_562
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_7_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_Q_564,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_rt_1032,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_7_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_Q_564,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_rt_1032,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_Q_563
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_6_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_Q_565,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_rt_1033,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_6_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_Q_565,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_rt_1033,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_Q_564
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_5_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_Q_566,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_rt_1034,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_5_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_Q_566,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_rt_1034,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_Q_565
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_4_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_Q_567,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_rt_1035,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_4_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_Q_567,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_rt_1035,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_Q_566
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_3_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_Q_568,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_rt_1036,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_3_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_Q_568,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_rt_1036,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_Q_567
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_2_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_Q_569,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_rt_1037,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_2_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_Q_569,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_rt_1037,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_Q_568
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_1_Q : XORCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_0_Q_570,
      LI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_rt_1038,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_1_Q
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_0_Q_570,
      DI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_rt_1038,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_Q_569
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
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
      S => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_lut_0_Q,
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_0_Q_570
    );
  tde_1_spike_generator_0_Mcompar_w_generate_cy_6_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_w_generate_cy(5),
      DI => tde_1_spike_generator_0_Mcompar_w_generate_lutdi6_574,
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
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi6_574
    );
  tde_1_spike_generator_0_Mcompar_w_generate_cy_5_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_w_generate_cy(4),
      DI => tde_1_spike_generator_0_Mcompar_w_generate_lutdi5_577,
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
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi5_577
    );
  tde_1_spike_generator_0_Mcompar_w_generate_cy_4_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_w_generate_cy(3),
      DI => tde_1_spike_generator_0_Mcompar_w_generate_lutdi4_580,
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
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi4_580
    );
  tde_1_spike_generator_0_Mcompar_w_generate_cy_3_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_w_generate_cy(2),
      DI => tde_1_spike_generator_0_Mcompar_w_generate_lutdi3_583,
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
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi3_583
    );
  tde_1_spike_generator_0_Mcompar_w_generate_cy_2_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_w_generate_cy(1),
      DI => tde_1_spike_generator_0_Mcompar_w_generate_lutdi2_586,
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
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi2_586
    );
  tde_1_spike_generator_0_Mcompar_w_generate_cy_1_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_w_generate_cy(0),
      DI => tde_1_spike_generator_0_Mcompar_w_generate_lutdi1_589,
      S => tde_1_spike_generator_0_Mcompar_w_generate_lut(1),
      O => tde_1_spike_generator_0_Mcompar_w_generate_cy(1)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => tde_1_spike_generator_0_r_value_to_generate(2),
      I1 => tde_1_spike_generator_0_w_mult_result(2),
      I2 => tde_1_spike_generator_0_r_value_to_generate(3),
      I3 => tde_1_spike_generator_0_w_mult_result(3),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lut(1)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => tde_1_spike_generator_0_w_mult_result(3),
      I1 => tde_1_spike_generator_0_w_mult_result(2),
      I2 => tde_1_spike_generator_0_r_value_to_generate(2),
      I3 => tde_1_spike_generator_0_r_value_to_generate(3),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi1_589
    );
  tde_1_spike_generator_0_Mcompar_w_generate_cy_0_Q : MUXCY
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_lut(13),
      DI => tde_1_spike_generator_0_Mcompar_w_generate_lutdi_592,
      S => tde_1_spike_generator_0_Mcompar_w_generate_lut(0),
      O => tde_1_spike_generator_0_Mcompar_w_generate_cy(0)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => tde_1_spike_generator_0_r_value_to_generate(0),
      I1 => tde_1_spike_generator_0_w_mult_result(0),
      I2 => tde_1_spike_generator_0_r_value_to_generate(1),
      I3 => tde_1_spike_generator_0_w_mult_result(1),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lut(0)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => tde_1_spike_generator_0_w_mult_result(1),
      I1 => tde_1_spike_generator_0_w_mult_result(0),
      I2 => tde_1_spike_generator_0_r_value_to_generate(0),
      I3 => tde_1_spike_generator_0_r_value_to_generate(1),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi_592
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_7_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_6_Q_594,
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_7_Q_593,
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
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_7_Q_593
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_6_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_5_Q_596,
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_6_Q_595,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_6_Q_594
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
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_6_Q_595
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_5_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_4_Q_598,
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_5_Q_597,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_5_Q_596
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
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_5_Q_597
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_4_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_Q_600,
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_4_Q_599,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_4_Q_598
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
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_4_Q_599
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_2_Q_602,
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_3_Q_601,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_Q_600
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
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_3_Q_601
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_2_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_1_Q_604,
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_2_Q_603,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_2_Q_602
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
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_2_Q_603
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_1_Q : MUXCY
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_0_Q_606,
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_1_Q_605,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_1_Q_604
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
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_1_Q_605
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_0_Q : MUXCY
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_Q,
      DI => tde_1_sub_0_Msub_o_output_data_lut(13),
      S => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_0_Q,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_0_Q_606
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
      OPMODE(0) => tde_1_sub_0_Msub_o_output_data_lut(13),
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
      A(3) => tde_1_spike_generator_0_r_value_to_generate(3),
      A(2) => tde_1_spike_generator_0_r_value_to_generate(2),
      A(1) => tde_1_spike_generator_0_r_value_to_generate(1),
      A(0) => tde_1_spike_generator_0_r_value_to_generate(0),
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
      I0 => tde_1_r_trigger_latched_493,
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
      I0 => tde_1_r_trigger_latched_493,
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
      I0 => tde_1_r_trigger_latched_493,
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
      I0 => tde_1_r_trigger_latched_493,
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
      I0 => tde_1_r_trigger_latched_493,
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
      I0 => tde_1_r_trigger_latched_493,
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
      I0 => tde_1_r_trigger_latched_493,
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
      I0 => tde_1_r_trigger_latched_493,
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
      I0 => tde_1_r_trigger_latched_493,
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
      I0 => tde_1_r_trigger_latched_493,
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
      I0 => tde_1_r_trigger_latched_493,
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
      I0 => tde_1_r_trigger_latched_493,
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
      I0 => tde_1_r_trigger_latched_493,
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
      I0 => tde_1_r_trigger_latched_493,
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
      I0 => tde_1_r_trigger_latched_493,
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
      I0 => tde_1_r_trigger_latched_493,
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
      Q => tde_1_spike_generator_0_w_tick_851
    );
  tde_1_spike_generator_0_r_value_to_generate_15 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(15),
      Q => tde_1_spike_generator_0_r_value_to_generate(15)
    );
  tde_1_spike_generator_0_r_value_to_generate_14 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(14),
      Q => tde_1_spike_generator_0_r_value_to_generate(14)
    );
  tde_1_spike_generator_0_r_value_to_generate_13 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(13),
      Q => tde_1_spike_generator_0_r_value_to_generate(13)
    );
  tde_1_spike_generator_0_r_value_to_generate_12 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(12),
      Q => tde_1_spike_generator_0_r_value_to_generate(12)
    );
  tde_1_spike_generator_0_r_value_to_generate_11 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(11),
      Q => tde_1_spike_generator_0_r_value_to_generate(11)
    );
  tde_1_spike_generator_0_r_value_to_generate_10 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(10),
      Q => tde_1_spike_generator_0_r_value_to_generate(10)
    );
  tde_1_spike_generator_0_r_value_to_generate_9 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(9),
      Q => tde_1_spike_generator_0_r_value_to_generate(9)
    );
  tde_1_spike_generator_0_r_value_to_generate_8 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(8),
      Q => tde_1_spike_generator_0_r_value_to_generate(8)
    );
  tde_1_spike_generator_0_r_value_to_generate_7 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(7),
      Q => tde_1_spike_generator_0_r_value_to_generate(7)
    );
  tde_1_spike_generator_0_r_value_to_generate_6 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(6),
      Q => tde_1_spike_generator_0_r_value_to_generate(6)
    );
  tde_1_spike_generator_0_r_value_to_generate_5 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(5),
      Q => tde_1_spike_generator_0_r_value_to_generate(5)
    );
  tde_1_spike_generator_0_r_value_to_generate_4 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(4),
      Q => tde_1_spike_generator_0_r_value_to_generate(4)
    );
  tde_1_spike_generator_0_r_value_to_generate_3 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(3),
      Q => tde_1_spike_generator_0_r_value_to_generate(3)
    );
  tde_1_spike_generator_0_r_value_to_generate_2 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(2),
      Q => tde_1_spike_generator_0_r_value_to_generate(2)
    );
  tde_1_spike_generator_0_r_value_to_generate_1 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(1),
      Q => tde_1_spike_generator_0_r_value_to_generate(1)
    );
  tde_1_spike_generator_0_r_value_to_generate_0 : FDCE
    port map (
      C => i_clock_BUFGP_0,
      CE => tde_1_r_trigger_latched_493,
      CLR => i_nreset_inv,
      D => tde_1_w_value_to_generate(0),
      Q => tde_1_spike_generator_0_r_value_to_generate(0)
    );
  Mmux_p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT161 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_9_Q,
      I1 => PWR_6_o_p_countdown_v_tr_tick_counter_15_equal_3_o,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT_9_Q
    );
  Mmux_p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT151 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_8_Q,
      I1 => PWR_6_o_p_countdown_v_tr_tick_counter_15_equal_3_o,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT_8_Q
    );
  Mmux_p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_6_Q,
      I1 => PWR_6_o_p_countdown_v_tr_tick_counter_15_equal_3_o,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT_6_Q
    );
  Mmux_p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_4_Q,
      I1 => PWR_6_o_p_countdown_v_tr_tick_counter_15_equal_3_o,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT_4_Q
    );
  Mmux_p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_15_Q,
      I1 => PWR_6_o_p_countdown_v_tr_tick_counter_15_equal_3_o,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT_15_Q
    );
  Mmux_p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_14_Q,
      I1 => PWR_6_o_p_countdown_v_tr_tick_counter_15_equal_3_o,
      O => p_countdown_v_tr_tick_counter_15_GND_6_o_mux_3_OUT_14_Q
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
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT17 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(0),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_0_Q
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
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT31 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(11),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_11_Q
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
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT51 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(13),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_13_Q
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
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT71 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(15),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_15_Q
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT81 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(1),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_1_Q
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(2),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_2_Q
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT101 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(3),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_3_Q
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
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT121 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(5),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_5_Q
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
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT141 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(7),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_7_Q
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
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT161 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => tde_1_w_sgen_val2gen_clear,
      I1 => tde_1_w_value_to_generate(9),
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_9_Q
    );
  tde_1_reg_0_n0011_inv1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tde_1_r_trigger_latched_493,
      I1 => tde_1_w_sgen_val2gen_clear,
      O => tde_1_reg_0_n0011_inv
    );
  tde_1_spike_generator_0_n0047_inv1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tde_1_r_trigger_latched_493,
      I1 => tde_1_spike_generator_0_w_tick_851,
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
      O => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_1_869
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
      O => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_2_870
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
      O => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_3_871
    );
  GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_5 : LUT6
    generic map(
      INIT => X"0000000008000000"
    )
    port map (
      I0 => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_Q,
      I1 => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_1_869,
      I2 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_18_Q,
      I3 => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_2_870,
      I4 => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_3_871,
      I5 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_25_Q,
      O => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_1 : LUT6
    generic map(
      INIT => X"0000000000000020"
    )
    port map (
      I0 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_8_Q,
      I1 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_9_Q,
      I2 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_10_Q,
      I3 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_11_Q,
      I4 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_12_Q,
      I5 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_13_Q,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_Q
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_2 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_0_Q,
      I1 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_20_Q,
      I2 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_19_Q,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_1_873
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_3 : LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      I0 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_21_Q,
      I1 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_22_Q,
      I2 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_23_Q,
      I3 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_24_Q,
      I4 => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_1_873,
      I5 => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_Q,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_2_874
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_4 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_2_Q,
      I1 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_1_Q,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_3_875
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_5 : LUT6
    generic map(
      INIT => X"0004000000000000"
    )
    port map (
      I0 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_3_Q,
      I1 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_4_Q,
      I2 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_5_Q,
      I3 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_6_Q,
      I4 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_7_Q,
      I5 => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_3_875,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_4_876
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_6 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_15_Q,
      I1 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_14_Q,
      I2 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_16_Q,
      I3 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_17_Q,
      I4 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_18_Q,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_5_877
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_7 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_5_877,
      I1 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_4_876,
      I3 => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_2_874,
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
      INIT => X"0100000000000000"
    )
    port map (
      I0 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_5_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_7_Q,
      I2 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_8_Q,
      I3 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_19_Q,
      I4 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_20_Q,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_Q,
      O => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879
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
      O => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880
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
      O => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881
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
      O => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882
    );
  PWR_6_o_p_countdown_v_tr_tick_counter_15_equal_3_o_15_1 : LUT6
    generic map(
      INIT => X"0000000000000008"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_8_Q,
      I1 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_9_Q,
      I2 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_10_Q,
      I3 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_11_Q,
      I4 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_12_Q,
      I5 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_13_Q,
      O => PWR_6_o_p_countdown_v_tr_tick_counter_15_equal_3_o_15_Q
    );
  PWR_6_o_p_countdown_v_tr_tick_counter_15_equal_3_o_15_2 : LUT6
    generic map(
      INIT => X"0000000000100000"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_3_Q,
      I1 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_2_Q,
      I2 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_4_Q,
      I3 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_5_Q,
      I4 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_6_Q,
      I5 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_7_Q,
      O => PWR_6_o_p_countdown_v_tr_tick_counter_15_equal_3_o_15_1_884
    );
  PWR_6_o_p_countdown_v_tr_tick_counter_15_equal_3_o_15_3 : LUT6
    generic map(
      INIT => X"1000000000000000"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_0_Q,
      I1 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_1_Q,
      I2 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_14_Q,
      I3 => p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_15_Q,
      I4 => PWR_6_o_p_countdown_v_tr_tick_counter_15_equal_3_o_15_1_884,
      I5 => PWR_6_o_p_countdown_v_tr_tick_counter_15_equal_3_o_15_Q,
      O => PWR_6_o_p_countdown_v_tr_tick_counter_15_equal_3_o
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
      O => N6
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
      I5 => N6,
      O => tde_1_w_sgen_val2gen_clear
    );
  tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      I1 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      I2 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      O => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o2
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
      O => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21_888
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
      I4 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21_888,
      I5 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o2,
      O => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o
    );
  tde_1_timer_1_basic_timer_1_n0024_inv1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(9),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(0),
      I2 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(7),
      I3 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(8),
      O => tde_1_timer_1_basic_timer_1_n0024_inv1_889
    );
  tde_1_timer_1_basic_timer_1_n0024_inv2 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(5),
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(6),
      I2 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(3),
      I3 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(4),
      I4 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(1),
      I5 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(2),
      O => tde_1_timer_1_basic_timer_1_n0024_inv2_890
    );
  tde_1_timer_1_basic_timer_1_n0024_inv3 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => w_tr_tick_3,
      I1 => tde_1_timer_1_basic_timer_1_n0024_inv1_889,
      I2 => tde_1_timer_1_basic_timer_1_n0024_inv2_890,
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
      I0 => tde_1_spike_generator_0_w_tick_851,
      I1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(1),
      I2 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(0),
      I3 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(3),
      I4 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(2),
      I5 => tde_1_spike_generator_0_Mmux_o_spike_out1,
      O => tde_1_spike_generator_0_Mmux_o_spike_out11_892
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
      I => tde_1_sub_0_Msub_o_output_data_lut(13),
      O => o_aer_req_out
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_0_1 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(0),
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(1),
      I2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(2),
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_0_Q
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(1),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_1_rt_913
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(2),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_2_rt_914
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(3),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_rt_915
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(4),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_4_rt_916
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(5),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_5_rt_917
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(6),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_6_rt_918
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(7),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_rt_919
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(8),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_8_rt_920
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(9),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_9_rt_921
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(10),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_10_rt_922
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(11),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_rt_923
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(12),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_12_rt_924
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(13),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_13_rt_925
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(14),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_14_rt_926
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(15),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_rt_927
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(16),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_16_rt_928
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(17),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_17_rt_929
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(18),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_18_rt_930
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(19),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_rt_931
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(20),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_20_rt_932
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(21),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_21_rt_933
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(22),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_22_rt_934
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(23),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_rt_935
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(24),
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_24_rt_936
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(1),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_1_rt_937
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(2),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_2_rt_938
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(3),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_rt_939
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(4),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_4_rt_940
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(5),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_5_rt_941
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(6),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_6_rt_942
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(7),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_rt_943
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(8),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_8_rt_944
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(9),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_9_rt_945
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(10),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_10_rt_946
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(11),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_rt_947
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(12),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_12_rt_948
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(13),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_13_rt_949
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(14),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_14_rt_950
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(15),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_rt_951
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(16),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_16_rt_952
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(17),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_17_rt_953
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(18),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_18_rt_954
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(19),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_rt_955
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(20),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_20_rt_956
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(21),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_21_rt_957
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(22),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_22_rt_958
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(23),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_rt_959
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(24),
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_24_rt_960
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(1),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_1_rt_961
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(2),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_2_rt_962
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(3),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_rt_963
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(4),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_4_rt_964
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(5),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_5_rt_965
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(6),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_6_rt_966
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(7),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_rt_967
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(8),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_8_rt_968
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(9),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_9_rt_969
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(10),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_10_rt_970
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(11),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_rt_971
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(12),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_12_rt_972
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(13),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_13_rt_973
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(14),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_14_rt_974
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(15),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_rt_975
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(16),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_16_rt_976
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(17),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_17_rt_977
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(18),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_18_rt_978
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(19),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_rt_979
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(20),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_20_rt_980
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(21),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_21_rt_981
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(22),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_22_rt_982
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(23),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_rt_983
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter(24),
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_24_rt_984
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(1),
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_1_rt_985
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(2),
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_2_rt_986
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(3),
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_3_rt_987
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(4),
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_4_rt_988
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(5),
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_5_rt_989
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(6),
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_6_rt_990
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(7),
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_7_rt_991
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(8),
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_8_rt_992
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(9),
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_9_rt_993
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(10),
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_10_rt_994
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(11),
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_11_rt_995
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(12),
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_12_rt_996
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(13),
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_13_rt_997
    );
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_countdown_v_tr_tick_counter(14),
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_cy_14_rt_998
    );
  tde_1_add_0_Madd_o_output_data_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_reg_0_o_data_out(14),
      O => tde_1_add_0_Madd_o_output_data_cy_14_rt_999
    );
  tde_1_add_0_Madd_o_output_data_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_reg_0_o_data_out(13),
      O => tde_1_add_0_Madd_o_output_data_cy_13_rt_1000
    );
  tde_1_add_0_Madd_o_output_data_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_reg_0_o_data_out(12),
      O => tde_1_add_0_Madd_o_output_data_cy_12_rt_1001
    );
  tde_1_add_0_Madd_o_output_data_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_reg_0_o_data_out(11),
      O => tde_1_add_0_Madd_o_output_data_cy_11_rt_1002
    );
  tde_1_add_0_Madd_o_output_data_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_reg_0_o_data_out(10),
      O => tde_1_add_0_Madd_o_output_data_cy_10_rt_1003
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_rt_1004
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_8_rt_1005
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_rt_1006
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_6_rt_1007
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_4_rt_1008
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(30),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_30_rt_1009
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(29),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_29_rt_1010
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(28),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_28_rt_1011
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(27),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_rt_1012
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(26),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_26_rt_1013
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(25),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_25_rt_1014
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(24),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_24_rt_1015
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(23),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_rt_1016
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(22),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_22_rt_1017
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(21),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_21_rt_1018
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(20),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_20_rt_1019
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(19),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_rt_1020
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(18),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_18_rt_1021
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(17),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_17_rt_1022
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(16),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_16_rt_1023
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(15),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_rt_1024
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(14),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_14_rt_1025
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(13),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_13_rt_1026
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(12),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_12_rt_1027
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(11),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_rt_1028
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(10),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_10_rt_1029
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(9),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_9_rt_1030
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(8),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_8_rt_1031
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(7),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_rt_1032
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(6),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_6_rt_1033
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(5),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_5_rt_1034
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(4),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_4_rt_1035
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(3),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_rt_1036
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(2),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_2_rt_1037
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(1),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_1_rt_1038
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(31),
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_rt_1039
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_6_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_21_Q,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_20_Q,
      O => N8
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_7_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_27_Q,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_26_Q,
      O => N10
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_5_SW0 : LUT3
    generic map(
      INIT => X"BE"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_16_Q,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_15_Q,
      I2 => tde_1_w_clkdiv_value(15),
      O => N12
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
      O => N14
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
      O => N17
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
      O => N20
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
      O => N23
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tde_1_w_clkdiv_value(4),
      I1 => tde_1_w_clkdiv_value(3),
      O => N26
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tde_1_w_clkdiv_value(7),
      I1 => tde_1_w_clkdiv_value(6),
      O => N28
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW2 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tde_1_w_clkdiv_value(10),
      I1 => tde_1_w_clkdiv_value(9),
      O => N30
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW3 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tde_1_w_clkdiv_value(13),
      I1 => tde_1_w_clkdiv_value(12),
      O => N32
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW4 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_18_Q,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_17_Q,
      O => N34
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW5 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_23_Q,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_22_Q,
      O => N36
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW6 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_29_Q,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_28_Q,
      O => N38
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
  tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o22_SW0 : LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_Q,
      I1 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o2,
      I2 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_Q,
      I3 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_Q,
      I4 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_Q,
      O => N40
    );
  tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o23 : LUT6
    generic map(
      INIT => X"55555FFF55557FFF"
    )
    port map (
      I0 => w_facilitatory_4,
      I1 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_Q,
      I2 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_Q,
      I3 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_Q,
      I4 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q,
      I5 => N40,
      O => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o
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
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(0)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_1_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(1),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(1)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_2_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(2),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(2)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_3_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(3),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(3)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_4_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(4),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(4)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_5_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(5),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(5)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_6_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(6),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(6)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_7_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(7),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(7)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_8_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(8),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(8)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_9_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(9),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(9)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_10_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(10),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(10)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_11_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(11),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(11)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_12_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(12),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(12)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_13_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(13),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(13)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_14_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(14),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(14)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_15_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(15),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(15)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_16_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(16),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(16)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_17_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(17),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(17)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_18_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(18),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(18)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_19_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(19),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(19)
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_0_1 : LUT5
    generic map(
      INIT => X"CCCDFFFF"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_0_Q,
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_1_Q,
      I3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_2_Q,
      I4 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_0_Q
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_20_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(20),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(20)
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_1_Q : LUT6
    generic map(
      INIT => X"000A414B000F000F"
    )
    port map (
      I0 => tde_1_r_trigger_latched_493,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_5_Q,
      I2 => tde_1_w_clkdiv_value(5),
      I3 => N26,
      I4 => N14,
      I5 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_1_Q_537
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_21_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(21),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(21)
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_2_Q : LUT6
    generic map(
      INIT => X"000A414B000F000F"
    )
    port map (
      I0 => tde_1_r_trigger_latched_493,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_8_Q,
      I2 => tde_1_w_clkdiv_value(8),
      I3 => N28,
      I4 => N17,
      I5 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_2_Q_535
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_22_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(22),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(22)
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_3_Q : LUT6
    generic map(
      INIT => X"000A414B000F000F"
    )
    port map (
      I0 => tde_1_r_trigger_latched_493,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_11_Q,
      I2 => tde_1_w_clkdiv_value(11),
      I3 => N30,
      I4 => N20,
      I5 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_3_Q_533
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_23_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(23),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(23)
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_4_Q : LUT6
    generic map(
      INIT => X"000A414B000F000F"
    )
    port map (
      I0 => tde_1_r_trigger_latched_493,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_14_Q,
      I2 => tde_1_w_clkdiv_value(14),
      I3 => N32,
      I4 => N23,
      I5 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_4_Q_531
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_24_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(24),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(24)
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_5_Q : LUT6
    generic map(
      INIT => X"2222272233333333"
    )
    port map (
      I0 => tde_1_r_trigger_latched_493,
      I1 => tde_1_w_clkdiv_value(15),
      I2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_19_Q,
      I3 => N34,
      I4 => N12,
      I5 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_5_Q_529
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_25_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(25),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(25)
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_6_Q : LUT6
    generic map(
      INIT => X"AAABAAAAFFFFFFFF"
    )
    port map (
      I0 => tde_1_r_trigger_latched_493,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_24_Q,
      I2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_25_Q,
      I3 => N8,
      I4 => N36,
      I5 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_6_Q_527
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_26_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(26),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(26)
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_7_Q : LUT6
    generic map(
      INIT => X"AAABAAAAFFFFFFFF"
    )
    port map (
      I0 => tde_1_r_trigger_latched_493,
      I1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_30_Q,
      I2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_31_Q,
      I3 => N10,
      I4 => N38,
      I5 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_7_Q_525
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_27_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(27),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(27)
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
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_2_Q : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      I1 => w_facilitatory_4,
      I2 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
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
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(28)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_29_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(29),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(29)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_30_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(30),
      I1 => tde_1_r_trigger_latched_493,
      I2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(30)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_31_Q : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(31),
      I1 => tde_1_r_trigger_latched_493,
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
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_9_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT311 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_8_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_8_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT301 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_7_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_7_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT291 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_6_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_6_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT281 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_5_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_5_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT271 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_4_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_4_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT171 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_24_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_24_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT161 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_23_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_23_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT151 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_22_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_22_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT141 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_21_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_21_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT131 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_20_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_20_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT111 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_19_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_19_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT101 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_18_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_18_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT91 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_17_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_17_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT81 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_16_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_16_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT71 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_15_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_15_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT61 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_14_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_14_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT51 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_13_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_13_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT41 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_12_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_12_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT31 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_11_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_11_Q
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT21 : LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_10_Q,
      I1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      I2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_881,
      I3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_880,
      I4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_882,
      I5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_879,
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
      I0 => tde_1_spike_generator_0_Mmux_o_spike_out11_892,
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
  Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_lut_0_INV_0 : INV
    port map (
      I => p_countdown_v_tr_tick_counter(0),
      O => Madd_p_countdown_v_tr_tick_counter_15_GND_6_o_add_1_OUT_lut_0_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_INV_0 : INV
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_INV_0 : INV
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q
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
      I => tde_1_r_trigger_latched_493,
      O => tde_1_spike_generator_0_i_write_inv
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o_inv1_lut_INV_0 : INV
    port map (
      I => tde_1_r_trigger_latched_493,
      O => tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o_inv1_lut
    );

end Structure;

