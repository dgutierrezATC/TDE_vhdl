-------------------------------------------------------------------------------
-- Title      : Testbench for design "fpga_test_top"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : fpga_test_top_tb.vhd
-- Author     : Daniel Gutierrez-Galan
-- Company    : University of Seville
-- Created    : 2020-05-10
-- Last update: 2020-05-10
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2020 University of Seville
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-05-10  1.0      dgutierrez	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use std.textio.all;

-------------------------------------------------------------------------------

entity fpga_test_top_tb is

end entity fpga_test_top_tb;

-------------------------------------------------------------------------------

architecture Behavioral of fpga_test_top_tb is

    -- DUT
    component fpga_test_top is
        
        generic (
            g_enable_monitor : integer := 0   -- If 0, spikes monitor is disabled
        );
        port (
            i_clock        : in  std_logic;   -- Main clock
            i_nreset       : in  std_logic;   -- Reset
            o_output_spike : out std_logic;   -- Output spikes from TDE
            o_aer_data_out : out std_logic_vector(15 downto 0);  -- AER data bus
            o_aer_req_out  : out std_logic;   -- AER req signal
            i_aer_ack_out  : in  std_logic    -- AER ack signal
        );
    
    end component;

    -- Component input ports
    signal i_clock        : std_logic := '1';
    signal i_nreset       : std_logic := '0';
    signal i_aer_ack_out  : std_logic := '1';
	
	-- Component output ports
	signal o_output_spike : std_logic;
	signal o_aer_data_out : std_logic_vector(15 downto 0);
	signal o_aer_req_out  : std_logic;
	
	-- Clock
	constant c_clock_period : time := 20 ns;
	
	-- Testbench flags
	signal tb_end_stimuli : std_logic := '0';
	
	-- Output results
	file tb_output_aer_events_file  : text;


begin  -- architecture Behavioral

    -- component instantiation
    DUT: entity work.fpga_test_top
        port map (
            i_clock        => i_clock,
            i_nreset       => i_nreset,
            o_output_spike => o_output_spike,
			o_aer_data_out => o_aer_data_out,
			o_aer_req_out  => o_aer_req_out,
			i_aer_ack_out  => i_aer_ack_out
        );

    -- clock generation
    i_clock <= not i_clock after c_clock_period / 2;

    -- waveform generation
    WaveGen_Proc: process
    begin
        -- insert signal assignments here

        wait for 10 us;

        i_nreset <= '1';

        wait for 60 ms;
		
		tb_end_stimuli <= '1';
        report "END OF SIMULATION!" severity note;

        wait;
        
    end process WaveGen_Proc;
	
	-- Save results process
	p_save_results_process : process
        variable v_OLINE              : line;
        variable v_sim_time_str       : string(1 to 30); -- 30 chars should be enough
        variable v_sim_time_len       : natural;
        variable v_out_events_counter : integer := 0;

        variable v_event_channel      : integer := 0;
        
    begin
        --// Open RESULTS file in write mode
        file_open(tb_output_aer_events_file, "D:/Universidad/Repositorios/GitHub/Doctorado/TDE_vhdl/TDE/Examples/FPGA_test/results/test_0001/postsynth_t.txt", write_mode);

        --// Loop while the simulation doesn't finish
        while tb_end_stimuli = '0' loop
            --// Wait until there is a new AER data
            wait until o_output_spike'event and o_output_spike = '1';

            --// Take the current simulation time
            v_sim_time_len := time'image(now)'length;
            v_sim_time_str := (others => ' ');
            v_sim_time_str(1 to v_sim_time_len) := time'image(now);

            --// Increase the event counter
            v_out_events_counter := v_out_events_counter + 1;

            v_event_channel := 1; --to_integer(unsigned(o_output_spike));
            report "Output address: " & integer'image(v_event_channel);

            report "Output event counter: " & integer'image(v_out_events_counter);

            write(v_OLINE, v_event_channel, right, 1);
            write(v_OLINE, ',', right, 1);

            write(v_OLINE, v_sim_time_str, right, 1);

            writeline(tb_output_aer_events_file, v_OLINE);
        end loop;

        file_close(tb_output_aer_events_file);
		
		report "End of simulation!" severity note;

        wait;

    end process p_save_results_process;

    

end architecture Behavioral;

-------------------------------------------------------------------------------

configuration fpga_test_top_tb_Behavioral_cfg of fpga_test_top_tb is
    for Behavioral
    end for;
end fpga_test_top_tb_Behavioral_cfg;

-------------------------------------------------------------------------------
