For post-synthesis simulation:
------------------------------

-Create a text file including:
	-vhdl work "netgen\synthesis\fpga_test_top_synthesis.vhd"
	-vhdl work "../fpga_test_top_tb.vhd"

-Save it with the name "postsyn.prj".

-Open an ISE Design Suite Command Prompt.

-Without changin the directory, run:

fuse -intstyle ise -incremental -lib unisim -lib unimacro -lib xilinxcorelib -lib secureip -o D:\Universidad\Repositorios\GitHub\Doctorado\TDE_vhdl\TDE\Examples\FPGA_test\fpga_ise\x_synthesis -prj D:\Universidad\Repositorios\GitHub\Doctorado\TDE_vhdl\TDE\Examples\FPGA_test\fpga_ise\postsyn.prj work.fpga_test_top_tb

-After the process finishes, run:

D:\Universidad\Repositorios\GitHub\Doctorado\TDE_vhdl\TDE\Examples\FPGA_test\fpga_ise\x_synthesis.exe -gui

-The iSim application will appear, ready to run the simulation.

For post-implementation simulation:
------------------------------

-Create a text file including:
	-vhdl work "netgen\par\fpga_test_top_timesim.vhd"
	-vhdl work "../fpga_test_top_tb.vhd"

-Save it with the name "postimpl.prj".

-Open an ISE Design Suite Command Prompt.

-Without changin the directory, run:

fuse -intstyle ise -incremental -lib unisim -lib unimacro -lib xilinxcorelib -lib secureip -o D:\Universidad\Repositorios\GitHub\Doctorado\TDE_vhdl\TDE\Examples\FPGA_test\fpga_ise\x_implement -prj D:\Universidad\Repositorios\GitHub\Doctorado\TDE_vhdl\TDE\Examples\FPGA_test\fpga_ise\postimpl.prj work.fpga_test_top_tb

D:\Universidad\Repositorios\GitHub\Doctorado\TDE_vhdl\TDE\Examples\FPGA_test\fpga_ise\x_implement.exe -gui

-The iSim application will appear, ready to run the simulation.