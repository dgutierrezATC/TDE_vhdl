How to...?

Calculate the power consumption.

1. Go to the constraints file.
2. Define the clock signal:
	create_clock -period 20 [get_ports i_clock]
3. Run Synthesis/Implementation process.
4. Open the desing, and go to Repor Power.
5. In switching, go down to "Constrained clocks" and check i_clock appears.
6. In "Default activity settings", configure the probability with: 5.5 and 0.5.

For more realistic estimation, generate the .saif file:

1. Run the Post-Implementation Functional Simulation.
2. Before run, write at TCL command line:
	open_saif filename.saif
	log_saif /tde_network_tb/DUT/*
	run 12 ms
	close_saif

Then, go to the Repor Power and open the saif file.