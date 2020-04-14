-------------------------------------------------------------------------------
-- Title      : Testbench for design "spikes_generator_unsigned_bw"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : spikes_generator_unsigned_bw_tb.vhd
-- Author     :   <dgutierrez@DESKTOP-16SBGVD>
-- Company    : 
-- Created    : 2020-01-23
-- Last update: 2020-04-13
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2020 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-01-23  1.0      dgutierrez	Created
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Libraries
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use std.textio.all;

-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------
entity spikes_generator_unsigned_bw_tb is

end entity spikes_generator_unsigned_bw_tb;

-------------------------------------------------------------------------------
-- Architectures
-------------------------------------------------------------------------------
architecture Behavioral of spikes_generator_unsigned_bw_tb is

    -------------------------------------------------------------------------------
    -- Component declaration for the unit under test (UUT)
    -------------------------------------------------------------------------------
    component spikes_generator_unsigned_bw is
        generic (
            g_NBITS_DATA         : integer range 0 to 32 := 16;
            g_METHOD             : integer range 0 to 1  := 0;
            g_TWO_POW_NBITS_DATA : integer               := 65536
        );
        port (
            i_clock              : in  std_logic;
            i_nreset             : in  std_logic;
            i_genfreq_divisor    : in  std_logic_vector((g_NBITS_DATA - 1) downto 0);
            i_data_in            : in  std_logic_vector((g_NBITS_DATA-1) downto 0);
            i_write              : in  std_logic;
            i_clear              : in  std_logic;
            o_spike_out          : out std_logic
        );
    end component spikes_generator_unsigned_bw;

    ---------------------------------------------------------------------------
    -- UUT signals declaration
    ---------------------------------------------------------------------------

    -- component generics
    constant g_NBITS_DATA         : integer range 0 to 32                    := 16;
    constant g_METHOD             : integer range 0 to 1                     := 0;
    constant g_TWO_POW_NBITS_DATA : integer                                  := 65536;

    -- component input ports
    signal i_clock           : std_logic                                     := '0';
    signal i_nreset          : std_logic                                     := '0';
    signal i_genfreq_divisor : std_logic_vector((g_NBITS_DATA - 1) downto 0) := (others => '0');
    signal i_data_in         : std_logic_vector((g_NBITS_DATA-1) downto 0)   := (others => '0');
    signal i_write           : std_logic                                     := '0';
    signal i_clear           : std_logic                                     := '0';

    -- component output ports
    signal o_spike_out       : std_logic;

    ---------------------------------------------------------------------------
    -- Testbench signals declaration
    ---------------------------------------------------------------------------
    
    -- Clcok
    constant c_i_clock_period : time := 20 ns;

    -- Saving out results in a file
    signal tb_end_of_simulation : std_logic := '0'; --Flag to indicate the end of the simulation
    
    file f_i_data_in : text open write_mode is "D:/Universidad/Repositorios/GitHub/Doctorado/TDE_vhdl/TDE/Testbench/Results/Files/kk_spikes_generator_unsigned_bw_i_data_in.txt";  -- Output spikes from the TDE model
    file f_o_spike_out : text open write_mode is "D:/Universidad/Repositorios/GitHub/Doctorado/TDE_vhdl/TDE/Testbench/Results/Files/kk_spikes_generator_unsigned_bw_o_spike_out.txt";  -- Output spikes from the TDE model
begin  -- architecture Behavioral

    ---------------------------------------------------------------------------
    -- DUT instantiation
    ---------------------------------------------------------------------------
    UUT: entity work.spikes_generator_unsigned_bw(Behavioral)
        generic map (
            g_NBITS_DATA         => g_NBITS_DATA,
            g_METHOD             => g_METHOD,
            g_TWO_POW_NBITS_DATA => g_TWO_POW_NBITS_DATA
        )
        port map (
            i_clock           => i_clock,
            i_nreset          => i_nreset,
            i_genfreq_divisor => i_genfreq_divisor,
            i_data_in         => i_data_in,
            i_write           => i_write,
            i_clear           => i_clear,
            o_spike_out       => o_spike_out
        );

    ---------------------------------------------------------------------------
    -- Clock generation
    ---------------------------------------------------------------------------
    i_clock <= not i_clock after c_i_clock_period/2;

    ---------------------------------------------------------------------------
    -- Processes
    ---------------------------------------------------------------------------
    
    -- purpose: Set the signals to generate the stimuli
    -- type   : combinational
    -- inputs : 
    -- outputs: 
    p_stimuli: process
        variable v_ramp_signal_value : std_logic_vector((g_NBITS_DATA-1) downto 0) := (others => '0');
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
        -- Spikes gen configuration
        --

        -- Set the freq divisor
        i_genfreq_divisor <= x"000A";
        -- Set the value to generate
        i_data_in <= x"01F4";

        -- Wait
        --wait for 1 us;

        --
        -- Enable generation
        --
        --i_write <= '1';
        --wait for c_i_clock_period;
        --i_write <= '0';

        --
        -- Second reset
        --
        
        -- Set reset to 0
        i_nreset <= '0';
        -- Hold reset to 0 for 1 us;
        wait for c_i_clock_period*100;
        -- Clear reset
        i_nreset <= '1';
        -- Wait for few microseconds
        wait for c_i_clock_period*100;

        --
        -- Spikes gen configuration
        --

        -- Set the freq divisor
        i_genfreq_divisor <= x"000F";
        --i_data_in <= x"00FF"; --> Change to fix it
        -- Wait for few clock cycles
        wait for c_i_clock_period*100;

        --
        -- Ramp signal generation
        --

        while v_ramp_signal_value < x"0080" loop
            -- Write the new value to generate
            i_data_in <= v_ramp_signal_value;
            --i_genfreq_divisor <= v_ramp_signal_value; --> Change to variable it
            -- Wait for 2 clock cycles
            wait for c_i_clock_period*2;

            -- Enable the generation
            i_write <= '1';
            wait for c_i_clock_period;
            i_write <= '0';

            -- Wait for 0.5 ms
            wait for c_i_clock_period*50000;

            -- Update the ramp value
            v_ramp_signal_value := v_ramp_signal_value + x"000A";
            
        end loop;
        
        -- Notice the end of the simulation
        tb_end_of_simulation <= '1';

        wait for 5 ms;

        wait;
    end process p_stimuli;
    
    -- purpose: Saving out the inputa data value
    -- type   : sequential
    -- inputs : i_clock, i_nreset, i_write, i_data_in
    -- outputs: 
    p_saving_i_data_in: process (i_clock, i_nreset) is
        variable v_OLINE        : line;
        variable sim_time_str_v : string(1 to 30);  -- 30 chars should be enough
        variable sim_time_len_v : natural;
    begin  -- process p_saving_i_data_in
        if i_nreset = '0' then          -- asynchronous reset (active low)
            
        elsif tb_end_of_simulation = '1' then
            file_close(f_i_data_in);
        elsif i_clock'event and i_clock = '1' then  -- rising clock edge
            if i_write = '1' then
                sim_time_len_v := time'image(now)'length;
                sim_time_str_v := (others => ' ');
                sim_time_str_v(1 to sim_time_len_v) := time'image(now);

                write(v_OLINE, to_integer(unsigned(i_data_in))); --i_genfreq_divisor, i_data_in
                write(v_OLINE, ';', right, 1);
                write(v_OLINE, sim_time_str_v, right, 1);
                writeline(f_i_data_in, v_OLINE);

            end if;
            
        end if;
    end process p_saving_i_data_in;
    
    -- purpose: Saving out the output spikes
    -- type   : sequential
    -- inputs : i_clock, i_nreset, o_spike_out
    -- outputs: 
    p_saving_o_spike_out: process (i_clock, i_nreset) is
        variable v_OLINE        : line;
        variable sim_time_str_v : string(1 to 30);  -- 30 chars should be enough
        variable sim_time_len_v : natural;
        variable events_counter : integer := 0;
    begin  -- process p_saving_o_spike_out
        if i_nreset = '0' then          -- asynchronous reset (active low)
            
        elsif tb_end_of_simulation = '1' then
            file_close(f_o_spike_out);
        elsif i_clock'event and i_clock = '1' then  -- rising clock edge
            if o_spike_out = '1' then
                sim_time_len_v := time'image(now)'length;
                sim_time_str_v := (others => ' ');
                sim_time_str_v(1 to sim_time_len_v) := time'image(now);
                events_counter := events_counter + 1;
                
                report "Event timestamp.......:'" & sim_time_str_v & "'";
                report "Event counter: " & integer'image(events_counter);

                write(v_OLINE, events_counter);
                write(v_OLINE, ';', right, 1);
                write(v_OLINE, sim_time_str_v, right, 1);
                writeline(f_o_spike_out, v_OLINE);

            end if;
            
        end if;
    end process p_saving_o_spike_out;

end architecture Behavioral;

-------------------------------------------------------------------------------

configuration spikes_generator_unsigned_bw_tb_Behavioral_cfg of spikes_generator_unsigned_bw_tb is
    for Behavioral
    end for;
end spikes_generator_unsigned_bw_tb_Behavioral_cfg;

-------------------------------------------------------------------------------
