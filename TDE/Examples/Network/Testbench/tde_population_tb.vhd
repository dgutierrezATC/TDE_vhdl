--/////////////////////////////////////////////////////////////////////////////////
--//                                                                             //
--//    Copyright (c) 2020  Daniel Gutierrez-Galan                               //
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
-- Title      : Testbench for design "tde_population"
-- Project    : TDE_vhdl
-------------------------------------------------------------------------------
-- File       : tde_population_tb.vhd
-- Author     : Daniel Gutierrez-Galan
-- Company    : University of Seville
-- Created    : 2020-07-21
-- Last update: 2020-07-21
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2020 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-07-21  1.0      dgutierrez	Created
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Libraries
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use std.textio.all;

-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------
entity tde_population_tb is

end entity tde_population_tb;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture Behavioral of tde_population_tb is

    ---------------------------------------------------------------------------
    -- Signals declaration
    ---------------------------------------------------------------------------

    --
    -- component generics
    --
    constant g_NBITS              : integer range 0 to 32 := 16;
    constant g_LOG2NBITS          : integer range 0 to 5  := 4;
    constant g_TWO_POW_NBITS_DATA : integer               := 65536;
    constant g_SPIKEGEN_METHOD    : integer range 0 to 1  := 0;
    constant g_NNEURONS           : integer range 0 to 32 := 4;
    constant g_NEURONS_PARAMS     : string                := "D:\Universidad\Repositorios\GitHub\Doctorado\TDE_vhdl\TDE\Examples\Network\Source\tde_population_000_params.data";
    --
    -- Component input ports
    --
    signal i_clock         : std_logic := '1';
    signal i_nreset        : std_logic := '0';
    signal i_tr_tick       : std_logic := '0';
    signal i_facilitatory  : std_logic := '0';
    signal i_trigger       : std_logic := '0';
    --
    -- Component output ports
    --
    signal o_output_spikes : std_logic_vector((g_NNEURONS - 1) downto 0);

    --
    -- Clock
    --
    constant c_clock_period : time := 20 ns;

    --
    -- Time reference (tr) tick clockk divisor
    --
    constant c_i_tr_tick_divisor_value : integer range 0 to 100 := 50;  -- 20 ns * 50 = 1000 ns = 1 us

    -- End of the simulation flag
    signal tb_end_stimuli : std_logic := '0';
    
    -- Output results file
	file tb_tde_output_spikes_file  : text;

begin  -- architecture Behavioral

    -- component instantiation
    DUT: entity work.tde_population
--        generic map (
--            g_NBITS              => g_NBITS,
--            g_LOG2NBITS          => g_LOG2NBITS,
--            g_TWO_POW_NBITS_DATA => g_TWO_POW_NBITS_DATA,
--            g_SPIKEGEN_METHOD    => g_SPIKEGEN_METHOD,
--            g_NNEURONS           => g_NNEURONS,
--            g_NEURONS_PARAMS     => g_NEURONS_PARAMS
--        )
        port map (
            i_clock         => i_clock,
            i_nreset        => i_nreset,
            i_tr_tick       => i_tr_tick,
            i_facilitatory  => i_facilitatory,
            i_trigger       => i_trigger,
            o_output_spikes => o_output_spikes
        );

    --
    -- clock generation
    --
    i_clock <= not i_clock after c_clock_period / 2;

    -- purpose: i_tr_tick clock generation
    -- type   : sequential
    -- inputs : i_clock, i_nreset
    -- outputs: i_tr_tick
    p_tr_tick_generation: process (i_nreset, i_clock)
        variable v_tr_tick_counter : integer range 0 to c_i_tr_tick_divisor_value := 0;  -- internal counter variable
    begin  -- process p_tr_tick_generation
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
        
    end process p_tr_tick_generation;

    --
    -- Waveform generation
    --
--    WaveGen_Proc: process
--    begin
--        -- insert signal assignments here

--        --
--        -- Clock sync
--        --
--        wait until i_clock = '1';
--        wait for c_clock_period * 4;

--        --
--        -- Hold the reset
--        --
--        wait for c_clock_period * 50;

--        --
--        -- Clear the reset
--        --
--        i_nreset <= '1';

--        --
--        -- Wait in idle
--        --
--        wait for c_clock_period * 100;

--        --
--        -- Simple stimulus: facilitatory and trigger time difference of 80 us
--        --
--        -- Fire facilitatory
--        i_facilitatory <= '1';
--        wait for c_clock_period;
--        i_facilitatory <= '0';

--        -- Time difference: 4000 clock cycles * 20 ns clock period = 80 us
--        -- Time difference: 50 clock cycles * 20 ns clock period = 1 us
--        wait for c_clock_period * 50;

--        -- Fire trigger
--        i_trigger <= '1';
--        wait for c_clock_period;
--        i_trigger <= '0';

--        -- Wait until the end of the TDE neuron
--        wait for 700 us;

--        --
--        -- Report the end of the simulation
--        --
--        report "End of the simulation!" severity note;

--        wait;


--    end process WaveGen_Proc;

    PowerComsumpStudy_Proc: process
        variable v_deltat : time := 80 us;
        variable v_time_between_stim : integer := 50000;
        variable v_num_stim : integer := 10;
    begin
        -- insert signal assignments here

        --
        -- Clock sync
        --
        wait until i_clock = '1';
        wait for c_clock_period * 4;

        --
        -- Hold the reset
        --
        wait for c_clock_period * 50;

        --
        -- Clear the reset
        --
        i_nreset <= '1';

        --
        -- Wait in idle
        --
        wait for c_clock_period * 100;

        --
        -- Simple stimulus: facilitatory and trigger time difference of 80 us
        --
        
        for v_index in 0 to v_num_stim loop
            -- Fire facilitatory
            i_facilitatory <= '1';
            wait for c_clock_period;
            i_facilitatory <= '0';
            
            -- Time difference: 4000 clock cycles * 20 ns clock period = 80 us
            wait for c_clock_period * 4000;
            
            -- Fire trigger
            i_trigger <= '1';
            wait for c_clock_period;
            i_trigger <= '0';
            
            -- Wait for the next stimulus
            -- 1 ms = 50000 clock cycles
            -- 500 us = 25000 clock cycles
            -- 250 us = 12500 clock cycles
            -- 90 us = 4500 clock cycles
            wait for c_clock_period * 4500;
        end loop;

        --
        -- Report the end of the simulation
        --
        report "End of the simulation!" severity note;

        wait;


    end process PowerComsumpStudy_Proc;

    -- Save results process
	p_save_results_process : process
        variable v_OLINE              : line;
        variable v_sim_time_str       : string(1 to 30); -- 30 chars should be enough
        variable v_sim_time_len       : natural;
        variable v_out_events_counter : integer := 0;
        variable v_event_channel      : integer := 0;
        
    begin
        --// Open RESULTS file in write mode
        file_open(tb_tde_output_spikes_file, "D:/Universidad/Repositorios/GitHub/Doctorado/TDE_vhdl/TDE/Examples/Network/Testbench/Results/Files/tde_population_000_output.txt", write_mode);

        --// Loop while the simulation doesn't finish
        while tb_end_stimuli = '0' loop
            --// Wait until there is a new output spike
            wait until o_output_spikes'event and (o_output_spikes > (o_output_spikes'range=>'0'));

            --// Check the outputs which are 1
            for v_index in 0 to o_output_spikes'length-1 loop

                if(o_output_spikes(v_index) = '1') then
                    --// Take the current simulation time
                    v_sim_time_len := time'image(now)'length;
                    v_sim_time_str := (others => ' ');
                    v_sim_time_str(1 to v_sim_time_len) := time'image(now);

                    --// Increase the event counter
                    v_out_events_counter := v_out_events_counter + 1;

                    v_event_channel := v_index;--to_integer(unsigned(o_output_spike));
                    report "Output address: " & integer'image(v_event_channel);

                    report "Output event counter: " & integer'image(v_out_events_counter);

                    write(v_OLINE, v_event_channel, right, 1);
                    write(v_OLINE, ';', right, 1);

                    write(v_OLINE, v_sim_time_str, right, 1);

                    writeline(tb_tde_output_spikes_file, v_OLINE);
                end if;
            end loop;
        end loop;

        file_close(tb_tde_output_spikes_file);
        
        report "End of simulation!" severity note;

        wait;

    end process p_save_results_process;
    

end architecture Behavioral;

-------------------------------------------------------------------------------

configuration tde_population_tb_Behavioral_cfg of tde_population_tb is
    for Behavioral
    end for;
end tde_population_tb_Behavioral_cfg;

-------------------------------------------------------------------------------
