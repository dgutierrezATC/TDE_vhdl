onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider dut
add wave -noupdate /tde_tb/DUT/g_NBITS
add wave -noupdate /tde_tb/DUT/g_LOG2NBITS
add wave -noupdate /tde_tb/DUT/i_clock
add wave -noupdate /tde_tb/DUT/i_nreset
add wave -noupdate /tde_tb/DUT/i_tr_tick
add wave -noupdate /tde_tb/DUT/i_facilitatory
add wave -noupdate /tde_tb/DUT/i_trigger
add wave -noupdate /tde_tb/DUT/i_weight
add wave -noupdate /tde_tb/DUT/i_decay
add wave -noupdate /tde_tb/DUT/i_detection_time
add wave -noupdate /tde_tb/DUT/o_output_spike
add wave -noupdate /tde_tb/DUT/w_trigger
add wave -noupdate /tde_tb/DUT/w_facilitation
add wave -noupdate /tde_tb/DUT/w_facilitation_timer_value
add wave -noupdate /tde_tb/DUT/w_value_to_generate
add wave -noupdate /tde_tb/DUT/w_trigger_timer_value
add wave -noupdate /tde_tb/DUT/w_trigger_timer_value_shifted
add wave -noupdate /tde_tb/DUT/w_sgen_clkdiv_ref_value
add wave -noupdate /tde_tb/DUT/w_sgen_clkdiv_current_value
add wave -noupdate /tde_tb/DUT/w_clkdiv_value
add wave -noupdate /tde_tb/DUT/w_clkdiv_clear
add wave -noupdate /tde_tb/DUT/trig_latched
add wave -noupdate /tde_tb/DUT/c_all_zeros
add wave -noupdate -divider sgen
add wave -noupdate /tde_tb/DUT/sgen_unsigned_bw/g_NBITS_DATA
add wave -noupdate /tde_tb/DUT/sgen_unsigned_bw/g_NBITS_FREQDIV
add wave -noupdate /tde_tb/DUT/sgen_unsigned_bw/i_clock
add wave -noupdate /tde_tb/DUT/sgen_unsigned_bw/i_nreset
add wave -noupdate /tde_tb/DUT/sgen_unsigned_bw/i_genfreq_divisor
add wave -noupdate /tde_tb/DUT/sgen_unsigned_bw/i_data_in
add wave -noupdate /tde_tb/DUT/sgen_unsigned_bw/i_write
add wave -noupdate /tde_tb/DUT/sgen_unsigned_bw/i_clear
add wave -noupdate /tde_tb/DUT/sgen_unsigned_bw/o_spike_out
add wave -noupdate /tde_tb/DUT/sgen_unsigned_bw/r_cicle
add wave -noupdate /tde_tb/DUT/sgen_unsigned_bw/w_cicle_wise
add wave -noupdate /tde_tb/DUT/sgen_unsigned_bw/r_value_to_generate
add wave -noupdate /tde_tb/DUT/sgen_unsigned_bw/w_tick
add wave -noupdate /tde_tb/DUT/sgen_unsigned_bw/w_generate
add wave -noupdate /tde_tb/DUT/sgen_unsigned_bw/w_output_spike
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {400 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 1
configure wave -timelineunits us
update
WaveRestoreZoom {0 ps} {1 ns}
