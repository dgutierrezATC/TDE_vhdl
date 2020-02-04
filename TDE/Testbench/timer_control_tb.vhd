-------------------------------------------------------------------------------
-- Title      : Testbench for design "timer_control"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : timer_control_tb.vhd
-- Author     :   <Dani@DESKTOP-A0R07AP>
-- Company    : University of Seville
-- Created    : 2020-01-09
-- Last update: 2020-01-09
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2020 University of Seville
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-01-09  1.0      Dani	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity basic_timer_control_tb is

end entity basic_timer_control_tb;

-------------------------------------------------------------------------------

architecture Behavioral of basic_timer_control_tb is

    component basic_timer_control is
        port (
            i_clock   : in  std_logic;
            i_nreset  : in  std_logic;
            i_start   : in  std_logic;
            i_timeout : in  std_logic;
            o_enable  : out std_logic;
            o_load    : out std_logic
        );
    end component basic_timer_control;

    -- component ports

    -- Inputs
    signal i_clock   : std_logic := '0';
    signal i_nreset  : std_logic := '0';
    signal i_start   : std_logic := '0';
    signal i_timeout : std_logic := '0';

    -- Outputs
    signal o_enable  : std_logic;
    signal o_load    : std_logic;

    -- Clock
    constant c_i_clock_period : time := 20 ns;  -- Clock period

begin  -- architecture Behavioral

    -- component instantiation
    DUT: entity work.basic_timer_control
        port map (
            i_clock   => i_clock,
            i_nreset  => i_nreset,
            i_start   => i_start,
            i_timeout => i_timeout,
            o_enable  => o_enable,
            o_load    => o_load
        );

    -- clock generation
    i_clock <= not i_clock after c_i_clock_period/2;

    -- waveform generation
    WaveGen_Proc: process
    begin
        -- insert signal assignments here

        -- Hold the reset signal LOW for 10 us
        i_nreset <= '0';
        wait for 10 us;

        -- Leave the reset signal
        i_nreset <= '1';

        -- Wait for 1 us;
        wait for 1 us;

        -- Wait until the rising_edge
        wait until i_clock'event and i_clock = '1';

        -- Wait for 10 clock cycles
        wait for c_i_clock_period*10;

        --
        -- Case 1: signle i_start
        --
        
        -- Set i_start to HIGH for a clock cycle
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';

        -- Wait for 1 us;
        wait for 1 us;

        -- Set i_timeout to HIGH for a clock cycle
        i_timeout <= '1';
        wait for c_i_clock_period;
        i_timeout <= '0';

        -- Wait for 1 us;
        wait for 1 us;

        --
        -- Case 2: multiple i_start
        --

        -- Set i_start to HIGH for a clock cycle
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';

        -- Wait for 1 us;
        wait for 1 us;

        -- Set i_start to HIGH for a clock cycle
        i_start <= '1';
        wait for c_i_clock_period;
        i_start <= '0';

        -- Wait for 1 us
        wait for 1 us;
        
        -- Set i_timeout to HIGH for a clock cycle
        i_timeout <= '1';
        wait for c_i_clock_period;
        i_timeout <= '0';

        -- Wait for 1 us;
        wait for 1 us;

        --
        -- Case 3: i_timeout actived
        --
        i_timeout <= '1';
        wait for c_i_clock_period;
        i_timeout <= '0';

        wait for 1 us;

        -- Final wait
        wait;
        
    end process WaveGen_Proc;

    

end architecture Behavioral;

-------------------------------------------------------------------------------

configuration basic_timer_control_tb_Behavioral_cfg of basic_timer_control_tb is
    for Behavioral
    end for;
end basic_timer_control_tb_Behavioral_cfg;

-------------------------------------------------------------------------------
