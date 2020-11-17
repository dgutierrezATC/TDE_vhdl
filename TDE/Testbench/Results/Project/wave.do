onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tde_tb/DUT/g_NBITS
add wave -noupdate /tde_tb/DUT/g_LOG2NBITS
add wave -noupdate /tde_tb/DUT/g_SPIKEGEN_METHOD
add wave -noupdate /tde_tb/DUT/g_TWO_POW_NBITS_DATA
add wave -noupdate /tde_tb/DUT/i_clock
add wave -noupdate /tde_tb/DUT/i_nreset
add wave -noupdate /tde_tb/DUT/i_tr_tick
add wave -noupdate /tde_tb/DUT/i_facilitatory
add wave -noupdate /tde_tb/DUT/i_trigger
add wave -noupdate -radix unsigned /tde_tb/DUT/i_tau
add wave -noupdate -radix unsigned /tde_tb/DUT/i_weight
add wave -noupdate -radix unsigned /tde_tb/DUT/i_decay
add wave -noupdate -radix unsigned /tde_tb/DUT/i_detection_time
add wave -noupdate -radix unsigned /tde_tb/DUT/i_faci_sat_value
add wave -noupdate -radix unsigned /tde_tb/DUT/i_trig_sat_value
add wave -noupdate /tde_tb/DUT/o_output_spike
add wave -noupdate /tde_tb/DUT/w_trigger
add wave -noupdate /tde_tb/DUT/w_facilitation
add wave -noupdate /tde_tb/DUT/w_facilitation_timer_value
add wave -noupdate /tde_tb/DUT/w_facilitation_timer_value_weighted
add wave -noupdate /tde_tb/DUT/w_facilitation_timer_value_to_trigger_timer_weighted
add wave -noupdate /tde_tb/DUT/w_value_to_generate
add wave -noupdate /tde_tb/DUT/w_trigger_timer_value
add wave -noupdate /tde_tb/DUT/w_trigger_timer_value_shifted
add wave -noupdate /tde_tb/DUT/w_sgen_clkdiv_ref_value
add wave -noupdate /tde_tb/DUT/w_sgen_clkdiv_current_value
add wave -noupdate /tde_tb/DUT/w_sgen_val2gen_feedback
add wave -noupdate /tde_tb/DUT/w_clkdiv_value
add wave -noupdate /tde_tb/DUT/w_clkdiv_clear
add wave -noupdate /tde_tb/DUT/w_sgen_val2gen_clear
add wave -noupdate /tde_tb/DUT/r_trigger_latched
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {272479409192 ps} 0}
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
WaveRestoreZoom {0 ps} {3542232319500 ps}
