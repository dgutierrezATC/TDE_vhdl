#*** External clock ***
set_property PACKAGE_PIN P15 [get_ports i_clock]
set_property IOSTANDARD LVCMOS33 [get_ports i_clock]
create_clock -period 20 [get_ports i_clock]

#*** External reset button ***
#** Button PB2
set_property PACKAGE_PIN R3 [get_ports i_nreset]
set_property IOSTANDARD LVCMOS33 [get_ports i_nreset]

#*** GP_1 connector: audio input source ***
#*2:VDD | 4:SDOUT          | 6:SCLK          | 8:LRCK           | 10:SRC_SEL   *
#*      |                  |                 |                  |              *
#*1:GND | 3:PDM_DAT_LEFT   | 5:PDM_CLK_LEFT  | 7:PDM_CLK_RIGTH  | 9:PDM_DATA_R *

#*** I2S interface ***
#*** Pin 4: SDOUT
set_property PACKAGE_PIN G14 [get_ports o_output_spike]
set_property IOSTANDARD LVCMOS33 [get_ports o_output_spike]

#*** AER out bus & protocol handshake ***
set_property PACKAGE_PIN M6 [get_ports {o_aer_data_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_aer_data_out[0]}]

set_property PACKAGE_PIN N5 [get_ports {o_aer_data_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_aer_data_out[1]}]

set_property PACKAGE_PIN L6 [get_ports {o_aer_data_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_aer_data_out[2]}]

set_property PACKAGE_PIN P4 [get_ports {o_aer_data_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_aer_data_out[3]}]

set_property PACKAGE_PIN L5 [get_ports {o_aer_data_out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_aer_data_out[4]}]

set_property PACKAGE_PIN P3 [get_ports {o_aer_data_out[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_aer_data_out[5]}]

set_property PACKAGE_PIN N4 [get_ports {o_aer_data_out[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_aer_data_out[6]}]

set_property PACKAGE_PIN T1 [get_ports {o_aer_data_out[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_aer_data_out[7]}]

set_property PACKAGE_PIN M4 [get_ports {o_aer_data_out[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_aer_data_out[8]}]

set_property PACKAGE_PIN R1 [get_ports {o_aer_data_out[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_aer_data_out[9]}]

set_property PACKAGE_PIN M3 [get_ports {o_aer_data_out[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_aer_data_out[10]}]

set_property PACKAGE_PIN R2 [get_ports {o_aer_data_out[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_aer_data_out[11]}]

set_property PACKAGE_PIN M2 [get_ports {o_aer_data_out[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_aer_data_out[12]}]

set_property PACKAGE_PIN P2 [get_ports {o_aer_data_out[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_aer_data_out[13]}]

set_property PACKAGE_PIN K5 [get_ports {o_aer_data_out[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_aer_data_out[14]}]

set_property PACKAGE_PIN N2 [get_ports {o_aer_data_out[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_aer_data_out[15]}]


set_property PACKAGE_PIN L4 [get_ports o_aer_req_out]
set_property IOSTANDARD LVCMOS33 [get_ports o_aer_req_out]

set_property PACKAGE_PIN N1 [get_ports i_aer_ack_out]
set_property IOSTANDARD LVCMOS33 [get_ports i_aer_ack_out]