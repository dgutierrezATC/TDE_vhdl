--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: fpga_test_top_timesim.vhd
-- /___/   /\     Timestamp: Wed Jul 01 14:32:49 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf fpga_test_top.pcf -rpw 100 -tpw 0 -ar Structure -tm fpga_test_top -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim fpga_test_top.ncd fpga_test_top_timesim.vhd 
-- Device	: 6slx150tfgg484-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: fpga_test_top.ncd
-- Output file	: D:\Universidad\Repositorios\GitHub\Doctorado\TDE_vhdl\TDE\Examples\FPGA_test\fpga_ise\netgen\par\fpga_test_top_timesim.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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
  signal N11 : STD_LOGIC; 
  signal tde_1_w_clkdiv_value_6_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_6_0 : STD_LOGIC; 
  signal tde_1_w_clkdiv_value_7_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_7_0 : STD_LOGIC; 
  signal N22_0 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal tde_1_w_clkdiv_value_9_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_9_0 : STD_LOGIC; 
  signal tde_1_w_clkdiv_value_10_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_10_0 : STD_LOGIC; 
  signal N24_0 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal tde_1_w_clkdiv_value_12_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_12_0 : STD_LOGIC; 
  signal tde_1_w_clkdiv_value_13_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_13_0 : STD_LOGIC; 
  signal N26_0 : STD_LOGIC; 
  signal i_clock_BUFGP : STD_LOGIC; 
  signal i_nreset_inv : STD_LOGIC; 
  signal tde_1_reg_0_n0011_inv : STD_LOGIC; 
  signal tde_1_w_value_to_generate_4_0 : STD_LOGIC; 
  signal tde_1_w_sgen_val2gen_clear : STD_LOGIC; 
  signal tde_1_w_value_to_generate_5_0 : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_4_0 : STD_LOGIC; 
  signal tde_1_w_value_to_generate_6_0 : STD_LOGIC; 
  signal tde_1_w_value_to_generate_7_0 : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_6_0 : STD_LOGIC; 
  signal tde_1_w_value_to_generate_8_0 : STD_LOGIC; 
  signal tde_1_w_value_to_generate_9_0 : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_8_0 : STD_LOGIC; 
  signal tde_1_w_value_to_generate_11_0 : STD_LOGIC; 
  signal tde_1_w_value_to_generate_12_0 : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_11_0 : STD_LOGIC; 
  signal tde_1_w_value_to_generate_13_0 : STD_LOGIC; 
  signal tde_1_w_value_to_generate_14_0 : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_13_0 : STD_LOGIC; 
  signal w_tr_tick_2552 : STD_LOGIC; 
  signal w_facilitatory_2553 : STD_LOGIC; 
  signal tde_1_w_value_to_generate_15_0 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_n0024_inv_0 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal tde_1_w_clkdiv_value_3_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_3_0 : STD_LOGIC; 
  signal tde_1_w_clkdiv_value_4_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_4_0 : STD_LOGIC; 
  signal N20_0 : STD_LOGIC; 
  signal tde_1_r_trigger_latched_2564 : STD_LOGIC; 
  signal tde_1_spike_generator_0_i_write_inv : STD_LOGIC; 
  signal tde_1_spike_generator_0_n0047_inv : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle_cy_3_Q_2569 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle_cy_7_Q_2574 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle_cy_11_Q_2579 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_0_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_1_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_2_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_Q_2590 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_3_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_4_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_5_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_6_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_Q_2599 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_7_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_8_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_9_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_10_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_Q_2608 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_11_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_12_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_13_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_14_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_Q_2617 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_15_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_16_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_17_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_18_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_Q_2626 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_19_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_20_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_21_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_22_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_Q_2635 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_23_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_24_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0 : STD_LOGIC; 
  signal tde_1_w_clkdiv_value_2_0 : STD_LOGIC; 
  signal tde_1_w_clkdiv_value_5_0 : STD_LOGIC; 
  signal tde_1_w_clkdiv_value_8_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_Q_2653 : STD_LOGIC; 
  signal tde_1_w_clkdiv_value_11_0 : STD_LOGIC; 
  signal tde_1_w_clkdiv_value_14_0 : STD_LOGIC; 
  signal tde_1_w_clkdiv_value_15_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_2_Q_2681 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_6_Q_2682 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_10_Q_2683 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_14_Q_2684 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_18_Q_2685 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_22_Q_2686 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_26_Q_2687 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_30_Q_2688 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_0_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_1_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_2_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_Q_2692 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_5_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_Q_2694 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_8_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_Q_2696 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_11_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_14_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_Q_2699 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_15_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_16_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_17_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_18_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_Q_2704 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_19_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_20_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_21_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_22_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_Q_2709 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_23_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_24_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_25_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_26_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_Q_2714 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_27_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_28_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_29_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_30_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_31_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_Q_2721 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal tde_1_spike_generator_0_w_tick_2728 : STD_LOGIC; 
  signal tde_1_add_0_Madd_o_output_data_cy_7_Q_2734 : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_10_0 : STD_LOGIC; 
  signal tde_1_w_value_to_generate_10_0 : STD_LOGIC; 
  signal tde_1_add_0_Madd_o_output_data_cy_11_Q_2745 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_0_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_1_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_2_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_Q_2758 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_3_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_4_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_5_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_6_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_Q_2763 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_7_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_8_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_9_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_10_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_Q_2768 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_11_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_12_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_13_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_14_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_Q_2773 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_15_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_16_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_17_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_18_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_Q_2778 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_19_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_20_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_21_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_22_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_Q_2783 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_23_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_24_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_25_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_cy_3_Q_2793 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_cy_6_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_0_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_1_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_2_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_Q_2806 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_3_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_4_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_5_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_6_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_Q_2811 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_7_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_8_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_9_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_10_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_Q_2816 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_11_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_12_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_13_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_14_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_Q_2821 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_15_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_16_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_17_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_18_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_Q_2826 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_19_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_20_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_21_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_22_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_Q_2831 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_23_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_24_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_25_0 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_0 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_Q_2837 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_0 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_0 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_0 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_0 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_Q_2842 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_0 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_0 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_0 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_0 : STD_LOGIC; 
  signal w_trigger_2847 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_0_0 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_1_0 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_0 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_n0024_inv : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_Q_2856 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_0 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_0 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_0 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_0 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_Q_2865 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_0 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_0 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_0 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_0 : STD_LOGIC; 
  signal tde_1_sub_0_Msub_o_output_data_cy_5_Q_2876 : STD_LOGIC; 
  signal tde_1_sub_0_Msub_o_output_data_cy_9_Q_2881 : STD_LOGIC; 
  signal tde_1_sub_0_Msub_o_output_data_cy_13_Q_2885 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q_2886 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q_2887 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q_2888 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q_2889 : STD_LOGIC; 
  signal o_output_spike_OBUF_2890 : STD_LOGIC; 
  signal i_clock_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal i_aer_ack_out_IBUF_0 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_3_2901 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_4_2902 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_Q : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_2_2904 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_2_2906 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_1_2907 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_5_2908 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_Q : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_Q : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_1_2911 : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_3_2912 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_n0024_inv1_2913 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_n0024_inv2_2914 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21_2925 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o2 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21_2927 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o2 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmux_o_spike_out1 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmux_o_spike_out11_2930 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle1 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle2 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle3 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle8 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle11 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle10 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle9 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle4 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle7 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle6 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle5 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle12 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle13 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle14 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_r_cicle15 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_17_rt_234 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_16_rt_231 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_18_rt_227 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_19_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_18_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_16_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_17_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_19_rt_217 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_2_rt_142 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_lut_0_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_0_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_1_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_1_rt_135 : STD_LOGIC; 
  signal ProtoComp7_CYINITGND_0 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_3_rt_133 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_2_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_3_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_13_rt_212 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_12_rt_209 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_14_rt_205 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_15_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_14_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_12_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_13_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_15_rt_195 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_5_rt_168 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_4_rt_165 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_6_rt_161 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_7_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_6_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_4_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_5_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_7_rt_151 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_9_rt_190 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_8_rt_187 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_10_rt_183 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_11_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_10_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_8_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_9_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_11_rt_173 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter7 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter8 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter9 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter10 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_21_rt_256 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_20_rt_253 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_22_rt_249 : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_23_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_22_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_20_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_21_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_23_rt_239 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter3 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter4 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter5 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter6 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_5_Q_335 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_7_Q_314 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_6_Q_308 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_4_Q_305 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter1 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter2 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter : STD_LOGIC; 
  signal tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o_inv1_lut : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_24_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_24_rt_261 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_0_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_1_Q_291 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_2_Q_284 : STD_LOGIC; 
  signal ProtoComp10_CYINITGND_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_3_Q_279 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter11 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter12 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter13 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter14 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter27 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter28 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter29 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter30 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter19 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter20 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter21 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter22 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter23 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter24 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter25 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter26 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter15 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter16 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter17 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter18 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_2_rt_642 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_lut_0_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_0_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_1_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_1_rt_635 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_ProtoComp7_CYINITGND_0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_3_rt_633 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_2_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_3_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_17_rt_734 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_16_rt_731 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_18_rt_727 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_19_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_18_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_16_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_17_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_19_rt_717 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_5_rt_668 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_4_rt_665 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_6_rt_661 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_7_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_6_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_4_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_5_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_7_rt_651 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_21_rt_756 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_20_rt_753 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_22_rt_749 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_23_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_22_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_20_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_21_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_23_rt_739 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_13_rt_712 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_12_rt_709 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_14_rt_705 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_15_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_14_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_12_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_13_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_15_rt_695 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter31 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_9_rt_690 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_8_rt_687 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_10_rt_683 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_11_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_10_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_8_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_9_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_11_rt_673 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_25_rt_778 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_24_rt_775 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_26_rt_771 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_27_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_26_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_24_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_25_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_27_rt_761 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_13_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_12_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_14_rt : STD_LOGIC;
 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_15_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_14_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_12_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_13_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_15_rt : STD_LOGIC;
 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_24_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_25_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_25_p_stimuli_generation_v_faci_gen_internal_counter_24_rt : STD_LOGIC; 
  signal ProtoComp21_CYINITVCC_1 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi2_1106 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi1_1105 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi3_1098 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_21_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_20_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_22_rt : STD_LOGIC;
 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_23_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_22_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_20_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_21_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_23_rt : STD_LOGIC;
 
  signal tde_1_spike_generator_0_Mcompar_w_generate_cy_6_Q_1129 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi5_1127 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi4_1126 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lutdi6_1125 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_p_stimuli_generation_v_faci_gen_internal_counter_2_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_1 : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_0_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_1_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_p_stimuli_generation_v_faci_gen_internal_counter_1_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_ProtoComp7_CYINITGND_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_p_stimuli_generation_v_faci_gen_internal_counter_3_rt : STD_LOGIC;
 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_2_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_3_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_17_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_16_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_18_rt : STD_LOGIC;
 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_19_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_18_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_16_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_17_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_19_rt : STD_LOGIC;
 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_0_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_3_Q_823 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_1_Q_819 : STD_LOGIC; 
  signal ProtoComp16_CYINITVCC_1 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_2_Q_815 : STD_LOGIC; 
  signal tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_6_Q_858 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_4_Q_856 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_5_Q_850 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_7_Q_841 : STD_LOGIC; 
  signal ProtoComp18_CYINITGND_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_p_stimuli_generation_v_faci_gen_internal_counter_2_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_lut_0_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_0_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_1_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_p_stimuli_generation_v_faci_gen_internal_counter_1_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_ProtoComp7_CYINITGND_0 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_p_stimuli_generation_v_faci_gen_internal_counter_3_rt : STD_LOGIC;
 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_2_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_3_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_28_rt_798 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_30_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_29_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_30_rt_791 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_28_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_31_Q : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_29_rt_786 : STD_LOGIC; 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_rt_783 : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_rt_941 : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_14_rt_931 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_9_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_8_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_10_rt : STD_LOGIC;
 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_11_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_10_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_8_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_9_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_11_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_5_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_4_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_6_rt : STD_LOGIC;
 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_7_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_6_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_4_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_5_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_7_rt : STD_LOGIC;
 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter8 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter9 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter4 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter5 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter7 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter6 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter8 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter9 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_1_Q_1513 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q_1507 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_0_Q_1506 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_1_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_0_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_Q : STD_LOGIC; 
  signal ProtoComp31_CYINITGND_0 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q_1493 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter1 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter2 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter3 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter4 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter5 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter7 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter6 : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_5_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_4_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_6_rt : STD_LOGIC;
 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_7_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_6_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_4_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_5_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_7_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_9_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_8_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_10_rt : STD_LOGIC;
 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_11_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_10_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_8_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_9_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_11_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_13_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_12_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_14_rt : STD_LOGIC;
 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_15_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_14_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_12_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_13_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_15_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_21_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_20_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_22_rt : STD_LOGIC;
 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_23_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_22_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_20_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_21_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_23_rt : STD_LOGIC;
 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_24_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_25_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_25_p_stimuli_generation_v_faci_gen_internal_counter_24_rt : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_17_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_16_rt : STD_LOGIC;
 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_18_rt : STD_LOGIC;
 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_19_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_18_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_16_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_17_Q : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_19_rt : STD_LOGIC;
 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter1 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter2 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter3 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_p_countdown_v_counter_6_rt_1585 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_p_countdown_v_counter_8_rt_1579 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_8_Q_1547 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q_1541 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q : STD_LOGIC; 
  signal ProtoComp34_CYINITGND_0 : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_6_Q_1534 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q_1530 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q_1524 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q_1521 : STD_LOGIC; 
  signal i_clock_BUFGP_IBUFG_1599 : STD_LOGIC; 
  signal i_aer_ack_out_IBUF_1640 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M16 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M17 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M18 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M19 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M20 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M21 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M22 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M23 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M24 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M25 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M26 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M27 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M28 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M29 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M30 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M31 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M32 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M33 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M34 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_M35 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT1 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT2 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT3 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT4 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT5 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT6 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT7 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT8 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT9 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT10 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT11 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT12 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT13 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT14 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT15 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT16 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT17 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT18 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT19 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT20 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT21 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT22 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT23 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT24 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT25 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT26 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT27 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT28 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT29 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT30 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT31 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT32 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT33 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT34 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT35 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT36 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT37 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT38 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT39 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT40 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT41 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT42 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT43 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT44 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT45 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT46 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT47 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P1 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P2 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P3 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P4 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P5 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P6 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P7 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P8 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P9 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P10 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P11 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P12 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P13 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P14 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P15 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P16 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P17 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P18 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P19 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P20 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P21 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P22 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P23 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P24 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P25 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P26 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P27 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P28 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P29 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P30 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P31 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P32 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P33 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P34 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P35 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P36 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P37 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P38 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P39 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P40 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P41 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P42 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P43 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P44 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P45 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P46 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_P47 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT1 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT2 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT3 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT4 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT5 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT6 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT7 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT8 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT9 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT10 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT11 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT12 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT13 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT14 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT15 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT16 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT17 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_CARRYOUT : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_CARRYOUTF : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCIN0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCIN1 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCIN2 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCIN3 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCIN4 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCIN5 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCIN6 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCIN7 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCIN8 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCIN9 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCIN10 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCIN11 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCIN12 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCIN13 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCIN14 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCIN15 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCIN16 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_BCIN17 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN0 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN1 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN2 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN3 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN4 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN5 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN6 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN7 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN8 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN9 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN10 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN11 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN12 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN13 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN14 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN15 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN16 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN17 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN18 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN19 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN20 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN21 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN22 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN23 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN24 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN25 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN26 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN27 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN28 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN29 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN30 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN31 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN32 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN33 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN34 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN35 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN36 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN37 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN38 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN39 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN40 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN41 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN42 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN43 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN44 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN45 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN46 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_PCIN47 : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_RSTP_INT : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_RSTA_INT : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_CEA_INT : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_CEP_INT : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_CEB_INT : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_CEM_INT : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_RSTB_INT : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_CLK_INT : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_RSTM_INT : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_RSTOPMODE_INT : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_CEC_INT : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_CEOPMODE_INT : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_RSTD_INT : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_CED_INT : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_RSTCARRYIN_INT : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_RSTC_INT : STD_LOGIC; 
  signal tde_1_spike_generator_0_Mmult_w_mult_result_CECARRYIN_INT : STD_LOGIC; 
  signal i_nreset_inv_non_inverted : STD_LOGIC; 
  signal ProtoComp39_IINV_OUT : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_12_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_13_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_14_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_15_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_9_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_10_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_11_Q : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_5_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_6_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_7_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_8_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_24_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_16_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_17_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_18_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_19_Q : STD_LOGIC; 
  signal GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_5_Q : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_1_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_2_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_3_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_4_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_20_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_21_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_22_Q : STD_LOGIC; 
  signal p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_23_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_p_countdown_v_counter_1_rt_2220 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_p_countdown_v_counter_0_rt_2219 : STD_LOGIC; 
  signal ProtoComp88_CYINITVCC_1 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_p_countdown_v_counter_3_rt_2207 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_p_countdown_v_counter_2_rt_2198 : STD_LOGIC; 
  signal PWR_6_o_p_countdown_v_tr_tick_counter_5_equal_3_o : STD_LOGIC; 
  signal Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_1_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_3_pack_14 : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_3_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_2_Q : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_4_Q : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_p_countdown_v_counter_4_rt_2259 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_p_countdown_v_counter_5_rt_2255 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_p_countdown_v_counter_6_rt_2248 : STD_LOGIC; 
  signal tde_1_timer_1_basic_timer_1_p_countdown_v_counter_7_rt_2240 : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_4_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_5_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_8_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_9_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_6_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_7_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_11_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_12_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_14_Q : STD_LOGIC; 
  signal tde_1_timer_0_basic_timer_1_n0024_inv : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_13_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_10_Q : STD_LOGIC; 
  signal tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_15_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_cicle_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_cicle_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_cicle_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_cicle_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_cicle_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_cicle_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_cicle_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_cicle_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_cicle_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_cicle_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_cicle_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_cicle_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_cicle_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_cicle_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_cicle_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_cicle_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_w_tick_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_7_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_add_0_Madd_o_output_data_xor_15_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_add_0_Madd_o_output_data_xor_15_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_11_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_11_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_11_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_11_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_o_output_spike_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_i_clock_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_w_trigger_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_w_facilitatory_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_r_trigger_latched_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_r_trigger_latched_IN : STD_LOGIC; 
  signal NlwBufferSignal_p_countdown_v_tr_tick_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_1_o_data_out_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_1_o_data_out_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_5_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_5_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_5_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_5_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_1_o_data_out_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_1_o_data_out_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_w_tr_tick_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_countdown_v_tr_tick_counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_countdown_v_tr_tick_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_countdown_v_tr_tick_counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_countdown_v_tr_tick_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_countdown_v_tr_tick_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_1_o_data_out_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_1_o_data_out_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_1_o_data_out_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_1_o_data_out_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_13_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_13_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_9_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_9_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_9_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_9_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_0_o_data_out_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_0_o_data_out_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_0_o_data_out_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_0_o_data_out_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_0_o_data_out_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_0_o_data_out_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_0_o_data_out_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_0_o_data_out_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_1_o_data_out_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_1_o_data_out_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_1_o_data_out_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_1_o_data_out_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_1_o_data_out_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_1_o_data_out_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_1_o_data_out_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_1_o_data_out_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_0_o_data_out_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_0_o_data_out_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_0_o_data_out_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_tde_1_reg_0_o_data_out_13_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_243_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_r_cicle_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_r_cicle_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_r_cicle_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_244_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_245_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_246_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_235_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_r_cicle_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_r_cicle_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_r_cicle_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_236_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_237_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_238_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_239_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_r_cicle_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_r_cicle_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_r_cicle_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_240_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_241_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_242_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_r_cicle_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_r_cicle_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_r_cicle_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_r_cicle_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_r_cicle_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_232_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_233_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_234_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_75_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_74_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_73_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_72_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_59_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_58_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_57_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_3_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_71_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_70_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_69_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_68_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_63_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_62_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_61_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_60_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_67_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_66_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_65_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_64_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_267_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_10_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_10_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_10_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_268_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_269_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_270_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_79_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_78_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_77_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_76_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_271_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_6_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_6_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_6_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_272_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_273_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_274_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_7_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_7_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_7_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_7_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_275_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_2_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_2_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_2_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_2_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_276_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_277_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_294_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_81_B6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_80_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_47_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_263_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_14_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_14_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_14_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_264_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_265_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_266_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_247_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_30_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_30_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_30_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_248_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_249_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_250_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_255_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_22_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_22_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_22_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_256_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_257_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_258_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_251_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_26_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_26_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_26_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_252_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_253_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_254_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_259_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_18_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_18_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_18_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_260_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_261_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_262_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_128_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_129_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_130_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_38_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_112_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_113_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_114_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_115_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_124_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_125_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_126_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_127_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_108_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_109_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_110_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_111_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_116_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_117_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_118_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_119_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_120_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_121_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_122_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_123_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_104_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_105_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_106_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_107_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_44_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_43_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_42_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_41_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_54_B6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_53_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_52_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_51_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_50_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_49_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_6_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_6_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_6_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_6_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_6_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_6_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_6_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_6_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_6_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_5_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_4_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_3_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_48_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_47_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_46_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_45_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_7_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_7_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_7_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_7_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_add_0_Madd_o_output_data_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_add_0_Madd_o_output_data_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_add_0_Madd_o_output_data_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_32_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_31_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_30_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_2_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_101_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_102_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_103_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_add_0_Madd_o_output_data_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_add_0_Madd_o_output_data_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_add_0_Madd_o_output_data_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_add_0_Madd_o_output_data_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_add_0_Madd_o_output_data_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_85_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_add_0_Madd_o_output_data_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_add_0_Madd_o_output_data_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_add_0_Madd_o_output_data_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_40_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_39_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_38_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_37_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_36_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_35_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_34_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_33_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_28_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_29_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_30_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_31_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_32_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_19_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_24_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_25_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_26_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_27_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_20_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_21_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_22_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_23_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_xor_15_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_xor_15_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_xor_15_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_xor_15_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_xor_15_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_xor_15_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_xor_15_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_4_B6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_5_A6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_9_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_8_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_7_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_6_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_13_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_12_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_11_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_10_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_17_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_16_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_15_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_14_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_25_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_24_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_23_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_22_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_27_B6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_26_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_21_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_20_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_19_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_18_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_33_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_34_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_35_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_36_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_88_A6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_13_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_89_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_14_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_90_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_82_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_15_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_16_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_17_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_18_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_cy_5_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_cy_5_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_cy_5_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_7_D6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_cy_13_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_cy_13_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_cy_13_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_cy_13_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_cy_13_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_lut_12_9_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_cy_9_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_cy_9_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_tde_1_sub_0_Msub_o_output_data_cy_9_CO_2_UNCONNECTED : STD_LOGIC; 
  signal p_countdown_v_tr_tick_counter : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal tde_1_reg_0_o_data_out : STD_LOGIC_VECTOR ( 15 downto 4 ); 
  signal tde_1_spike_generator_0_r_cicle : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal p_stimuli_generation_v_faci_gen_internal_counter : STD_LOGIC_VECTOR ( 24 downto 1 ); 
  signal tde_1_spike_generator_0_p_clock_divider_v_tick_counter : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal tde_1_timer_0_basic_timer_1_p_countdown_v_counter : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal tde_1_spike_generator_0_r_value_to_generate : STD_LOGIC_VECTOR ( 15 downto 4 ); 
  signal tde_1_spike_generator_0_w_mult_result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal tde_1_timer_1_basic_timer_1_p_countdown_v_counter : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal tde_1_w_sgen_clkdiv_current_value : STD_LOGIC_VECTOR ( 11 downto 2 ); 
  signal tde_1_reg_1_o_data_out : STD_LOGIC_VECTOR ( 11 downto 2 ); 
  signal tde_1_spike_generator_0_Mcount_r_cicle_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal tde_1_spike_generator_0_Mcompar_w_generate_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal tde_1_w_value_to_generate : STD_LOGIC_VECTOR ( 15 downto 4 ); 
  signal tde_1_add_0_Madd_o_output_data_lut : STD_LOGIC_VECTOR ( 13 downto 4 ); 
  signal tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal tde_1_w_clkdiv_value : STD_LOGIC_VECTOR ( 15 downto 2 ); 
  signal tde_1_sub_0_Msub_o_output_data_lut : STD_LOGIC_VECTOR ( 11 downto 2 ); 
begin
  tde_1_spike_generator_0_r_cicle_3 : X_FF
    generic map(
      LOC => "SLICE_X112Y146",
      INIT => '0'
    )
    port map (
      CE => tde_1_spike_generator_0_n0047_inv,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_3_CLK,
      I => tde_1_spike_generator_0_Mcount_r_cicle3,
      O => tde_1_spike_generator_0_r_cicle(3),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X112Y146",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => tde_1_spike_generator_0_r_cicle(3),
      ADR3 => tde_1_r_trigger_latched_2564,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(3)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_243_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y146",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_243_D5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_r_cicle_2 : X_FF
    generic map(
      LOC => "SLICE_X112Y146",
      INIT => '0'
    )
    port map (
      CE => tde_1_spike_generator_0_n0047_inv,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_2_CLK,
      I => tde_1_spike_generator_0_Mcount_r_cicle2,
      O => tde_1_spike_generator_0_r_cicle(2),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_r_cicle_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X112Y146"
    )
    port map (
      CI => '0',
      CYINIT => tde_1_spike_generator_0_i_write_inv,
      CO(3) => tde_1_spike_generator_0_Mcount_r_cicle_cy_3_Q_2569,
      CO(2) => NLW_tde_1_spike_generator_0_Mcount_r_cicle_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Mcount_r_cicle_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Mcount_r_cicle_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => tde_1_spike_generator_0_Mcount_r_cicle3,
      O(2) => tde_1_spike_generator_0_Mcount_r_cicle2,
      O(1) => tde_1_spike_generator_0_Mcount_r_cicle1,
      O(0) => tde_1_spike_generator_0_Mcount_r_cicle,
      S(3) => tde_1_spike_generator_0_Mcount_r_cicle_lut(3),
      S(2) => tde_1_spike_generator_0_Mcount_r_cicle_lut(2),
      S(1) => tde_1_spike_generator_0_Mcount_r_cicle_lut(1),
      S(0) => tde_1_spike_generator_0_Mcount_r_cicle_lut(0)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X112Y146",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => tde_1_spike_generator_0_r_cicle(2),
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(2)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_244_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y146",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_244_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_r_cicle_1 : X_FF
    generic map(
      LOC => "SLICE_X112Y146",
      INIT => '0'
    )
    port map (
      CE => tde_1_spike_generator_0_n0047_inv,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_1_CLK,
      I => tde_1_spike_generator_0_Mcount_r_cicle1,
      O => tde_1_spike_generator_0_r_cicle(1),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X112Y146",
      INIT => X"3333000033330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => tde_1_spike_generator_0_r_cicle(1),
      ADR1 => tde_1_r_trigger_latched_2564,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(1)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_245_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y146",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_245_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_r_cicle_0 : X_FF
    generic map(
      LOC => "SLICE_X112Y146",
      INIT => '0'
    )
    port map (
      CE => tde_1_spike_generator_0_n0047_inv,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_0_CLK,
      I => tde_1_spike_generator_0_Mcount_r_cicle,
      O => tde_1_spike_generator_0_r_cicle(0),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X112Y146",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => tde_1_spike_generator_0_r_cicle(0),
      ADR1 => tde_1_r_trigger_latched_2564,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(0)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_246_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y146",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_246_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_r_cicle_11 : X_FF
    generic map(
      LOC => "SLICE_X112Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_spike_generator_0_n0047_inv,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_11_CLK,
      I => tde_1_spike_generator_0_Mcount_r_cicle11,
      O => tde_1_spike_generator_0_r_cicle(11),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X112Y148",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => tde_1_spike_generator_0_r_cicle(11),
      ADR3 => tde_1_r_trigger_latched_2564,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(11)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_235_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y148",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_235_D5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_r_cicle_10 : X_FF
    generic map(
      LOC => "SLICE_X112Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_spike_generator_0_n0047_inv,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_10_CLK,
      I => tde_1_spike_generator_0_Mcount_r_cicle10,
      O => tde_1_spike_generator_0_r_cicle(10),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_r_cicle_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X112Y148"
    )
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy_7_Q_2574,
      CYINIT => '0',
      CO(3) => tde_1_spike_generator_0_Mcount_r_cicle_cy_11_Q_2579,
      CO(2) => NLW_tde_1_spike_generator_0_Mcount_r_cicle_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Mcount_r_cicle_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Mcount_r_cicle_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => tde_1_spike_generator_0_Mcount_r_cicle11,
      O(2) => tde_1_spike_generator_0_Mcount_r_cicle10,
      O(1) => tde_1_spike_generator_0_Mcount_r_cicle9,
      O(0) => tde_1_spike_generator_0_Mcount_r_cicle8,
      S(3) => tde_1_spike_generator_0_Mcount_r_cicle_lut(11),
      S(2) => tde_1_spike_generator_0_Mcount_r_cicle_lut(10),
      S(1) => tde_1_spike_generator_0_Mcount_r_cicle_lut(9),
      S(0) => tde_1_spike_generator_0_Mcount_r_cicle_lut(8)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X112Y148",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => tde_1_spike_generator_0_r_cicle(10),
      ADR3 => tde_1_r_trigger_latched_2564,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(10)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_236_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y148",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_236_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_r_cicle_9 : X_FF
    generic map(
      LOC => "SLICE_X112Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_spike_generator_0_n0047_inv,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_9_CLK,
      I => tde_1_spike_generator_0_Mcount_r_cicle9,
      O => tde_1_spike_generator_0_r_cicle(9),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X112Y148",
      INIT => X"3333000033330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => tde_1_spike_generator_0_r_cicle(9),
      ADR1 => tde_1_r_trigger_latched_2564,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(9)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_237_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y148",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_237_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_r_cicle_8 : X_FF
    generic map(
      LOC => "SLICE_X112Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_spike_generator_0_n0047_inv,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_8_CLK,
      I => tde_1_spike_generator_0_Mcount_r_cicle8,
      O => tde_1_spike_generator_0_r_cicle(8),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X112Y148",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => tde_1_spike_generator_0_r_cicle(8),
      ADR4 => tde_1_r_trigger_latched_2564,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(8)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_238_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y148",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_238_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_r_cicle_7 : X_FF
    generic map(
      LOC => "SLICE_X112Y147",
      INIT => '0'
    )
    port map (
      CE => tde_1_spike_generator_0_n0047_inv,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_7_CLK,
      I => tde_1_spike_generator_0_Mcount_r_cicle7,
      O => tde_1_spike_generator_0_r_cicle(7),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X112Y147",
      INIT => X"3333000033330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => tde_1_spike_generator_0_r_cicle(7),
      ADR1 => tde_1_r_trigger_latched_2564,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(7)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_239_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y147",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_239_D5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_r_cicle_6 : X_FF
    generic map(
      LOC => "SLICE_X112Y147",
      INIT => '0'
    )
    port map (
      CE => tde_1_spike_generator_0_n0047_inv,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_6_CLK,
      I => tde_1_spike_generator_0_Mcount_r_cicle6,
      O => tde_1_spike_generator_0_r_cicle(6),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_r_cicle_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X112Y147"
    )
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy_3_Q_2569,
      CYINIT => '0',
      CO(3) => tde_1_spike_generator_0_Mcount_r_cicle_cy_7_Q_2574,
      CO(2) => NLW_tde_1_spike_generator_0_Mcount_r_cicle_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Mcount_r_cicle_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Mcount_r_cicle_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => tde_1_spike_generator_0_Mcount_r_cicle7,
      O(2) => tde_1_spike_generator_0_Mcount_r_cicle6,
      O(1) => tde_1_spike_generator_0_Mcount_r_cicle5,
      O(0) => tde_1_spike_generator_0_Mcount_r_cicle4,
      S(3) => tde_1_spike_generator_0_Mcount_r_cicle_lut(7),
      S(2) => tde_1_spike_generator_0_Mcount_r_cicle_lut(6),
      S(1) => tde_1_spike_generator_0_Mcount_r_cicle_lut(5),
      S(0) => tde_1_spike_generator_0_Mcount_r_cicle_lut(4)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X112Y147",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => tde_1_spike_generator_0_r_cicle(6),
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(6)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_240_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y147",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_240_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_r_cicle_5 : X_FF
    generic map(
      LOC => "SLICE_X112Y147",
      INIT => '0'
    )
    port map (
      CE => tde_1_spike_generator_0_n0047_inv,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_5_CLK,
      I => tde_1_spike_generator_0_Mcount_r_cicle5,
      O => tde_1_spike_generator_0_r_cicle(5),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X112Y147",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => tde_1_spike_generator_0_r_cicle(5),
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(5)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_241_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y147",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_241_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_r_cicle_4 : X_FF
    generic map(
      LOC => "SLICE_X112Y147",
      INIT => '0'
    )
    port map (
      CE => tde_1_spike_generator_0_n0047_inv,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_4_CLK,
      I => tde_1_spike_generator_0_Mcount_r_cicle4,
      O => tde_1_spike_generator_0_r_cicle(4),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X112Y147",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => tde_1_spike_generator_0_r_cicle(4),
      ADR3 => tde_1_r_trigger_latched_2564,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(4)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_242_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y147",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_242_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_r_cicle_15 : X_FF
    generic map(
      LOC => "SLICE_X112Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_spike_generator_0_n0047_inv,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_15_CLK,
      I => tde_1_spike_generator_0_Mcount_r_cicle15,
      O => tde_1_spike_generator_0_r_cicle(15),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X112Y149",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => tde_1_spike_generator_0_r_cicle(15),
      ADR3 => '1',
      ADR4 => tde_1_r_trigger_latched_2564,
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(15)
    );
  tde_1_spike_generator_0_r_cicle_14 : X_FF
    generic map(
      LOC => "SLICE_X112Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_spike_generator_0_n0047_inv,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_14_CLK,
      I => tde_1_spike_generator_0_Mcount_r_cicle14,
      O => tde_1_spike_generator_0_r_cicle(14),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_r_cicle_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X112Y149"
    )
    port map (
      CI => tde_1_spike_generator_0_Mcount_r_cicle_cy_11_Q_2579,
      CYINIT => '0',
      CO(3) => NLW_tde_1_spike_generator_0_Mcount_r_cicle_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_tde_1_spike_generator_0_Mcount_r_cicle_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Mcount_r_cicle_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Mcount_r_cicle_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_tde_1_spike_generator_0_Mcount_r_cicle_xor_15_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => tde_1_spike_generator_0_Mcount_r_cicle15,
      O(2) => tde_1_spike_generator_0_Mcount_r_cicle14,
      O(1) => tde_1_spike_generator_0_Mcount_r_cicle13,
      O(0) => tde_1_spike_generator_0_Mcount_r_cicle12,
      S(3) => tde_1_spike_generator_0_Mcount_r_cicle_lut(15),
      S(2) => tde_1_spike_generator_0_Mcount_r_cicle_lut(14),
      S(1) => tde_1_spike_generator_0_Mcount_r_cicle_lut(13),
      S(0) => tde_1_spike_generator_0_Mcount_r_cicle_lut(12)
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X112Y149",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => tde_1_spike_generator_0_r_cicle(14),
      ADR3 => tde_1_r_trigger_latched_2564,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(14)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_232_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_232_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_r_cicle_13 : X_FF
    generic map(
      LOC => "SLICE_X112Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_spike_generator_0_n0047_inv,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_13_CLK,
      I => tde_1_spike_generator_0_Mcount_r_cicle13,
      O => tde_1_spike_generator_0_r_cicle(13),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X112Y149",
      INIT => X"3333000033330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => tde_1_spike_generator_0_r_cicle(13),
      ADR1 => tde_1_r_trigger_latched_2564,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(13)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_233_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_233_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_r_cicle_12 : X_FF
    generic map(
      LOC => "SLICE_X112Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_spike_generator_0_n0047_inv,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_12_CLK,
      I => tde_1_spike_generator_0_Mcount_r_cicle12,
      O => tde_1_spike_generator_0_r_cicle(12),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_r_cicle_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X112Y149",
      INIT => X"0000CCCC0000CCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => tde_1_spike_generator_0_r_cicle(12),
      ADR4 => tde_1_r_trigger_latched_2564,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_r_cicle_lut(12)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_234_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_234_A5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_19_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_19_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_18_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_18_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_17_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_17_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_16_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_16_0
    );
  p_stimuli_generation_v_faci_gen_internal_counter_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y149",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => p_stimuli_generation_v_faci_gen_internal_counter(19),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_19_rt_217
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_75_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_75_D5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X100Y149"
    )
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_Q_2617,
      CYINIT => '0',
      CO(3) => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_Q_2626,
      CO(2) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_19_Q,
      O(2) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_18_Q,
      O(1) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_17_Q,
      O(0) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_16_Q,
      S(3) => p_stimuli_generation_v_faci_gen_internal_counter_19_rt_217,
      S(2) => p_stimuli_generation_v_faci_gen_internal_counter_18_rt_227,
      S(1) => p_stimuli_generation_v_faci_gen_internal_counter_17_rt_234,
      S(0) => p_stimuli_generation_v_faci_gen_internal_counter_16_rt_231
    );
  p_stimuli_generation_v_faci_gen_internal_counter_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y149",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(18),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_18_rt_227
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_74_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_74_C5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y149",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => p_stimuli_generation_v_faci_gen_internal_counter(17),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_17_rt_234
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_73_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_73_B5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y149",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(16),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_16_rt_231
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_72_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_72_A5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_3_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_3_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_2_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_2_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_1_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_1_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_0_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_0_0
    );
  p_stimuli_generation_v_faci_gen_internal_counter_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y145",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter(3),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_3_rt_133
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_59_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y145",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_59_D5LUT_O_UNCONNECTED
    );
  ProtoComp7_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X100Y145"
    )
    port map (
      O => ProtoComp7_CYINITGND_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X100Y145"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp7_CYINITGND_0,
      CO(3) => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_Q_2590,
      CO(2) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_3_Q,
      O(2) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_2_Q,
      O(1) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_1_Q,
      O(0) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_0_Q,
      S(3) => p_stimuli_generation_v_faci_gen_internal_counter_3_rt_133,
      S(2) => p_stimuli_generation_v_faci_gen_internal_counter_2_rt_142,
      S(1) => p_stimuli_generation_v_faci_gen_internal_counter_1_rt_135,
      S(0) => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_lut_0_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y145",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(2),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_2_rt_142
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_58_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y145",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_58_C5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y145",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter(1),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_1_rt_135
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_57_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y145",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_57_B5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X100Y145",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => p_countdown_v_tr_tick_counter(0),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_lut_0_Q
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_3_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y145",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_3_A5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_15_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_15_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_14_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_14_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_13_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_13_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_12_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_12_0
    );
  p_stimuli_generation_v_faci_gen_internal_counter_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y148",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(15),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_15_rt_195
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_71_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y148",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_71_D5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X100Y148"
    )
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_Q_2608,
      CYINIT => '0',
      CO(3) => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_Q_2617,
      CO(2) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_15_Q,
      O(2) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_14_Q,
      O(1) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_13_Q,
      O(0) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_12_Q,
      S(3) => p_stimuli_generation_v_faci_gen_internal_counter_15_rt_195,
      S(2) => p_stimuli_generation_v_faci_gen_internal_counter_14_rt_205,
      S(1) => p_stimuli_generation_v_faci_gen_internal_counter_13_rt_212,
      S(0) => p_stimuli_generation_v_faci_gen_internal_counter_12_rt_209
    );
  p_stimuli_generation_v_faci_gen_internal_counter_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y148",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(14),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_14_rt_205
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_70_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y148",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_70_C5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y148",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => p_stimuli_generation_v_faci_gen_internal_counter(13),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_13_rt_212
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_69_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y148",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_69_B5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y148",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(12),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_12_rt_209
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_68_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y148",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_68_A5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_7_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_7_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_6_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_6_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_5_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_5_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_4_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_4_0
    );
  p_stimuli_generation_v_faci_gen_internal_counter_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y146",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter(7),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_7_rt_151
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_63_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y146",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_63_D5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X100Y146"
    )
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_3_Q_2590,
      CYINIT => '0',
      CO(3) => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_Q_2599,
      CO(2) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_7_Q,
      O(2) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_6_Q,
      O(1) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_5_Q,
      O(0) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_4_Q,
      S(3) => p_stimuli_generation_v_faci_gen_internal_counter_7_rt_151,
      S(2) => p_stimuli_generation_v_faci_gen_internal_counter_6_rt_161,
      S(1) => p_stimuli_generation_v_faci_gen_internal_counter_5_rt_168,
      S(0) => p_stimuli_generation_v_faci_gen_internal_counter_4_rt_165
    );
  p_stimuli_generation_v_faci_gen_internal_counter_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y146",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(6),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_6_rt_161
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_62_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y146",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_62_C5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y146",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter(5),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_5_rt_168
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_61_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y146",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_61_B5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y146",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(4),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_4_rt_165
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_60_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y146",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_60_A5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_11_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_11_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_10_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_10_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_9_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_9_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_8_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_8_0
    );
  p_stimuli_generation_v_faci_gen_internal_counter_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y147",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(11),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_11_rt_173
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_67_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y147",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_67_D5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X100Y147"
    )
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_7_Q_2599,
      CYINIT => '0',
      CO(3) => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_Q_2608,
      CO(2) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_11_Q,
      O(2) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_10_Q,
      O(1) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_9_Q,
      O(0) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_8_Q,
      S(3) => p_stimuli_generation_v_faci_gen_internal_counter_11_rt_173,
      S(2) => p_stimuli_generation_v_faci_gen_internal_counter_10_rt_183,
      S(1) => p_stimuli_generation_v_faci_gen_internal_counter_9_rt_190,
      S(0) => p_stimuli_generation_v_faci_gen_internal_counter_8_rt_187
    );
  p_stimuli_generation_v_faci_gen_internal_counter_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y147",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(10),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_10_rt_183
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_66_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y147",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_66_C5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y147",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(9),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_9_rt_190
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_65_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y147",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_65_B5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y147",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(8),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_8_rt_187
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_64_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y147",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_64_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_10 : X_FF
    generic map(
      LOC => "SLICE_X104Y151",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_10_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter10,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(10),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y151",
      INIT => X"0F0000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(10),
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(10)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_267_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y151",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_267_D5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_9 : X_FF
    generic map(
      LOC => "SLICE_X104Y151",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_9_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter9,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(9),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_10_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X104Y151"
    )
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_6_Q_2682,
      CYINIT => '0',
      CO(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_10_Q_2683,
      CO(2) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_10_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_10_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_10_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter10,
      O(2) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter9,
      O(1) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter8,
      O(0) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter7,
      S(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(10),
      S(2) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(9),
      S(1) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(8),
      S(0) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(7)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y151",
      INIT => X"0F0000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(9),
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(9)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_268_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y151",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_268_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_8 : X_FF
    generic map(
      LOC => "SLICE_X104Y151",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_8_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter8,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(8),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y151",
      INIT => X"0F0000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(8),
      ADR4 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(8)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_269_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y151",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_269_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_7 : X_FF
    generic map(
      LOC => "SLICE_X104Y151",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_7_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter7,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(7),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y151",
      INIT => X"00F0000000F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => tde_1_r_trigger_latched_2564,
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(7),
      ADR4 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(7)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_270_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y151",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_270_A5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_23_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_23_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_22_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_22_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_21_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_21_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_20_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_20_0
    );
  p_stimuli_generation_v_faci_gen_internal_counter_23_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y150",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(23),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_23_rt_239
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_79_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_79_D5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X100Y150"
    )
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_19_Q_2626,
      CYINIT => '0',
      CO(3) => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_Q_2635,
      CO(2) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_23_Q,
      O(2) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_22_Q,
      O(1) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_21_Q,
      O(0) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_20_Q,
      S(3) => p_stimuli_generation_v_faci_gen_internal_counter_23_rt_239,
      S(2) => p_stimuli_generation_v_faci_gen_internal_counter_22_rt_249,
      S(1) => p_stimuli_generation_v_faci_gen_internal_counter_21_rt_256,
      S(0) => p_stimuli_generation_v_faci_gen_internal_counter_20_rt_253
    );
  p_stimuli_generation_v_faci_gen_internal_counter_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y150",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(22),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_22_rt_249
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_78_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_78_C5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_21_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y150",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => p_stimuli_generation_v_faci_gen_internal_counter(21),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_21_rt_256
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_77_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_77_B5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_20_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y150",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(20),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_20_rt_253
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_76_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_76_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_6 : X_FF
    generic map(
      LOC => "SLICE_X104Y150",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_6_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter6,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(6),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y150",
      INIT => X"0F0000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(6),
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(6)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_271_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_271_D5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_5 : X_FF
    generic map(
      LOC => "SLICE_X104Y150",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_5_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter5,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(5),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_6_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X104Y150"
    )
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_2_Q_2681,
      CYINIT => '0',
      CO(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_6_Q_2682,
      CO(2) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_6_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_6_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_6_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter6,
      O(2) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter5,
      O(1) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter4,
      O(0) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter3,
      S(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(6),
      S(2) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(5),
      S(1) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(4),
      S(0) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(3)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y150",
      INIT => X"5500000055000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => tde_1_r_trigger_latched_2564,
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(5),
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(5)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_272_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_272_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_4 : X_FF
    generic map(
      LOC => "SLICE_X104Y150",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_4_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter4,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(4),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y150",
      INIT => X"00F0000000F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => tde_1_r_trigger_latched_2564,
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(4),
      ADR4 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(4)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_273_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_273_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_3 : X_FF
    generic map(
      LOC => "SLICE_X104Y150",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_3_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter3,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(3),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y150",
      INIT => X"3300000033000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => tde_1_r_trigger_latched_2564,
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(3),
      ADR4 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(3)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_274_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_274_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y148",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(26),
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(27),
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(28),
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(29),
      ADR5 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(30),
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(31),
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_7_Q_314
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X104Y148"
    )
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_Q_2653,
      CYINIT => '0',
      CO(3) => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      CO(2) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_7_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_7_O_3_UNCONNECTED,
      O(2) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_7_O_2_UNCONNECTED,
      O(1) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_7_O_1_UNCONNECTED,
      O(0) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_7_O_0_UNCONNECTED,
      S(3) => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_7_Q_314,
      S(2) => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_6_Q_308,
      S(1) => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_5_Q_335,
      S(0) => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_4_Q_305
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y148",
      INIT => X"0000000000000001"
    )
    port map (
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(20),
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(21),
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(22),
      ADR0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(23),
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(24),
      ADR5 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(25),
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_6_Q_308
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y148",
      INIT => X"0000000200000001"
    )
    port map (
      ADR0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(15),
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(19),
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(18),
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(17),
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(16),
      ADR5 => tde_1_w_clkdiv_value_15_0,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_5_Q_335
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y148",
      INIT => X"8008200240041001"
    )
    port map (
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(14),
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(13),
      ADR0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(12),
      ADR5 => tde_1_w_clkdiv_value_12_0,
      ADR3 => tde_1_w_clkdiv_value_14_0,
      ADR4 => tde_1_w_clkdiv_value_13_0,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_4_Q_305
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_2 : X_FF
    generic map(
      LOC => "SLICE_X104Y149",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_2_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter2,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(2),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y149",
      INIT => X"0000F0000000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => tde_1_r_trigger_latched_2564,
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(2),
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(2)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_275_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_275_D5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_1 : X_FF
    generic map(
      LOC => "SLICE_X104Y149",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_1_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter1,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(1),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_2_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X104Y149"
    )
    port map (
      CI => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      CYINIT => '0',
      CO(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_2_Q_2681,
      CO(2) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_2_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_2_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_2_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter2,
      O(2) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter1,
      O(1) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter,
      O(0) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_2_O_0_UNCONNECTED,
      S(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(2),
      S(2) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(1),
      S(1) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(0),
      S(0) => tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o_inv1_lut
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y149",
      INIT => X"0F0000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(1),
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(1)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_276_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_276_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_0 : X_FF
    generic map(
      LOC => "SLICE_X104Y149",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_0_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(0),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y149",
      INIT => X"00F0000000F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => tde_1_r_trigger_latched_2564,
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(0),
      ADR4 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(0)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_277_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_277_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o_inv1_lut_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X104Y149",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => tde_1_r_trigger_latched_2564,
      ADR5 => '1',
      O => tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o_inv1_lut
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_294_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_294_A5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0
    );
  p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_24_Q,
      O => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_24_0
    );
  Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X100Y151"
    )
    port map (
      CI => Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_cy_23_Q_2635,
      CYINIT => '0',
      CO(3) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_CO_3_UNCONNECTED,
      CO(2) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_CO_0_UNCONNECTED,
      DI(3) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_DI_3_UNCONNECTED,
      DI(2) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_DI_2_UNCONNECTED,
      DI(1) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_O_3_UNCONNECTED,
      O(2) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_O_2_UNCONNECTED,
      O(1) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_Q,
      O(0) => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_24_Q,
      S(3) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_S_3_UNCONNECTED,
      S(2) => NLW_Madd_p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_xor_25_S_2_UNCONNECTED,
      S(1) => '0',
      S(0) => p_stimuli_generation_v_faci_gen_internal_counter_24_rt_261
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_81_B6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X100Y151",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_81_B6LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_24_rt : X_LUT6
    generic map(
      LOC => "SLICE_X100Y151",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => p_stimuli_generation_v_faci_gen_internal_counter(24),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_24_rt_261
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_80_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X100Y151",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_80_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y147",
      INIT => X"8008400420021001"
    )
    port map (
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(11),
      ADR0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(10),
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(9),
      ADR5 => tde_1_w_clkdiv_value_9_0,
      ADR3 => tde_1_w_clkdiv_value_11_0,
      ADR4 => tde_1_w_clkdiv_value_10_0,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_3_Q_279
    );
  ProtoComp10_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X104Y147"
    )
    port map (
      O => ProtoComp10_CYINITGND_0
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X104Y147"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp10_CYINITGND_0,
      CO(3) => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_Q_2653,
      CO(2) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_cy_3_O_0_UNCONNECTED,
      S(3) => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_3_Q_279,
      S(2) => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_2_Q_284,
      S(1) => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_1_Q_291,
      S(0) => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_0_Q
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y147",
      INIT => X"8008200240041001"
    )
    port map (
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(8),
      ADR0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(7),
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(6),
      ADR4 => tde_1_w_clkdiv_value_6_0,
      ADR2 => tde_1_w_clkdiv_value_8_0,
      ADR5 => tde_1_w_clkdiv_value_7_0,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_2_Q_284
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y147",
      INIT => X"8020080240100401"
    )
    port map (
      ADR0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(5),
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(4),
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(3),
      ADR3 => tde_1_w_clkdiv_value_3_0,
      ADR5 => tde_1_w_clkdiv_value_5_0,
      ADR4 => tde_1_w_clkdiv_value_4_0,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_1_Q_291
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X104Y147",
      INIT => X"0050000500500005"
    )
    port map (
      ADR1 => '1',
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(2),
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(1),
      ADR0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(0),
      ADR4 => tde_1_w_clkdiv_value_2_0,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o_lut_0_Q
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_47_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y147",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_47_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_14 : X_FF
    generic map(
      LOC => "SLICE_X104Y152",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_14_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter14,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(14),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y152",
      INIT => X"0F0000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(14),
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(14)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_263_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y152",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_263_D5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_13 : X_FF
    generic map(
      LOC => "SLICE_X104Y152",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_13_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter13,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(13),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_14_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X104Y152"
    )
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_10_Q_2683,
      CYINIT => '0',
      CO(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_14_Q_2684,
      CO(2) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_14_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_14_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_14_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter14,
      O(2) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter13,
      O(1) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter12,
      O(0) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter11,
      S(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(14),
      S(2) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(13),
      S(1) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(12),
      S(0) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(11)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y152",
      INIT => X"0F0000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(13),
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(13)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_264_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y152",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_264_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_12 : X_FF
    generic map(
      LOC => "SLICE_X104Y152",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_12_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter12,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(12),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y152",
      INIT => X"00F0000000F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => tde_1_r_trigger_latched_2564,
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(12),
      ADR4 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(12)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_265_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y152",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_265_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_11 : X_FF
    generic map(
      LOC => "SLICE_X104Y152",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_11_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter11,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(11),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y152",
      INIT => X"00F0000000F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => tde_1_r_trigger_latched_2564,
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(11),
      ADR2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(11)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_266_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y152",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_266_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_30 : X_FF
    generic map(
      LOC => "SLICE_X104Y156",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_30_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter30,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(30),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_30_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y156",
      INIT => X"0F0000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(30),
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(30)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_247_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y156",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_247_D5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_29 : X_FF
    generic map(
      LOC => "SLICE_X104Y156",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_29_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter29,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(29),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_30_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X104Y156"
    )
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_26_Q_2687,
      CYINIT => '0',
      CO(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_30_Q_2688,
      CO(2) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_30_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_30_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_30_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter30,
      O(2) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter29,
      O(1) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter28,
      O(0) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter27,
      S(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(30),
      S(2) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(29),
      S(1) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(28),
      S(0) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(27)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_29_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y156",
      INIT => X"0F0000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(29),
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(29)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_248_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y156",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_248_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_28 : X_FF
    generic map(
      LOC => "SLICE_X104Y156",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_28_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter28,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(28),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_28_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y156",
      INIT => X"00F0000000F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => tde_1_r_trigger_latched_2564,
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(28),
      ADR4 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(28)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_249_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y156",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_249_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_27 : X_FF
    generic map(
      LOC => "SLICE_X104Y156",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_27_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter27,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(27),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_27_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y156",
      INIT => X"00F0000000F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => tde_1_r_trigger_latched_2564,
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(27),
      ADR4 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(27)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_250_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y156",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_250_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_22 : X_FF
    generic map(
      LOC => "SLICE_X104Y154",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_22_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter22,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(22),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_22_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y154",
      INIT => X"0F0000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(22),
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(22)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_255_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y154",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_255_D5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_21 : X_FF
    generic map(
      LOC => "SLICE_X104Y154",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_21_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter21,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(21),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_22_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X104Y154"
    )
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_18_Q_2685,
      CYINIT => '0',
      CO(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_22_Q_2686,
      CO(2) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_22_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_22_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_22_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter22,
      O(2) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter21,
      O(1) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter20,
      O(0) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter19,
      S(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(22),
      S(2) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(21),
      S(1) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(20),
      S(0) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(19)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_21_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y154",
      INIT => X"0F0000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(21),
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(21)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_256_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y154",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_256_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_20 : X_FF
    generic map(
      LOC => "SLICE_X104Y154",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_20_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter20,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(20),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_20_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y154",
      INIT => X"00F0000000F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => tde_1_r_trigger_latched_2564,
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(20),
      ADR4 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(20)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_257_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y154",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_257_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_19 : X_FF
    generic map(
      LOC => "SLICE_X104Y154",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_19_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter19,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(19),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y154",
      INIT => X"00F0000000F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => tde_1_r_trigger_latched_2564,
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(19),
      ADR4 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(19)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_258_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y154",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_258_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_26 : X_FF
    generic map(
      LOC => "SLICE_X104Y155",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_26_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter26,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(26),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_26_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y155",
      INIT => X"0F0000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(26),
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(26)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_251_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y155",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_251_D5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_25 : X_FF
    generic map(
      LOC => "SLICE_X104Y155",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_25_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter25,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(25),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_26_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X104Y155"
    )
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_22_Q_2686,
      CYINIT => '0',
      CO(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_26_Q_2687,
      CO(2) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_26_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_26_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_26_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter26,
      O(2) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter25,
      O(1) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter24,
      O(0) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter23,
      S(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(26),
      S(2) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(25),
      S(1) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(24),
      S(0) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(23)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_25_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y155",
      INIT => X"0F0000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(25),
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(25)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_252_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y155",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_252_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_24 : X_FF
    generic map(
      LOC => "SLICE_X104Y155",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_24_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter24,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(24),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_24_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y155",
      INIT => X"0F0000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(24),
      ADR4 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(24)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_253_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y155",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_253_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_23 : X_FF
    generic map(
      LOC => "SLICE_X104Y155",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_23_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter23,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(23),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_23_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y155",
      INIT => X"00F0000000F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => tde_1_r_trigger_latched_2564,
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(23),
      ADR4 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(23)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_254_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y155",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_254_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_18 : X_FF
    generic map(
      LOC => "SLICE_X104Y153",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_18_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter18,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(18),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y153",
      INIT => X"0F0000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(18),
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(18)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_259_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y153",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_259_D5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_17 : X_FF
    generic map(
      LOC => "SLICE_X104Y153",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_17_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter17,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(17),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_18_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X104Y153"
    )
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_14_Q_2684,
      CYINIT => '0',
      CO(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_18_Q_2685,
      CO(2) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_18_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_18_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_18_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter18,
      O(2) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter17,
      O(1) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter16,
      O(0) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter15,
      S(3) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(18),
      S(2) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(17),
      S(1) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(16),
      S(0) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(15)
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y153",
      INIT => X"0F0000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(17),
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(17)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_260_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y153",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_260_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_16 : X_FF
    generic map(
      LOC => "SLICE_X104Y153",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_16_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter16,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(16),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y153",
      INIT => X"0F0000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_r_trigger_latched_2564,
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(16),
      ADR4 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(16)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_261_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y153",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_261_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_15 : X_FF
    generic map(
      LOC => "SLICE_X104Y153",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_15_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter15,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(15),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y153",
      INIT => X"00F0000000F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => tde_1_r_trigger_latched_2564,
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(15),
      ADR4 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(15)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_262_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X104Y153",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_262_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_3_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_3_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_2_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_2_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_1_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_1_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_0_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_0_0
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y148",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(3),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_3_rt_633
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_128_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y148",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_128_D5LUT_O_UNCONNECTED
    );
  ProtoComp7_CYINITGND_1 : X_ZERO
    generic map(
      LOC => "SLICE_X106Y148"
    )
    port map (
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_ProtoComp7_CYINITGND_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X106Y148"
    )
    port map (
      CI => '0',
      CYINIT => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_ProtoComp7_CYINITGND_0,
      CO(3) => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_Q_2692,
      CO(2) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_3_Q,
      O(2) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_2_Q,
      O(1) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_1_Q,
      O(0) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_0_Q,
      S(3) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_3_rt_633,
      S(2) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_2_rt_642,
      S(1) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_1_rt_635,
      S(0) => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_lut_0_Q
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y148",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(2),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_2_rt_642
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_129_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y148",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_129_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y148",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(1),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_1_rt_635
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_130_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y148",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_130_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X106Y148",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(0),
      ADR5 => '1',
      O => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_lut_0_Q
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_38_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y148",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_38_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_19_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_19_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_18_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_18_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_17_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_17_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_16_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_16_0
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y152",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(19),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_19_rt_717
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_112_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y152",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_112_D5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X106Y152"
    )
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_Q_2699,
      CYINIT => '0',
      CO(3) => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_Q_2704,
      CO(2) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_19_Q,
      O(2) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_18_Q,
      O(1) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_17_Q,
      O(0) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_16_Q,
      S(3) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_19_rt_717,
      S(2) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_18_rt_727,
      S(1) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_17_rt_734,
      S(0) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_16_rt_731
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y152",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(18),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_18_rt_727
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_113_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y152",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_113_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y152",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(17),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_17_rt_734
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_114_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y152",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_114_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y152",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(16),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_16_rt_731
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_115_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y152",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_115_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_7_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_7_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_6_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_6_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_5_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_5_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_4_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_4_0
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y149",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(7),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_7_rt_651
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_124_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_124_D5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X106Y149"
    )
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_3_Q_2692,
      CYINIT => '0',
      CO(3) => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_Q_2694,
      CO(2) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_7_Q,
      O(2) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_6_Q,
      O(1) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_5_Q,
      O(0) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_4_Q,
      S(3) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_7_rt_651,
      S(2) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_6_rt_661,
      S(1) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_5_rt_668,
      S(0) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_4_rt_665
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y149",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(6),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_6_rt_661
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_125_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_125_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y149",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(5),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_5_rt_668
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_126_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_126_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y149",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(4),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_4_rt_665
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_127_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_127_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_23_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_23_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_22_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_22_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_21_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_21_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_20_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_20_0
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_23_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y153",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(23),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_23_rt_739
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_108_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y153",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_108_D5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X106Y153"
    )
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_19_Q_2704,
      CYINIT => '0',
      CO(3) => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_Q_2709,
      CO(2) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_23_Q,
      O(2) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_22_Q,
      O(1) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_21_Q,
      O(0) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_20_Q,
      S(3) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_23_rt_739,
      S(2) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_22_rt_749,
      S(1) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_21_rt_756,
      S(0) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_20_rt_753
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y153",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(22),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_22_rt_749
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_109_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y153",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_109_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_21_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y153",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(21),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_21_rt_756
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_110_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y153",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_110_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_20_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y153",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(20),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_20_rt_753
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_111_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y153",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_111_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_15_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_15_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_14_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_14_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_13_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_13_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_12_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_12_0
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y151",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(15),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_15_rt_695
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_116_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y151",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_116_D5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X106Y151"
    )
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_Q_2696,
      CYINIT => '0',
      CO(3) => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_Q_2699,
      CO(2) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_15_Q,
      O(2) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_14_Q,
      O(1) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_13_Q,
      O(0) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_12_Q,
      S(3) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_15_rt_695,
      S(2) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_14_rt_705,
      S(1) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_13_rt_712,
      S(0) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_12_rt_709
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y151",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(14),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_14_rt_705
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_117_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y151",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_117_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y151",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(13),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_13_rt_712
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_118_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y151",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_118_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y151",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(12),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_12_rt_709
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_119_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y151",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_119_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X104Y157"
    )
    port map (
      CI => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_cy_30_Q_2688,
      CYINIT => '0',
      CO(3) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_DI_3_UNCONNECTED,
      DI(2) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_DI_2_UNCONNECTED,
      DI(1) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_DI_1_UNCONNECTED,
      DI(0) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_DI_0_UNCONNECTED,
      O(3) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_O_3_UNCONNECTED,
      O(2) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_O_2_UNCONNECTED,
      O(1) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_O_1_UNCONNECTED,
      O(0) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter31,
      S(3) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_S_3_UNCONNECTED,
      S(2) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_S_2_UNCONNECTED,
      S(1) => NLW_tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_xor_31_S_1_UNCONNECTED,
      S(0) => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(31)
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31 : X_FF
    generic map(
      LOC => "SLICE_X104Y157",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_CLK,
      I => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter31,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(31),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut_31_Q : X_LUT6
    generic map(
      LOC => "SLICE_X104Y157",
      INIT => X"00FF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(31),
      ADR3 => tde_1_r_trigger_latched_2564,
      ADR4 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcount_p_clock_divider_v_tick_counter_lut(31)
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_11_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_11_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_10_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_10_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_9_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_9_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_8_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_8_0
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y150",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(11),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_11_rt_673
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_120_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_120_D5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X106Y150"
    )
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_7_Q_2694,
      CYINIT => '0',
      CO(3) => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_Q_2696,
      CO(2) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_11_Q,
      O(2) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_10_Q,
      O(1) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_9_Q,
      O(0) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_8_Q,
      S(3) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_11_rt_673,
      S(2) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_10_rt_683,
      S(1) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_9_rt_690,
      S(0) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_8_rt_687
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y150",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(10),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_10_rt_683
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_121_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_121_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y150",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(9),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_9_rt_690
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_122_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_122_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y150",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(8),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_8_rt_687
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_123_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_123_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_27_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_27_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_26_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_26_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_25_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_25_0
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_24_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_24_0
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_27_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y154",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(27),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_27_rt_761
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_104_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y154",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_104_D5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X106Y154"
    )
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_23_Q_2709,
      CYINIT => '0',
      CO(3) => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_Q_2714,
      CO(2) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_27_Q,
      O(2) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_26_Q,
      O(1) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_25_Q,
      O(0) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_24_Q,
      S(3) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_27_rt_761,
      S(2) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_26_rt_771,
      S(1) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_25_rt_778,
      S(0) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_24_rt_775
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_26_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y154",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(26),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_26_rt_771
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_105_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y154",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_105_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_25_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y154",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(25),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_25_rt_778
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_106_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y154",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_106_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_24_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y154",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(24),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_24_rt_775
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_107_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y154",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_107_A5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_15_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_15_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_14_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_14_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_13_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_13_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_12_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_12_0
    );
  p_stimuli_generation_v_faci_gen_internal_counter_15_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y149",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(15),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_15_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_44_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_44_D5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X102Y149"
    )
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_Q_2768,
      CYINIT => '0',
      CO(3) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_Q_2773,
      CO(2) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_15_Q,
      O(2) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_14_Q,
      O(1) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_13_Q,
      O(0) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_12_Q,
      S(3) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_15_rt,
      S(2) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_14_rt,
      S(1) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_13_rt,
      S(0) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_12_rt
    );
  p_stimuli_generation_v_faci_gen_internal_counter_14_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y149",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter(14),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_14_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_43_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_43_C5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_13_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y149",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(13),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_13_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_42_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_42_B5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_12_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y149",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(12),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_12_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_41_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_41_A5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_25_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_25_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_25_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_25_0
    );
  p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_25_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_25_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_24_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_24_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X102Y152"
    )
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_Q_2783,
      CYINIT => '0',
      CO(3) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_CO_3_UNCONNECTED,
      CO(2) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_CO_0_UNCONNECTED,
      DI(3) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_DI_3_UNCONNECTED,
      DI(2) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_DI_2_UNCONNECTED,
      DI(1) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_O_3_UNCONNECTED,
      O(2) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_O_2_UNCONNECTED,
      O(1) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_25_Q,
      O(0) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_24_Q,
      S(3) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_S_3_UNCONNECTED,
      S(2) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_xor_25_S_2_UNCONNECTED,
      S(1) => '0',
      S(0) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_25_p_stimuli_generation_v_faci_gen_internal_counter_24_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_54_B6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X102Y152",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_54_B6LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_24_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y152",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(24),
      ADR5 => '1',
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_25_p_stimuli_generation_v_faci_gen_internal_counter_24_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_53_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y152",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_53_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X114Y151",
      INIT => X"8844221188442211"
    )
    port map (
      ADR2 => '1',
      ADR1 => tde_1_spike_generator_0_r_value_to_generate(6),
      ADR4 => tde_1_spike_generator_0_w_mult_result(6),
      ADR0 => tde_1_spike_generator_0_r_value_to_generate(7),
      ADR3 => tde_1_spike_generator_0_w_mult_result(7),
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcompar_w_generate_lut(3)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X114Y151",
      INIT => X"77115500"
    )
    port map (
      ADR2 => '1',
      ADR1 => tde_1_spike_generator_0_r_value_to_generate(6),
      ADR4 => tde_1_spike_generator_0_w_mult_result(6),
      ADR0 => tde_1_spike_generator_0_r_value_to_generate(7),
      ADR3 => tde_1_spike_generator_0_w_mult_result(7),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi3_1098
    );
  ProtoComp21_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X114Y151"
    )
    port map (
      O => ProtoComp21_CYINITVCC_1
    );
  tde_1_spike_generator_0_Mcompar_w_generate_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X114Y151"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp21_CYINITVCC_1,
      CO(3) => tde_1_spike_generator_0_Mcompar_w_generate_cy_3_Q_2793,
      CO(2) => NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_3_CO_0_UNCONNECTED,
      DI(3) => tde_1_spike_generator_0_Mcompar_w_generate_lutdi3_1098,
      DI(2) => tde_1_spike_generator_0_Mcompar_w_generate_lutdi2_1106,
      DI(1) => tde_1_spike_generator_0_Mcompar_w_generate_lutdi1_1105,
      DI(0) => tde_1_spike_generator_0_Mcompar_w_generate_lutdi,
      O(3) => NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_3_O_0_UNCONNECTED,
      S(3) => tde_1_spike_generator_0_Mcompar_w_generate_lut(3),
      S(2) => tde_1_spike_generator_0_Mcompar_w_generate_lut(2),
      S(1) => tde_1_spike_generator_0_Mcompar_w_generate_lut(1),
      S(0) => tde_1_spike_generator_0_Mcompar_w_generate_lut(0)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X114Y151",
      INIT => X"8844221188442211"
    )
    port map (
      ADR2 => '1',
      ADR1 => tde_1_spike_generator_0_r_value_to_generate(4),
      ADR4 => tde_1_spike_generator_0_w_mult_result(4),
      ADR0 => tde_1_spike_generator_0_r_value_to_generate(5),
      ADR3 => tde_1_spike_generator_0_w_mult_result(5),
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcompar_w_generate_lut(2)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X114Y151",
      INIT => X"77115500"
    )
    port map (
      ADR2 => '1',
      ADR1 => tde_1_spike_generator_0_r_value_to_generate(4),
      ADR4 => tde_1_spike_generator_0_w_mult_result(4),
      ADR0 => tde_1_spike_generator_0_r_value_to_generate(5),
      ADR3 => tde_1_spike_generator_0_w_mult_result(5),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi2_1106
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lut_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X114Y151",
      INIT => X"0000333300003333"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => tde_1_spike_generator_0_w_mult_result(2),
      ADR4 => tde_1_spike_generator_0_w_mult_result(3),
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcompar_w_generate_lut(1)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lutdi11 : X_LUT5
    generic map(
      LOC => "SLICE_X114Y151",
      INIT => X"FFFFCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => tde_1_spike_generator_0_w_mult_result(2),
      ADR4 => tde_1_spike_generator_0_w_mult_result(3),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi1_1105
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lut_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X114Y151",
      INIT => X"0033003300330033"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => tde_1_spike_generator_0_w_mult_result(0),
      ADR1 => tde_1_spike_generator_0_w_mult_result(1),
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcompar_w_generate_lut(0)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X114Y151",
      INIT => X"FFCCFFCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => tde_1_spike_generator_0_w_mult_result(0),
      ADR1 => tde_1_spike_generator_0_w_mult_result(1),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_23_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_23_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_22_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_22_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_21_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_21_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_20_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_20_0
    );
  p_stimuli_generation_v_faci_gen_internal_counter_23_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y151",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(23),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_23_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_52_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y151",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_52_D5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X102Y151"
    )
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_Q_2778,
      CYINIT => '0',
      CO(3) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_Q_2783,
      CO(2) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_23_Q,
      O(2) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_22_Q,
      O(1) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_21_Q,
      O(0) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_20_Q,
      S(3) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_23_rt,
      S(2) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_22_rt,
      S(1) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_21_rt,
      S(0) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_20_rt
    );
  p_stimuli_generation_v_faci_gen_internal_counter_22_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y151",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter(22),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_22_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_51_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y151",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_51_C5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_21_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y151",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(21),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_21_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_50_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y151",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_50_B5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_20_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y151",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(20),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_20_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_49_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y151",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_49_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_Mcompar_w_generate_cy_6_tde_1_spike_generator_0_Mcompar_w_generate_cy_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_Mcompar_w_generate_cy_6_Q_1129,
      O => tde_1_spike_generator_0_Mcompar_w_generate_cy_6_0
    );
  tde_1_spike_generator_0_Mcompar_w_generate_cy_6_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X114Y152"
    )
    port map (
      CI => tde_1_spike_generator_0_Mcompar_w_generate_cy_3_Q_2793,
      CYINIT => '0',
      CO(3) => NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_6_CO_3_UNCONNECTED,
      CO(2) => tde_1_spike_generator_0_Mcompar_w_generate_cy_6_Q_1129,
      CO(1) => NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_6_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_6_CO_0_UNCONNECTED,
      DI(3) => NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_6_DI_3_UNCONNECTED,
      DI(2) => tde_1_spike_generator_0_Mcompar_w_generate_lutdi6_1125,
      DI(1) => tde_1_spike_generator_0_Mcompar_w_generate_lutdi5_1127,
      DI(0) => tde_1_spike_generator_0_Mcompar_w_generate_lutdi4_1126,
      O(3) => NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_6_O_3_UNCONNECTED,
      O(2) => NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_6_O_2_UNCONNECTED,
      O(1) => NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_6_O_1_UNCONNECTED,
      O(0) => NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_6_O_0_UNCONNECTED,
      S(3) => NLW_tde_1_spike_generator_0_Mcompar_w_generate_cy_6_S_3_UNCONNECTED,
      S(2) => tde_1_spike_generator_0_Mcompar_w_generate_lut(6),
      S(1) => tde_1_spike_generator_0_Mcompar_w_generate_lut(5),
      S(0) => tde_1_spike_generator_0_Mcompar_w_generate_lut(4)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X114Y152",
      INIT => X"A0500A05A0500A05"
    )
    port map (
      ADR1 => '1',
      ADR3 => tde_1_spike_generator_0_r_value_to_generate(12),
      ADR0 => tde_1_spike_generator_0_w_mult_result(12),
      ADR4 => tde_1_spike_generator_0_r_value_to_generate(13),
      ADR2 => tde_1_spike_generator_0_w_mult_result(13),
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcompar_w_generate_lut(6)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lutdi6 : X_LUT5
    generic map(
      LOC => "SLICE_X114Y152",
      INIT => X"00A0F0FA"
    )
    port map (
      ADR1 => '1',
      ADR3 => tde_1_spike_generator_0_r_value_to_generate(12),
      ADR0 => tde_1_spike_generator_0_w_mult_result(12),
      ADR4 => tde_1_spike_generator_0_r_value_to_generate(13),
      ADR2 => tde_1_spike_generator_0_w_mult_result(13),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi6_1125
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X114Y152",
      INIT => X"C00C3003C00C3003"
    )
    port map (
      ADR0 => '1',
      ADR2 => tde_1_spike_generator_0_r_value_to_generate(10),
      ADR3 => tde_1_spike_generator_0_w_mult_result(10),
      ADR4 => tde_1_spike_generator_0_r_value_to_generate(11),
      ADR1 => tde_1_spike_generator_0_w_mult_result(11),
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcompar_w_generate_lut(5)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lutdi5 : X_LUT5
    generic map(
      LOC => "SLICE_X114Y152",
      INIT => X"0C00CFCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => tde_1_spike_generator_0_r_value_to_generate(10),
      ADR3 => tde_1_spike_generator_0_w_mult_result(10),
      ADR4 => tde_1_spike_generator_0_r_value_to_generate(11),
      ADR1 => tde_1_spike_generator_0_w_mult_result(11),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi5_1127
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X114Y152",
      INIT => X"8241824182418241"
    )
    port map (
      ADR4 => '1',
      ADR3 => tde_1_spike_generator_0_r_value_to_generate(8),
      ADR0 => tde_1_spike_generator_0_w_mult_result(8),
      ADR2 => tde_1_spike_generator_0_r_value_to_generate(9),
      ADR1 => tde_1_spike_generator_0_w_mult_result(9),
      ADR5 => '1',
      O => tde_1_spike_generator_0_Mcompar_w_generate_lut(4)
    );
  tde_1_spike_generator_0_Mcompar_w_generate_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X114Y152",
      INIT => X"0C8E0C8E"
    )
    port map (
      ADR4 => '1',
      ADR3 => tde_1_spike_generator_0_r_value_to_generate(8),
      ADR0 => tde_1_spike_generator_0_w_mult_result(8),
      ADR2 => tde_1_spike_generator_0_r_value_to_generate(9),
      ADR1 => tde_1_spike_generator_0_w_mult_result(9),
      O => tde_1_spike_generator_0_Mcompar_w_generate_lutdi4_1126
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_3_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_3_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_2_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_2_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_1_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_1_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_0_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_0_0
    );
  p_stimuli_generation_v_faci_gen_internal_counter_3_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y146",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter(3),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_p_stimuli_generation_v_faci_gen_internal_counter_3_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y146",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_5_D5LUT_O_UNCONNECTED
    );
  ProtoComp7_CYINITGND_3 : X_ZERO
    generic map(
      LOC => "SLICE_X98Y146"
    )
    port map (
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_ProtoComp7_CYINITGND_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X98Y146"
    )
    port map (
      CI => '0',
      CYINIT => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_ProtoComp7_CYINITGND_0,
      CO(3) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_Q_2806,
      CO(2) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_3_Q,
      O(2) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_2_Q,
      O(1) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_1_Q,
      O(0) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_0_Q,
      S(3) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_p_stimuli_generation_v_faci_gen_internal_counter_3_rt,
      S(2) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_p_stimuli_generation_v_faci_gen_internal_counter_2_rt,
      S(1) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_p_stimuli_generation_v_faci_gen_internal_counter_1_rt,
      S(0) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_1
    );
  p_stimuli_generation_v_faci_gen_internal_counter_2_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y146",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(2),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_p_stimuli_generation_v_faci_gen_internal_counter_2_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_4_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y146",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_4_C5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_1_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y146",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(1),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_p_stimuli_generation_v_faci_gen_internal_counter_1_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_3_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y146",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_3_B5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y146",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => p_countdown_v_tr_tick_counter(0),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_1
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y146",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_A5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_19_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_19_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_18_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_18_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_17_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_17_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_16_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_16_0
    );
  p_stimuli_generation_v_faci_gen_internal_counter_19_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y150",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(19),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_19_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_48_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_48_D5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X102Y150"
    )
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_15_Q_2773,
      CYINIT => '0',
      CO(3) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_Q_2778,
      CO(2) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_19_Q,
      O(2) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_18_Q,
      O(1) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_17_Q,
      O(0) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_16_Q,
      S(3) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_19_rt,
      S(2) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_18_rt,
      S(1) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_17_rt,
      S(0) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_16_rt
    );
  p_stimuli_generation_v_faci_gen_internal_counter_18_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y150",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter(18),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_18_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_47_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_47_C5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_17_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y150",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(17),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_17_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_46_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_46_B5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_16_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y150",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(16),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_16_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_45_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_45_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X106Y146",
      INIT => X"000041000A0F4B0F"
    )
    port map (
      ADR0 => tde_1_r_trigger_latched_2564,
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_11_0,
      ADR2 => tde_1_w_clkdiv_value_11_0,
      ADR5 => N24_0,
      ADR4 => N14,
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_3_Q_823
    );
  ProtoComp16_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X106Y146"
    )
    port map (
      O => ProtoComp16_CYINITVCC_1
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X106Y146"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp16_CYINITVCC_1,
      CO(3) => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_Q_2721,
      CO(2) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_O_0_UNCONNECTED,
      S(3) => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_3_Q_823,
      S(2) => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_2_Q_815,
      S(1) => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_1_Q_819,
      S(0) => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_0_Q
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X106Y146",
      INIT => X"030303030003A503"
    )
    port map (
      ADR5 => tde_1_r_trigger_latched_2564,
      ADR0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_8_0,
      ADR2 => tde_1_w_clkdiv_value_8_0,
      ADR1 => N22_0,
      ADR4 => N11,
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_2_Q_815
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X106Y146",
      INIT => X"0044005521650055"
    )
    port map (
      ADR1 => tde_1_r_trigger_latched_2564,
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_5_0,
      ADR0 => tde_1_w_clkdiv_value_5_0,
      ADR3 => N20_0,
      ADR5 => N8,
      ADR4 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_1_Q_819
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X106Y146",
      INIT => X"01AA00FF00AB00FF"
    )
    port map (
      ADR3 => tde_1_w_clkdiv_value_2_0,
      ADR0 => tde_1_r_trigger_latched_2564,
      ADR5 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_2_0,
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_0_0,
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_1_0,
      ADR4 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_0_Q
    );
  tde_1_spike_generator_0_w_tick : X_FF
    generic map(
      LOC => "SLICE_X106Y147",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_w_tick_CLK,
      I => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o,
      O => tde_1_spike_generator_0_w_tick_2728,
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X106Y147",
      INIT => X"CCFFCCFFCDFFCCFF"
    )
    port map (
      ADR1 => tde_1_r_trigger_latched_2564,
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_30_0,
      ADR0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_31_0,
      ADR5 => N4,
      ADR4 => N32,
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_7_Q_841
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X106Y147"
    )
    port map (
      CI => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_3_Q_2721,
      CYINIT => '0',
      CO(3) => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o,
      CO(2) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_7_O_3_UNCONNECTED,
      O(2) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_7_O_2_UNCONNECTED,
      O(1) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_7_O_1_UNCONNECTED,
      O(0) => NLW_tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_cy_7_O_0_UNCONNECTED,
      S(3) => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_7_Q_841,
      S(2) => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_6_Q_858,
      S(1) => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_5_Q_850,
      S(0) => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_4_Q_856
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X106Y147",
      INIT => X"AAFFABFFAAFFAAFF"
    )
    port map (
      ADR0 => tde_1_r_trigger_latched_2564,
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_24_0,
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_25_0,
      ADR4 => N2,
      ADR5 => N30,
      ADR3 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_6_Q_858
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X106Y147",
      INIT => X"01AB00FF00AA00FF"
    )
    port map (
      ADR0 => tde_1_r_trigger_latched_2564,
      ADR3 => tde_1_w_clkdiv_value_15_0,
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_19_0,
      ADR5 => N28,
      ADR2 => N6,
      ADR4 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_5_Q_850
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X106Y147",
      INIT => X"101000CF000010DF"
    )
    port map (
      ADR1 => tde_1_r_trigger_latched_2564,
      ADR5 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_14_0,
      ADR4 => tde_1_w_clkdiv_value_14_0,
      ADR3 => N26_0,
      ADR0 => N17,
      ADR2 => tde_1_spike_generator_0_GND_20_o_p_clock_divider_v_tick_counter_31_equal_1_o,
      O => tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_4_Q_856
    );
  tde_1_spike_generator_0_r_value_to_generate_7_tde_1_spike_generator_0_r_value_to_generate_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_value_to_generate(7),
      O => tde_1_w_value_to_generate_7_0
    );
  tde_1_spike_generator_0_r_value_to_generate_7_tde_1_spike_generator_0_r_value_to_generate_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_value_to_generate(6),
      O => tde_1_w_value_to_generate_6_0
    );
  tde_1_spike_generator_0_r_value_to_generate_7_tde_1_spike_generator_0_r_value_to_generate_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_value_to_generate(5),
      O => tde_1_w_value_to_generate_5_0
    );
  tde_1_spike_generator_0_r_value_to_generate_7_tde_1_spike_generator_0_r_value_to_generate_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_value_to_generate(4),
      O => tde_1_w_value_to_generate_4_0
    );
  tde_1_spike_generator_0_r_value_to_generate_7 : X_FF
    generic map(
      LOC => "SLICE_X118Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_7_CLK,
      I => tde_1_w_value_to_generate(7),
      O => tde_1_spike_generator_0_r_value_to_generate(7),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_add_0_Madd_o_output_data_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X118Y148",
      INIT => X"33333333CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      ADR1 => tde_1_reg_0_o_data_out(7),
      O => tde_1_add_0_Madd_o_output_data_lut(7)
    );
  ProtoComp18_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X118Y148"
    )
    port map (
      O => ProtoComp18_CYINITGND_0
    );
  tde_1_spike_generator_0_r_value_to_generate_6 : X_FF
    generic map(
      LOC => "SLICE_X118Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_6_CLK,
      I => tde_1_w_value_to_generate(6),
      O => tde_1_spike_generator_0_r_value_to_generate(6),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_add_0_Madd_o_output_data_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X118Y148"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp18_CYINITGND_0,
      CO(3) => tde_1_add_0_Madd_o_output_data_cy_7_Q_2734,
      CO(2) => NLW_tde_1_add_0_Madd_o_output_data_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_add_0_Madd_o_output_data_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_add_0_Madd_o_output_data_cy_7_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_7_DI_3_Q,
      DI(2) => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_7_DI_2_Q,
      DI(1) => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_7_DI_1_Q,
      DI(0) => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_7_DI_0_Q,
      O(3) => tde_1_w_value_to_generate(7),
      O(2) => tde_1_w_value_to_generate(6),
      O(1) => tde_1_w_value_to_generate(5),
      O(0) => tde_1_w_value_to_generate(4),
      S(3) => tde_1_add_0_Madd_o_output_data_lut(7),
      S(2) => tde_1_add_0_Madd_o_output_data_lut(6),
      S(1) => tde_1_add_0_Madd_o_output_data_lut(5),
      S(0) => tde_1_add_0_Madd_o_output_data_lut(4)
    );
  tde_1_add_0_Madd_o_output_data_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X118Y148",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      ADR2 => tde_1_reg_0_o_data_out_6_0,
      O => tde_1_add_0_Madd_o_output_data_lut(6)
    );
  tde_1_spike_generator_0_r_value_to_generate_5 : X_FF
    generic map(
      LOC => "SLICE_X118Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_5_CLK,
      I => tde_1_w_value_to_generate(5),
      O => tde_1_spike_generator_0_r_value_to_generate(5),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_add_0_Madd_o_output_data_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X118Y148",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      ADR3 => tde_1_reg_0_o_data_out(5),
      O => tde_1_add_0_Madd_o_output_data_lut(5)
    );
  tde_1_spike_generator_0_r_value_to_generate_4 : X_FF
    generic map(
      LOC => "SLICE_X118Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_4_CLK,
      I => tde_1_w_value_to_generate(4),
      O => tde_1_spike_generator_0_r_value_to_generate(4),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_add_0_Madd_o_output_data_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X118Y148",
      INIT => X"0F0F0F0FF0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      ADR2 => tde_1_reg_0_o_data_out_4_0,
      O => tde_1_add_0_Madd_o_output_data_lut(4)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_3_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_3_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_2_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_2_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_1_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_1_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_0_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_0_0
    );
  p_stimuli_generation_v_faci_gen_internal_counter_3_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y146",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(3),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_p_stimuli_generation_v_faci_gen_internal_counter_3_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_32_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y146",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_32_D5LUT_O_UNCONNECTED
    );
  ProtoComp7_CYINITGND_2 : X_ZERO
    generic map(
      LOC => "SLICE_X102Y146"
    )
    port map (
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_ProtoComp7_CYINITGND_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X102Y146"
    )
    port map (
      CI => '0',
      CYINIT => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_ProtoComp7_CYINITGND_0,
      CO(3) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_Q_2758,
      CO(2) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_3_Q,
      O(2) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_2_Q,
      O(1) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_1_Q,
      O(0) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_0_Q,
      S(3) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_p_stimuli_generation_v_faci_gen_internal_counter_3_rt,
      S(2) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_p_stimuli_generation_v_faci_gen_internal_counter_2_rt,
      S(1) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_p_stimuli_generation_v_faci_gen_internal_counter_1_rt,
      S(0) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_lut_0_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_2_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y146",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(2),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_p_stimuli_generation_v_faci_gen_internal_counter_2_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_31_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y146",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_31_C5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_1_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y146",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(1),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_p_stimuli_generation_v_faci_gen_internal_counter_1_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_30_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y146",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_30_B5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y146",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_countdown_v_tr_tick_counter(0),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_lut_0_Q
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_2_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y146",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_2_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_31_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_31_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_31_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_31_0
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_31_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_31_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_30_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_30_0
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_31_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_31_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_29_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_29_0
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_31_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_31_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_28_Q,
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_28_0
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y155",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(31),
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_rt_783
    );
  tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X106Y155"
    )
    port map (
      CI => tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_cy_27_Q_2714,
      CYINIT => '0',
      CO(3) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_tde_1_spike_generator_0_Madd_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_31_Q,
      O(2) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_30_Q,
      O(1) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_29_Q,
      O(0) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_28_Q,
      S(3) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_rt_783,
      S(2) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_30_rt_791,
      S(1) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_29_rt_786,
      S(0) => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_28_rt_798
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_30_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y155",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(30),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_30_rt_791
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_101_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y155",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_101_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_29_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y155",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(29),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_29_rt_786
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_102_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y155",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_102_B5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_p_clock_divider_v_tick_counter_28_rt : X_LUT6
    generic map(
      LOC => "SLICE_X106Y155",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter(28),
      ADR5 => '1',
      O => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_28_rt_798
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_103_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X106Y155",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_103_A5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_r_value_to_generate_15_tde_1_spike_generator_0_r_value_to_generate_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_value_to_generate(15),
      O => tde_1_w_value_to_generate_15_0
    );
  tde_1_spike_generator_0_r_value_to_generate_15_tde_1_spike_generator_0_r_value_to_generate_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_value_to_generate(14),
      O => tde_1_w_value_to_generate_14_0
    );
  tde_1_spike_generator_0_r_value_to_generate_15_tde_1_spike_generator_0_r_value_to_generate_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_value_to_generate(13),
      O => tde_1_w_value_to_generate_13_0
    );
  tde_1_spike_generator_0_r_value_to_generate_15_tde_1_spike_generator_0_r_value_to_generate_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_value_to_generate(12),
      O => tde_1_w_value_to_generate_12_0
    );
  tde_1_spike_generator_0_r_value_to_generate_15 : X_FF
    generic map(
      LOC => "SLICE_X118Y150",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_15_CLK,
      I => tde_1_w_value_to_generate(15),
      O => tde_1_spike_generator_0_r_value_to_generate(15),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_reg_0_o_data_out_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X118Y150",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => tde_1_reg_0_o_data_out(15),
      O => tde_1_reg_0_o_data_out_15_rt_941
    );
  tde_1_spike_generator_0_r_value_to_generate_14 : X_FF
    generic map(
      LOC => "SLICE_X118Y150",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_14_CLK,
      I => tde_1_w_value_to_generate(14),
      O => tde_1_spike_generator_0_r_value_to_generate(14),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_add_0_Madd_o_output_data_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X118Y150"
    )
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy_11_Q_2745,
      CYINIT => '0',
      CO(3) => NLW_tde_1_add_0_Madd_o_output_data_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_tde_1_add_0_Madd_o_output_data_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_add_0_Madd_o_output_data_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_add_0_Madd_o_output_data_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_tde_1_add_0_Madd_o_output_data_xor_15_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_xor_15_DI_1_Q,
      DI(0) => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_xor_15_DI_0_Q,
      O(3) => tde_1_w_value_to_generate(15),
      O(2) => tde_1_w_value_to_generate(14),
      O(1) => tde_1_w_value_to_generate(13),
      O(0) => tde_1_w_value_to_generate(12),
      S(3) => tde_1_reg_0_o_data_out_15_rt_941,
      S(2) => tde_1_reg_0_o_data_out_14_rt_931,
      S(1) => tde_1_add_0_Madd_o_output_data_lut(13),
      S(0) => tde_1_add_0_Madd_o_output_data_lut(12)
    );
  tde_1_reg_0_o_data_out_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X118Y150",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => tde_1_reg_0_o_data_out(14),
      ADR5 => '1',
      O => tde_1_reg_0_o_data_out_14_rt_931
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_85_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X118Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_85_C5LUT_O_UNCONNECTED
    );
  tde_1_spike_generator_0_r_value_to_generate_13 : X_FF
    generic map(
      LOC => "SLICE_X118Y150",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_13_CLK,
      I => tde_1_w_value_to_generate(13),
      O => tde_1_spike_generator_0_r_value_to_generate(13),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_add_0_Madd_o_output_data_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X118Y150",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
      ADR5 => tde_1_reg_0_o_data_out_13_0,
      O => tde_1_add_0_Madd_o_output_data_lut(13)
    );
  tde_1_spike_generator_0_r_value_to_generate_12 : X_FF
    generic map(
      LOC => "SLICE_X118Y150",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_12_CLK,
      I => tde_1_w_value_to_generate(12),
      O => tde_1_spike_generator_0_r_value_to_generate(12),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_add_0_Madd_o_output_data_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X118Y150",
      INIT => X"3C3C3C3C3C3C3C3C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
      ADR2 => tde_1_reg_0_o_data_out(12),
      O => tde_1_add_0_Madd_o_output_data_lut(12)
    );
  tde_1_spike_generator_0_r_value_to_generate_11_tde_1_spike_generator_0_r_value_to_generate_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_value_to_generate(11),
      O => tde_1_w_value_to_generate_11_0
    );
  tde_1_spike_generator_0_r_value_to_generate_11_tde_1_spike_generator_0_r_value_to_generate_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_value_to_generate(10),
      O => tde_1_w_value_to_generate_10_0
    );
  tde_1_spike_generator_0_r_value_to_generate_11_tde_1_spike_generator_0_r_value_to_generate_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_value_to_generate(9),
      O => tde_1_w_value_to_generate_9_0
    );
  tde_1_spike_generator_0_r_value_to_generate_11_tde_1_spike_generator_0_r_value_to_generate_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_value_to_generate(8),
      O => tde_1_w_value_to_generate_8_0
    );
  tde_1_spike_generator_0_r_value_to_generate_11 : X_FF
    generic map(
      LOC => "SLICE_X118Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_11_CLK,
      I => tde_1_w_value_to_generate(11),
      O => tde_1_spike_generator_0_r_value_to_generate(11),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_add_0_Madd_o_output_data_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X118Y149",
      INIT => X"00FF00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
      ADR3 => tde_1_reg_0_o_data_out_11_0,
      O => tde_1_add_0_Madd_o_output_data_lut(11)
    );
  tde_1_spike_generator_0_r_value_to_generate_10 : X_FF
    generic map(
      LOC => "SLICE_X118Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_10_CLK,
      I => tde_1_w_value_to_generate(10),
      O => tde_1_spike_generator_0_r_value_to_generate(10),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_add_0_Madd_o_output_data_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X118Y149"
    )
    port map (
      CI => tde_1_add_0_Madd_o_output_data_cy_7_Q_2734,
      CYINIT => '0',
      CO(3) => tde_1_add_0_Madd_o_output_data_cy_11_Q_2745,
      CO(2) => NLW_tde_1_add_0_Madd_o_output_data_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_add_0_Madd_o_output_data_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_add_0_Madd_o_output_data_cy_11_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_11_DI_3_Q,
      DI(2) => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_11_DI_2_Q,
      DI(1) => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_11_DI_1_Q,
      DI(0) => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_11_DI_0_Q,
      O(3) => tde_1_w_value_to_generate(11),
      O(2) => tde_1_w_value_to_generate(10),
      O(1) => tde_1_w_value_to_generate(9),
      O(0) => tde_1_w_value_to_generate(8),
      S(3) => tde_1_add_0_Madd_o_output_data_lut(11),
      S(2) => tde_1_add_0_Madd_o_output_data_lut(10),
      S(1) => tde_1_add_0_Madd_o_output_data_lut(9),
      S(0) => tde_1_add_0_Madd_o_output_data_lut(8)
    );
  tde_1_add_0_Madd_o_output_data_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X118Y149",
      INIT => X"3333CCCC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
      ADR1 => tde_1_reg_0_o_data_out_10_0,
      O => tde_1_add_0_Madd_o_output_data_lut(10)
    );
  tde_1_spike_generator_0_r_value_to_generate_9 : X_FF
    generic map(
      LOC => "SLICE_X118Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_9_CLK,
      I => tde_1_w_value_to_generate(9),
      O => tde_1_spike_generator_0_r_value_to_generate(9),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_add_0_Madd_o_output_data_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X118Y149",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      ADR3 => tde_1_reg_0_o_data_out(9),
      O => tde_1_add_0_Madd_o_output_data_lut(9)
    );
  tde_1_spike_generator_0_r_value_to_generate_8 : X_FF
    generic map(
      LOC => "SLICE_X118Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_8_CLK,
      I => tde_1_w_value_to_generate(8),
      O => tde_1_spike_generator_0_r_value_to_generate(8),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_add_0_Madd_o_output_data_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X118Y149",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      ADR5 => tde_1_reg_0_o_data_out_8_0,
      O => tde_1_add_0_Madd_o_output_data_lut(8)
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_11_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_11_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_10_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_10_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_9_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_9_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_8_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_8_0
    );
  p_stimuli_generation_v_faci_gen_internal_counter_11_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y148",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(11),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_11_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_40_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y148",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_40_D5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X102Y148"
    )
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_Q_2763,
      CYINIT => '0',
      CO(3) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_Q_2768,
      CO(2) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_11_Q,
      O(2) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_10_Q,
      O(1) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_9_Q,
      O(0) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_8_Q,
      S(3) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_11_rt,
      S(2) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_10_rt,
      S(1) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_9_rt,
      S(0) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_8_rt
    );
  p_stimuli_generation_v_faci_gen_internal_counter_10_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y148",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter(10),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_10_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_39_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y148",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_39_C5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_9_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y148",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => p_stimuli_generation_v_faci_gen_internal_counter(9),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_9_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_38_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y148",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_38_B5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_8_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y148",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => p_stimuli_generation_v_faci_gen_internal_counter(8),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_8_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_37_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y148",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_37_A5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_7_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_7_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_6_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_6_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_5_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_5_0
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_4_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_4_0
    );
  p_stimuli_generation_v_faci_gen_internal_counter_7_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y147",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(7),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_7_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_36_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y147",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_36_D5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X102Y147"
    )
    port map (
      CI => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_3_Q_2758,
      CYINIT => '0',
      CO(3) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_Q_2763,
      CO(2) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_7_Q,
      O(2) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_6_Q,
      O(1) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_5_Q,
      O(0) => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_4_Q,
      S(3) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_7_rt,
      S(2) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_6_rt,
      S(1) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_5_rt,
      S(0) => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_4_rt
    );
  p_stimuli_generation_v_faci_gen_internal_counter_6_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y147",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(6),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_6_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_35_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y147",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_35_C5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_5_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y147",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(5),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_5_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_34_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y147",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_34_B5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_4_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X102Y147",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => p_stimuli_generation_v_faci_gen_internal_counter(4),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_4_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_33_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X102Y147",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_33_A5LUT_O_UNCONNECTED
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X114Y150"
    )
    port map (
      CI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_Q_2842,
      CYINIT => '0',
      CO(3) => NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_CO_3_UNCONNECTED,
      CO(2) => NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_CO_0_UNCONNECTED,
      DI(3) => NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_DI_3_UNCONNECTED,
      DI(2) => NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_DI_2_UNCONNECTED,
      DI(1) => NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_DI_1_UNCONNECTED,
      DI(0) => '1',
      O(3) => NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_O_3_UNCONNECTED,
      O(2) => NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_O_2_UNCONNECTED,
      O(1) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter9,
      O(0) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter8,
      S(3) => NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_S_3_UNCONNECTED,
      S(2) => NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_S_2_UNCONNECTED,
      S(1) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(9),
      S(0) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(8)
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_9 : X_FF
    generic map(
      LOC => "SLICE_X114Y150",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_0_basic_timer_1_n0024_inv_0,
      CLK => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_9_CLK,
      I => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter9,
      O => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X114Y150",
      INIT => X"0404373704043737"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR1 => w_facilitatory_2553,
      ADR4 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
      ADR0 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_0,
      ADR2 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_0,
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(9)
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_8 : X_FF
    generic map(
      LOC => "SLICE_X114Y150",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_0_basic_timer_1_n0024_inv_0,
      CLK => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_8_CLK,
      I => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter8,
      O => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X114Y150",
      INIT => X"0404373704043737"
    )
    port map (
      ADR3 => '1',
      ADR1 => w_facilitatory_2553,
      ADR0 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_0,
      ADR4 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
      ADR2 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_0,
      ADR5 => '1',
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(8)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_28_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X114Y150",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_28_A5LUT_O_UNCONNECTED
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_7 : X_FF
    generic map(
      LOC => "SLICE_X114Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_0_basic_timer_1_n0024_inv_0,
      CLK => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_7_CLK,
      I => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter7,
      O => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X114Y149",
      INIT => X"0A5FAAFF0A5FAAFF"
    )
    port map (
      ADR1 => '1',
      ADR0 => w_facilitatory_2553,
      ADR2 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_0,
      ADR3 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
      ADR4 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      ADR5 => '1',
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(7)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_29_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X114Y149",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_29_D5LUT_O_UNCONNECTED
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_6 : X_FF
    generic map(
      LOC => "SLICE_X114Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_0_basic_timer_1_n0024_inv_0,
      CLK => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_6_CLK,
      I => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter6,
      O => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X114Y149"
    )
    port map (
      CI => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_Q_2837,
      CYINIT => '0',
      CO(3) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_Q_2842,
      CO(2) => NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter7,
      O(2) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter6,
      O(1) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter5,
      O(0) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter4,
      S(3) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(7),
      S(2) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(6),
      S(1) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(5),
      S(0) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(4)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X114Y149",
      INIT => X"11DDDDDD11DDDDDD"
    )
    port map (
      ADR2 => '1',
      ADR1 => w_facilitatory_2553,
      ADR4 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_0,
      ADR0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
      ADR3 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      ADR5 => '1',
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(6)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_30_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X114Y149",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_30_C5LUT_O_UNCONNECTED
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_5 : X_FF
    generic map(
      LOC => "SLICE_X114Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_0_basic_timer_1_n0024_inv_0,
      CLK => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_5_CLK,
      I => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter5,
      O => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X114Y149",
      INIT => X"30F03FFF30F03FFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => w_facilitatory_2553,
      ADR1 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_0,
      ADR4 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      ADR3 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      ADR5 => '1',
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(5)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_31_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X114Y149",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_31_B5LUT_O_UNCONNECTED
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_4 : X_FF
    generic map(
      LOC => "SLICE_X114Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_0_basic_timer_1_n0024_inv_0,
      CLK => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_4_CLK,
      I => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter4,
      O => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X114Y149",
      INIT => X"0A5FAAFF0A5FAAFF"
    )
    port map (
      ADR1 => '1',
      ADR0 => w_facilitatory_2553,
      ADR2 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_0,
      ADR3 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      ADR4 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      ADR5 => '1',
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(4)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_32_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X114Y149",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_32_A5LUT_O_UNCONNECTED
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X110Y150"
    )
    port map (
      CI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_Q_2865,
      CYINIT => '0',
      CO(3) => NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_CO_3_UNCONNECTED,
      CO(2) => NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_CO_0_UNCONNECTED,
      DI(3) => NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_DI_3_UNCONNECTED,
      DI(2) => NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_DI_2_UNCONNECTED,
      DI(1) => NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_DI_1_UNCONNECTED,
      DI(0) => '1',
      O(3) => NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_O_3_UNCONNECTED,
      O(2) => NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_O_2_UNCONNECTED,
      O(1) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter9,
      O(0) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter8,
      S(3) => NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_S_3_UNCONNECTED,
      S(2) => NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_xor_9_S_2_UNCONNECTED,
      S(1) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(9),
      S(0) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(8)
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_9 : X_FF
    generic map(
      LOC => "SLICE_X110Y150",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLK => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_9_CLK,
      I => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter9,
      O => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(9),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X110Y150",
      INIT => X"00300F3F00300F3F"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => w_trigger_2847,
      ADR4 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(9),
      ADR1 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_0,
      ADR3 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_0,
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(9)
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_8 : X_FF
    generic map(
      LOC => "SLICE_X110Y150",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLK => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_8_CLK,
      I => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter8,
      O => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(8),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X110Y150",
      INIT => X"050005FF050005FF"
    )
    port map (
      ADR1 => '1',
      ADR3 => w_trigger_2847,
      ADR0 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_0,
      ADR4 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(8),
      ADR2 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_0,
      ADR5 => '1',
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(8)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_19_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X110Y150",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_19_A5LUT_O_UNCONNECTED
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_Q,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_0
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_Q,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_0
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_1_Q,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_1_0
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_0_Q,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_0_0
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X116Y148",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      ADR4 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(3),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q_1493
    );
  ProtoComp31_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X116Y148"
    )
    port map (
      O => ProtoComp31_CYINITGND_0
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X116Y148"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp31_CYINITGND_0,
      CO(3) => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q_2886,
      CO(2) => NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_DI_1_Q,
      DI(0) => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_DI_0_Q,
      O(3) => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_Q,
      O(2) => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_Q,
      O(1) => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_1_Q,
      O(0) => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_0_Q,
      S(3) => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q_1493,
      S(2) => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q_1507,
      S(1) => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_1_Q_1513,
      S(0) => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_0_Q_1506
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X116Y148",
      INIT => X"00FF00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      ADR5 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(2),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q_1507
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X116Y148",
      INIT => X"00FF00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      ADR5 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(1),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_1_Q_1513
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X116Y148",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      ADR4 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(0),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_0_Q_1506
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_3 : X_FF
    generic map(
      LOC => "SLICE_X110Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLK => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_3_CLK,
      I => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter3,
      O => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(3),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X110Y148",
      INIT => X"550FFF0F550FFF0F"
    )
    port map (
      ADR1 => '1',
      ADR3 => w_trigger_2847,
      ADR0 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_0,
      ADR2 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(3),
      ADR4 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      ADR5 => '1',
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(3)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_24_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X110Y148",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_24_D5LUT_O_UNCONNECTED
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_2 : X_FF
    generic map(
      LOC => "SLICE_X110Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLK => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_2_CLK,
      I => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter2,
      O => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(2),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X110Y148"
    )
    port map (
      CI => '0',
      CYINIT => w_trigger_2847,
      CO(3) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_Q_2856,
      CO(2) => NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter3,
      O(2) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter2,
      O(1) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter1,
      O(0) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter,
      S(3) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(3),
      S(2) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(2),
      S(1) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(1),
      S(0) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(0)
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X110Y148",
      INIT => X"0F55FF550F55FF55"
    )
    port map (
      ADR1 => '1',
      ADR3 => w_trigger_2847,
      ADR2 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_0,
      ADR0 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(2),
      ADR4 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      ADR5 => '1',
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(2)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_25_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X110Y148",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_25_C5LUT_O_UNCONNECTED
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_1 : X_FF
    generic map(
      LOC => "SLICE_X110Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLK => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_1_CLK,
      I => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter1,
      O => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(1),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X110Y148",
      INIT => X"30F03FFF30F03FFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => w_trigger_2847,
      ADR1 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_1_0,
      ADR4 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(1),
      ADR3 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      ADR5 => '1',
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(1)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_26_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X110Y148",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_26_B5LUT_O_UNCONNECTED
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_0 : X_FF
    generic map(
      LOC => "SLICE_X110Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLK => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_0_CLK,
      I => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter,
      O => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(0),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X110Y148",
      INIT => X"550FFF0F550FFF0F"
    )
    port map (
      ADR1 => '1',
      ADR3 => w_trigger_2847,
      ADR0 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_0_0,
      ADR2 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(0),
      ADR4 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      ADR5 => '1',
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(0)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_27_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X110Y148",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_27_A5LUT_O_UNCONNECTED
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_7 : X_FF
    generic map(
      LOC => "SLICE_X110Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLK => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_7_CLK,
      I => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter7,
      O => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(7),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X110Y149",
      INIT => X"05F5F5F505F5F5F5"
    )
    port map (
      ADR1 => '1',
      ADR2 => w_trigger_2847,
      ADR3 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_0,
      ADR0 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(7),
      ADR4 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      ADR5 => '1',
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(7)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_20_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X110Y149",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_20_D5LUT_O_UNCONNECTED
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_6 : X_FF
    generic map(
      LOC => "SLICE_X110Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLK => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_6_CLK,
      I => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter6,
      O => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(6),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X110Y149"
    )
    port map (
      CI => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_Q_2856,
      CYINIT => '0',
      CO(3) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_Q_2865,
      CO(2) => NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_cy_7_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter7,
      O(2) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter6,
      O(1) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter5,
      O(0) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter4,
      S(3) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(7),
      S(2) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(6),
      S(1) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(5),
      S(0) => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(4)
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X110Y149",
      INIT => X"2A2A7F7F2A2A7F7F"
    )
    port map (
      ADR3 => '1',
      ADR0 => w_trigger_2847,
      ADR1 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_0,
      ADR4 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(6),
      ADR2 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      ADR5 => '1',
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(6)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_21_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X110Y149",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_21_C5LUT_O_UNCONNECTED
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_5 : X_FF
    generic map(
      LOC => "SLICE_X110Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLK => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_5_CLK,
      I => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter5,
      O => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(5),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X110Y149",
      INIT => X"3F003FFF3F003FFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => w_trigger_2847,
      ADR2 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_0,
      ADR4 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(5),
      ADR1 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      ADR5 => '1',
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(5)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_22_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X110Y149",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_22_B5LUT_O_UNCONNECTED
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_4 : X_FF
    generic map(
      LOC => "SLICE_X110Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_1_basic_timer_1_n0024_inv,
      CLK => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_4_CLK,
      I => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter4,
      O => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(4),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X110Y149",
      INIT => X"550FFF0F550FFF0F"
    )
    port map (
      ADR1 => '1',
      ADR3 => w_trigger_2847,
      ADR0 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_0,
      ADR2 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(4),
      ADR4 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      ADR5 => '1',
      O => tde_1_timer_1_basic_timer_1_Mcount_p_countdown_v_counter_lut(4)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_23_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X110Y149",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_23_A5LUT_O_UNCONNECTED
    );
  tde_1_w_clkdiv_value_15_tde_1_w_clkdiv_value_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_clkdiv_value(15),
      O => tde_1_w_clkdiv_value_15_0
    );
  tde_1_w_clkdiv_value_15_tde_1_w_clkdiv_value_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_clkdiv_value(14),
      O => tde_1_w_clkdiv_value_14_0
    );
  tde_1_sub_0_Msub_o_output_data_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X108Y151"
    )
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy_13_Q_2885,
      CYINIT => '0',
      CO(3) => NLW_tde_1_sub_0_Msub_o_output_data_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_tde_1_sub_0_Msub_o_output_data_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_sub_0_Msub_o_output_data_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_sub_0_Msub_o_output_data_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_tde_1_sub_0_Msub_o_output_data_xor_15_DI_3_UNCONNECTED,
      DI(2) => NLW_tde_1_sub_0_Msub_o_output_data_xor_15_DI_2_UNCONNECTED,
      DI(1) => NLW_tde_1_sub_0_Msub_o_output_data_xor_15_DI_1_UNCONNECTED,
      DI(0) => NLW_tde_1_sub_0_Msub_o_output_data_xor_15_DI_0_UNCONNECTED,
      O(3) => NLW_tde_1_sub_0_Msub_o_output_data_xor_15_O_3_UNCONNECTED,
      O(2) => NLW_tde_1_sub_0_Msub_o_output_data_xor_15_O_2_UNCONNECTED,
      O(1) => tde_1_w_clkdiv_value(15),
      O(0) => tde_1_w_clkdiv_value(14),
      S(3) => NLW_tde_1_sub_0_Msub_o_output_data_xor_15_S_3_UNCONNECTED,
      S(2) => NLW_tde_1_sub_0_Msub_o_output_data_xor_15_S_2_UNCONNECTED,
      S(1) => '1',
      S(0) => '1'
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_4_B6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X108Y151",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_4_B6LUT_O_UNCONNECTED
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_5_A6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X108Y151",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_5_A6LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_7_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_7_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_6_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_6_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_5_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_5_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_4_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_4_0
    );
  p_stimuli_generation_v_faci_gen_internal_counter_7_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y147",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter(7),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_7_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_9_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y147",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_9_D5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X98Y147"
    )
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_3_Q_2806,
      CYINIT => '0',
      CO(3) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_Q_2811,
      CO(2) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_7_Q,
      O(2) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_6_Q,
      O(1) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_5_Q,
      O(0) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_4_Q,
      S(3) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_7_rt,
      S(2) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_6_rt,
      S(1) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_5_rt,
      S(0) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_4_rt
    );
  p_stimuli_generation_v_faci_gen_internal_counter_6_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y147",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(6),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_6_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_8_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y147",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_8_C5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_5_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y147",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(5),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_5_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y147",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_7_B5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_4_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y147",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(4),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_p_stimuli_generation_v_faci_gen_internal_counter_4_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_6_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y147",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_6_A5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_11_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_11_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_10_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_10_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_9_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_9_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_8_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_8_0
    );
  p_stimuli_generation_v_faci_gen_internal_counter_11_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y148",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => p_stimuli_generation_v_faci_gen_internal_counter(11),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_11_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_13_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y148",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_13_D5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X98Y148"
    )
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_7_Q_2811,
      CYINIT => '0',
      CO(3) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_Q_2816,
      CO(2) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_11_Q,
      O(2) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_10_Q,
      O(1) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_9_Q,
      O(0) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_8_Q,
      S(3) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_11_rt,
      S(2) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_10_rt,
      S(1) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_9_rt,
      S(0) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_8_rt
    );
  p_stimuli_generation_v_faci_gen_internal_counter_10_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y148",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter(10),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_10_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_12_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y148",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_12_C5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_9_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y148",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(9),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_9_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_11_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y148",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_11_B5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_8_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y148",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(8),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_p_stimuli_generation_v_faci_gen_internal_counter_8_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_10_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y148",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_10_A5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_15_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_15_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_14_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_14_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_13_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_13_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_12_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_12_0
    );
  p_stimuli_generation_v_faci_gen_internal_counter_15_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y149",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => p_stimuli_generation_v_faci_gen_internal_counter(15),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_15_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_17_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_17_D5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X98Y149"
    )
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_11_Q_2816,
      CYINIT => '0',
      CO(3) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_Q_2821,
      CO(2) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_15_Q,
      O(2) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_14_Q,
      O(1) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_13_Q,
      O(0) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_12_Q,
      S(3) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_15_rt,
      S(2) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_14_rt,
      S(1) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_13_rt,
      S(0) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_12_rt
    );
  p_stimuli_generation_v_faci_gen_internal_counter_14_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y149",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter(14),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_14_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_16_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_16_C5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_13_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y149",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(13),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_13_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_15_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_15_B5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_12_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y149",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter(12),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_p_stimuli_generation_v_faci_gen_internal_counter_12_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y149",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_14_A5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_23_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_23_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_22_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_22_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_21_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_21_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_20_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_20_0
    );
  p_stimuli_generation_v_faci_gen_internal_counter_23_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y151",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => p_stimuli_generation_v_faci_gen_internal_counter(23),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_23_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_25_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y151",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_25_D5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X98Y151"
    )
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_Q_2826,
      CYINIT => '0',
      CO(3) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_Q_2831,
      CO(2) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_23_Q,
      O(2) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_22_Q,
      O(1) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_21_Q,
      O(0) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_20_Q,
      S(3) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_23_rt,
      S(2) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_22_rt,
      S(1) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_21_rt,
      S(0) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_20_rt
    );
  p_stimuli_generation_v_faci_gen_internal_counter_22_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y151",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter(22),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_22_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_24_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y151",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_24_C5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_21_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y151",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(21),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_21_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_23_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y151",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_23_B5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_20_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y151",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter(20),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_p_stimuli_generation_v_faci_gen_internal_counter_20_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_22_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y151",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_22_A5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_25_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_25_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_25_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_25_0
    );
  p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_25_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_25_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_24_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_24_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X98Y152"
    )
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_23_Q_2831,
      CYINIT => '0',
      CO(3) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_CO_3_UNCONNECTED,
      CO(2) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_CO_0_UNCONNECTED,
      DI(3) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_DI_3_UNCONNECTED,
      DI(2) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_DI_2_UNCONNECTED,
      DI(1) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_O_3_UNCONNECTED,
      O(2) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_O_2_UNCONNECTED,
      O(1) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_25_Q,
      O(0) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_24_Q,
      S(3) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_S_3_UNCONNECTED,
      S(2) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_xor_25_S_2_UNCONNECTED,
      S(1) => '0',
      S(0) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_25_p_stimuli_generation_v_faci_gen_internal_counter_24_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_27_B6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X98Y152",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_27_B6LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_24_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y152",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter(24),
      ADR5 => '1',
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_25_p_stimuli_generation_v_faci_gen_internal_counter_24_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_26_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y152",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_26_A5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_19_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_19_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_18_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_18_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_17_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_17_0
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_16_Q,
      O => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_16_0
    );
  p_stimuli_generation_v_faci_gen_internal_counter_19_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y150",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => p_stimuli_generation_v_faci_gen_internal_counter(19),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_19_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_21_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_21_D5LUT_O_UNCONNECTED
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X98Y150"
    )
    port map (
      CI => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_15_Q_2821,
      CYINIT => '0',
      CO(3) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_Q_2826,
      CO(2) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_19_Q,
      O(2) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_18_Q,
      O(1) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_17_Q,
      O(0) => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_16_Q,
      S(3) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_19_rt,
      S(2) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_18_rt,
      S(1) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_17_rt,
      S(0) => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_16_rt
    );
  p_stimuli_generation_v_faci_gen_internal_counter_18_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y150",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter(18),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_18_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_20_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_20_C5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_17_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y150",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter(17),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_17_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_19_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_19_B5LUT_O_UNCONNECTED
    );
  p_stimuli_generation_v_faci_gen_internal_counter_16_rt_2 : X_LUT6
    generic map(
      LOC => "SLICE_X98Y150",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter(16),
      ADR5 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_cy_19_p_stimuli_generation_v_faci_gen_internal_counter_16_rt
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_18_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X98Y150",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_18_A5LUT_O_UNCONNECTED
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_3 : X_FF
    generic map(
      LOC => "SLICE_X114Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_0_basic_timer_1_n0024_inv_0,
      CLK => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_3_CLK,
      I => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter3,
      O => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X114Y148",
      INIT => X"0CCC3FFF0CCC3FFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => w_facilitatory_2553,
      ADR2 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_0,
      ADR4 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      ADR3 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      ADR5 => '1',
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(3)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_33_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X114Y148",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_33_D5LUT_O_UNCONNECTED
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_2 : X_FF
    generic map(
      LOC => "SLICE_X114Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_0_basic_timer_1_n0024_inv_0,
      CLK => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_2_CLK,
      I => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter2,
      O => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X114Y148"
    )
    port map (
      CI => '0',
      CYINIT => w_facilitatory_2553,
      CO(3) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_Q_2837,
      CO(2) => NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_cy_3_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter3,
      O(2) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter2,
      O(1) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter1,
      O(0) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter,
      S(3) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(3),
      S(2) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(2),
      S(1) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(1),
      S(0) => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(0)
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X114Y148",
      INIT => X"30F03FFF30F03FFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => w_facilitatory_2553,
      ADR1 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_0,
      ADR4 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      ADR3 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      ADR5 => '1',
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(2)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_34_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X114Y148",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_34_C5LUT_O_UNCONNECTED
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_1 : X_FF
    generic map(
      LOC => "SLICE_X114Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_0_basic_timer_1_n0024_inv_0,
      CLK => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_1_CLK,
      I => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter1,
      O => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X114Y148",
      INIT => X"0F0FFF0F0F0FFF0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => w_facilitatory_2553,
      ADR2 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      ADR4 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      ADR5 => '1',
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(1)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_35_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X114Y148",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_35_B5LUT_O_UNCONNECTED
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_0 : X_FF
    generic map(
      LOC => "SLICE_X114Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_timer_0_basic_timer_1_n0024_inv_0,
      CLK => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_0_CLK,
      I => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter,
      O => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X114Y148",
      INIT => X"0F0FFF0F0F0FFF0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => w_facilitatory_2553,
      ADR2 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      ADR4 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o,
      ADR5 => '1',
      O => tde_1_timer_0_basic_timer_1_Mcount_p_countdown_v_counter_lut(0)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_36_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X114Y148",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_36_A5LUT_O_UNCONNECTED
    );
  o_output_spike_OBUF : X_OBUF
    generic map(
      LOC => "PAD127"
    )
    port map (
      I => NlwBufferSignal_o_output_spike_OBUF_I,
      O => o_output_spike
    );
  o_aer_data_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD504"
    )
    port map (
      I => '0',
      O => o_aer_data_out(1)
    );
  o_aer_data_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD509"
    )
    port map (
      I => '0',
      O => o_aer_data_out(3)
    );
  o_aer_data_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD489"
    )
    port map (
      I => '0',
      O => o_aer_data_out(0)
    );
  tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_0
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X112Y152"
    )
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q_2889,
      CYINIT => '0',
      CO(3) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_CO_3_UNCONNECTED,
      CO(2) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_CO_0_UNCONNECTED,
      DI(3) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_3_UNCONNECTED,
      DI(2) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_2_UNCONNECTED,
      DI(1) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_1_UNCONNECTED,
      DI(0) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_0_UNCONNECTED,
      O(3) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_O_3_UNCONNECTED,
      O(2) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_O_2_UNCONNECTED,
      O(1) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_O_1_UNCONNECTED,
      O(0) => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q,
      S(3) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_S_3_UNCONNECTED,
      S(2) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_S_2_UNCONNECTED,
      S(1) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_S_1_UNCONNECTED,
      S(0) => '0'
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_88_A6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X112Y152",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_88_A6LUT_O_UNCONNECTED
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_Q,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_0
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_Q,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_0
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_Q,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_0
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_Q,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_0
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X112Y151",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
      ADR5 => '1',
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_13_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y151",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_13_D5LUT_O_UNCONNECTED
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X112Y151"
    )
    port map (
      CI => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q_2888,
      CYINIT => '0',
      CO(3) => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_Q_2889,
      CO(2) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_9_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '0',
      DI(1) => '1',
      DI(0) => '0',
      O(3) => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_Q,
      O(2) => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_Q,
      O(1) => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_Q,
      O(0) => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_Q,
      S(3) => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q,
      S(2) => tde_1_timer_0_basic_timer_1_p_countdown_v_counter_8_rt_1579,
      S(1) => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q,
      S(0) => tde_1_timer_0_basic_timer_1_p_countdown_v_counter_6_rt_1585
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X112Y151",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
      ADR5 => '1',
      O => tde_1_timer_0_basic_timer_1_p_countdown_v_counter_8_rt_1579
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_89_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y151",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_89_C5LUT_O_UNCONNECTED
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X112Y151",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
      ADR5 => '1',
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_14_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y151",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_14_B5LUT_O_UNCONNECTED
    );
  tde_1_timer_0_basic_timer_1_p_countdown_v_counter_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X112Y151",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
      ADR5 => '1',
      O => tde_1_timer_0_basic_timer_1_p_countdown_v_counter_6_rt_1585
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_90_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y151",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_90_A5LUT_O_UNCONNECTED
    );
  o_aer_data_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD506"
    )
    port map (
      I => '0',
      O => o_aer_data_out(2)
    );
  o_aer_data_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD516"
    )
    port map (
      I => '0',
      O => o_aer_data_out(4)
    );
  tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_0
    );
  tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_Q,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_0
    );
  tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_Q,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_0
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X116Y150"
    )
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q_2887,
      CYINIT => '0',
      CO(3) => NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_CO_3_UNCONNECTED,
      CO(2) => NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_CO_0_UNCONNECTED,
      DI(3) => NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_3_UNCONNECTED,
      DI(2) => NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_2_UNCONNECTED,
      DI(1) => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_1_Q,
      DI(0) => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_0_Q,
      O(3) => NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_O_3_UNCONNECTED,
      O(2) => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_Q,
      O(1) => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_Q,
      O(0) => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_Q,
      S(3) => NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_S_3_UNCONNECTED,
      S(2) => '0',
      S(1) => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q_1541,
      S(0) => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_8_Q_1547
    );
  Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_82_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X116Y150",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_Madd_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_cy_25_82_C6LUT_O_UNCONNECTED
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X116Y150",
      INIT => X"00FF00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
      ADR5 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(9),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_9_Q_1541
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X116Y150",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
      ADR4 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(8),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_8_Q_1547
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_Q,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_0
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_Q,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_0
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_Q,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_0
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_Q,
      O => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_0
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X112Y150",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      ADR5 => '1',
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_15_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y150",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_15_D5LUT_O_UNCONNECTED
    );
  ProtoComp34_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X112Y150"
    )
    port map (
      O => ProtoComp34_CYINITGND_0
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X112Y150"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp34_CYINITGND_0,
      CO(3) => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_Q_2888,
      CO(2) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_5_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_Q,
      O(2) => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_Q,
      O(1) => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_Q,
      O(0) => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_Q,
      S(3) => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q,
      S(2) => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q,
      S(1) => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q,
      S(0) => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X112Y150",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      ADR5 => '1',
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_16_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y150",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_16_C5LUT_O_UNCONNECTED
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X112Y150",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      ADR5 => '1',
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_3_Q
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_17_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y150",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_17_B5LUT_O_UNCONNECTED
    );
  tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X112Y150",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      ADR5 => '1',
      O => tde_1_timer_0_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_2_Q
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_18_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X112Y150",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_18_A5LUT_O_UNCONNECTED
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_Q,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_0
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_Q,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_0
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_Q,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_0
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_Q,
      O => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_0
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X116Y149",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
      ADR4 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(7),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q_1524
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X116Y149"
    )
    port map (
      CI => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_Q_2886,
      CYINIT => '0',
      CO(3) => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_Q_2887,
      CO(2) => NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_DI_3_Q,
      DI(2) => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_DI_2_Q,
      DI(1) => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_DI_1_Q,
      DI(0) => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_DI_0_Q,
      O(3) => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_Q,
      O(2) => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_Q,
      O(1) => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_Q,
      O(0) => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_Q,
      S(3) => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_7_Q_1524,
      S(2) => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_6_Q_1534,
      S(1) => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q_1530,
      S(0) => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q_1521
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X116Y149",
      INIT => X"00FF00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
      ADR5 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(6),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_6_Q_1534
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X116Y149",
      INIT => X"00FF00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      ADR5 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(5),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_5_Q_1530
    );
  tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X116Y149",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      ADR4 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(4),
      O => tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_lut_4_Q_1521
    );
  i_clock_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 115 ps
    )
    port map (
      O => i_clock_BUFGP_IBUFG_1599,
      I => i_clock
    );
  ProtoComp38_IMUX : X_BUF
    generic map(
      LOC => "PAD340",
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP_IBUFG_1599,
      O => i_clock_BUFGP_IBUFG_0
    );
  i_clock_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 115 ps
    )
    port map (
      I => NlwBufferSignal_i_clock_BUFGP_BUFG_IN,
      O => i_clock_BUFGP
    );
  o_aer_data_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD576"
    )
    port map (
      I => '0',
      O => o_aer_data_out(7)
    );
  o_aer_data_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD518"
    )
    port map (
      I => '0',
      O => o_aer_data_out(5)
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_5 : X_LUT6
    generic map(
      LOC => "SLICE_X99Y148",
      INIT => X"0000000000002000"
    )
    port map (
      ADR1 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_0_0,
      ADR5 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_8_0,
      ADR2 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_9_0,
      ADR0 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_10_0,
      ADR4 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_11_0,
      ADR3 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_12_0,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_4_2902
    );
  GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_3 : X_LUT6
    generic map(
      LOC => "SLICE_X99Y148",
      INIT => X"0000000400000000"
    )
    port map (
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_10_0,
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_11_0,
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_8_0,
      ADR2 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_12_0,
      ADR5 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_9_0,
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_13_0,
      O => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_2_2904
    );
  o_aer_data_out_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD514"
    )
    port map (
      I => '0',
      O => o_aer_data_out(11)
    );
  i_aer_ack_out_IBUF : X_BUF
    generic map(
      LOC => "PAD479",
      PATHPULSE => 115 ps
    )
    port map (
      O => i_aer_ack_out_IBUF_1640,
      I => i_aer_ack_out
    );
  ProtoComp38_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD479",
      PATHPULSE => 115 ps
    )
    port map (
      I => i_aer_ack_out_IBUF_1640,
      O => i_aer_ack_out_IBUF_0
    );
  GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1 : X_LUT6
    generic map(
      LOC => "SLICE_X101Y145",
      INIT => X"00000000000000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_3_0,
      ADR5 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_2_0,
      ADR4 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_4_0,
      O => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_Q
    );
  o_aer_data_out_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD492"
    )
    port map (
      I => '0',
      O => o_aer_data_out(14)
    );
  tde_1_spike_generator_0_Mmult_w_mult_result_RSTPINV : X_BUF
    generic map(
      LOC => "DSP48_X3Y37",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => tde_1_spike_generator_0_Mmult_w_mult_result_RSTP_INT
    );
  tde_1_spike_generator_0_Mmult_w_mult_result_RSTAINV : X_BUF
    generic map(
      LOC => "DSP48_X3Y37",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => tde_1_spike_generator_0_Mmult_w_mult_result_RSTA_INT
    );
  tde_1_spike_generator_0_Mmult_w_mult_result_CEAINV : X_BUF
    generic map(
      LOC => "DSP48_X3Y37",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => tde_1_spike_generator_0_Mmult_w_mult_result_CEA_INT
    );
  tde_1_spike_generator_0_Mmult_w_mult_result_CEPINV : X_BUF
    generic map(
      LOC => "DSP48_X3Y37",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => tde_1_spike_generator_0_Mmult_w_mult_result_CEP_INT
    );
  tde_1_spike_generator_0_Mmult_w_mult_result_CEBINV : X_BUF
    generic map(
      LOC => "DSP48_X3Y37",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => tde_1_spike_generator_0_Mmult_w_mult_result_CEB_INT
    );
  tde_1_spike_generator_0_Mmult_w_mult_result_CEMINV : X_BUF
    generic map(
      LOC => "DSP48_X3Y37",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => tde_1_spike_generator_0_Mmult_w_mult_result_CEM_INT
    );
  tde_1_spike_generator_0_Mmult_w_mult_result_RSTBINV : X_BUF
    generic map(
      LOC => "DSP48_X3Y37",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => tde_1_spike_generator_0_Mmult_w_mult_result_RSTB_INT
    );
  tde_1_spike_generator_0_Mmult_w_mult_result_CLKINV : X_BUF
    generic map(
      LOC => "DSP48_X3Y37",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => tde_1_spike_generator_0_Mmult_w_mult_result_CLK_INT
    );
  tde_1_spike_generator_0_Mmult_w_mult_result_RSTMINV : X_BUF
    generic map(
      LOC => "DSP48_X3Y37",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => tde_1_spike_generator_0_Mmult_w_mult_result_RSTM_INT
    );
  tde_1_spike_generator_0_Mmult_w_mult_result_RSTOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X3Y37",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => tde_1_spike_generator_0_Mmult_w_mult_result_RSTOPMODE_INT
    );
  tde_1_spike_generator_0_Mmult_w_mult_result_CECINV : X_BUF
    generic map(
      LOC => "DSP48_X3Y37",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => tde_1_spike_generator_0_Mmult_w_mult_result_CEC_INT
    );
  tde_1_spike_generator_0_Mmult_w_mult_result_CEOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X3Y37",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => tde_1_spike_generator_0_Mmult_w_mult_result_CEOPMODE_INT
    );
  tde_1_spike_generator_0_Mmult_w_mult_result_RSTDINV : X_BUF
    generic map(
      LOC => "DSP48_X3Y37",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => tde_1_spike_generator_0_Mmult_w_mult_result_RSTD_INT
    );
  tde_1_spike_generator_0_Mmult_w_mult_result_CEDINV : X_BUF
    generic map(
      LOC => "DSP48_X3Y37",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => tde_1_spike_generator_0_Mmult_w_mult_result_CED_INT
    );
  tde_1_spike_generator_0_Mmult_w_mult_result_RSTCARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X3Y37",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => tde_1_spike_generator_0_Mmult_w_mult_result_RSTCARRYIN_INT
    );
  tde_1_spike_generator_0_Mmult_w_mult_result_RSTCINV : X_BUF
    generic map(
      LOC => "DSP48_X3Y37",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => tde_1_spike_generator_0_Mmult_w_mult_result_RSTC_INT
    );
  tde_1_spike_generator_0_Mmult_w_mult_result_CECARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X3Y37",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => tde_1_spike_generator_0_Mmult_w_mult_result_CECARRYIN_INT
    );
  tde_1_spike_generator_0_Mmult_w_mult_result : X_DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      CREG => 0,
      DREG => 0,
      MREG => 0,
      OPMODEREG => 0,
      PREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      B_INPUT => "DIRECT",
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      LOC => "DSP48_X3Y37"
    )
    port map (
      CECARRYIN => tde_1_spike_generator_0_Mmult_w_mult_result_CECARRYIN_INT,
      RSTC => tde_1_spike_generator_0_Mmult_w_mult_result_RSTC_INT,
      RSTCARRYIN => tde_1_spike_generator_0_Mmult_w_mult_result_RSTCARRYIN_INT,
      CED => tde_1_spike_generator_0_Mmult_w_mult_result_CED_INT,
      RSTD => tde_1_spike_generator_0_Mmult_w_mult_result_RSTD_INT,
      CEOPMODE => tde_1_spike_generator_0_Mmult_w_mult_result_CEOPMODE_INT,
      CEC => tde_1_spike_generator_0_Mmult_w_mult_result_CEC_INT,
      RSTOPMODE => tde_1_spike_generator_0_Mmult_w_mult_result_RSTOPMODE_INT,
      RSTM => tde_1_spike_generator_0_Mmult_w_mult_result_RSTM_INT,
      CLK => tde_1_spike_generator_0_Mmult_w_mult_result_CLK_INT,
      RSTB => tde_1_spike_generator_0_Mmult_w_mult_result_RSTB_INT,
      CEM => tde_1_spike_generator_0_Mmult_w_mult_result_CEM_INT,
      CEB => tde_1_spike_generator_0_Mmult_w_mult_result_CEB_INT,
      CARRYIN => GND,
      CEP => tde_1_spike_generator_0_Mmult_w_mult_result_CEP_INT,
      CEA => tde_1_spike_generator_0_Mmult_w_mult_result_CEA_INT,
      RSTA => tde_1_spike_generator_0_Mmult_w_mult_result_RSTA_INT,
      RSTP => tde_1_spike_generator_0_Mmult_w_mult_result_RSTP_INT,
      CARRYOUTF => tde_1_spike_generator_0_Mmult_w_mult_result_CARRYOUTF,
      CARRYOUT => tde_1_spike_generator_0_Mmult_w_mult_result_CARRYOUT,
      B(17) => GND,
      B(16) => GND,
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
      PCIN(47) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN47,
      PCIN(46) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN46,
      PCIN(45) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN45,
      PCIN(44) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN44,
      PCIN(43) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN43,
      PCIN(42) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN42,
      PCIN(41) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN41,
      PCIN(40) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN40,
      PCIN(39) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN39,
      PCIN(38) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN38,
      PCIN(37) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN37,
      PCIN(36) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN36,
      PCIN(35) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN35,
      PCIN(34) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN34,
      PCIN(33) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN33,
      PCIN(32) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN32,
      PCIN(31) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN31,
      PCIN(30) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN30,
      PCIN(29) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN29,
      PCIN(28) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN28,
      PCIN(27) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN27,
      PCIN(26) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN26,
      PCIN(25) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN25,
      PCIN(24) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN24,
      PCIN(23) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN23,
      PCIN(22) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN22,
      PCIN(21) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN21,
      PCIN(20) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN20,
      PCIN(19) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN19,
      PCIN(18) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN18,
      PCIN(17) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN17,
      PCIN(16) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN16,
      PCIN(15) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN15,
      PCIN(14) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN14,
      PCIN(13) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN13,
      PCIN(12) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN12,
      PCIN(11) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN11,
      PCIN(10) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN10,
      PCIN(9) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN9,
      PCIN(8) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN8,
      PCIN(7) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN7,
      PCIN(6) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN6,
      PCIN(5) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN5,
      PCIN(4) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN4,
      PCIN(3) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN3,
      PCIN(2) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN2,
      PCIN(1) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN1,
      PCIN(0) => tde_1_spike_generator_0_Mmult_w_mult_result_PCIN0,
      C(47) => GND,
      C(46) => GND,
      C(45) => GND,
      C(44) => GND,
      C(43) => GND,
      C(42) => GND,
      C(41) => GND,
      C(40) => GND,
      C(39) => GND,
      C(38) => GND,
      C(37) => GND,
      C(36) => GND,
      C(35) => GND,
      C(34) => GND,
      C(33) => GND,
      C(32) => GND,
      C(31) => GND,
      C(30) => GND,
      C(29) => GND,
      C(28) => GND,
      C(27) => GND,
      C(26) => GND,
      C(25) => GND,
      C(24) => GND,
      C(23) => GND,
      C(22) => GND,
      C(21) => GND,
      C(20) => GND,
      C(19) => GND,
      C(18) => GND,
      C(17) => GND,
      C(16) => GND,
      C(15) => GND,
      C(14) => GND,
      C(13) => GND,
      C(12) => GND,
      C(11) => GND,
      C(10) => GND,
      C(9) => GND,
      C(8) => GND,
      C(7) => GND,
      C(6) => GND,
      C(5) => GND,
      C(4) => GND,
      C(3) => GND,
      C(2) => GND,
      C(1) => GND,
      C(0) => GND,
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => GND,
      OPMODE(2) => GND,
      OPMODE(1) => GND,
      OPMODE(0) => VCC,
      D(17) => GND,
      D(16) => GND,
      D(15) => GND,
      D(14) => GND,
      D(13) => GND,
      D(12) => GND,
      D(11) => GND,
      D(10) => GND,
      D(9) => GND,
      D(8) => GND,
      D(7) => GND,
      D(6) => GND,
      D(5) => GND,
      D(4) => GND,
      D(3) => GND,
      D(2) => GND,
      D(1) => GND,
      D(0) => GND,
      A(17) => GND,
      A(16) => GND,
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
      A(3) => GND,
      A(2) => GND,
      A(1) => GND,
      A(0) => GND,
      BCIN(17) => tde_1_spike_generator_0_Mmult_w_mult_result_BCIN17,
      BCIN(16) => tde_1_spike_generator_0_Mmult_w_mult_result_BCIN16,
      BCIN(15) => tde_1_spike_generator_0_Mmult_w_mult_result_BCIN15,
      BCIN(14) => tde_1_spike_generator_0_Mmult_w_mult_result_BCIN14,
      BCIN(13) => tde_1_spike_generator_0_Mmult_w_mult_result_BCIN13,
      BCIN(12) => tde_1_spike_generator_0_Mmult_w_mult_result_BCIN12,
      BCIN(11) => tde_1_spike_generator_0_Mmult_w_mult_result_BCIN11,
      BCIN(10) => tde_1_spike_generator_0_Mmult_w_mult_result_BCIN10,
      BCIN(9) => tde_1_spike_generator_0_Mmult_w_mult_result_BCIN9,
      BCIN(8) => tde_1_spike_generator_0_Mmult_w_mult_result_BCIN8,
      BCIN(7) => tde_1_spike_generator_0_Mmult_w_mult_result_BCIN7,
      BCIN(6) => tde_1_spike_generator_0_Mmult_w_mult_result_BCIN6,
      BCIN(5) => tde_1_spike_generator_0_Mmult_w_mult_result_BCIN5,
      BCIN(4) => tde_1_spike_generator_0_Mmult_w_mult_result_BCIN4,
      BCIN(3) => tde_1_spike_generator_0_Mmult_w_mult_result_BCIN3,
      BCIN(2) => tde_1_spike_generator_0_Mmult_w_mult_result_BCIN2,
      BCIN(1) => tde_1_spike_generator_0_Mmult_w_mult_result_BCIN1,
      BCIN(0) => tde_1_spike_generator_0_Mmult_w_mult_result_BCIN0,
      BCOUT(17) => tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT17,
      BCOUT(16) => tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT16,
      BCOUT(15) => tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT15,
      BCOUT(14) => tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT14,
      BCOUT(13) => tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT13,
      BCOUT(12) => tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT12,
      BCOUT(11) => tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT11,
      BCOUT(10) => tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT10,
      BCOUT(9) => tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT9,
      BCOUT(8) => tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT8,
      BCOUT(7) => tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT7,
      BCOUT(6) => tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT6,
      BCOUT(5) => tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT5,
      BCOUT(4) => tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT4,
      BCOUT(3) => tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT3,
      BCOUT(2) => tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT2,
      BCOUT(1) => tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT1,
      BCOUT(0) => tde_1_spike_generator_0_Mmult_w_mult_result_BCOUT0,
      P(47) => tde_1_spike_generator_0_Mmult_w_mult_result_P47,
      P(46) => tde_1_spike_generator_0_Mmult_w_mult_result_P46,
      P(45) => tde_1_spike_generator_0_Mmult_w_mult_result_P45,
      P(44) => tde_1_spike_generator_0_Mmult_w_mult_result_P44,
      P(43) => tde_1_spike_generator_0_Mmult_w_mult_result_P43,
      P(42) => tde_1_spike_generator_0_Mmult_w_mult_result_P42,
      P(41) => tde_1_spike_generator_0_Mmult_w_mult_result_P41,
      P(40) => tde_1_spike_generator_0_Mmult_w_mult_result_P40,
      P(39) => tde_1_spike_generator_0_Mmult_w_mult_result_P39,
      P(38) => tde_1_spike_generator_0_Mmult_w_mult_result_P38,
      P(37) => tde_1_spike_generator_0_Mmult_w_mult_result_P37,
      P(36) => tde_1_spike_generator_0_Mmult_w_mult_result_P36,
      P(35) => tde_1_spike_generator_0_Mmult_w_mult_result_P35,
      P(34) => tde_1_spike_generator_0_Mmult_w_mult_result_P34,
      P(33) => tde_1_spike_generator_0_Mmult_w_mult_result_P33,
      P(32) => tde_1_spike_generator_0_Mmult_w_mult_result_P32,
      P(31) => tde_1_spike_generator_0_Mmult_w_mult_result_P31,
      P(30) => tde_1_spike_generator_0_Mmult_w_mult_result_P30,
      P(29) => tde_1_spike_generator_0_Mmult_w_mult_result_P29,
      P(28) => tde_1_spike_generator_0_Mmult_w_mult_result_P28,
      P(27) => tde_1_spike_generator_0_Mmult_w_mult_result_P27,
      P(26) => tde_1_spike_generator_0_Mmult_w_mult_result_P26,
      P(25) => tde_1_spike_generator_0_Mmult_w_mult_result_P25,
      P(24) => tde_1_spike_generator_0_Mmult_w_mult_result_P24,
      P(23) => tde_1_spike_generator_0_Mmult_w_mult_result_P23,
      P(22) => tde_1_spike_generator_0_Mmult_w_mult_result_P22,
      P(21) => tde_1_spike_generator_0_Mmult_w_mult_result_P21,
      P(20) => tde_1_spike_generator_0_Mmult_w_mult_result_P20,
      P(19) => tde_1_spike_generator_0_Mmult_w_mult_result_P19,
      P(18) => tde_1_spike_generator_0_Mmult_w_mult_result_P18,
      P(17) => tde_1_spike_generator_0_Mmult_w_mult_result_P17,
      P(16) => tde_1_spike_generator_0_Mmult_w_mult_result_P16,
      P(15) => tde_1_spike_generator_0_Mmult_w_mult_result_P15,
      P(14) => tde_1_spike_generator_0_Mmult_w_mult_result_P14,
      P(13) => tde_1_spike_generator_0_Mmult_w_mult_result_P13,
      P(12) => tde_1_spike_generator_0_Mmult_w_mult_result_P12,
      P(11) => tde_1_spike_generator_0_Mmult_w_mult_result_P11,
      P(10) => tde_1_spike_generator_0_Mmult_w_mult_result_P10,
      P(9) => tde_1_spike_generator_0_Mmult_w_mult_result_P9,
      P(8) => tde_1_spike_generator_0_Mmult_w_mult_result_P8,
      P(7) => tde_1_spike_generator_0_Mmult_w_mult_result_P7,
      P(6) => tde_1_spike_generator_0_Mmult_w_mult_result_P6,
      P(5) => tde_1_spike_generator_0_Mmult_w_mult_result_P5,
      P(4) => tde_1_spike_generator_0_Mmult_w_mult_result_P4,
      P(3) => tde_1_spike_generator_0_Mmult_w_mult_result_P3,
      P(2) => tde_1_spike_generator_0_Mmult_w_mult_result_P2,
      P(1) => tde_1_spike_generator_0_Mmult_w_mult_result_P1,
      P(0) => tde_1_spike_generator_0_Mmult_w_mult_result_P0,
      PCOUT(47) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT47,
      PCOUT(46) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT46,
      PCOUT(45) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT45,
      PCOUT(44) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT44,
      PCOUT(43) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT43,
      PCOUT(42) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT42,
      PCOUT(41) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT41,
      PCOUT(40) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT40,
      PCOUT(39) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT39,
      PCOUT(38) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT38,
      PCOUT(37) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT37,
      PCOUT(36) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT36,
      PCOUT(35) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT35,
      PCOUT(34) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT34,
      PCOUT(33) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT33,
      PCOUT(32) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT32,
      PCOUT(31) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT31,
      PCOUT(30) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT30,
      PCOUT(29) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT29,
      PCOUT(28) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT28,
      PCOUT(27) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT27,
      PCOUT(26) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT26,
      PCOUT(25) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT25,
      PCOUT(24) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT24,
      PCOUT(23) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT23,
      PCOUT(22) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT22,
      PCOUT(21) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT21,
      PCOUT(20) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT20,
      PCOUT(19) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT19,
      PCOUT(18) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT18,
      PCOUT(17) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT17,
      PCOUT(16) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT16,
      PCOUT(15) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT15,
      PCOUT(14) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT14,
      PCOUT(13) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT13,
      PCOUT(12) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT12,
      PCOUT(11) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT11,
      PCOUT(10) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT10,
      PCOUT(9) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT9,
      PCOUT(8) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT8,
      PCOUT(7) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT7,
      PCOUT(6) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT6,
      PCOUT(5) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT5,
      PCOUT(4) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT4,
      PCOUT(3) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT3,
      PCOUT(2) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT2,
      PCOUT(1) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT1,
      PCOUT(0) => tde_1_spike_generator_0_Mmult_w_mult_result_PCOUT0,
      M(35) => tde_1_spike_generator_0_Mmult_w_mult_result_M35,
      M(34) => tde_1_spike_generator_0_Mmult_w_mult_result_M34,
      M(33) => tde_1_spike_generator_0_Mmult_w_mult_result_M33,
      M(32) => tde_1_spike_generator_0_Mmult_w_mult_result_M32,
      M(31) => tde_1_spike_generator_0_Mmult_w_mult_result_M31,
      M(30) => tde_1_spike_generator_0_Mmult_w_mult_result_M30,
      M(29) => tde_1_spike_generator_0_Mmult_w_mult_result_M29,
      M(28) => tde_1_spike_generator_0_Mmult_w_mult_result_M28,
      M(27) => tde_1_spike_generator_0_Mmult_w_mult_result_M27,
      M(26) => tde_1_spike_generator_0_Mmult_w_mult_result_M26,
      M(25) => tde_1_spike_generator_0_Mmult_w_mult_result_M25,
      M(24) => tde_1_spike_generator_0_Mmult_w_mult_result_M24,
      M(23) => tde_1_spike_generator_0_Mmult_w_mult_result_M23,
      M(22) => tde_1_spike_generator_0_Mmult_w_mult_result_M22,
      M(21) => tde_1_spike_generator_0_Mmult_w_mult_result_M21,
      M(20) => tde_1_spike_generator_0_Mmult_w_mult_result_M20,
      M(19) => tde_1_spike_generator_0_Mmult_w_mult_result_M19,
      M(18) => tde_1_spike_generator_0_Mmult_w_mult_result_M18,
      M(17) => tde_1_spike_generator_0_Mmult_w_mult_result_M17,
      M(16) => tde_1_spike_generator_0_Mmult_w_mult_result_M16,
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
  i_nreset_IBUF : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 115 ps
    )
    port map (
      O => i_nreset_inv_non_inverted,
      I => i_nreset
    );
  ProtoComp39_IMUX : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 115 ps
    )
    port map (
      I => ProtoComp39_IINV_OUT,
      O => i_nreset_inv
    );
  ProtoComp39_IINV : X_INV
    generic map(
      LOC => "PAD130",
      PATHPULSE => 115 ps
    )
    port map (
      I => i_nreset_inv_non_inverted,
      O => ProtoComp39_IINV_OUT
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_3 : X_LUT6
    generic map(
      LOC => "SLICE_X99Y147",
      INIT => X"000F000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_1_0,
      ADR3 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_2_0,
      ADR4 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_3_0,
      ADR5 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_4_0,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_2_2906
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_4 : X_LUT6
    generic map(
      LOC => "SLICE_X99Y147",
      INIT => X"0022000000000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_5_0,
      ADR5 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_6_0,
      ADR0 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_7_0,
      ADR3 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_19_0,
      ADR4 => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_2_2906,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_3_2901
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_1 : X_LUT6
    generic map(
      LOC => "SLICE_X99Y150",
      INIT => X"00000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_13_0,
      ADR4 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_14_0,
      ADR3 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_15_0,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_Q
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_2 : X_LUT6
    generic map(
      LOC => "SLICE_X99Y150",
      INIT => X"0000000100000000"
    )
    port map (
      ADR4 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_16_0,
      ADR0 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_17_0,
      ADR2 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_18_0,
      ADR1 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_24_0,
      ADR3 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_25_0,
      ADR5 => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_Q,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_1_2907
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_6 : X_LUT6
    generic map(
      LOC => "SLICE_X99Y150",
      INIT => X"0000000300000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_20_0,
      ADR1 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_21_0,
      ADR4 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_22_0,
      ADR3 => p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_23_0,
      ADR5 => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_4_2902,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_5_2908
    );
  w_trigger : X_FF
    generic map(
      LOC => "SLICE_X99Y150",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_w_trigger_CLK,
      I => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o,
      O => w_trigger_2847,
      RST => i_nreset_inv,
      SET => GND
    );
  GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_7 : X_LUT6
    generic map(
      LOC => "SLICE_X99Y150",
      INIT => X"CCCC000000000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_3_2901,
      ADR1 => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_1_2907,
      ADR4 => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o_31_5_2908,
      O => GND_6_o_p_stimuli_generation_v_trig_gen_internal_counter_31_equal_10_o
    );
  o_aer_data_out_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD510"
    )
    port map (
      I => '0',
      O => o_aer_data_out(12)
    );
  o_aer_req_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD487"
    )
    port map (
      I => '1',
      O => o_aer_req_out
    );
  o_aer_data_out_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD530"
    )
    port map (
      I => '0',
      O => o_aer_data_out(9)
    );
  o_aer_data_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD529"
    )
    port map (
      I => '0',
      O => o_aer_data_out(6)
    );
  o_aer_data_out_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD490"
    )
    port map (
      I => '0',
      O => o_aer_data_out(15)
    );
  o_aer_data_out_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD575"
    )
    port map (
      I => '0',
      O => o_aer_data_out(8)
    );
  o_aer_data_out_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD503"
    )
    port map (
      I => '0',
      O => o_aer_data_out(13)
    );
  o_aer_data_out_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD515"
    )
    port map (
      I => '0',
      O => o_aer_data_out(10)
    );
  p_stimuli_generation_v_faci_gen_internal_counter_15 : X_FF
    generic map(
      LOC => "SLICE_X101Y149",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_15_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_15_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(15),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X101Y149",
      INIT => X"DFFF0000FFFF0000"
    )
    port map (
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_15_0,
      ADR1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR0 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_15_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_14 : X_FF
    generic map(
      LOC => "SLICE_X101Y149",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_14_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_14_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(14),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X101Y149",
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_14_0,
      ADR1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_14_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_13 : X_FF
    generic map(
      LOC => "SLICE_X101Y149",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_13_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_13_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(13),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X101Y149",
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_13_0,
      ADR1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_13_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_12 : X_FF
    generic map(
      LOC => "SLICE_X101Y149",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_12_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_12_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(12),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X101Y149",
      INIT => X"AAAAAAAA2AAAAAAA"
    )
    port map (
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_12_0,
      ADR5 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR1 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_12_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_11 : X_FF
    generic map(
      LOC => "SLICE_X101Y148",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_11_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_11_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(11),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X101Y148",
      INIT => X"AA2AAAAAAAAAAAAA"
    )
    port map (
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_11_0,
      ADR3 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR1 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_11_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_10 : X_FF
    generic map(
      LOC => "SLICE_X101Y148",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_10_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_10_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(10),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X101Y148",
      INIT => X"A2AAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_10_0,
      ADR2 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR1 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_10_Q
    );
  GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2 : X_LUT6
    generic map(
      LOC => "SLICE_X101Y148",
      INIT => X"0000004000000000"
    )
    port map (
      ADR2 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_19_0,
      ADR1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_20_0,
      ADR4 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_5_0,
      ADR3 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_7_0,
      ADR0 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_8_0,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_Q,
      O => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898
    );
  p_stimuli_generation_v_faci_gen_internal_counter_9 : X_FF
    generic map(
      LOC => "SLICE_X101Y148",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_9_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_9_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(9),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT321 : X_LUT6
    generic map(
      LOC => "SLICE_X101Y148",
      INIT => X"8CCCCCCCCCCCCCCC"
    )
    port map (
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_9_0,
      ADR0 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_9_Q
    );
  N17_N17_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N26,
      O => N26_0
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_4_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X107Y150",
      INIT => X"3FF3CFFC3FF3CFFC"
    )
    port map (
      ADR0 => '1',
      ADR4 => tde_1_w_clkdiv_value_12_0,
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_12_0,
      ADR3 => tde_1_w_clkdiv_value_13_0,
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_13_0,
      ADR5 => '1',
      O => N17
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW3 : X_LUT5
    generic map(
      LOC => "SLICE_X107Y150",
      INIT => X"FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR4 => tde_1_w_clkdiv_value_12_0,
      ADR2 => '1',
      ADR3 => tde_1_w_clkdiv_value_13_0,
      ADR1 => '1',
      O => N26
    );
  p_stimuli_generation_v_faci_gen_internal_counter_8 : X_FF
    generic map(
      LOC => "SLICE_X103Y147",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_8_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_8_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(8),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT311 : X_LUT6
    generic map(
      LOC => "SLICE_X103Y147",
      INIT => X"A2AAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_8_0,
      ADR2 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR1 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_8_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_7 : X_FF
    generic map(
      LOC => "SLICE_X103Y147",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_7_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_7_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(7),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT301 : X_LUT6
    generic map(
      LOC => "SLICE_X103Y147",
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_7_0,
      ADR1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_7_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_6 : X_FF
    generic map(
      LOC => "SLICE_X103Y147",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_6_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_6_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(6),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT291 : X_LUT6
    generic map(
      LOC => "SLICE_X103Y147",
      INIT => X"AAAAAAAA2AAAAAAA"
    )
    port map (
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_6_0,
      ADR5 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR1 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_6_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_5 : X_FF
    generic map(
      LOC => "SLICE_X103Y147",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_5_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_5_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(5),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT281 : X_LUT6
    generic map(
      LOC => "SLICE_X103Y147",
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_5_0,
      ADR1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_5_Q
    );
  GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4 : X_LUT6
    generic map(
      LOC => "SLICE_X103Y148",
      INIT => X"0000000008000000"
    )
    port map (
      ADR4 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_6_0,
      ADR5 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_9_0,
      ADR2 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_10_0,
      ADR3 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_11_0,
      ADR1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_12_0,
      ADR0 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_13_0,
      O => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895
    );
  GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3 : X_LUT6
    generic map(
      LOC => "SLICE_X103Y148",
      INIT => X"0000000002000000"
    )
    port map (
      ADR1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_0_0,
      ADR0 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_14_0,
      ADR2 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_15_0,
      ADR3 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_16_0,
      ADR5 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_17_0,
      ADR4 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_18_0,
      O => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896
    );
  GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_5 : X_LUT6
    generic map(
      LOC => "SLICE_X103Y148",
      INIT => X"0000300000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_1_0,
      ADR3 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_21_0,
      ADR2 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_22_0,
      ADR4 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_23_0,
      ADR5 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_24_0,
      O => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897
    );
  p_stimuli_generation_v_faci_gen_internal_counter_24 : X_FF
    generic map(
      LOC => "SLICE_X103Y148",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_24_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_24_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(24),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT171 : X_LUT6
    generic map(
      LOC => "SLICE_X103Y148",
      INIT => X"AAAAAAAA2AAAAAAA"
    )
    port map (
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_24_0,
      ADR5 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR1 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_24_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_19 : X_FF
    generic map(
      LOC => "SLICE_X101Y150",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_19_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_19_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(19),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT111 : X_LUT6
    generic map(
      LOC => "SLICE_X101Y150",
      INIT => X"AAAAAAAA2AAAAAAA"
    )
    port map (
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_19_0,
      ADR5 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR1 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_19_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_18 : X_FF
    generic map(
      LOC => "SLICE_X101Y150",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_18_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_18_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(18),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT101 : X_LUT6
    generic map(
      LOC => "SLICE_X101Y150",
      INIT => X"BF00FF00FF00FF00"
    )
    port map (
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_18_0,
      ADR0 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR1 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_18_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_17 : X_FF
    generic map(
      LOC => "SLICE_X101Y150",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_17_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_17_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(17),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT91 : X_LUT6
    generic map(
      LOC => "SLICE_X101Y150",
      INIT => X"F700FF00FF00FF00"
    )
    port map (
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_17_0,
      ADR2 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR0 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR1 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_17_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_16 : X_FF
    generic map(
      LOC => "SLICE_X101Y150",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_16_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_16_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(16),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X101Y150",
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_16_0,
      ADR1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_16_Q
    );
  GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_1 : X_LUT6
    generic map(
      LOC => "SLICE_X103Y149",
      INIT => X"0000010000000000"
    )
    port map (
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_1_0,
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_0_0,
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_15_0,
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_16_0,
      ADR5 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_14_0,
      ADR2 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_17_0,
      O => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_Q
    );
  GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_2 : X_LUT6
    generic map(
      LOC => "SLICE_X103Y149",
      INIT => X"0000000000000001"
    )
    port map (
      ADR5 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_20_0,
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_19_0,
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_21_0,
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_22_0,
      ADR2 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_23_0,
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_24_0,
      O => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_1_2911
    );
  GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_4 : X_LUT6
    generic map(
      LOC => "SLICE_X103Y149",
      INIT => X"0000000000020000"
    )
    port map (
      ADR2 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_3_0,
      ADR5 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_2_0,
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_4_0,
      ADR3 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_5_0,
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_6_0,
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_7_0,
      O => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_3_2912
    );
  w_facilitatory : X_FF
    generic map(
      LOC => "SLICE_X103Y149",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_w_facilitatory_CLK,
      I => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o,
      O => w_facilitatory_2553,
      RST => i_nreset_inv,
      SET => GND
    );
  GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_5 : X_LUT6
    generic map(
      LOC => "SLICE_X103Y149",
      INIT => X"1000000000000000"
    )
    port map (
      ADR2 => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_Q,
      ADR5 => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_1_2911,
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_18_0,
      ADR4 => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_2_2904,
      ADR3 => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o_31_3_2912,
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_25_0,
      O => GND_6_o_p_stimuli_generation_v_faci_gen_internal_counter_31_equal_9_o
    );
  N8_N8_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N20,
      O => N20_0
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X105Y147",
      INIT => X"5FAFF5FA5FAFF5FA"
    )
    port map (
      ADR1 => '1',
      ADR3 => tde_1_w_clkdiv_value_3_0,
      ADR0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_3_0,
      ADR4 => tde_1_w_clkdiv_value_4_0,
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_4_0,
      ADR5 => '1',
      O => N8
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X105Y147",
      INIT => X"FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR3 => tde_1_w_clkdiv_value_3_0,
      ADR2 => '1',
      ADR4 => tde_1_w_clkdiv_value_4_0,
      ADR1 => '1',
      O => N20
    );
  tde_1_r_trigger_latched : X_FF
    generic map(
      LOC => "SLICE_X105Y150",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_r_trigger_latched_CLK,
      I => NlwBufferSignal_tde_1_r_trigger_latched_IN,
      O => tde_1_r_trigger_latched_2564,
      RST => GND,
      SET => GND
    );
  p_countdown_v_tr_tick_counter_5_p_countdown_v_tr_tick_counter_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N22,
      O => N22_0
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_2_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X107Y147",
      INIT => X"5FAFF5FA5FAFF5FA"
    )
    port map (
      ADR1 => '1',
      ADR3 => tde_1_w_clkdiv_value_6_0,
      ADR0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_6_0,
      ADR2 => tde_1_w_clkdiv_value_7_0,
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_7_0,
      ADR5 => '1',
      O => N11
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X107Y147",
      INIT => X"FFF0FFF0"
    )
    port map (
      ADR0 => '1',
      ADR3 => tde_1_w_clkdiv_value_6_0,
      ADR1 => '1',
      ADR2 => tde_1_w_clkdiv_value_7_0,
      ADR4 => '1',
      O => N22
    );
  p_countdown_v_tr_tick_counter_5 : X_FF
    generic map(
      LOC => "SLICE_X107Y147",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_countdown_v_tr_tick_counter_5_CLK,
      I => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_5_Q,
      O => p_countdown_v_tr_tick_counter(5),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X107Y147",
      INIT => X"7FFDFFFF80000000"
    )
    port map (
      ADR0 => p_countdown_v_tr_tick_counter(0),
      ADR4 => p_countdown_v_tr_tick_counter(4),
      ADR2 => p_countdown_v_tr_tick_counter(2),
      ADR5 => p_countdown_v_tr_tick_counter(5),
      ADR1 => p_countdown_v_tr_tick_counter(3),
      ADR3 => p_countdown_v_tr_tick_counter(1),
      O => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_5_Q
    );
  N14_N14_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N24,
      O => N24_0
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X107Y148",
      INIT => X"3FCFF3FC3FCFF3FC"
    )
    port map (
      ADR0 => '1',
      ADR4 => tde_1_w_clkdiv_value_9_0,
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_9_0,
      ADR3 => tde_1_w_clkdiv_value_10_0,
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_10_0,
      ADR5 => '1',
      O => N14
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW2 : X_LUT5
    generic map(
      LOC => "SLICE_X107Y148",
      INIT => X"FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR4 => tde_1_w_clkdiv_value_9_0,
      ADR2 => '1',
      ADR3 => tde_1_w_clkdiv_value_10_0,
      ADR1 => '1',
      O => N24
    );
  p_stimuli_generation_v_faci_gen_internal_counter_4 : X_FF
    generic map(
      LOC => "SLICE_X103Y146",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_4_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_4_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(4),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT271 : X_LUT6
    generic map(
      LOC => "SLICE_X103Y146",
      INIT => X"AAAA2AAAAAAAAAAA"
    )
    port map (
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_4_0,
      ADR4 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR1 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_4_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_3 : X_FF
    generic map(
      LOC => "SLICE_X103Y146",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_3_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_3_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(3),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT261 : X_LUT6
    generic map(
      LOC => "SLICE_X103Y146",
      INIT => X"C4CCCCCCCCCCCCCC"
    )
    port map (
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_3_0,
      ADR2 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR0 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_3_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_2 : X_FF
    generic map(
      LOC => "SLICE_X103Y146",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_2_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_2_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(2),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT231 : X_LUT6
    generic map(
      LOC => "SLICE_X103Y146",
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_2_0,
      ADR1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_2_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_1 : X_FF
    generic map(
      LOC => "SLICE_X103Y146",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_1_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_1_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(1),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT121 : X_LUT6
    generic map(
      LOC => "SLICE_X103Y146",
      INIT => X"C4CCCCCCCCCCCCCC"
    )
    port map (
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_1_0,
      ADR2 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR0 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_1_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_23 : X_FF
    generic map(
      LOC => "SLICE_X101Y151",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_23_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_23_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(23),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT161 : X_LUT6
    generic map(
      LOC => "SLICE_X101Y151",
      INIT => X"DFFF0000FFFF0000"
    )
    port map (
      ADR4 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_23_0,
      ADR1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR0 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_23_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_22 : X_FF
    generic map(
      LOC => "SLICE_X101Y151",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_22_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_22_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(22),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT151 : X_LUT6
    generic map(
      LOC => "SLICE_X101Y151",
      INIT => X"8CCCCCCCCCCCCCCC"
    )
    port map (
      ADR1 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_22_0,
      ADR0 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_22_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_21 : X_FF
    generic map(
      LOC => "SLICE_X101Y151",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_21_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_21_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(21),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT141 : X_LUT6
    generic map(
      LOC => "SLICE_X101Y151",
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_21_0,
      ADR1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_21_Q
    );
  p_stimuli_generation_v_faci_gen_internal_counter_20 : X_FF
    generic map(
      LOC => "SLICE_X101Y151",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_20_CLK,
      I => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_20_Q,
      O => p_stimuli_generation_v_faci_gen_internal_counter(20),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT131 : X_LUT6
    generic map(
      LOC => "SLICE_X101Y151",
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_add_5_OUT_20_0,
      ADR1 => p_stimuli_generation_v_idle_internal_counter_31_GND_6_o_add_7_OUT_25_0,
      ADR2 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_3_2895,
      ADR3 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_2_2896,
      ADR4 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_4_2897,
      ADR5 => GND_6_o_p_stimuli_generation_v_idle_internal_counter_31_equal_11_o_31_1_2898,
      O => p_stimuli_generation_v_faci_gen_internal_counter_31_GND_6_o_mux_11_OUT_20_Q
    );
  tde_1_reg_1_o_data_out_5_tde_1_reg_1_o_data_out_5_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_clkdiv_value(5),
      O => tde_1_w_clkdiv_value_5_0
    );
  tde_1_reg_1_o_data_out_5_tde_1_reg_1_o_data_out_5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_clkdiv_value(4),
      O => tde_1_w_clkdiv_value_4_0
    );
  tde_1_reg_1_o_data_out_5_tde_1_reg_1_o_data_out_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_clkdiv_value(3),
      O => tde_1_w_clkdiv_value_3_0
    );
  tde_1_reg_1_o_data_out_5_tde_1_reg_1_o_data_out_5_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_clkdiv_value(2),
      O => tde_1_w_clkdiv_value_2_0
    );
  tde_1_reg_1_o_data_out_5 : X_FF
    generic map(
      LOC => "SLICE_X108Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_reg_1_o_data_out_5_CLK,
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter_3_rt_2207,
      O => tde_1_reg_1_o_data_out(5),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_sub_0_Msub_o_output_data_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X108Y148",
      INIT => X"CCCC3333CCCC3333"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => tde_1_reg_1_o_data_out(5),
      ADR1 => tde_1_w_sgen_clkdiv_current_value(5),
      ADR5 => '1',
      O => tde_1_sub_0_Msub_o_output_data_lut(5)
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X108Y148",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(3),
      ADR3 => '1',
      ADR4 => '1',
      O => tde_1_timer_1_basic_timer_1_p_countdown_v_counter_3_rt_2207
    );
  ProtoComp88_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X108Y148"
    )
    port map (
      O => ProtoComp88_CYINITVCC_1
    );
  tde_1_reg_1_o_data_out_4 : X_FF
    generic map(
      LOC => "SLICE_X108Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_reg_1_o_data_out_4_CLK,
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter_2_rt_2198,
      O => tde_1_reg_1_o_data_out(4),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_sub_0_Msub_o_output_data_cy_5_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X108Y148"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp88_CYINITVCC_1,
      CO(3) => tde_1_sub_0_Msub_o_output_data_cy_5_Q_2876,
      CO(2) => NLW_tde_1_sub_0_Msub_o_output_data_cy_5_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_sub_0_Msub_o_output_data_cy_5_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_sub_0_Msub_o_output_data_cy_5_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_5_DI_3_Q,
      DI(2) => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_5_DI_2_Q,
      DI(1) => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_5_DI_1_Q,
      DI(0) => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_5_DI_0_Q,
      O(3) => tde_1_w_clkdiv_value(5),
      O(2) => tde_1_w_clkdiv_value(4),
      O(1) => tde_1_w_clkdiv_value(3),
      O(0) => tde_1_w_clkdiv_value(2),
      S(3) => tde_1_sub_0_Msub_o_output_data_lut(5),
      S(2) => tde_1_sub_0_Msub_o_output_data_lut(4),
      S(1) => tde_1_sub_0_Msub_o_output_data_lut(3),
      S(0) => tde_1_sub_0_Msub_o_output_data_lut(2)
    );
  tde_1_sub_0_Msub_o_output_data_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X108Y148",
      INIT => X"F0F00F0FF0F00F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => tde_1_reg_1_o_data_out(4),
      ADR4 => tde_1_w_sgen_clkdiv_current_value(4),
      ADR5 => '1',
      O => tde_1_sub_0_Msub_o_output_data_lut(4)
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X108Y148",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(2),
      ADR2 => '1',
      ADR4 => '1',
      O => tde_1_timer_1_basic_timer_1_p_countdown_v_counter_2_rt_2198
    );
  tde_1_reg_1_o_data_out_3 : X_FF
    generic map(
      LOC => "SLICE_X108Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_reg_1_o_data_out_3_CLK,
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter_1_rt_2220,
      O => tde_1_reg_1_o_data_out(3),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_sub_0_Msub_o_output_data_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X108Y148",
      INIT => X"F0F00F0FF0F00F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => tde_1_reg_1_o_data_out(3),
      ADR4 => tde_1_w_sgen_clkdiv_current_value(3),
      ADR5 => '1',
      O => tde_1_sub_0_Msub_o_output_data_lut(3)
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X108Y148",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(1),
      ADR2 => '1',
      ADR4 => '1',
      O => tde_1_timer_1_basic_timer_1_p_countdown_v_counter_1_rt_2220
    );
  tde_1_reg_1_o_data_out_2 : X_FF
    generic map(
      LOC => "SLICE_X108Y148",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_reg_1_o_data_out_2_CLK,
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter_0_rt_2219,
      O => tde_1_reg_1_o_data_out(2),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_sub_0_Msub_o_output_data_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X108Y148",
      INIT => X"CCCC3333CCCC3333"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => tde_1_reg_1_o_data_out(2),
      ADR1 => tde_1_w_sgen_clkdiv_current_value(2),
      ADR5 => '1',
      O => tde_1_sub_0_Msub_o_output_data_lut(2)
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X108Y148",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(0),
      ADR3 => '1',
      ADR4 => '1',
      O => tde_1_timer_1_basic_timer_1_p_countdown_v_counter_0_rt_2219
    );
  tde_1_timer_1_basic_timer_1_n0024_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X108Y147",
      INIT => X"FFFFFFFAFFFFFFFA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(0),
      ADR4 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(1),
      ADR2 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(8),
      ADR0 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(9),
      O => tde_1_timer_1_basic_timer_1_n0024_inv1_2913
    );
  w_tr_tick : X_FF
    generic map(
      LOC => "SLICE_X108Y147",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_w_tr_tick_CLK,
      I => PWR_6_o_p_countdown_v_tr_tick_counter_5_equal_3_o,
      O => w_tr_tick_2552,
      RST => i_nreset_inv,
      SET => GND
    );
  PWR_6_o_p_countdown_v_tr_tick_counter_5_equal_3_o_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X108Y147",
      INIT => X"0002000000000000"
    )
    port map (
      ADR5 => p_countdown_v_tr_tick_counter(5),
      ADR4 => p_countdown_v_tr_tick_counter(4),
      ADR2 => p_countdown_v_tr_tick_counter(3),
      ADR1 => p_countdown_v_tr_tick_counter(2),
      ADR3 => p_countdown_v_tr_tick_counter(1),
      ADR0 => p_countdown_v_tr_tick_counter(0),
      O => PWR_6_o_p_countdown_v_tr_tick_counter_5_equal_3_o
    );
  tde_1_timer_1_basic_timer_1_n0024_inv2 : X_LUT6
    generic map(
      LOC => "SLICE_X108Y147",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR0 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(6),
      ADR1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(7),
      ADR4 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(4),
      ADR5 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(5),
      ADR3 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(2),
      ADR2 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(3),
      O => tde_1_timer_1_basic_timer_1_n0024_inv2_2914
    );
  tde_1_timer_1_basic_timer_1_n0024_inv3 : X_LUT6
    generic map(
      LOC => "SLICE_X108Y147",
      INIT => X"FFFFFFFFFF00F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => w_tr_tick_2552,
      ADR2 => tde_1_timer_1_basic_timer_1_n0024_inv1_2913,
      ADR4 => tde_1_timer_1_basic_timer_1_n0024_inv2_2914,
      ADR5 => w_trigger_2847,
      O => tde_1_timer_1_basic_timer_1_n0024_inv
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X108Y153",
      INIT => X"000000FF000000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_23_0,
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_22_0,
      O => N30
    );
  p_countdown_v_tr_tick_counter_4_p_countdown_v_tr_tick_counter_4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => p_countdown_v_tr_tick_counter_3_pack_14,
      O => p_countdown_v_tr_tick_counter(3)
    );
  p_countdown_v_tr_tick_counter_4 : X_FF
    generic map(
      LOC => "SLICE_X109Y147",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_countdown_v_tr_tick_counter_4_CLK,
      I => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_4_Q,
      O => p_countdown_v_tr_tick_counter(4),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X109Y147",
      INIT => X"7FFB80007FFF8000"
    )
    port map (
      ADR0 => p_countdown_v_tr_tick_counter(2),
      ADR2 => p_countdown_v_tr_tick_counter(3),
      ADR5 => p_countdown_v_tr_tick_counter(5),
      ADR4 => p_countdown_v_tr_tick_counter(4),
      ADR1 => p_countdown_v_tr_tick_counter(0),
      ADR3 => p_countdown_v_tr_tick_counter(1),
      O => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_4_Q
    );
  p_countdown_v_tr_tick_counter_2 : X_FF
    generic map(
      LOC => "SLICE_X109Y147",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_countdown_v_tr_tick_counter_2_CLK,
      I => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_2_Q,
      O => p_countdown_v_tr_tick_counter(2),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X109Y147",
      INIT => X"5F5FA0A05F5FA0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => p_countdown_v_tr_tick_counter(0),
      ADR4 => p_countdown_v_tr_tick_counter(2),
      ADR0 => p_countdown_v_tr_tick_counter(1),
      ADR5 => '1',
      O => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_2_Q
    );
  Mmux_p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT41 : X_LUT5
    generic map(
      LOC => "SLICE_X109Y147",
      INIT => X"6C6CCCCC"
    )
    port map (
      ADR3 => '1',
      ADR1 => p_countdown_v_tr_tick_counter(3),
      ADR2 => p_countdown_v_tr_tick_counter(0),
      ADR4 => p_countdown_v_tr_tick_counter(2),
      ADR0 => p_countdown_v_tr_tick_counter(1),
      O => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_3_Q
    );
  p_countdown_v_tr_tick_counter_3 : X_FF
    generic map(
      LOC => "SLICE_X109Y147",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_countdown_v_tr_tick_counter_3_CLK,
      I => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_3_Q,
      O => p_countdown_v_tr_tick_counter_3_pack_14,
      RST => i_nreset_inv,
      SET => GND
    );
  p_countdown_v_tr_tick_counter_1 : X_FF
    generic map(
      LOC => "SLICE_X109Y147",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_countdown_v_tr_tick_counter_1_CLK,
      I => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_1_Q,
      O => p_countdown_v_tr_tick_counter(1),
      RST => i_nreset_inv,
      SET => GND
    );
  Mmux_p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X109Y147",
      INIT => X"5555AAAA55558AAA"
    )
    port map (
      ADR0 => p_countdown_v_tr_tick_counter(0),
      ADR1 => p_countdown_v_tr_tick_counter(2),
      ADR5 => p_countdown_v_tr_tick_counter(3),
      ADR4 => p_countdown_v_tr_tick_counter(1),
      ADR2 => p_countdown_v_tr_tick_counter(4),
      ADR3 => p_countdown_v_tr_tick_counter(5),
      O => p_countdown_v_tr_tick_counter_5_GND_6_o_mux_3_OUT_1_Q
    );
  p_countdown_v_tr_tick_counter_0 : X_FF
    generic map(
      LOC => "SLICE_X109Y147",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_p_countdown_v_tr_tick_counter_0_CLK,
      I => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_Q,
      O => p_countdown_v_tr_tick_counter(0),
      RST => i_nreset_inv,
      SET => GND
    );
  Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X109Y147",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => p_countdown_v_tr_tick_counter(0),
      ADR4 => '1',
      ADR3 => '1',
      O => Madd_p_stimuli_generation_v_trig_gen_internal_counter_31_GND_6_o_add_6_OUT_lut_0_Q
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_6_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X107Y153",
      INIT => X"FFFFFFFFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_21_0,
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_20_0,
      O => N2
    );
  tde_1_reg_1_o_data_out_11_tde_1_reg_1_o_data_out_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_clkdiv_value(13),
      O => tde_1_w_clkdiv_value_13_0
    );
  tde_1_reg_1_o_data_out_11_tde_1_reg_1_o_data_out_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_clkdiv_value(12),
      O => tde_1_w_clkdiv_value_12_0
    );
  tde_1_reg_1_o_data_out_11_tde_1_reg_1_o_data_out_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_clkdiv_value(11),
      O => tde_1_w_clkdiv_value_11_0
    );
  tde_1_reg_1_o_data_out_11_tde_1_reg_1_o_data_out_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_clkdiv_value(10),
      O => tde_1_w_clkdiv_value_10_0
    );
  tde_1_reg_1_o_data_out_11 : X_FF
    generic map(
      LOC => "SLICE_X108Y150",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_reg_1_o_data_out_11_CLK,
      I => NlwBufferSignal_tde_1_reg_1_o_data_out_11_IN,
      O => tde_1_reg_1_o_data_out(11),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_7_D6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X108Y150",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_7_D6LUT_O_UNCONNECTED
    );
  tde_1_reg_1_o_data_out_10 : X_FF
    generic map(
      LOC => "SLICE_X108Y150",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_reg_1_o_data_out_10_CLK,
      I => NlwBufferSignal_tde_1_reg_1_o_data_out_10_IN,
      O => tde_1_reg_1_o_data_out(10),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_sub_0_Msub_o_output_data_cy_13_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X108Y150"
    )
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy_9_Q_2881,
      CYINIT => '0',
      CO(3) => tde_1_sub_0_Msub_o_output_data_cy_13_Q_2885,
      CO(2) => NLW_tde_1_sub_0_Msub_o_output_data_cy_13_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_sub_0_Msub_o_output_data_cy_13_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_sub_0_Msub_o_output_data_cy_13_CO_0_UNCONNECTED,
      DI(3) => NLW_tde_1_sub_0_Msub_o_output_data_cy_13_DI_3_UNCONNECTED,
      DI(2) => NLW_tde_1_sub_0_Msub_o_output_data_cy_13_DI_2_UNCONNECTED,
      DI(1) => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_13_DI_1_Q,
      DI(0) => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_13_DI_0_Q,
      O(3) => tde_1_w_clkdiv_value(13),
      O(2) => tde_1_w_clkdiv_value(12),
      O(1) => tde_1_w_clkdiv_value(11),
      O(0) => tde_1_w_clkdiv_value(10),
      S(3) => '1',
      S(2) => '1',
      S(1) => tde_1_sub_0_Msub_o_output_data_lut(11),
      S(0) => tde_1_sub_0_Msub_o_output_data_lut(10)
    );
  tde_1_sub_0_Msub_o_output_data_lut_12_9_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X108Y150",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_tde_1_sub_0_Msub_o_output_data_lut_12_9_C6LUT_O_UNCONNECTED
    );
  tde_1_sub_0_Msub_o_output_data_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X108Y150",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => tde_1_reg_1_o_data_out(11),
      ADR5 => tde_1_w_sgen_clkdiv_current_value(11),
      O => tde_1_sub_0_Msub_o_output_data_lut(11)
    );
  tde_1_sub_0_Msub_o_output_data_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X108Y150",
      INIT => X"FF00FF0000FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => tde_1_reg_1_o_data_out(10),
      ADR5 => tde_1_w_sgen_clkdiv_current_value(10),
      O => tde_1_sub_0_Msub_o_output_data_lut(10)
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW6 : X_LUT6
    generic map(
      LOC => "SLICE_X107Y155",
      INIT => X"0505050505050505"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_29_0,
      ADR0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_28_0,
      O => N32
    );
  tde_1_spike_generator_0_GND_20_o_i_write_OR_47_o1_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X107Y152",
      INIT => X"0000000033333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_18_0,
      ADR1 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_17_0,
      O => N28
    );
  tde_1_w_sgen_clkdiv_current_value_9_tde_1_w_sgen_clkdiv_current_value_9_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_clkdiv_value(9),
      O => tde_1_w_clkdiv_value_9_0
    );
  tde_1_w_sgen_clkdiv_current_value_9_tde_1_w_sgen_clkdiv_current_value_9_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_clkdiv_value(8),
      O => tde_1_w_clkdiv_value_8_0
    );
  tde_1_w_sgen_clkdiv_current_value_9_tde_1_w_sgen_clkdiv_current_value_9_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_clkdiv_value(7),
      O => tde_1_w_clkdiv_value_7_0
    );
  tde_1_w_sgen_clkdiv_current_value_9_tde_1_w_sgen_clkdiv_current_value_9_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_w_clkdiv_value(6),
      O => tde_1_w_clkdiv_value_6_0
    );
  tde_1_w_sgen_clkdiv_current_value_9 : X_FF
    generic map(
      LOC => "SLICE_X108Y149",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_9_CLK,
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter_7_rt_2240,
      O => tde_1_w_sgen_clkdiv_current_value(9),
      RST => GND,
      SET => GND
    );
  tde_1_sub_0_Msub_o_output_data_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X108Y149",
      INIT => X"CCCC3333CCCC3333"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => tde_1_w_sgen_clkdiv_current_value(9),
      ADR1 => tde_1_reg_1_o_data_out(9),
      ADR5 => '1',
      O => tde_1_sub_0_Msub_o_output_data_lut(9)
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X108Y149",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(7),
      ADR3 => '1',
      ADR4 => '1',
      O => tde_1_timer_1_basic_timer_1_p_countdown_v_counter_7_rt_2240
    );
  tde_1_w_sgen_clkdiv_current_value_8 : X_FF
    generic map(
      LOC => "SLICE_X108Y149",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_8_CLK,
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter_6_rt_2248,
      O => tde_1_w_sgen_clkdiv_current_value(8),
      RST => GND,
      SET => GND
    );
  tde_1_sub_0_Msub_o_output_data_cy_9_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X108Y149"
    )
    port map (
      CI => tde_1_sub_0_Msub_o_output_data_cy_5_Q_2876,
      CYINIT => '0',
      CO(3) => tde_1_sub_0_Msub_o_output_data_cy_9_Q_2881,
      CO(2) => NLW_tde_1_sub_0_Msub_o_output_data_cy_9_CO_2_UNCONNECTED,
      CO(1) => NLW_tde_1_sub_0_Msub_o_output_data_cy_9_CO_1_UNCONNECTED,
      CO(0) => NLW_tde_1_sub_0_Msub_o_output_data_cy_9_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_9_DI_3_Q,
      DI(2) => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_9_DI_2_Q,
      DI(1) => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_9_DI_1_Q,
      DI(0) => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_9_DI_0_Q,
      O(3) => tde_1_w_clkdiv_value(9),
      O(2) => tde_1_w_clkdiv_value(8),
      O(1) => tde_1_w_clkdiv_value(7),
      O(0) => tde_1_w_clkdiv_value(6),
      S(3) => tde_1_sub_0_Msub_o_output_data_lut(9),
      S(2) => tde_1_sub_0_Msub_o_output_data_lut(8),
      S(1) => tde_1_sub_0_Msub_o_output_data_lut(7),
      S(0) => tde_1_sub_0_Msub_o_output_data_lut(6)
    );
  tde_1_sub_0_Msub_o_output_data_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X108Y149",
      INIT => X"F0F00F0FF0F00F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => tde_1_w_sgen_clkdiv_current_value(8),
      ADR4 => tde_1_reg_1_o_data_out(8),
      ADR5 => '1',
      O => tde_1_sub_0_Msub_o_output_data_lut(8)
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X108Y149",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(6),
      ADR2 => '1',
      ADR4 => '1',
      O => tde_1_timer_1_basic_timer_1_p_countdown_v_counter_6_rt_2248
    );
  tde_1_w_sgen_clkdiv_current_value_7 : X_FF
    generic map(
      LOC => "SLICE_X108Y149",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_7_CLK,
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter_5_rt_2255,
      O => tde_1_w_sgen_clkdiv_current_value(7),
      RST => GND,
      SET => GND
    );
  tde_1_sub_0_Msub_o_output_data_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X108Y149",
      INIT => X"F0F00F0FF0F00F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => tde_1_w_sgen_clkdiv_current_value(7),
      ADR4 => tde_1_reg_1_o_data_out(7),
      ADR5 => '1',
      O => tde_1_sub_0_Msub_o_output_data_lut(7)
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X108Y149",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(5),
      ADR2 => '1',
      ADR4 => '1',
      O => tde_1_timer_1_basic_timer_1_p_countdown_v_counter_5_rt_2255
    );
  tde_1_w_sgen_clkdiv_current_value_6 : X_FF
    generic map(
      LOC => "SLICE_X108Y149",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_6_CLK,
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter_4_rt_2259,
      O => tde_1_w_sgen_clkdiv_current_value(6),
      RST => GND,
      SET => GND
    );
  tde_1_sub_0_Msub_o_output_data_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X108Y149",
      INIT => X"CCCC3333CCCC3333"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => tde_1_w_sgen_clkdiv_current_value(6),
      ADR1 => tde_1_reg_1_o_data_out(6),
      ADR5 => '1',
      O => tde_1_sub_0_Msub_o_output_data_lut(6)
    );
  tde_1_timer_1_basic_timer_1_p_countdown_v_counter_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X108Y149",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(4),
      ADR3 => '1',
      ADR4 => '1',
      O => tde_1_timer_1_basic_timer_1_p_countdown_v_counter_4_rt_2259
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X107Y154",
      INIT => X"FFFFAAAAFFFFAAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_27_0,
      ADR0 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_26_0,
      O => N4
    );
  tde_1_spike_generator_0_Mcompar_GND_20_o_p_clock_divider_v_tick_counter_31_equal_4_o_lut_5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X107Y151",
      INIT => X"FFFFFFFF0FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_16_0,
      ADR3 => tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_GND_20_o_add_1_OUT_15_0,
      ADR2 => tde_1_w_clkdiv_value_15_0,
      O => N6
    );
  tde_1_spike_generator_0_i_write_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X113Y146",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => tde_1_r_trigger_latched_2564,
      O => tde_1_spike_generator_0_i_write_inv
    );
  tde_1_w_sgen_clkdiv_current_value_11 : X_FF
    generic map(
      LOC => "SLICE_X109Y150",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_11_CLK,
      I => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_11_IN,
      O => tde_1_w_sgen_clkdiv_current_value(11),
      RST => GND,
      SET => GND
    );
  tde_1_w_sgen_clkdiv_current_value_10 : X_FF
    generic map(
      LOC => "SLICE_X109Y150",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_10_CLK,
      I => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_10_IN,
      O => tde_1_w_sgen_clkdiv_current_value(10),
      RST => GND,
      SET => GND
    );
  tde_1_reg_0_o_data_out_12_tde_1_reg_0_o_data_out_12_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_reg_0_o_data_out(11),
      O => tde_1_reg_0_o_data_out_11_0
    );
  tde_1_reg_0_o_data_out_12_tde_1_reg_0_o_data_out_12_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_reg_0_o_data_out(8),
      O => tde_1_reg_0_o_data_out_8_0
    );
  tde_1_reg_0_o_data_out_12_tde_1_reg_0_o_data_out_12_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_reg_0_o_data_out(6),
      O => tde_1_reg_0_o_data_out_6_0
    );
  tde_1_reg_0_o_data_out_12_tde_1_reg_0_o_data_out_12_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_reg_0_o_data_out(4),
      O => tde_1_reg_0_o_data_out_4_0
    );
  tde_1_reg_0_o_data_out_12 : X_FF
    generic map(
      LOC => "SLICE_X119Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_reg_0_n0011_inv,
      CLK => NlwBufferSignal_tde_1_reg_0_o_data_out_12_CLK,
      I => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_12_Q,
      O => tde_1_reg_0_o_data_out(12),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X119Y149",
      INIT => X"0000AAAA0000AAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => tde_1_w_sgen_val2gen_clear,
      ADR0 => tde_1_w_value_to_generate_12_0,
      ADR5 => '1',
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_12_Q
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X119Y149",
      INIT => X"0000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => tde_1_w_value_to_generate_11_0,
      ADR4 => tde_1_w_sgen_val2gen_clear,
      ADR2 => '1',
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_11_Q
    );
  tde_1_reg_0_o_data_out_11 : X_FF
    generic map(
      LOC => "SLICE_X119Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_reg_0_n0011_inv,
      CLK => NlwBufferSignal_tde_1_reg_0_o_data_out_11_CLK,
      I => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_11_Q,
      O => tde_1_reg_0_o_data_out(11),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_reg_0_o_data_out_9 : X_FF
    generic map(
      LOC => "SLICE_X119Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_reg_0_n0011_inv,
      CLK => NlwBufferSignal_tde_1_reg_0_o_data_out_9_CLK,
      I => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_9_Q,
      O => tde_1_reg_0_o_data_out(9),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT161 : X_LUT6
    generic map(
      LOC => "SLICE_X119Y149",
      INIT => X"2222222222222222"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => tde_1_w_sgen_val2gen_clear,
      ADR0 => tde_1_w_value_to_generate_9_0,
      ADR5 => '1',
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_9_Q
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT151 : X_LUT5
    generic map(
      LOC => "SLICE_X119Y149",
      INIT => X"33330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => tde_1_w_value_to_generate_8_0,
      ADR1 => tde_1_w_sgen_val2gen_clear,
      ADR2 => '1',
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_8_Q
    );
  tde_1_reg_0_o_data_out_8 : X_FF
    generic map(
      LOC => "SLICE_X119Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_reg_0_n0011_inv,
      CLK => NlwBufferSignal_tde_1_reg_0_o_data_out_8_CLK,
      I => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_8_Q,
      O => tde_1_reg_0_o_data_out(8),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_reg_0_o_data_out_7 : X_FF
    generic map(
      LOC => "SLICE_X119Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_reg_0_n0011_inv,
      CLK => NlwBufferSignal_tde_1_reg_0_o_data_out_7_CLK,
      I => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_7_Q,
      O => tde_1_reg_0_o_data_out(7),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT141 : X_LUT6
    generic map(
      LOC => "SLICE_X119Y149",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => tde_1_w_sgen_val2gen_clear,
      ADR4 => tde_1_w_value_to_generate_7_0,
      ADR5 => '1',
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_7_Q
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT131 : X_LUT5
    generic map(
      LOC => "SLICE_X119Y149",
      INIT => X"00F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => tde_1_w_value_to_generate_6_0,
      ADR3 => tde_1_w_sgen_val2gen_clear,
      ADR4 => '1',
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_6_Q
    );
  tde_1_reg_0_o_data_out_6 : X_FF
    generic map(
      LOC => "SLICE_X119Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_reg_0_n0011_inv,
      CLK => NlwBufferSignal_tde_1_reg_0_o_data_out_6_CLK,
      I => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_6_Q,
      O => tde_1_reg_0_o_data_out(6),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_reg_0_o_data_out_5 : X_FF
    generic map(
      LOC => "SLICE_X119Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_reg_0_n0011_inv,
      CLK => NlwBufferSignal_tde_1_reg_0_o_data_out_5_CLK,
      I => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_5_Q,
      O => tde_1_reg_0_o_data_out(5),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT121 : X_LUT6
    generic map(
      LOC => "SLICE_X119Y149",
      INIT => X"00F000F000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => tde_1_w_sgen_val2gen_clear,
      ADR2 => tde_1_w_value_to_generate_5_0,
      ADR5 => '1',
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_5_Q
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT111 : X_LUT5
    generic map(
      LOC => "SLICE_X119Y149",
      INIT => X"00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => tde_1_w_value_to_generate_4_0,
      ADR3 => tde_1_w_sgen_val2gen_clear,
      ADR4 => '1',
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_4_Q
    );
  tde_1_reg_0_o_data_out_4 : X_FF
    generic map(
      LOC => "SLICE_X119Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_reg_0_n0011_inv,
      CLK => NlwBufferSignal_tde_1_reg_0_o_data_out_4_CLK,
      I => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_4_Q,
      O => tde_1_reg_0_o_data_out(4),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_spike_generator_0_Mmux_o_spike_out12 : X_LUT6
    generic map(
      LOC => "SLICE_X117Y149",
      INIT => X"AAAAAAAAAAAAAAA8"
    )
    port map (
      ADR0 => tde_1_spike_generator_0_w_tick_2728,
      ADR3 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(1),
      ADR2 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(0),
      ADR5 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(3),
      ADR4 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(2),
      ADR1 => tde_1_spike_generator_0_Mmux_o_spike_out1,
      O => tde_1_spike_generator_0_Mmux_o_spike_out11_2930
    );
  tde_1_spike_generator_0_Mmux_o_spike_out13 : X_LUT6
    generic map(
      LOC => "SLICE_X117Y149",
      INIT => X"0A8E8EAF00000000"
    )
    port map (
      ADR5 => tde_1_spike_generator_0_Mmux_o_spike_out11_2930,
      ADR1 => tde_1_spike_generator_0_r_value_to_generate(14),
      ADR0 => tde_1_spike_generator_0_r_value_to_generate(15),
      ADR4 => tde_1_spike_generator_0_w_mult_result(14),
      ADR3 => tde_1_spike_generator_0_Mcompar_w_generate_cy_6_0,
      ADR2 => tde_1_spike_generator_0_w_mult_result(15),
      O => o_output_spike_OBUF_2890
    );
  tde_1_spike_generator_0_Mmux_o_spike_out11 : X_LUT6
    generic map(
      LOC => "SLICE_X117Y149",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR0 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(5),
      ADR1 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(4),
      ADR4 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(7),
      ADR3 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(6),
      ADR2 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(9),
      ADR5 => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(8),
      O => tde_1_spike_generator_0_Mmux_o_spike_out1
    );
  tde_1_timer_0_basic_timer_control_1_w_timeout_15_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X117Y149",
      INIT => X"FFFFFFFFFFFEFFFE"
    )
    port map (
      ADR4 => '1',
      ADR3 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      ADR1 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
      ADR5 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
      ADR2 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
      ADR0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
      O => N0
    );
  tde_1_w_sgen_clkdiv_current_value_5 : X_FF
    generic map(
      LOC => "SLICE_X109Y148",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_5_CLK,
      I => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_5_IN,
      O => tde_1_w_sgen_clkdiv_current_value(5),
      RST => GND,
      SET => GND
    );
  tde_1_w_sgen_clkdiv_current_value_4 : X_FF
    generic map(
      LOC => "SLICE_X109Y148",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_4_CLK,
      I => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_4_IN,
      O => tde_1_w_sgen_clkdiv_current_value(4),
      RST => GND,
      SET => GND
    );
  tde_1_w_sgen_clkdiv_current_value_3 : X_FF
    generic map(
      LOC => "SLICE_X109Y148",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_3_CLK,
      I => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_3_IN,
      O => tde_1_w_sgen_clkdiv_current_value(3),
      RST => GND,
      SET => GND
    );
  tde_1_w_sgen_clkdiv_current_value_2 : X_FF
    generic map(
      LOC => "SLICE_X109Y148",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_2_CLK,
      I => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_2_IN,
      O => tde_1_w_sgen_clkdiv_current_value(2),
      RST => GND,
      SET => GND
    );
  tde_1_reg_1_o_data_out_9 : X_FF
    generic map(
      LOC => "SLICE_X109Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_reg_1_o_data_out_9_CLK,
      I => NlwBufferSignal_tde_1_reg_1_o_data_out_9_IN,
      O => tde_1_reg_1_o_data_out(9),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_reg_1_o_data_out_8 : X_FF
    generic map(
      LOC => "SLICE_X109Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_reg_1_o_data_out_8_CLK,
      I => NlwBufferSignal_tde_1_reg_1_o_data_out_8_IN,
      O => tde_1_reg_1_o_data_out(8),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_reg_1_o_data_out_7 : X_FF
    generic map(
      LOC => "SLICE_X109Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_reg_1_o_data_out_7_CLK,
      I => NlwBufferSignal_tde_1_reg_1_o_data_out_7_IN,
      O => tde_1_reg_1_o_data_out(7),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_reg_1_o_data_out_6 : X_FF
    generic map(
      LOC => "SLICE_X109Y149",
      INIT => '0'
    )
    port map (
      CE => tde_1_r_trigger_latched_2564,
      CLK => NlwBufferSignal_tde_1_reg_1_o_data_out_6_CLK,
      I => NlwBufferSignal_tde_1_reg_1_o_data_out_6_IN,
      O => tde_1_reg_1_o_data_out(6),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o22 : X_LUT6
    generic map(
      LOC => "SLICE_X111Y149",
      INIT => X"000000000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_0,
      ADR4 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_0,
      O => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21_2925
    );
  tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21 : X_LUT6
    generic map(
      LOC => "SLICE_X111Y149",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_0_0,
      ADR2 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_1_0,
      ADR0 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_0,
      ADR4 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_0,
      ADR3 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_0,
      ADR5 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_0,
      O => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o2
    );
  tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o23 : X_LUT6
    generic map(
      LOC => "SLICE_X111Y149",
      INIT => X"7777577757775777"
    )
    port map (
      ADR0 => w_trigger_2847,
      ADR2 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_0,
      ADR3 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_0,
      ADR1 => tde_1_timer_1_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_0,
      ADR5 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21_2925,
      ADR4 => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o2,
      O => tde_1_timer_1_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o
    );
  tde_1_reg_0_o_data_out_15_tde_1_reg_0_o_data_out_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_reg_0_o_data_out(10),
      O => tde_1_reg_0_o_data_out_10_0
    );
  tde_1_reg_0_o_data_out_15_tde_1_reg_0_o_data_out_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_n0024_inv,
      O => tde_1_timer_0_basic_timer_1_n0024_inv_0
    );
  tde_1_reg_0_o_data_out_15_tde_1_reg_0_o_data_out_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_reg_0_o_data_out(13),
      O => tde_1_reg_0_o_data_out_13_0
    );
  tde_1_reg_0_n0011_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X119Y150",
      INIT => X"FFFFFF00FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => tde_1_r_trigger_latched_2564,
      ADR4 => tde_1_w_sgen_val2gen_clear,
      ADR5 => '1',
      O => tde_1_reg_0_n0011_inv
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT21 : X_LUT5
    generic map(
      LOC => "SLICE_X119Y150",
      INIT => X"0000CCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => tde_1_w_value_to_generate_10_0,
      ADR3 => '1',
      ADR4 => tde_1_w_sgen_val2gen_clear,
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_10_Q
    );
  tde_1_reg_0_o_data_out_10 : X_FF
    generic map(
      LOC => "SLICE_X119Y150",
      INIT => '0'
    )
    port map (
      CE => tde_1_reg_0_n0011_inv,
      CLK => NlwBufferSignal_tde_1_reg_0_o_data_out_10_CLK,
      I => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_10_Q,
      O => tde_1_reg_0_o_data_out(10),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_0_basic_timer_control_1_w_timeout_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X119Y150",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      ADR3 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      ADR4 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      ADR0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      ADR5 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      ADR2 => N0,
      O => tde_1_w_sgen_val2gen_clear
    );
  tde_1_reg_0_o_data_out_15 : X_FF
    generic map(
      LOC => "SLICE_X119Y150",
      INIT => '0'
    )
    port map (
      CE => tde_1_reg_0_n0011_inv,
      CLK => NlwBufferSignal_tde_1_reg_0_o_data_out_15_CLK,
      I => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_15_Q,
      O => tde_1_reg_0_o_data_out(15),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X119Y150",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => tde_1_w_sgen_val2gen_clear,
      ADR4 => tde_1_w_value_to_generate_15_0,
      ADR5 => '1',
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_15_Q
    );
  tde_1_timer_0_basic_timer_1_n0024_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X119Y150",
      INIT => X"F0FAF0FA"
    )
    port map (
      ADR1 => '1',
      ADR0 => w_tr_tick_2552,
      ADR2 => w_facilitatory_2553,
      ADR3 => tde_1_w_sgen_val2gen_clear,
      ADR4 => '1',
      O => tde_1_timer_0_basic_timer_1_n0024_inv
    );
  tde_1_reg_0_o_data_out_14 : X_FF
    generic map(
      LOC => "SLICE_X119Y150",
      INIT => '0'
    )
    port map (
      CE => tde_1_reg_0_n0011_inv,
      CLK => NlwBufferSignal_tde_1_reg_0_o_data_out_14_CLK,
      I => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_14_Q,
      O => tde_1_reg_0_o_data_out(14),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X119Y150",
      INIT => X"3333000033330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => tde_1_w_sgen_val2gen_clear,
      ADR4 => tde_1_w_value_to_generate_14_0,
      ADR5 => '1',
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_14_Q
    );
  tde_1_reg_0_Mmux_o_data_out_15_GND_16_o_mux_1_OUT51 : X_LUT5
    generic map(
      LOC => "SLICE_X119Y150",
      INIT => X"22222222"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => tde_1_w_value_to_generate_13_0,
      ADR1 => tde_1_w_sgen_val2gen_clear,
      ADR4 => '1',
      O => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_13_Q
    );
  tde_1_reg_0_o_data_out_13 : X_FF
    generic map(
      LOC => "SLICE_X119Y150",
      INIT => '0'
    )
    port map (
      CE => tde_1_reg_0_n0011_inv,
      CLK => NlwBufferSignal_tde_1_reg_0_o_data_out_13_CLK,
      I => tde_1_reg_0_o_data_out_15_GND_16_o_mux_1_OUT_13_Q,
      O => tde_1_reg_0_o_data_out(13),
      RST => i_nreset_inv,
      SET => GND
    );
  tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o22 : X_LUT6
    generic map(
      LOC => "SLICE_X115Y150",
      INIT => X"000000000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_7_0,
      ADR4 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_6_0,
      O => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21_2927
    );
  tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21 : X_LUT6
    generic map(
      LOC => "SLICE_X115Y150",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      ADR1 => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      ADR2 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_2_0,
      ADR4 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_3_0,
      ADR3 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_4_0,
      ADR5 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_5_0,
      O => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o2
    );
  tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o23 : X_LUT6
    generic map(
      LOC => "SLICE_X115Y150",
      INIT => X"5F5F575F575F575F"
    )
    port map (
      ADR0 => w_facilitatory_2553,
      ADR3 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_8_0,
      ADR1 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_9_0,
      ADR2 => tde_1_timer_0_basic_timer_control_1_i_initial_value_15_i_current_value_15_add_0_OUT_10_0,
      ADR5 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o21_2927,
      ADR4 => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o2,
      O => tde_1_timer_0_basic_timer_control_1_GND_11_o_w_saturated_equal_4_o
    );
  tde_1_spike_generator_0_n0047_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X113Y149",
      INIT => X"FFFFFF00FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => tde_1_r_trigger_latched_2564,
      ADR3 => tde_1_spike_generator_0_w_tick_2728,
      O => tde_1_spike_generator_0_n0047_inv
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_cicle_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_3_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_cicle_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_2_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_cicle_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_1_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_cicle_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_0_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_cicle_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_11_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_cicle_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_10_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_cicle_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_9_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_cicle_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_8_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_cicle_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_7_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_cicle_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_6_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_cicle_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_5_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_cicle_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_4_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_cicle_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_15_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_cicle_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_14_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_cicle_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_13_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_cicle_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_cicle_12_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_10_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_9_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_8_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_7_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_6_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_5_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_4_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_3_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_2_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_1_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_0_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_14_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_13_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_12_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_11_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_30_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_30_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_29_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_29_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_28_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_28_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_27_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_27_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_22_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_22_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_21_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_21_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_20_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_20_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_19_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_19_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_26_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_26_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_25_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_25_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_24_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_24_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_23_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_23_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_18_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_18_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_17_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_17_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_16_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_16_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_15_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_p_clock_divider_v_tick_counter_31_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_w_tick_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_w_tick_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_value_to_generate_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_7_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_value_to_generate_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_6_CLK
    );
  NlwBufferBlock_tde_1_add_0_Madd_o_output_data_cy_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      O => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_7_DI_0_Q
    );
  NlwBufferBlock_tde_1_add_0_Madd_o_output_data_cy_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      O => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_7_DI_1_Q
    );
  NlwBufferBlock_tde_1_add_0_Madd_o_output_data_cy_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      O => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_7_DI_2_Q
    );
  NlwBufferBlock_tde_1_add_0_Madd_o_output_data_cy_7_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      O => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_7_DI_3_Q
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_value_to_generate_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_5_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_value_to_generate_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_4_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_value_to_generate_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_15_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_value_to_generate_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_14_CLK
    );
  NlwBufferBlock_tde_1_add_0_Madd_o_output_data_xor_15_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
      O => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_xor_15_DI_0_Q
    );
  NlwBufferBlock_tde_1_add_0_Madd_o_output_data_xor_15_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
      O => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_xor_15_DI_1_Q
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_value_to_generate_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_13_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_value_to_generate_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_12_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_value_to_generate_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_11_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_value_to_generate_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_10_CLK
    );
  NlwBufferBlock_tde_1_add_0_Madd_o_output_data_cy_11_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      O => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_11_DI_0_Q
    );
  NlwBufferBlock_tde_1_add_0_Madd_o_output_data_cy_11_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      O => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_11_DI_1_Q
    );
  NlwBufferBlock_tde_1_add_0_Madd_o_output_data_cy_11_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
      O => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_11_DI_2_Q
    );
  NlwBufferBlock_tde_1_add_0_Madd_o_output_data_cy_11_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
      O => NlwBufferSignal_tde_1_add_0_Madd_o_output_data_cy_11_DI_3_Q
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_value_to_generate_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_9_CLK
    );
  NlwBufferBlock_tde_1_spike_generator_0_r_value_to_generate_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_spike_generator_0_r_value_to_generate_8_CLK
    );
  NlwBufferBlock_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_9_CLK
    );
  NlwBufferBlock_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_8_CLK
    );
  NlwBufferBlock_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_7_CLK
    );
  NlwBufferBlock_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_6_CLK
    );
  NlwBufferBlock_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_5_CLK
    );
  NlwBufferBlock_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_4_CLK
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_9_CLK
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_8_CLK
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(0),
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_DI_0_Q
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(1),
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_DI_1_Q
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(2),
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_DI_2_Q
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(3),
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_3_DI_3_Q
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_3_CLK
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_2_CLK
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_1_CLK
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_0_CLK
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_7_CLK
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_6_CLK
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_5_CLK
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_1_p_countdown_v_counter_4_CLK
    );
  NlwBufferBlock_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_3_CLK
    );
  NlwBufferBlock_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_2_CLK
    );
  NlwBufferBlock_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_1_CLK
    );
  NlwBufferBlock_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_timer_0_basic_timer_1_p_countdown_v_counter_0_CLK
    );
  NlwBufferBlock_o_output_spike_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => o_output_spike_OBUF_2890,
      O => NlwBufferSignal_o_output_spike_OBUF_I
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(8),
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_0_Q
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(9),
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_xor_10_DI_1_Q
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(4),
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_DI_0_Q
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(5),
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_DI_1_Q
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(6),
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_DI_2_Q
    );
  NlwBufferBlock_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_0_basic_timer_1_p_countdown_v_counter(7),
      O => NlwBufferSignal_tde_1_timer_1_basic_timer_control_1_Madd_i_initial_value_15_i_current_value_15_add_0_OUT_cy_7_DI_3_Q
    );
  NlwBufferBlock_i_clock_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP_IBUFG_0,
      O => NlwBufferSignal_i_clock_BUFGP_BUFG_IN
    );
  NlwBufferBlock_w_trigger_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_w_trigger_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_15_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_14_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_13_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_12_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_11_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_10_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_9_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_8_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_7_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_6_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_5_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_24_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_24_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_19_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_19_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_18_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_18_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_17_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_17_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_16_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_16_CLK
    );
  NlwBufferBlock_w_facilitatory_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_w_facilitatory_CLK
    );
  NlwBufferBlock_tde_1_r_trigger_latched_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_r_trigger_latched_CLK
    );
  NlwBufferBlock_tde_1_r_trigger_latched_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => w_trigger_2847,
      O => NlwBufferSignal_tde_1_r_trigger_latched_IN
    );
  NlwBufferBlock_p_countdown_v_tr_tick_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_countdown_v_tr_tick_counter_5_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_4_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_3_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_2_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_1_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_23_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_23_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_22_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_22_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_21_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_21_CLK
    );
  NlwBufferBlock_p_stimuli_generation_v_faci_gen_internal_counter_20_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_stimuli_generation_v_faci_gen_internal_counter_20_CLK
    );
  NlwBufferBlock_tde_1_reg_1_o_data_out_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_1_o_data_out_5_CLK
    );
  NlwBufferBlock_tde_1_reg_1_o_data_out_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_1_o_data_out_4_CLK
    );
  NlwBufferBlock_tde_1_sub_0_Msub_o_output_data_cy_5_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_reg_1_o_data_out(2),
      O => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_5_DI_0_Q
    );
  NlwBufferBlock_tde_1_sub_0_Msub_o_output_data_cy_5_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_reg_1_o_data_out(3),
      O => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_5_DI_1_Q
    );
  NlwBufferBlock_tde_1_sub_0_Msub_o_output_data_cy_5_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_reg_1_o_data_out(4),
      O => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_5_DI_2_Q
    );
  NlwBufferBlock_tde_1_sub_0_Msub_o_output_data_cy_5_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_reg_1_o_data_out(5),
      O => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_5_DI_3_Q
    );
  NlwBufferBlock_tde_1_reg_1_o_data_out_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_1_o_data_out_3_CLK
    );
  NlwBufferBlock_tde_1_reg_1_o_data_out_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_1_o_data_out_2_CLK
    );
  NlwBufferBlock_w_tr_tick_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_w_tr_tick_CLK
    );
  NlwBufferBlock_p_countdown_v_tr_tick_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_countdown_v_tr_tick_counter_4_CLK
    );
  NlwBufferBlock_p_countdown_v_tr_tick_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_countdown_v_tr_tick_counter_2_CLK
    );
  NlwBufferBlock_p_countdown_v_tr_tick_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_countdown_v_tr_tick_counter_3_CLK
    );
  NlwBufferBlock_p_countdown_v_tr_tick_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_countdown_v_tr_tick_counter_1_CLK
    );
  NlwBufferBlock_p_countdown_v_tr_tick_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_p_countdown_v_tr_tick_counter_0_CLK
    );
  NlwBufferBlock_tde_1_reg_1_o_data_out_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_1_o_data_out_11_CLK
    );
  NlwBufferBlock_tde_1_reg_1_o_data_out_11_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(9),
      O => NlwBufferSignal_tde_1_reg_1_o_data_out_11_IN
    );
  NlwBufferBlock_tde_1_reg_1_o_data_out_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_1_o_data_out_10_CLK
    );
  NlwBufferBlock_tde_1_reg_1_o_data_out_10_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(8),
      O => NlwBufferSignal_tde_1_reg_1_o_data_out_10_IN
    );
  NlwBufferBlock_tde_1_sub_0_Msub_o_output_data_cy_13_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_reg_1_o_data_out(10),
      O => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_13_DI_0_Q
    );
  NlwBufferBlock_tde_1_sub_0_Msub_o_output_data_cy_13_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_reg_1_o_data_out(11),
      O => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_13_DI_1_Q
    );
  NlwBufferBlock_tde_1_w_sgen_clkdiv_current_value_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_9_CLK
    );
  NlwBufferBlock_tde_1_w_sgen_clkdiv_current_value_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_8_CLK
    );
  NlwBufferBlock_tde_1_sub_0_Msub_o_output_data_cy_9_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_reg_1_o_data_out(6),
      O => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_9_DI_0_Q
    );
  NlwBufferBlock_tde_1_sub_0_Msub_o_output_data_cy_9_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_reg_1_o_data_out(7),
      O => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_9_DI_1_Q
    );
  NlwBufferBlock_tde_1_sub_0_Msub_o_output_data_cy_9_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_reg_1_o_data_out(8),
      O => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_9_DI_2_Q
    );
  NlwBufferBlock_tde_1_sub_0_Msub_o_output_data_cy_9_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_reg_1_o_data_out(9),
      O => NlwBufferSignal_tde_1_sub_0_Msub_o_output_data_cy_9_DI_3_Q
    );
  NlwBufferBlock_tde_1_w_sgen_clkdiv_current_value_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_7_CLK
    );
  NlwBufferBlock_tde_1_w_sgen_clkdiv_current_value_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_6_CLK
    );
  NlwBufferBlock_tde_1_w_sgen_clkdiv_current_value_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_11_CLK
    );
  NlwBufferBlock_tde_1_w_sgen_clkdiv_current_value_11_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(9),
      O => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_11_IN
    );
  NlwBufferBlock_tde_1_w_sgen_clkdiv_current_value_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_10_CLK
    );
  NlwBufferBlock_tde_1_w_sgen_clkdiv_current_value_10_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(8),
      O => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_10_IN
    );
  NlwBufferBlock_tde_1_reg_0_o_data_out_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_0_o_data_out_12_CLK
    );
  NlwBufferBlock_tde_1_reg_0_o_data_out_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_0_o_data_out_11_CLK
    );
  NlwBufferBlock_tde_1_reg_0_o_data_out_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_0_o_data_out_9_CLK
    );
  NlwBufferBlock_tde_1_reg_0_o_data_out_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_0_o_data_out_8_CLK
    );
  NlwBufferBlock_tde_1_reg_0_o_data_out_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_0_o_data_out_7_CLK
    );
  NlwBufferBlock_tde_1_reg_0_o_data_out_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_0_o_data_out_6_CLK
    );
  NlwBufferBlock_tde_1_reg_0_o_data_out_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_0_o_data_out_5_CLK
    );
  NlwBufferBlock_tde_1_reg_0_o_data_out_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_0_o_data_out_4_CLK
    );
  NlwBufferBlock_tde_1_w_sgen_clkdiv_current_value_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_5_CLK
    );
  NlwBufferBlock_tde_1_w_sgen_clkdiv_current_value_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(3),
      O => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_5_IN
    );
  NlwBufferBlock_tde_1_w_sgen_clkdiv_current_value_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_4_CLK
    );
  NlwBufferBlock_tde_1_w_sgen_clkdiv_current_value_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(2),
      O => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_4_IN
    );
  NlwBufferBlock_tde_1_w_sgen_clkdiv_current_value_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_3_CLK
    );
  NlwBufferBlock_tde_1_w_sgen_clkdiv_current_value_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(1),
      O => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_3_IN
    );
  NlwBufferBlock_tde_1_w_sgen_clkdiv_current_value_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_2_CLK
    );
  NlwBufferBlock_tde_1_w_sgen_clkdiv_current_value_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(0),
      O => NlwBufferSignal_tde_1_w_sgen_clkdiv_current_value_2_IN
    );
  NlwBufferBlock_tde_1_reg_1_o_data_out_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_1_o_data_out_9_CLK
    );
  NlwBufferBlock_tde_1_reg_1_o_data_out_9_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(7),
      O => NlwBufferSignal_tde_1_reg_1_o_data_out_9_IN
    );
  NlwBufferBlock_tde_1_reg_1_o_data_out_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_1_o_data_out_8_CLK
    );
  NlwBufferBlock_tde_1_reg_1_o_data_out_8_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(6),
      O => NlwBufferSignal_tde_1_reg_1_o_data_out_8_IN
    );
  NlwBufferBlock_tde_1_reg_1_o_data_out_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_1_o_data_out_7_CLK
    );
  NlwBufferBlock_tde_1_reg_1_o_data_out_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(5),
      O => NlwBufferSignal_tde_1_reg_1_o_data_out_7_IN
    );
  NlwBufferBlock_tde_1_reg_1_o_data_out_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_1_o_data_out_6_CLK
    );
  NlwBufferBlock_tde_1_reg_1_o_data_out_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => tde_1_timer_1_basic_timer_1_p_countdown_v_counter(4),
      O => NlwBufferSignal_tde_1_reg_1_o_data_out_6_IN
    );
  NlwBufferBlock_tde_1_reg_0_o_data_out_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_0_o_data_out_10_CLK
    );
  NlwBufferBlock_tde_1_reg_0_o_data_out_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_0_o_data_out_15_CLK
    );
  NlwBufferBlock_tde_1_reg_0_o_data_out_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_0_o_data_out_14_CLK
    );
  NlwBufferBlock_tde_1_reg_0_o_data_out_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => i_clock_BUFGP,
      O => NlwBufferSignal_tde_1_reg_0_o_data_out_13_CLK
    );
  NlwBlock_fpga_test_top_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_fpga_test_top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

