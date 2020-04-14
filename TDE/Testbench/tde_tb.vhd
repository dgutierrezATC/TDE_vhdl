--/////////////////////////////////////////////////////////////////////////////////
--//                                                                             //
--//    Copyright © 2020  Daniel Gutierrez-Galan                                 //
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
-- Project    : TDE_vhdl
-------------------------------------------------------------------------------
-- File       : tde_tb.vhd
-- Author     : Daniel Gutierrez-Galan (dgutierrez@atc.us.es)
-- Company    : University of Seville
-- Created    : 2020-01-22
-- Last update: 2020-01-23
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
use ieee.std_logic_textio.all;
use STD.textio.all;

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
            g_NBITS              : integer range 0 to 32 := 16;
            g_LOG2NBITS          : integer range 0 to 5  := 4;
            g_SPIKEGEN_METHOD    : integer range 0 to 1  := 0;
            g_TWO_POW_NBITS_DATA : integer               := 65536
            
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
    constant g_NBITS              : integer range 0 to 32 := 16;
    constant g_LOG2NBITS          : integer range 0 to 5  := 4;
    constant g_SPIKEGEN_METHOD    : integer range 0 to 1  := 1;
    constant g_TWO_POW_NBITS_DATA : integer               := 65536;

    -- component input ports
    signal i_clock                : std_logic                                    := '0';
    signal i_nreset               : std_logic                                    := '0';
    signal i_tr_tick              : std_logic                                    := '0';
    signal i_facilitatory         : std_logic                                    := '0';
    signal i_trigger              : std_logic                                    := '0';
    signal i_tau                  : std_logic_vector((g_LOG2NBITS - 1) downto 0) := (others => '0');
    signal i_weight               : std_logic_vector((g_LOG2NBITS - 1) downto 0) := (others => '0');
    signal i_decay                : std_logic_vector((g_LOG2NBITS - 1) downto 0) := (others => '0');
    signal i_detection_time       : std_logic_vector((g_NBITS - 1) downto 0)     := (others => '0');
    signal i_faci_sat_value       : std_logic_vector((g_NBITS - 1) downto 0)     := (others => '0');
    signal i_trig_sat_value       : std_logic_vector((g_NBITS - 1) downto 0)     := (others => '0');


    -- component output ports
    signal o_output_spike         : std_logic;



    ---------------------------------------------------------------------------
    -- Testbench signals declaration
    ---------------------------------------------------------------------------
    -- Clock
    constant c_i_clock_period : time := 20 ns;
    
    -- Clock divisor value
    constant c_i_tr_tick_divisor_value : integer range 0 to 100 := 50;  -- 20 ns * 50 = 1000 ns = 1 us

    -- Flag to indicate the end of the simulation
    signal tb_end_of_simulation : std_logic := '0'; 
                                                    
    --Saving results in a file
    file f_results : text open write_mode is "D:/Universidad/Repositorios/GitHub/Doctorado/TDE_vhdl/TDE/Testbench/Results/Files/tde_tb_vivado_o_output_spikes.txt";  -- Output spikes from the TDE model

begin  -- architecture Behavioral

    ---------------------------------------------------------------------------
    -- Instantiate the Unit Under Test (UUT)
    ---------------------------------------------------------------------------
    UUT: entity work.tde(Structural)
        generic map (
            g_NBITS              => g_NBITS,
            g_LOG2NBITS          => g_LOG2NBITS,
            g_SPIKEGEN_METHOD    => g_SPIKEGEN_METHOD,
            g_TWO_POW_NBITS_DATA => g_TWO_POW_NBITS_DATA
        )
        port map (
            i_clock          => i_clock,
            i_nreset         => i_nreset,
            i_tr_tick        => i_tr_tick,
            i_facilitatory   => i_facilitatory,
            i_trigger        => i_trigger,
            i_tau            => i_tau,
            i_weight         => i_weight,
            i_decay          => i_decay,
            i_detection_time => i_detection_time,
            i_faci_sat_value => i_faci_sat_value,
            i_trig_sat_value => i_trig_sat_value,
            o_output_spike   => o_output_spike
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


    -----------------------------------------------------------------------------
    -- Processes
    -----------------------------------------------------------------------------
    
    -- purpose: Set the signals to generate the stimuli
    -- type   : combinational
    -- inputs : 
    -- outputs: 
    p_stimuli: process
    begin
        -- insert signal assignments here

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
        i_tau            <= x"0";
        i_weight         <= x"4";
        i_decay          <= x"2";
        i_detection_time <= x"02BC";
        i_faci_sat_value <= x"F000";
        i_trig_sat_value <= x"F000";

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
        
        ---------
        -- Case 4: 1 facilitatory pulse, then 1 trigger pulse after 10 us (low delay)
        ---------
        
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
        
        ---------
        -- Case 5: 1 facilitatory pulse, then 1 trigger pulse after 600 us (big delay)
        ---------
        
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
        wait for 300 us;
        
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

        -- Finishing the simulation
        tb_end_of_simulation <= '1';
        
        wait;
    end process p_stimuli;

    -- purpose: Saving out the output spikes
    -- type   : sequential
    -- inputs : i_clock, i_nreset, o_output_spike
    -- outputs: 
    p_saving_output_results: process (i_clock, i_nreset) is
        variable v_OLINE        : line;
        variable sim_time_str_v : string(1 to 30);  -- 30 chars should be enough
        variable sim_time_len_v : natural;
        variable events_counter : integer := 0;
    begin  -- process p_saving_output_results
        if i_nreset = '0' then          -- asynchronous reset (active low)
            
        elsif tb_end_of_simulation = '1' then
            file_close(f_results);
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
                writeline(f_results, v_OLINE);

            end if;
            
        end if;
    end process p_saving_output_results;

end architecture Behavioral;

-------------------------------------------------------------------------------

configuration tde_tb_Behavioral_cfg of tde_tb is
    for Behavioral
    end for;
end tde_tb_Behavioral_cfg;

-------------------------------------------------------------------------------
