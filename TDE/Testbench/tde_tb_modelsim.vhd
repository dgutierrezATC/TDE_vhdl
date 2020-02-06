-------------------------------------------------------------------------------
-- Title      : Testbench for design "tde"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : tde_tb.vhd
-- Author     :   <dgutierrez@DESKTOP-16SBGVD>
-- Company    : 
-- Created    : 2020-01-22
-- Last update: 2020-02-06
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2020 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-01-22  1.0      dgutierrez	Created
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Libraries
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use STD.textio.all;
library modelsim_lib;
use modelsim_lib.util.all;

-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------
entity tde_tb is

end entity tde_tb;

-------------------------------------------------------------------------------
-- Architectures
-------------------------------------------------------------------------------
architecture Behavioral of tde_tb is

    -------------------------------------------------------------------------------
    -- Component declaration for the unit under test (UUT)
    -------------------------------------------------------------------------------
    component tde is
        generic (
            g_NBITS     : integer range 0 to 32 := 16;
            g_LOG2NBITS : integer range 0 to 5  := 4
        );
        port (
            i_clock          : in  std_logic;
            i_nreset         : in  std_logic;
            i_tr_tick        : in  std_logic;
            i_facilitatory   : in  std_logic;
            i_trigger        : in  std_logic;
            i_weight         : in  std_logic_vector((g_LOG2NBITS - 1) downto 0);
            i_decay          : in  std_logic_vector((g_LOG2NBITS - 1) downto 0);
            i_detection_time : in  std_logic_vector((g_NBITS - 1) downto 0);
            o_output_spike   : out std_logic
        );
    end component tde;

    ---------------------------------------------------------------------------
    -- UUT signals declaration
    ---------------------------------------------------------------------------
 
    -- component generics
    constant g_NBITS     : integer range 0 to 32 := 16;
    constant g_LOG2NBITS : integer range 0 to 5  := 4;

    -- component input ports
    signal i_clock          : std_logic := '0';
    signal i_nreset         : std_logic := '0';
    signal i_tr_tick        : std_logic := '0';
    signal i_facilitatory   : std_logic := '0';
    signal i_trigger        : std_logic := '0';
    signal i_weight         : std_logic_vector((g_LOG2NBITS - 1) downto 0) := (others => '0');
    signal i_decay          : std_logic_vector((g_LOG2NBITS - 1) downto 0) := (others => '0');
    signal i_detection_time : std_logic_vector((g_NBITS - 1) downto 0)     := (others => '0');

    -- component output ports
    signal o_output_spike   : std_logic;

    -- clock
    constant c_i_clock_period : time := 20 ns; -- 50 MHz clock

    ---------------------------------------------------------------------------
    -- Testbench signals declaration
    ---------------------------------------------------------------------------
	-- Simulator options: CHECK BEFORE RUN!
	constant c_is_ModelSim : boolean := true; -- If true, ModelSIM should be used. If false, VivadoSim should be used.
	constant c_absolute_path : string := "D:/Universidad/Repositorios/GitHub/Doctorado/TDE_vhdl/TDE/Testbench/Results/Files/"; -- Absolute path to the testbench files
	
    -- Clock divisor value
    constant c_i_tr_tick_divisor_value : integer range 0 to 100 := 50;  -- Clock divisor value

    -- Saving results in a file
    signal tb_end_of_simulation : std_logic := '0'; -- Flag to indicate the end of the simulation
    
    file f_faci_spike : text open write_mode is c_absolute_path & "input_faci_spikes.txt";  -- Input facilitatory spikes
    file f_trig_spike : text open write_mode is c_absolute_path & "input_trig_spikes.txt";  -- Input trigger spikes
    file f_out_spikes : text open write_mode is c_absolute_path & "output_spikes.txt";  -- Output spikes from the TDE model
	
	-- Saving results of the delta_t variation test in a file
	file f_out_spikes_delta_t : text open write_mode is c_absolute_path & "output_spikes_delta_t.txt";  -- Output spikes from the TDE model
	file f_out_spikes_global_delta_t : text;
	
	-- Test to run
	constant c_basic_behavioral_test : boolean := false; -- If true, TDE behavioral test with basic cases will be launched
	constant c_delta_t_variation_test : boolean := false; --If true, TDE behavioral test with delta_t variation will be launched
	constant c_global_delta_t_variation_test : boolean := true; -- If true, TDE behavioral test with delta_t variation and multiple TDE configuration will be launched
	
	signal tb_new_delta_t_value : std_logic := '0'; -- Flag to indicate the saving_out process there is a new iteration
	signal tb_end_delta_t_value : std_logic := '0'; -- Flag to indicate the saving_out process that the iteration finished
	signal tb_delta_t_value : time := 0 us;
	
    ---------------------------------------------------------------------------
    -- ONLY IN MODELSIM
    ---------------------------------------------------------------------------
    -- Testbench signals for "spy signal"
    signal spy_facilitatory_timer_value          : std_logic_vector((g_NBITS - 1) downto 0);  -- Value of the facilitatory internal timer
    signal spy_facilitatory_timer_value_weighted : std_logic_vector((g_NBITS - 1) downto 0);  -- Value of the facilitatory internal timer after be weighted

    signal spy_trigger_timer_value          : std_logic_vector((g_NBITS - 1) downto 0);  -- Value of the trigger internal timer
    signal spy_trigger_timer_value_weighted : std_logic_vector((g_NBITS - 1) downto 0);  -- Value of the trigger internal timer after be weighted

    signal spy_spikegen_val2gen : std_logic_vector((g_NBITS - 1) downto 0);  --Value to convert to spikes
    signal spy_spikegen_clk_div : std_logic_vector((g_NBITS - 1) downto 0);  -- Result of the subtraction

    -- Files for saving the results
    file f_faci_timer_val          : text open write_mode is c_absolute_path & "faci_timer.txt";  -- Values of the internal faci_timer
    file f_faci_timer_val_weighted : text open write_mode is c_absolute_path & "faci_timer_weighted.txt";  -- Values of the internal faci_timer

    file f_trigg_timer_val          : text open write_mode is c_absolute_path & "trigg_timer.txt";  -- Values of the internal faci_timer
    file f_trigg_timer_val_weighted : text open write_mode is c_absolute_path & "trigg_timer_weighted.txt";  -- Values of the internal faci_timer

    file f_sgen_val2gen    : text open write_mode is c_absolute_path & "sgen_val.txt"; -- Spikes to generate
    file f_sgen_clkdiv_val : text open write_mode is c_absolute_path & "sgen_clkdiv.txt";  -- Values of the internal faci_timer
    ---------------------------------------------------------------------------
    -- ONLY IN MODELSIM
    ---------------------------------------------------------------------------
	
begin  -- architecture Behavioral

    -- component instantiation
    DUT: entity work.tde
        generic map (
            g_NBITS     => g_NBITS,
            g_LOG2NBITS => g_LOG2NBITS
        )
        port map (
            i_clock          => i_clock,
            i_nreset         => i_nreset,
            i_tr_tick        => i_tr_tick,
            i_facilitatory   => i_facilitatory,
            i_trigger        => i_trigger,
            i_weight         => i_weight,
            i_decay          => i_decay,
            i_detection_time => i_detection_time,
            o_output_spike   => o_output_spike
        );

    -- clock generation
    i_clock <= not i_clock after c_i_clock_period/2;
	
	
	g_global_delta_t_test: if c_global_delta_t_variation_test = true generate
		-- purpose: process for generating the response of multiple TDE configs over different delta_t values
		-- type   :
		-- inputs : 
		-- outputs: 
		p_num_spikes_over_global_delta_t: process is
			variable v_delta_t : time := 0 us;  -- time difference between the facilitatory and the trigger spikes
			variable v_detection_time : std_logic_vector((g_NBITS - 1) downto 0) := (others => '0');
			--variable v_filename : string(1 to 50); 
		begin  -- process p_num_spikes_over_delta_t
			
			while(v_detection_time <= x"2BC") loop
				--
				--First, open a new file
				--
				--file_open(f_out_spikes_global_delta_t, , write_mode);
				
				--
				-- First reset
				--
				
				-- Set reset to 0
				i_nreset <= '0';
				-- Hold reset to 0 for 1 us;
				wait for 1 us;
				-- Clear reset
				i_nreset <= '1';
				-- Wait for few microseconds
				wait for 1 us;

				--
				-- TDE configuration
				--

				-- Set all the parameters (w = 4; d = 2; detec = 700)
				i_weight <= x"4";
				i_decay  <= x"2";
				i_detection_time <= v_detection_time;

				-- Wait for 1 us;

				--
				-- Idle
				--
				-- Let the system in IDLE for 10 us
				wait for 10 us;

				--
				-- Sync
				--
				wait until i_clock'event and  i_clock = '1';
				wait for c_i_clock_period;

				--
				-- Loop
				--
				while v_delta_t <= 750 us loop
					-- Activate flag "new_delta_t_value"
					wait for c_i_clock_period;
					tb_delta_t_value <= v_delta_t;
					tb_new_delta_t_value <= '1';
					wait for c_i_clock_period;
					tb_new_delta_t_value <= '0';
					wait for c_i_clock_period;
					
					-- Facilitatory pulse
					i_facilitatory <= '1';
					wait for c_i_clock_period;
					i_facilitatory <= '0';

					-- Wait for delta_t
					wait for v_delta_t;

					-- Trigger pulse
					i_trigger <= '1';
					wait for c_i_clock_period;
					i_trigger <= '0';

					-- Wait for 710 us
					wait for 710 us;

					-- Update the delta_t value
					v_delta_t := v_delta_t + 50 us;
					
					wait for c_i_clock_period;
					tb_end_delta_t_value <= '1';
					wait for c_i_clock_period;
					tb_end_delta_t_value <= '0';
					wait for c_i_clock_period;
					
				end loop;
				
				-- Close the file
				--file_close(f_out_spikes_global_delta_t);
				
				-- Update the detection time
				v_detection_time := v_detection_time + x"0064";
				
				-- Clear the delta_t variable
				v_delta_t := 0 us;
				
			end loop;
			
			-- Check the output
			report "End of the delta_t simulation" severity note;
			
			-- Finishing the simulation
			tb_end_of_simulation <= '1';
			
			-- Wait forever
			wait;
			
		end process p_num_spikes_over_global_delta_t;
	
	end generate g_global_delta_t_test;

	g_delta_t_test : if c_delta_t_variation_test = true generate
		-- purpose: process for generating the response of the TDE over different delta_t values
		-- type   :
		-- inputs : 
		-- outputs: 
		p_num_spikes_over_delta_t: process is
			variable v_delta_t : time := 0 us;  -- time difference between the facilitatory and the trigger spikes
		begin  -- process p_num_spikes_over_delta_t
			--
			-- First reset
			--
			
			-- Set reset to 0
			i_nreset <= '0';
			-- Hold reset to 0 for 1 us;
			wait for 1 us;
			-- Clear reset
			i_nreset <= '1';
			-- Wait for few microseconds
			wait for 1 us;

			--
			-- TDE configuration
			--

			-- Set all the parameters (w = 4; d = 2; detec = 700)
			i_weight <= x"4";
			i_decay  <= x"2";
			i_detection_time <= x"02BC";

			-- Wait for 1 us;

			--
			-- Idle
			--
			-- Let the system in IDLE for 10 us
			wait for 10 us;

			--
			-- Sync
			--
			wait until i_clock'event and  i_clock = '1';
			wait for c_i_clock_period;

			--
			-- Loop
			--
			while v_delta_t <= 750 us loop
				-- Activate flag "new_delta_t_value"
				wait for c_i_clock_period;
				tb_delta_t_value <= v_delta_t;
				tb_new_delta_t_value <= '1';
				wait for c_i_clock_period;
				tb_new_delta_t_value <= '0';
				wait for c_i_clock_period;
				
				-- Facilitatory pulse
				i_facilitatory <= '1';
				wait for c_i_clock_period;
				i_facilitatory <= '0';

				-- Wait for delta_t
				wait for v_delta_t;

				-- Trigger pulse
				i_trigger <= '1';
				wait for c_i_clock_period;
				i_trigger <= '0';

				-- Wait for 710 us
				wait for 710 us;

				-- Update the delta_t value
				v_delta_t := v_delta_t + 50 us;
				
				wait for c_i_clock_period;
				tb_end_delta_t_value <= '1';
				wait for c_i_clock_period;
				tb_end_delta_t_value <= '0';
				wait for c_i_clock_period;
				
			end loop;
			
			-- Check the output
			report "End of the delta_t simulation" severity note;
			
			-- Finishing the simulation
			tb_end_of_simulation <= '1';
			
			-- Wait forever
			wait;
			
		end process p_num_spikes_over_delta_t;
	end generate g_delta_t_test;

	g_basic_cases_test: if c_basic_behavioral_test = true generate
		-- purpose: process for generating the response of the TDE for the basic cases
		-- type   :
		-- inputs : 
		-- outputs: 
		p_basic_cases_test: process
		begin
			--
			-- First reset
			--
			
			-- Set reset to 0
			i_nreset <= '0';
			-- Hold reset to 0 for 1 us;
			wait for 1 us;
			-- Clear reset
			i_nreset <= '1';
			-- Wait for few microseconds
			wait for 1 us;

			--
			-- TDE configuration
			--

			-- Set all the parameters
			i_weight <= x"4";
			i_decay  <= x"2";
			i_detection_time <= x"02BC";

			-- Wait
			wait for 1 us;

			--
			-- Idle
			--
			
			-- Let the system in IDLE for 10 us
			wait for 10 us;

			--
			-- Cases
			--

			---------
			-- Case 0: 1 facilitation pulse 
			---------

			-- Sync
			wait until i_clock'event and  i_clock = '1';
			wait for c_i_clock_period;

			-- Inconming pulse
			i_facilitatory <= '1';
			wait for c_i_clock_period;
			i_facilitatory <= '0';

			-- Wait for 710 us
			wait for 710 us;

			-- Check the output
			report "End of CASE 0." severity note;

			-- Wait for a few of microseconds
			wait for 5 us;

			---------
			-- Case 1: 1 trigger pulse 
			---------

			-- Sync
			wait until i_clock'event and  i_clock = '1';
			wait for c_i_clock_period;

			-- Inconming pulse
			i_trigger <= '1';
			wait for c_i_clock_period;
			i_trigger <= '0';

			-- Wait for 710 us
			wait for 10 us;

			-- Check the output
			report "End of CASE 1." severity note;

			-- Wait for a few of microseconds
			wait for 5 us;

			---------
			-- Case 2: 1 trigger pulse, then 1 facilitatory pulse 
			---------

			-- Sync
			wait until i_clock'event and  i_clock = '1';
			wait for c_i_clock_period;

			-- Trigger pulse
			i_trigger <= '1';
			wait for c_i_clock_period;
			i_trigger <= '0';

			-- Wait 1 clock cycle
			wait for c_i_clock_period;

			-- Facilitatory pulse
			i_facilitatory <= '1';
			wait for c_i_clock_period;
			i_facilitatory <= '0';

			-- Wait for 710 us
			wait for 710 us;

			-- Check the output
			report "End of CASE 2." severity note;

			-- Wait for a few of microseconds
			wait for 5 us;

			---------
			-- Case 3: 1 facilitatory pulse, then 1 trigger pulse after 710 us
			--         (out of the detection time)
			---------

			-- Sync
			wait until i_clock'event and  i_clock = '1';
			wait for c_i_clock_period;

			-- Facilitatory pulse
			i_facilitatory <= '1';
			wait for c_i_clock_period;
			i_facilitatory <= '0';

			-- Wait 1 clock cycle
			wait for 710 us;

			-- Trigger pulse
			i_trigger <= '1';
			wait for c_i_clock_period;
			i_trigger <= '0';

			-- Wait for 710 us
			wait for 710 us;

			-- Check the output
			report "End of CASE 3." severity note;

			-- Wait for a few of microseconds
			wait for 5 us;

			-------
			-- Case 4: 1 facilitatory pulse, then 1 trigger pulse after 10 us (low delay)
			-------

			-- Sync
			wait until i_clock'event and  i_clock = '1';
			wait for c_i_clock_period;

			-- Facilitatory pulse
			i_facilitatory <= '1';
			wait for c_i_clock_period;
			i_facilitatory <= '0';

			-- Wait 1 clock cycle
			wait for 10 us;

			-- Trigger pulse
			i_trigger <= '1';
			wait for c_i_clock_period;
			i_trigger <= '0';

			-- Wait for 710 us
			wait for 710 us;

			-- Check the output
			report "End of CASE 4." severity note;

			-- Wait for a few of microseconds
			wait for 5 us;

			-------
			-- Case 5: 1 facilitatory pulse, then 1 trigger pulse after 600 us (big delay)
			-------

			-- Sync
			wait until i_clock'event and  i_clock = '1';
			wait for c_i_clock_period;

			-- Facilitatory pulse
			i_facilitatory <= '1';
			wait for c_i_clock_period;
			i_facilitatory <= '0';

			-- Wait 1 clock cycle
			wait for 600 us;

			-- Trigger pulse
			i_trigger <= '1';
			wait for c_i_clock_period;
			i_trigger <= '0';

			-- Wait for 710 us
			wait for 710 us;

			-- Check the output
			report "End of CASE 5." severity note;

			-- Wait for a few of microseconds
			wait for 5 us;

			---------
			-- Case 6: 1 facilitatory pulse, then 1 trigger pulse after 100 us,
			--         and 1 trigger pulse after (100) + 300 us
			---------

			-- Sync
			wait until i_clock'event and  i_clock = '1';
			wait for c_i_clock_period;

			-- Facilitatory pulse
			i_facilitatory <= '1';
			wait for c_i_clock_period;
			i_facilitatory <= '0';

			-- Wait 1 clock cycle
			wait for 100 us;

			-- Trigger pulse
			i_trigger <= '1';
			wait for c_i_clock_period;
			i_trigger <= '0';

			-- Wait for 300 us
			wait for 10 us;

			-- Trigger pulse
			i_trigger <= '1';
			wait for c_i_clock_period;
			i_trigger <= '0';

			-- Wait
			wait for 700 us;

			-- Check the output
			report "End of CASE 6." severity note;

			-- Wait for a few of microseconds
			wait for 5 us;

			---------
			-- Case 7: 1 facilitatory pulse, then 1 facilitatory pulse after 100 us,
			--         and 1 trigger pulse after (100) + 300 us
			---------

			-- Sync
			wait until i_clock'event and  i_clock = '1';
			wait for c_i_clock_period;

			-- Facilitatory pulse
			i_facilitatory <= '1';
			wait for c_i_clock_period;
			i_facilitatory <= '0';

			-- Wait 1 clock cycle
			wait for 100 us;

			-- Facilitatory pulse
			i_facilitatory <= '1';
			wait for c_i_clock_period;
			i_facilitatory <= '0';

			-- Wait for 300 us
			wait for 300 us;

			-- Trigger pulse
			i_trigger <= '1';
			wait for c_i_clock_period;
			i_trigger <= '0';

			-- Wait
			wait for 700 us;

			-- Check the output
			report "End of CASE 7." severity note;

			-- Wait for a few of microseconds
			wait for 5 us;

			-- Finishing the simulation
			tb_end_of_simulation <= '1';
			
			wait;
		end process p_basic_cases_test;
	end generate g_basic_cases_test;

    -- purpose: i_tr_tick clock generation
    -- type   : sequential
    -- inputs : i_clock, i_nreset
    -- outputs: i_tr_tick
    p_countdown: process (i_nreset, i_clock)
        variable v_tr_tick_counter : integer range 0 to c_i_tr_tick_divisor_value := 0;  -- internal counter variable
    begin  -- process p_countdown
        if (i_nreset = '0') then          -- asynchronous reset (active low)
            v_tr_tick_counter := 0;
            i_tr_tick <= '0';
        elsif (i_clock'event and i_clock = '1') then  -- rising clock edge
            v_tr_tick_counter := v_tr_tick_counter + 1;
            if (v_tr_tick_counter = c_i_tr_tick_divisor_value) then
                v_tr_tick_counter := 0;
                i_tr_tick <= '1';
            else
                i_tr_tick <= '0';
            end if;
        else
            
        end if;
        
    end process p_countdown;

	-- purpose: Saving out the facilitatory input spikes
    -- type   : sequential
    -- inputs : i_clock, i_nreset, i_facilitatory
    -- outputs: 
    p_saving_faci_input_spikes: process (i_clock, i_nreset) is
        variable v_OLINE        : line;
        variable sim_time_str_v : string(1 to 30);  -- 30 chars should be enough
        variable sim_time_len_v : natural;
        variable events_counter : integer := 0;
    begin  -- process p_saving_faci_input_spikes
        if i_nreset = '0' then          -- asynchronous reset (active low)
            
        elsif tb_end_of_simulation = '1' then
            file_close(f_faci_spike);
        elsif i_clock'event and i_clock = '1' then  -- rising clock edge
            if i_facilitatory = '1' then
                sim_time_len_v := time'image(now)'length;
                sim_time_str_v := (others => ' ');
                sim_time_str_v(1 to sim_time_len_v) := time'image(now);
                events_counter := events_counter + 1;
                
                report "Event timestamp.......:'" & sim_time_str_v & "'";
                report "Event counter: " & integer'image(events_counter);

                write(v_OLINE, events_counter);
                write(v_OLINE, ';', right, 1);
                write(v_OLINE, sim_time_str_v, right, 1);
                writeline(f_faci_spike, v_OLINE);

            end if;
            
        end if;
    end process p_saving_faci_input_spikes;
	
	-- purpose: Saving out the trigger input spikes
    -- type   : sequential
    -- inputs : i_clock, i_nreset, i_trigger
    -- outputs: 
    p_saving_trig_input_spikes: process (i_clock, i_nreset) is
        variable v_OLINE        : line;
        variable sim_time_str_v : string(1 to 30);  -- 30 chars should be enough
        variable sim_time_len_v : natural;
        variable events_counter : integer := 0;
    begin  -- process p_saving_trig_input_spikes
        if i_nreset = '0' then          -- asynchronous reset (active low)
            
        elsif tb_end_of_simulation = '1' then
            file_close(f_trig_spike);
        elsif i_clock'event and i_clock = '1' then  -- rising clock edge
            if i_trigger = '1' then
                sim_time_len_v := time'image(now)'length;
                sim_time_str_v := (others => ' ');
                sim_time_str_v(1 to sim_time_len_v) := time'image(now);
                events_counter := events_counter + 1;
                
                report "Event timestamp.......:'" & sim_time_str_v & "'";
                report "Event counter: " & integer'image(events_counter);

                write(v_OLINE, events_counter);
                write(v_OLINE, ';', right, 1);
                write(v_OLINE, sim_time_str_v, right, 1);
                writeline(f_trig_spike, v_OLINE);

            end if;
            
        end if;
    end process p_saving_trig_input_spikes;
	
    -- purpose: Saving out the output spikes
    -- type   : sequential
    -- inputs : i_clock, i_nreset, o_output_spike
    -- outputs: 
    p_saving_output_spikes: process (i_clock, i_nreset) is
        variable v_OLINE        : line;
        variable sim_time_str_v : string(1 to 30);  -- 30 chars should be enough
        variable sim_time_len_v : natural;
        variable events_counter : integer := 0;
    begin  -- process p_saving_output_results
        if i_nreset = '0' then          -- asynchronous reset (active low)
            
        elsif tb_end_of_simulation = '1' then
            file_close(f_out_spikes);
        elsif i_clock'event and i_clock = '1' then  -- rising clock edge
            if o_output_spike = '1' then
                sim_time_len_v := time'image(now)'length;
                sim_time_str_v := (others => ' ');
                sim_time_str_v(1 to sim_time_len_v) := time'image(now);
                events_counter := events_counter + 1;
                
                report "Event timestamp.......:'" & sim_time_str_v & "'";
                report "Event counter: " & integer'image(events_counter);

                write(v_OLINE, events_counter);
                write(v_OLINE, ';', right, 1);
                write(v_OLINE, sim_time_str_v, right, 1);
                writeline(f_out_spikes, v_OLINE);

            end if;
            
        end if;
    end process p_saving_output_spikes;
	
	g_save_outspikes_file_delta_t: if c_delta_t_variation_test = true generate
		-- purpose: Saving out the output spikes
		-- type   : sequential
		-- inputs : i_clock, i_nreset, o_output_spike
		-- outputs: 
		p_saving_output_spikes_delta_t: process (i_clock, i_nreset) is
			variable v_OLINE        : line;
			variable sim_time_str_v : string(1 to 30);  -- 30 chars should be enough
			variable sim_time_len_v : natural;
			variable events_counter : integer := 0;
		begin  -- process p_saving_output_results
			if i_nreset = '0' then          -- asynchronous reset (active low)
				
			elsif tb_end_of_simulation = '1' then
				file_close(f_out_spikes_delta_t);
			elsif i_clock'event and i_clock = '1' then  -- rising clock edge
				if tb_new_delta_t_value = '1' then
					sim_time_len_v := time'image(tb_delta_t_value)'length;
					sim_time_str_v := (others => ' ');
					sim_time_str_v(1 to sim_time_len_v) := time'image(tb_delta_t_value);
					
					write(v_OLINE, string'("-1"));
					write(v_OLINE, ';', right, 1);
					write(v_OLINE, sim_time_str_v, right, 1);
					writeline(f_out_spikes_delta_t, v_OLINE);
					
					events_counter := 0;
				end if;
				if tb_end_delta_t_value = '1' then
					sim_time_len_v := time'image(tb_delta_t_value)'length;
					sim_time_str_v := (others => ' ');
					sim_time_str_v(1 to sim_time_len_v) := time'image(tb_delta_t_value);
					
					write(v_OLINE, string'("-2"));
					write(v_OLINE, ';', right, 1);
					write(v_OLINE, sim_time_str_v, right, 1);
					writeline(f_out_spikes_delta_t, v_OLINE);
					
					events_counter := 0;
				end if;
				if o_output_spike = '1' then
					sim_time_len_v := time'image(now)'length;
					sim_time_str_v := (others => ' ');
					sim_time_str_v(1 to sim_time_len_v) := time'image(now);
					events_counter := events_counter + 1;

					write(v_OLINE, events_counter);
					write(v_OLINE, ';', right, 1);
					write(v_OLINE, sim_time_str_v, right, 1);
					writeline(f_out_spikes_delta_t, v_OLINE);

				end if;
				
			end if;
		end process p_saving_output_spikes_delta_t;
	end generate g_save_outspikes_file_delta_t;
	
	--**************************************************************************
	---------------------------------------------------------------------------*
    -- ONLY IN MODELSIM                                                        *
    ---------------------------------------------------------------------------*
	--**************************************************************************
	g_modelSim_gen: if c_is_ModelSim = true generate
		---------------------------------------------------------------------------
		-- Facilitatory timer value
		---------------------------------------------------------------------------
		p_spying_facilitation_timer_value: process
		begin
			init_signal_spy("/tde_tb/DUT/w_facilitation_timer_value","/spy_facilitatory_timer_value", 1);
			wait;
		end process p_spying_facilitation_timer_value;
		
		-- purpose: Saving out the facilitatory internal timer value
		-- type   : 
		-- inputs : 
		-- outputs: 
		p_saving_spy_facilitation_timer_value: process (i_tr_tick) is --spy_facilitatory_timer_value) is
			variable v_OLINE        : line;
			variable sim_time_str_v : string(1 to 30);  -- 30 chars should be enough
			variable sim_time_len_v : natural;
			variable signal_value   : integer := 0;
		begin  -- process p_saving_spy_facilitation_timer_value
			if tb_end_of_simulation = '1' then
				file_close(f_faci_timer_val);
            else
                if i_tr_tick = '1' then
                    sim_time_len_v := time'image(now)'length;
                    sim_time_str_v := (others => ' ');
                    sim_time_str_v(1 to sim_time_len_v) := time'image(now);
                    signal_value := to_integer(unsigned(spy_facilitatory_timer_value));

                    write(v_OLINE, signal_value);
                    write(v_OLINE, ';', right, 1);
                    write(v_OLINE, sim_time_str_v, right, 1);
                    writeline(f_faci_timer_val, v_OLINE);
                end if;
			end if;

		end process p_saving_spy_facilitation_timer_value;
		
		---------------------------------------------------------------------------
		-- Facilitatory timer value weighted
		---------------------------------------------------------------------------
		p_spying_facilitation_timer_value_weighted: process
		begin
			init_signal_spy("/tde_tb/DUT/w_value_to_generate","/spy_facilitatory_timer_value_weighted", 1);
			wait;
		end process p_spying_facilitation_timer_value_weighted;
		
		-- purpose: Saving out the facilitatory internal timer value weighted
		-- type   : 
		-- inputs : 
		-- outputs: 
		p_saving_spy_facilitation_timer_value_weighted: process (i_tr_tick) is --spy_facilitatory_timer_value_weighted) is
			variable v_OLINE        : line;
			variable sim_time_str_v : string(1 to 30);  -- 30 chars should be enough
			variable sim_time_len_v : natural;
			variable signal_value   : integer := 0;
		begin  -- process p_saving_spy_facilitation_timer_value
			if tb_end_of_simulation = '1' then
				file_close(f_faci_timer_val_weighted);
            else
                if i_tr_tick = '1' then
                    sim_time_len_v := time'image(now)'length;
                    sim_time_str_v := (others => ' ');
                    sim_time_str_v(1 to sim_time_len_v) := time'image(now);
                    signal_value := to_integer(unsigned(spy_facilitatory_timer_value_weighted));

                    write(v_OLINE, signal_value);
                    write(v_OLINE, ';', right, 1);
                    write(v_OLINE, sim_time_str_v, right, 1);
                    writeline(f_faci_timer_val_weighted, v_OLINE);
                end if;
			end if;

		end process p_saving_spy_facilitation_timer_value_weighted;
		
		---------------------------------------------------------------------------
		-- Trigger timer value
		---------------------------------------------------------------------------
		p_spying_trigger_timer_value: process
		begin
			init_signal_spy("/tde_tb/DUT/w_trigger_timer_value","/spy_trigger_timer_value", 1);
			wait;
		end process p_spying_trigger_timer_value;
		
		-- purpose: Saving out the trigger internal timer value
		-- type   : 
		-- inputs : 
		-- outputs: 
		p_saving_spy_trigger_timer_value: process (i_tr_tick) is --spy_trigger_timer_value) is
			variable v_OLINE        : line;
			variable sim_time_str_v : string(1 to 30);  -- 30 chars should be enough
			variable sim_time_len_v : natural;
			variable signal_value   : integer := 0;
		begin  -- process p_saving_spy_facilitation_timer_value
			if tb_end_of_simulation = '1' then
				file_close(f_trigg_timer_val);
            else
                if i_tr_tick = '1' then
                    sim_time_len_v := time'image(now)'length;
                    sim_time_str_v := (others => ' ');
                    sim_time_str_v(1 to sim_time_len_v) := time'image(now);
                    signal_value := to_integer(unsigned(spy_trigger_timer_value));

                    write(v_OLINE, signal_value);
                    write(v_OLINE, ';', right, 1);
                    write(v_OLINE, sim_time_str_v, right, 1);
                    writeline(f_trigg_timer_val, v_OLINE);
                end if;
			end if;

		end process p_saving_spy_trigger_timer_value;
		
		---------------------------------------------------------------------------
		-- Trigger timer value weighted
		---------------------------------------------------------------------------
		p_spying_trigger_timer_value_weighted: process
		begin
			init_signal_spy("/tde_tb/DUT/w_trigger_timer_value_shifted","/spy_trigger_timer_value_weighted", 1);
			wait;
		end process p_spying_trigger_timer_value_weighted;
		
		-- purpose: Saving out the trigger internal timer value
		-- type   : 
		-- inputs : 
		-- outputs: 
		p_saving_spy_trigger_timer_value_weighted: process (i_tr_tick) is --spy_trigger_timer_value_weighted) is
			variable v_OLINE        : line;
			variable sim_time_str_v : string(1 to 30);  -- 30 chars should be enough
			variable sim_time_len_v : natural;
			variable signal_value   : integer := 0;
		begin  -- process p_saving_spy_trigger_timer_value_weighted
			if tb_end_of_simulation = '1' then
				file_close(f_trigg_timer_val_weighted);
            else
                if i_tr_tick = '1' then
                    sim_time_len_v := time'image(now)'length;
                    sim_time_str_v := (others => ' ');
                    sim_time_str_v(1 to sim_time_len_v) := time'image(now);
                    signal_value := to_integer(unsigned(spy_trigger_timer_value_weighted));

                    write(v_OLINE, signal_value);
                    write(v_OLINE, ';', right, 1);
                    write(v_OLINE, sim_time_str_v, right, 1);
                    writeline(f_trigg_timer_val_weighted, v_OLINE);
                end if;
			end if;

		end process p_saving_spy_trigger_timer_value_weighted;

        ---------------------------------------------------------------------------
        -- Spike generator value to generate
        ---------------------------------------------------------------------------
		p_spying_sgen_val_to_generate: process
		begin
			init_signal_spy("/tde_tb/DUT/w_value_to_generate","/spy_spikegen_val2gen", 1);
			wait;
		end process p_spying_sgen_val_to_generate;

        -- purpose: Saving out the value to be converted to spikes
        -- type   : 
        -- inputs : i_tr_tick
        -- outputs: 
        p_saving_spy_sgen_val_to_generate: process (i_tr_tick) is
            variable v_OLINE : line;
            variable sim_time_str_v : string(1 to 30);
            variable sim_time_len_v : natural;
            variable signal_value : integer := 0;
        begin  -- process p_saving_spy_sgen_val_to_generate
            if tb_end_of_simulation = '1' then
                file_close(f_sgen_val2gen);
            else
                if i_tr_tick = '1' then
                    sim_time_len_v := time'image(now)'length;
                    sim_time_str_v := (others => ' ');
                    sim_time_str_v(1 to sim_time_len_v) := time'image(now);
                    signal_value := to_integer(unsigned(spy_spikegen_val2gen));

                    write(v_OLINE, signal_value);
                    write(v_OLINE, ';', right, 1);
                    write(v_OLINE, sim_time_str_v, right, 1);
                    writeline(f_sgen_val2gen, v_OLINE);
                end if;

            end if;

        end process p_saving_spy_sgen_val_to_generate;
                
		---------------------------------------------------------------------------
		-- Spike generator clock divider value
		---------------------------------------------------------------------------
		p_spying_sgen_clkdiv_value: process
		begin
			init_signal_spy("/tde_tb/DUT/w_clkdiv_value","/spy_spikegen_clk_div", 1);
			wait;
		end process p_spying_sgen_clkdiv_value;
		
		-- purpose: Saving out the trigger internal timer value
		-- type   : 
		-- inputs : 
		-- outputs: 
		p_saving_spy_sgen_clkdiv_value: process (i_tr_tick) is --spy_spikegen_clk_div) is
			variable v_OLINE        : line;
			variable sim_time_str_v : string(1 to 30);  -- 30 chars should be enough
			variable sim_time_len_v : natural;
			variable signal_value   : integer := 0;
		begin  -- process p_saving_spy_sgen_clkdiv_value
			if tb_end_of_simulation = '1' then
				file_close(f_sgen_clkdiv_val);
            else
                if i_tr_tick = '1' then
                    sim_time_len_v := time'image(now)'length;
                    sim_time_str_v := (others => ' ');
                    sim_time_str_v(1 to sim_time_len_v) := time'image(now);
                    signal_value := to_integer(unsigned(spy_spikegen_clk_div));

                    write(v_OLINE, signal_value);
                    write(v_OLINE, ';', right, 1);
                    write(v_OLINE, sim_time_str_v, right, 1);
                    writeline(f_sgen_clkdiv_val, v_OLINE);
                end if;
			end if;

		end process p_saving_spy_sgen_clkdiv_value;
	
	end generate g_modelSim_gen;
	--**************************************************************************
	---------------------------------------------------------------------------*
    -- ONLY IN MODELSIM                                                        *
    ---------------------------------------------------------------------------*
	--**************************************************************************
end architecture Behavioral;

-------------------------------------------------------------------------------

configuration tde_tb_Behavioral_cfg of tde_tb is
    for Behavioral
    end for;
end tde_tb_Behavioral_cfg;

-------------------------------------------------------------------------------
