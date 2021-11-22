--/////////////////////////////////////////////////////////////////////////////////
--//                                                                             //
--//    Copyright � 2020  Daniel Gutierrez-Galan                                 //
--//                                                                             //
--//    This file is part of the TDE_vhdl project.                               //
--//                                                                             //
--//    TDE_vhdl is free software: you can redistribute it and/or modify         //
--//    it under the terms of the GNU General Public License as published by     //
--//    the Free Software Foundation, either version 3 of the License, or        //
--//    (at your option) any later version.                                      //
--//                                                                             //
--//    THE_vhdl is distributed in the hope that it will be useful,              //
--//    but WITHOUT ANY WARRANTY; without even the implied warranty of           //
--//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.See the              //
--//    GNU General Public License for more details.                             //
--//                                                                             //
--//    You should have received a copy of the GNU General Public License        //
--//    along with TDE_vhdl. If not, see <http://www.gnu.org/licenses/>.         //
--//                                                                             //
--/////////////////////////////////////////////////////////////////////////////////

-------------------------------------------------------------------------------
-- Title      : Testbench for design "tde"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : tde_tb_modelsim.vhd
-- Author     : Daniel Gutierrez-Galan (dgutierrez@atc.us.es)
-- Company    : University of Seville
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
            g_NBITS              : integer range 0 to 32         := 16;
			g_LOG2NBITS          : integer range 0 to 5          := 4;
			g_SPIKEGEN_METHOD    : integer range 0 to 1          := 0;
			g_TWO_POW_NBITS_DATA : integer                       := 65536 
        );
        port (
            i_clock              : in  std_logic;
            i_nreset             : in  std_logic;
            i_tr_tick            : in  std_logic;
            i_facilitatory       : in  std_logic;
			i_trigger            : in  std_logic;
			i_tau                : in  std_logic_vector((g_LOG2NBITS - 1) downto 0);
            i_weight             : in  std_logic_vector((g_LOG2NBITS - 1) downto 0);
            i_decay              : in  std_logic_vector((g_LOG2NBITS - 1) downto 0);
			i_detection_time     : in  std_logic_vector((g_NBITS - 1) downto 0);
			i_faci_sat_value     : in  std_logic_vector((g_NBITS - 1) downto 0);
        	i_trig_sat_value     : in  std_logic_vector((g_NBITS - 1) downto 0);
            o_output_spike       : out std_logic
        );
    end component tde;

    ---------------------------------------------------------------------------
    -- UUT signals declaration
    ---------------------------------------------------------------------------
 
    -- component generics
    constant g_NBITS              : integer range 0 to 32         := 16;
	constant g_LOG2NBITS          : integer range 0 to 5          := 4;
	constant g_SPIKEGEN_METHOD    : integer range 0 to 1          := 1;
    constant g_TWO_POW_NBITS_DATA : integer                       := 65536;

    -- component input ports
    signal i_clock          : std_logic := '0';
    signal i_nreset         : std_logic := '0';
    signal i_tr_tick        : std_logic := '0';
    signal i_facilitatory   : std_logic := '0';
	signal i_trigger        : std_logic := '0';
	signal i_tau            : std_logic_vector((g_LOG2NBITS - 1) downto 0) := (others => '0');
    signal i_weight         : std_logic_vector((g_LOG2NBITS - 1) downto 0) := (others => '0');
    signal i_decay          : std_logic_vector((g_LOG2NBITS - 1) downto 0) := (others => '0');
	signal i_detection_time : std_logic_vector((g_NBITS - 1) downto 0)     := (others => '0');
	signal i_faci_sat_value : std_logic_vector((g_NBITS - 1) downto 0)     := (others => '0');
	signal i_trig_sat_value : std_logic_vector((g_NBITS - 1) downto 0)     := (others => '0');

    -- component output ports
    signal o_output_spike   : std_logic;

    ---------------------------------------------------------------------------
    -- Testbench signals declaration
    ---------------------------------------------------------------------------
	
	-- Clock
	constant c_i_clock_period : time := 20 ns; -- 50 MHz clock
	
	-- Simulator options: CHECK BEFORE RUN!
	constant c_is_ModelSim : boolean := true; -- If true, ModelSIM should be used. If false, VivadoSim should be used.
	constant c_absolute_path : string := "D:/Universidad/Repositorios/GitHub/Doctorado/TDE_vhdl/TDE/Testbench/Results/Files/"; -- Absolute path to the testbench files
	
    -- Clock divisor value
    constant c_i_tr_tick_divisor_value : integer range 0 to 100000 := 50;  -- Clock divisor value: 20ns * 50 = 1000 ns = 1us; 50000 to work with ms

    -- Saving results in a file
    signal tb_end_of_simulation : std_logic := '0'; -- Flag to indicate the end of the simulation
    
    file f_faci_spike : text open write_mode is c_absolute_path & "input_faci_spikes.txt";  -- Input facilitatory spikes filename
    file f_trig_spike : text open write_mode is c_absolute_path & "input_trig_spikes.txt";  -- Input trigger spikes filename
    file f_out_spikes : text open write_mode is c_absolute_path & "output_spikes.txt";      -- Output spikes from the TDE model filename
	
	-- Saving results of the delta_t variation test in a file
	file f_out_spikes_delta_t        : text open write_mode is c_absolute_path & "output_spikes_delta_t.txt";  -- Output spikes from the TDE model
	file f_out_spikes_global_delta_t : text;
	file f_out_spikes_tunning_curves : text;
	
	-- Test to run
	
	-- Cases for the TDE: config: tau --> 0, weight --> 4, decay --> 2, detection_time --> 700 us
	-- Case 0: 1 facilitatory
	-- Case 1: 1 trigger
	-- Case 2: 1 trigger and 1 facilitatory
	-- Case 3: 1 facilitatory and 1 trigger after 710 us
	-- Case 4: 1 facilitatory and 1 trigger after 10 us
	-- Case 5: 1 facilitatory and 1 trigger after 600 us
	-- Case 6: 1 facilitatory and 1 trigger after 100 us and another after (100+) 300 us
	-- Case 7: 1 facilitatory and 1 facilitatory after 100 us and 1 trigger after (100+) 300 us
	constant c_basic_behavioral_test_cases_selection : std_logic_vector(7 downto 0) := "00000001";  --Set to '1' to activate: 0 LSB, 7 MSB
	
	constant c_basic_behavioral_test                 : boolean := true;  -- If true, TDE behavioral test with basic cases will be launched
	constant c_delta_t_variation_test                : boolean := false; --If true, TDE behavioral test with delta_t variation will be launched
	constant c_global_delta_t_variation_test         : boolean := false; -- If true, TDE behavioral test with delta_t variation and multiple TDE detec time will be launched
	constant c_tunning_curves_test                   : boolean := false; -- If true, TDE behavioral test with delta_t variation and multiple TDE config will be launched
	
	-- Params for the tunning curves test
	-- For 4 TDEs:
	--		- TDE0:
	--		- TDE1:
	--		- TDE2:
	--		- TDE3:
	-- Microseconds --
	-- constant c_tde_population : integer := 4;
	-- type t_array_nbits is array (0 to (c_tde_population - 1)) of std_logic_vector((g_NBITS - 1) downto 0);
	-- constant c_tunning_curves_detection_time_values : t_array_nbits := (x"0064", x"012C", x"01F4", x"02BC");

	-- type t_array_log2nbits is array (0 to (c_tde_population - 1)) of std_logic_vector((g_LOG2NBITS - 1) downto 0);
	-- constant c_tunning_curves_tau_values : t_array_log2nbits := (x"0", x"0", x"0", x"0");
	-- constant c_tunning_curves_weight_time_values : t_array_log2nbits := (x"9", x"6", x"5", x"3");
	-- constant c_tunning_curves_decay_time_values : t_array_log2nbits := (x"2", x"1", x"2", x"2");
	-- Milliseconds --
	constant c_tde_population : integer := 4;
	type t_array_nbits is array (0 to (c_tde_population - 1)) of std_logic_vector((g_NBITS - 1) downto 0);
	constant c_tunning_curves_detection_time_values : t_array_nbits := (x"0064", x"012C", x"01F4", x"02BC");

	type t_array_log2nbits is array (0 to (c_tde_population - 1)) of std_logic_vector((g_LOG2NBITS - 1) downto 0);
	constant c_tunning_curves_tau_values : t_array_log2nbits := (x"0", x"0", x"0", x"0");
	constant c_tunning_curves_weight_time_values : t_array_log2nbits := (x"9", x"6", x"5", x"3");
	constant c_tunning_curves_decay_time_values : t_array_log2nbits := (x"2", x"1", x"2", x"2");
	
	signal tb_new_delta_t_value : std_logic := '0'; -- Flag to indicate the saving_out process there is a new iteration
	signal tb_end_delta_t_value : std_logic := '0'; -- Flag to indicate the saving_out process that the iteration finished
	signal tb_delta_t_value : time := 0 us;
	
	signal tb_new_tde_config : std_logic := '0'; -- Flag to indicate the saving_out process there is a new tde configuration
	signal tb_end_tde_config : std_logic := '0'; -- Flag to indicate the saving_out process that the iteration finished
	
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

	---------------------------------------------------------------------------
    -- Instantiate the Unit Under Test (UUT)
	---------------------------------------------------------------------------
	
    -- component instantiation
    DUT: entity work.tde
        generic map (
            g_NBITS              => g_NBITS,
			g_LOG2NBITS          => g_LOG2NBITS,
			g_SPIKEGEN_METHOD    => g_SPIKEGEN_METHOD,
			g_TWO_POW_NBITS_DATA => g_TWO_POW_NBITS_DATA
        )
        port map (
            i_clock              => i_clock,
            i_nreset             => i_nreset,
            i_tr_tick            => i_tr_tick,
            i_facilitatory       => i_facilitatory,
			i_trigger            => i_trigger,
			i_tau                => i_tau,
            i_weight             => i_weight,
            i_decay              => i_decay,
			i_detection_time     => i_detection_time,
			i_faci_sat_value     => i_faci_sat_value,
			i_trig_sat_value     => i_trig_sat_value,
            o_output_spike       => o_output_spike
        );

	---------------------------------------------------------------------------
    -- Clocks generation
    ---------------------------------------------------------------------------
	i_clock <= not i_clock after c_i_clock_period/2;

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
	
	---------------------------------------------------------------------------
    -- Behavioral processes
    ---------------------------------------------------------------------------
	
	g_tunning_curves_test : if c_tunning_curves_test = true generate
		-- purpose: process for generating the response of multiple TDE configs over different delta_t values
		-- type   :
		-- inputs : 
		-- outputs:
		p_num_spikes_of_tunning_curves: process is
			variable v_delta_t : time := 0 us;  -- time difference between the facilitatory and the trigger spikes
			variable v_detection_time : std_logic_vector((g_NBITS - 1) downto 0) := x"0000"; -- 100: 0x64
			variable v_decay : std_logic_vector((g_LOG2NBITS - 1) downto 0) := x"0"; 
			variable v_weight : std_logic_vector((g_LOG2NBITS - 1) downto 0) := x"0";
			variable v_tau : std_logic_vector((g_LOG2NBITS - 1) downto 0) := x"0";
			variable v_tde_id : integer := 0;
		begin -- process p_num_spikes_of_tunning_curves
			
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

			while(v_tde_id < c_tde_population) loop
				
				--
				-- Sync
				--
				wait until i_clock'event and  i_clock = '1';
				wait for c_i_clock_period;
				
				tb_new_tde_config <= '1';
				wait for c_i_clock_period;
				tb_new_tde_config <= '0';
				wait for c_i_clock_period;
				
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
				i_tau <= c_tunning_curves_tau_values(v_tde_id);
				i_weight <= c_tunning_curves_weight_time_values(v_tde_id);
				i_decay  <= c_tunning_curves_decay_time_values(v_tde_id);
				i_detection_time <= c_tunning_curves_detection_time_values(v_tde_id);
				i_faci_sat_value <= x"0300";
				i_trig_sat_value <= x"0300";

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
				while v_delta_t <= 750 us loop--75 ms loop --750 us loop
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
					wait for 710 us;--71 ms;--710 us;

					-- Update the delta_t value
					v_delta_t := v_delta_t + 25 us;--5 ms;--25 us;
					
					wait for c_i_clock_period;
					tb_end_delta_t_value <= '1';
					wait for c_i_clock_period;
					tb_end_delta_t_value <= '0';
					wait for c_i_clock_period;
					
				end loop;
			
				-- Indicate this iteration has been completed!
				tb_end_tde_config <= '1';
				wait for c_i_clock_period;
				tb_end_tde_config <= '0';
				wait for c_i_clock_period;

				v_tde_id := v_tde_id + 1;
				wait for c_i_clock_period;
				
				-- Clear the delta_t variable
				v_delta_t := 0 us;
				wait for c_i_clock_period;
				
			end loop;
			
			-- Check the output
			report "End of the delta_t simulation" severity note;
			
			-- Finishing the simulation
			tb_end_of_simulation <= '1';
			
			-- Wait forever
			wait;

		end process p_num_spikes_of_tunning_curves;

	end generate g_tunning_curves_test;
	
	g_global_delta_t_test: if c_global_delta_t_variation_test = true generate
		-- purpose: process for generating the response of multiple TDE detec time over different delta_t values
		-- type   :
		-- inputs : 
		-- outputs: 
		p_num_spikes_over_global_delta_t: process is
			variable v_delta_t : time := 0 us;  -- time difference between the facilitatory and the trigger spikes
			variable v_detection_time : std_logic_vector((g_NBITS - 1) downto 0) := x"0064";--x"000A";--x"0064";--(others => '0');
			variable v_decay : std_logic_vector((g_LOG2NBITS - 1) downto 0) := x"2"; 
			variable v_weight : std_logic_vector((g_LOG2NBITS - 1) downto 0) := x"4";
		begin  -- process p_num_spikes_over_delta_t
		
			---------------------------------------
			-- Microseconds
			---------------------------------------

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
			
			while(v_detection_time <= x"2BC") loop
				
				--
				-- Sync
				--
				wait until i_clock'event and  i_clock = '1';
				wait for c_i_clock_period;
				
				tb_new_tde_config <= '1';
				wait for c_i_clock_period;
				tb_new_tde_config <= '0';
				wait for c_i_clock_period;
				
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
				i_faci_sat_value <= x"0300";
				i_trig_sat_value <= x"0300";

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
			
				-- Indicate this iteration has been completed!
				tb_end_tde_config <= '1';
				wait for c_i_clock_period;
				tb_end_tde_config <= '0';
				wait for c_i_clock_period;
				
				-- Update the detection time
				v_detection_time := v_detection_time + x"0064"; -- 100: 0x64; 200: 0xCB
				wait for c_i_clock_period;
				
				-- Clear the delta_t variable
				v_delta_t := 0 us;
				wait for c_i_clock_period;
				
			end loop;
			
			-- Check the output
			report "End of the delta_t simulation" severity note;
			
			-- Finishing the simulation
			tb_end_of_simulation <= '1';
			
			-- Wait forever
			wait;

			---------------------------------------
			-- Milliseconds
			---------------------------------------

			-- --
			-- -- First reset
			-- --
			
			-- -- Set reset to 0
			-- i_nreset <= '0';
			-- -- Hold reset to 0 for 1 us;
			-- wait for 1 us;
			-- -- Clear reset
			-- i_nreset <= '1';
			-- -- Wait for few microseconds
			-- wait for 1 us;
			
			-- while(v_detection_time <= x"46") loop
				
			-- 	--
			-- 	-- Sync
			-- 	--
			-- 	wait until i_clock'event and  i_clock = '1';
			-- 	wait for c_i_clock_period;
				
			-- 	tb_new_tde_config <= '1';
			-- 	wait for c_i_clock_period;
			-- 	tb_new_tde_config <= '0';
			-- 	wait for c_i_clock_period;
				
			-- 	--
			-- 	-- First reset
			-- 	--
				
			-- 	-- Set reset to 0
			-- 	i_nreset <= '0';
			-- 	-- Hold reset to 0 for 1 us;
			-- 	wait for 1 us;
			-- 	-- Clear reset
			-- 	i_nreset <= '1';
			-- 	-- Wait for few microseconds
			-- 	wait for 1 us;

			-- 	--
			-- 	-- TDE configuration
			-- 	--

			-- 	-- Set all the parameters (w = 4; d = 2; detec = 700)
			-- 	i_weight <= x"0";
			-- 	i_decay  <= x"3";
			-- 	i_detection_time <= v_detection_time;
			-- 	i_faci_sat_value <= x"0300";
			-- 	i_trig_sat_value <= x"0300";

			-- 	-- Wait for 1 us;

			-- 	--
			-- 	-- Idle
			-- 	--
			-- 	-- Let the system in IDLE for 10 us
			-- 	wait for 10 ms;

			-- 	--
			-- 	-- Sync
			-- 	--
			-- 	wait until i_clock'event and  i_clock = '1';
			-- 	wait for c_i_clock_period;

			-- 	--
			-- 	-- Loop
			-- 	--
			-- 	while v_delta_t <= 75 ms loop
			-- 		-- Activate flag "new_delta_t_value"
			-- 		wait for c_i_clock_period;
			-- 		tb_delta_t_value <= v_delta_t;
			-- 		tb_new_delta_t_value <= '1';
			-- 		wait for c_i_clock_period;
			-- 		tb_new_delta_t_value <= '0';
			-- 		wait for c_i_clock_period;
					
			-- 		-- Facilitatory pulse
			-- 		i_facilitatory <= '1';
			-- 		wait for c_i_clock_period;
			-- 		i_facilitatory <= '0';

			-- 		-- Wait for delta_t
			-- 		wait for v_delta_t;

			-- 		-- Trigger pulse
			-- 		i_trigger <= '1';
			-- 		wait for c_i_clock_period;
			-- 		i_trigger <= '0';

			-- 		-- Wait for 710 us
			-- 		wait for 71 ms;

			-- 		-- Update the delta_t value
			-- 		v_delta_t := v_delta_t + 5 ms;
					
			-- 		wait for c_i_clock_period;
			-- 		tb_end_delta_t_value <= '1';
			-- 		wait for c_i_clock_period;
			-- 		tb_end_delta_t_value <= '0';
			-- 		wait for c_i_clock_period;
					
			-- 	end loop;
			
			-- 	-- Indicate this iteration has been completed!
			-- 	tb_end_tde_config <= '1';
			-- 	wait for c_i_clock_period;
			-- 	tb_end_tde_config <= '0';
			-- 	wait for c_i_clock_period;
				
			-- 	-- Update the detection time
			-- 	v_detection_time := v_detection_time + x"000A"; -- 100: 0x64; 200: 0xCB
			-- 	wait for c_i_clock_period;
				
			-- 	-- Clear the delta_t variable
			-- 	v_delta_t := 0 us;
			-- 	wait for c_i_clock_period;
				
			-- end loop;
			
			-- -- Check the output
			-- report "End of the delta_t simulation" severity note;
			
			-- -- Finishing the simulation
			-- tb_end_of_simulation <= '1';
			
			-- -- Wait forever
			-- wait;
			
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
			----------------------------------------------------------------------------
			-- Microseconds
			----------------------------------------------------------------------------
			-- --
			-- -- First reset
			-- --
			
			-- -- Set reset to 0
			-- i_nreset <= '0';
			-- -- Hold reset to 0 for 1 us;
			-- wait for 1 us;
			-- -- Clear reset
			-- i_nreset <= '1';
			-- -- Wait for few microseconds
			-- wait for 1 us;

			-- --
			-- -- TDE configuration
			-- --

			-- -- Set all the parameters (w = 4; d = 2; detec = 700)
			-- i_weight <= x"4"; --4, 0
			-- i_decay  <= x"2"; --2, 3
			-- i_detection_time <= x"02BC"; --02bc, 0046
			-- i_faci_sat_value <= x"0300";
			-- i_trig_sat_value <= x"0300";

			-- -- Wait for 1 us;

			-- --
			-- -- Idle
			-- --
			-- -- Let the system in IDLE for 10 us
			-- wait for 10 us;

			-- --
			-- -- Sync
			-- --
			-- wait until i_clock'event and  i_clock = '1';
			-- wait for c_i_clock_period;

			-- --
			-- -- Loop
			-- --
			-- while v_delta_t <= 750 us loop
			-- 	-- Activate flag "new_delta_t_value"
			-- 	wait for c_i_clock_period;
			-- 	tb_delta_t_value <= v_delta_t;
			-- 	tb_new_delta_t_value <= '1';
			-- 	wait for c_i_clock_period;
			-- 	tb_new_delta_t_value <= '0';
			-- 	wait for c_i_clock_period;
				
			-- 	-- Facilitatory pulse
			-- 	i_facilitatory <= '1';
			-- 	wait for c_i_clock_period;
			-- 	i_facilitatory <= '0';

			-- 	-- Wait for delta_t
			-- 	wait for v_delta_t;

			-- 	-- Trigger pulse
			-- 	i_trigger <= '1';
			-- 	wait for c_i_clock_period;
			-- 	i_trigger <= '0';

			-- 	-- Wait for 710 us
			-- 	wait for 710 us;

			-- 	-- Update the delta_t value
			-- 	v_delta_t := v_delta_t + 50 us;
				
			-- 	wait for c_i_clock_period;
			-- 	tb_end_delta_t_value <= '1';
			-- 	wait for c_i_clock_period;
			-- 	tb_end_delta_t_value <= '0';
			-- 	wait for c_i_clock_period;
				
			-- end loop;
			
			-- -- Check the output
			-- report "End of the delta_t simulation" severity note;
			
			-- -- Finishing the simulation
			-- tb_end_of_simulation <= '1';
			
			-- -- Wait forever
			-- wait;
			----------------------------------------------------------------------------
			-- Milliseconds
			----------------------------------------------------------------------------
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
			i_weight <= x"0"; --4, 0
			i_decay  <= x"3"; --2, 3
			i_detection_time <= x"0046"; --02bc, 0046
			i_faci_sat_value <= x"0300";
			i_trig_sat_value <= x"0300";

			-- Wait for 1 us;

			--
			-- Idle
			--
			-- Let the system in IDLE for 10 ms
			wait for 10 ms;

			--
			-- Sync
			--
			wait until i_clock'event and  i_clock = '1';
			wait for c_i_clock_period;

			--
			-- Loop
			--
			while v_delta_t <= 75 ms loop
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

				-- Wait for 71 ms
				wait for 71 ms;

				-- Update the delta_t value
				v_delta_t := v_delta_t + 5 ms;
				
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
			i_tau            <= x"0"; --; 0 for ms
			i_weight         <= x"1"; --; 0 for ms
			i_decay          <= x"1"; --; 3 for ms; 0x046 for ms detection time
			i_detection_time <= x"02BC"; --100 = 0x64; 200 = 0xC8; 300 = 0x12C; 400 = 0x190; 500 = 0x1F4; 600 = 0x258; 700
			i_faci_sat_value <= x"03BC"; --0x3bc
			i_trig_sat_value <= x"03BC";

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

			-- If this case has been enabled
			if c_basic_behavioral_test_cases_selection(0) = '1' then

				-- Sync
				wait until i_clock'event and  i_clock = '1';
				wait for c_i_clock_period;

				-- Inconming pulse
				i_facilitatory <= '1';
				wait for c_i_clock_period;
				i_facilitatory <= '0';

				-- Wait for 710 us
				wait for 710 us;

				-- Let's saturate the facilitatory timer

				-- Inconming pulse
				i_facilitatory <= '1';
				wait for c_i_clock_period;
				i_facilitatory <= '0';
				wait for c_i_clock_period*5000;

				-- Inconming pulse
				i_facilitatory <= '1';
				wait for c_i_clock_period;
				i_facilitatory <= '0';
				wait for c_i_clock_period*5000;

				-- Inconming pulse
				i_facilitatory <= '1';
				wait for c_i_clock_period;
				i_facilitatory <= '0';
				wait for c_i_clock_period*5000;

				-- Wait for 1 ms
				wait for 1 ms;

				-- Check the output
				report "End of CASE 0." severity note;

				-- Wait for a few of microseconds
				wait for 5 us;

			end if;

			---------
			-- Case 1: 1 trigger pulse 
			---------
			
			-- If this case has been enabled
			if c_basic_behavioral_test_cases_selection(1) = '1' then

				-- Sync
				wait until i_clock'event and  i_clock = '1';
				wait for c_i_clock_period;

				-- Inconming pulse
				i_trigger <= '1';
				wait for c_i_clock_period;
				i_trigger <= '0';

				-- Wait for 710 us
				wait for 110 us;

				-- Check the output
				report "End of CASE 1." severity note;

				-- Wait for a few of microseconds
				wait for 5 us;

			end if;

			---------
			-- Case 2: 1 trigger pulse, then 1 facilitatory pulse 
			---------

			-- If this case has been enabled
			if c_basic_behavioral_test_cases_selection(2) = '1' then

				-- Sync
				wait until i_clock'event and  i_clock = '1';
				wait for c_i_clock_period;

				-- Trigger pulse
				i_trigger <= '1';
				wait for c_i_clock_period;
				i_trigger <= '0';

				-- Wait 1 clock cycle
				wait for c_i_clock_period*100;

				-- Facilitatory pulse
				i_facilitatory <= '1';
				wait for c_i_clock_period;
				i_facilitatory <= '0';

				-- Wait for 710 us
				wait for 110 us;

				-- Check the output
				report "End of CASE 2." severity note;

				-- Wait for a few of microseconds
				wait for 5 us;

			end if;

			---------
			-- Case 3: 1 facilitatory pulse, then 1 trigger pulse after 710 us
			--         (out of the detection time)
			---------

			-- If this case has been enabled
			if c_basic_behavioral_test_cases_selection(3) = '1' then

				-- Sync
				wait until i_clock'event and  i_clock = '1';
				wait for c_i_clock_period;

				-- Facilitatory pulse
				i_facilitatory <= '1';
				wait for c_i_clock_period;
				i_facilitatory <= '0';

				-- Wait 1 clock cycle
				wait for 110 us;

				-- Trigger pulse
				i_trigger <= '1';
				wait for c_i_clock_period;
				i_trigger <= '0';

				-- Wait for 710 us
				wait for 1 us;

				-- Check the output
				report "End of CASE 3." severity note;

				-- Wait for a few of microseconds
				wait for 5 us;

			end if;

			-------
			-- Case 4: 1 facilitatory pulse, then 1 trigger pulse after 10 us (low delay)
			-------

			-- If this case has been enabled
			if c_basic_behavioral_test_cases_selection(4) = '1' then

				-- Sync
				wait until i_clock'event and  i_clock = '1';
				wait for c_i_clock_period;

				-- Facilitatory pulse
				i_facilitatory <= '1';
				wait for c_i_clock_period;
				i_facilitatory <= '0';

				-- Wait 1 clock cycle
				wait for 10 us; --10 ms

				-- Trigger pulse
				i_trigger <= '1';
				wait for c_i_clock_period;
				i_trigger <= '0';

				-- Wait for 710 us
				wait for 710 us; --100ms

				-- Let's saturate the trigger timer
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
				wait for c_i_clock_period*5000;

				i_trigger <= '1';
				wait for c_i_clock_period;
				i_trigger <= '0';
				wait for c_i_clock_period*5000;

				i_trigger <= '1';
				wait for c_i_clock_period;
				i_trigger <= '0';
				wait for c_i_clock_period*5000;

				i_trigger <= '1';
				wait for c_i_clock_period;
				i_trigger <= '0';
				wait for c_i_clock_period*5000;

				--Wait for 1 ms
				wait for 1 ms;

				-- Check the output
				report "End of CASE 4." severity note;

				-- Wait for a few of microseconds
				wait for 5 us;

			end if;

			-------
			-- Case 5: 1 facilitatory pulse, then 1 trigger pulse after 600 us (big delay)
			-------

			-- If this case has been enabled
			if c_basic_behavioral_test_cases_selection(5) = '1' then

				-- Sync
				wait until i_clock'event and  i_clock = '1';
				wait for c_i_clock_period;

				-- Facilitatory pulse
				i_facilitatory <= '1';
				wait for c_i_clock_period;
				i_facilitatory <= '0';

				-- Wait 1 clock cycle
				wait for 40 us;

				-- Trigger pulse
				i_trigger <= '1';
				wait for c_i_clock_period;
				i_trigger <= '0';

				-- Wait for 710 us
				wait for 70 us;

				-- Check the output
				report "End of CASE 5." severity note;

				-- Wait for a few of microseconds
				wait for 5 us;

			end if;

			---------
			-- Case 6: 1 facilitatory pulse, then 1 trigger pulse after 100 us,
			--         and 1 trigger pulse after (100) + 300 us
			---------

			-- If this case has been enabled
			if c_basic_behavioral_test_cases_selection(6) = '1' then

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

				-- Wait for 300 us
				wait for 50 us;

				-- Trigger pulse
				i_trigger <= '1';
				wait for c_i_clock_period;
				i_trigger <= '0';

				-- Wait
				wait for 60 us;

				-- Check the output
				report "End of CASE 6." severity note;

				-- Wait for a few of microseconds
				wait for 5 us;

			end if;

			---------
			-- Case 7: 1 facilitatory pulse, then 1 facilitatory pulse after 100 us,
			--         and 1 trigger pulse after (100) + 300 us
			---------
			
			-- If this case has been enabled
			if c_basic_behavioral_test_cases_selection(7) = '1' then

				-- Sync
				wait until i_clock'event and  i_clock = '1';
				wait for c_i_clock_period;

				-- Facilitatory pulse
				--i_facilitatory <= '1';
				--wait for c_i_clock_period;
				--i_facilitatory <= '0';

				-- Wait 1 clock cycle
				--wait for 50 us;

				-- Facilitatory pulse
				--i_facilitatory <= '1';
				--wait for c_i_clock_period;
				--i_facilitatory <= '0';

				-- Wait for 300 us
				--wait for 40 us;

				-- Trigger pulse
				--i_trigger <= '1';
				--wait for c_i_clock_period;
				--i_trigger <= '0';

				-- Facilitatory pulse
				i_facilitatory <= '1';
				wait for c_i_clock_period;
				i_facilitatory <= '0';

				-- Wait 1 clock cycle
				wait for 50 us;

				-- Trigger pulse
				i_trigger <= '1';
				wait for c_i_clock_period;
				i_trigger <= '0';

				wait for 15 us;

				-- Facilitatory pulse
				i_facilitatory <= '1';
				wait for c_i_clock_period;
				i_facilitatory <= '0';

				-- Wait for 300 us
				wait for 50 us;

				-- Trigger pulse
				i_trigger <= '1';
				wait for c_i_clock_period;
				i_trigger <= '0';

				wait for 15 us;

				-- Facilitatory pulse
				i_facilitatory <= '1';
				wait for c_i_clock_period;
				i_facilitatory <= '0';

				-- Wait for 300 us
				wait for 50 us;

				-- Trigger pulse
				i_trigger <= '1';
				wait for c_i_clock_period;
				i_trigger <= '0';

				wait for 15 us;

				-- Facilitatory pulse
				i_facilitatory <= '1';
				wait for c_i_clock_period;
				i_facilitatory <= '0';

				-- Wait for 300 us
				wait for 50 us;

				-- Trigger pulse
				i_trigger <= '1';
				wait for c_i_clock_period;
				i_trigger <= '0';

				wait for 15 us;

				-- Facilitatory pulse
				i_facilitatory <= '1';
				wait for c_i_clock_period;
				i_facilitatory <= '0';

				-- Wait for 300 us
				wait for 50 us;

				-- Trigger pulse
				i_trigger <= '1';
				wait for c_i_clock_period;
				i_trigger <= '0';

				wait for 15 us;

				-- Facilitatory pulse
				i_facilitatory <= '1';
				wait for c_i_clock_period;
				i_facilitatory <= '0';

				-- Wait for 300 us
				wait for 50 us;

				-- Trigger pulse
				i_trigger <= '1';
				wait for c_i_clock_period;
				i_trigger <= '0';

				wait for 15 us;

				-- Facilitatory pulse
				i_facilitatory <= '1';
				wait for c_i_clock_period;
				i_facilitatory <= '0';

				-- Wait for 300 us
				wait for 50 us;

				-- Trigger pulse
				i_trigger <= '1';
				wait for c_i_clock_period;
				i_trigger <= '0';

				wait for 15 us;

				-- Facilitatory pulse
				i_facilitatory <= '1';
				wait for c_i_clock_period;
				i_facilitatory <= '0';

				-- Wait for 300 us
				wait for 50 us;

				-- Trigger pulse
				i_trigger <= '1';
				wait for c_i_clock_period;
				i_trigger <= '0';

				-- Wait
				wait for 300 us;

				-- Check the output
				report "End of CASE 7." severity note;

				-- Wait for a few of microseconds
				wait for 5 us;

			end if;

			-- Report the end of the simulation
			report "END OF SIMULATION!" severity note;

			-- Finishing the simulation
			tb_end_of_simulation <= '1';
			
			wait;
		end process p_basic_cases_test;
	end generate g_basic_cases_test;

	---------------------------------------------------------------------------
    -- Saving out results processes
    ---------------------------------------------------------------------------

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
	
	g_save_outspikes_file_global_delta_t: if c_global_delta_t_variation_test = true generate
		-- purpose: Saving out the output spikes
		-- type   : sequential
		-- inputs : i_clock, i_nreset, o_output_spike
		-- outputs: 
		p_saving_output_spikes_global_delta_t: process (i_clock, i_nreset) is
			variable v_filename     : string(1 to 50) := (others => ' ');
			variable v_delta_t_case_id : integer := 0;
			variable v_OLINE        : line;
			variable sim_time_str_v : string(1 to 30);
			variable sim_time_len_v : natural;
			variable events_counter : integer := 0;
		begin  -- process p_saving_output_spikes_global_delta_t
			if i_nreset = '0' then          -- asynchronous reset (active low)
				
			elsif tb_end_of_simulation = '1' then
				
			elsif i_clock'event and i_clock = '1' then  -- rising clock edge
				if tb_new_tde_config = '1' then
					v_filename(1 to 32) := "output_spikes_delta_t_case_" & integer'image(v_delta_t_case_id) & ".txt";
					v_delta_t_case_id := v_delta_t_case_id + 1;
					file_open(f_out_spikes_global_delta_t, c_absolute_path & v_filename, write_mode);
				end if;
				if tb_end_tde_config = '1' then
					file_close(f_out_spikes_global_delta_t);
				end if;
				if tb_new_delta_t_value = '1' then
					sim_time_len_v := time'image(tb_delta_t_value)'length;
					sim_time_str_v := (others => ' ');
					sim_time_str_v(1 to sim_time_len_v) := time'image(tb_delta_t_value);
					
					write(v_OLINE, string'("-1"));
					write(v_OLINE, ';', right, 1);
					write(v_OLINE, sim_time_str_v, right, 1);
					writeline(f_out_spikes_global_delta_t, v_OLINE);
					
					events_counter := 0;
				end if;
				if tb_end_delta_t_value = '1' then
					sim_time_len_v := time'image(tb_delta_t_value)'length;
					sim_time_str_v := (others => ' ');
					sim_time_str_v(1 to sim_time_len_v) := time'image(tb_delta_t_value);
					
					write(v_OLINE, string'("-2"));
					write(v_OLINE, ';', right, 1);
					write(v_OLINE, sim_time_str_v, right, 1);
					writeline(f_out_spikes_global_delta_t, v_OLINE);
					
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
					writeline(f_out_spikes_global_delta_t, v_OLINE);

				end if;
				
			end if;
		end process p_saving_output_spikes_global_delta_t;
	end generate g_save_outspikes_file_global_delta_t;

	g_save_outspikes_file_tunning_curves: if c_tunning_curves_test = true generate
		-- purpose: Saving out the output spikes
		-- type   : sequential
		-- inputs : i_clock, i_nreset, o_output_spike
		-- outputs: 
		p_saving_output_spikes_tunning_curves: process(i_clock, i_nreset) is
			variable v_filename     : string(1 to 50) := (others => ' ');
			variable v_tunning_curve_config : integer := 0;
			variable v_OLINE        : line;
			variable sim_time_str_v : string(1 to 30);
			variable sim_time_len_v : natural;
			variable events_counter : integer := 0;
		begin
			if i_nreset = '0' then          -- asynchronous reset (active low)
				
			elsif tb_end_of_simulation = '1' then
				
			elsif i_clock'event and i_clock = '1' then  -- rising clock edge
				if tb_new_tde_config = '1' then
					--v_filename(1 to 40) := "output_spikes_tunning_curve_config_" & integer'image(v_tunning_curve_config) & ".txt";
					v_filename(1 to 32) := "output_spikes_delta_t_case_" & integer'image(v_tunning_curve_config) & ".txt";
					v_tunning_curve_config := v_tunning_curve_config + 1;
					file_open(f_out_spikes_tunning_curves, c_absolute_path & v_filename, write_mode);
				end if;
				if tb_end_tde_config = '1' then
					file_close(f_out_spikes_tunning_curves);
				end if;
				if tb_new_delta_t_value = '1' then
					sim_time_len_v := time'image(tb_delta_t_value)'length;
					sim_time_str_v := (others => ' ');
					sim_time_str_v(1 to sim_time_len_v) := time'image(tb_delta_t_value);
					
					write(v_OLINE, string'("-1"));
					write(v_OLINE, ';', right, 1);
					write(v_OLINE, sim_time_str_v, right, 1);
					writeline(f_out_spikes_tunning_curves, v_OLINE);
					
					events_counter := 0;
				end if;
				if tb_end_delta_t_value = '1' then
					sim_time_len_v := time'image(tb_delta_t_value)'length;
					sim_time_str_v := (others => ' ');
					sim_time_str_v(1 to sim_time_len_v) := time'image(tb_delta_t_value);
					
					write(v_OLINE, string'("-2"));
					write(v_OLINE, ';', right, 1);
					write(v_OLINE, sim_time_str_v, right, 1);
					writeline(f_out_spikes_tunning_curves, v_OLINE);
					
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
					writeline(f_out_spikes_tunning_curves, v_OLINE);

				end if;
				
			end if;

		end process p_saving_output_spikes_tunning_curves;

	end generate g_save_outspikes_file_tunning_curves;
	
	--**************************************************************************
	---------------------------------------------------------------------------*
    -- ONLY IN MODELSIM: spy signals configuration                             *
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
			init_signal_spy("/tde_tb/DUT/w_facilitation_timer_value_weighted","/spy_facilitatory_timer_value_weighted", 1);
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
			--init_signal_spy("/tde_tb/DUT/spike_generator_0/r_value_to_generate","/spy_spikegen_val2gen", 1);
			init_signal_spy("/tde_tb/DUT/w_value_to_generate","/spy_spikegen_val2gen", 1);
			--init_signal_spy("/tde_tb/DUT/w_sgen_val2gen_feedback","/spy_spikegen_val2gen", 1);
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
