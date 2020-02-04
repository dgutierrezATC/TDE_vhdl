-------------------------------------------------------------------------------
-- Title      : Testbench for design "generic_register"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : generic_register_tb.vhd
-- Author     :   <dgutierrez@DESKTOP-16SBGVD>
-- Company    : 
-- Created    : 2020-01-20
-- Last update: 2020-01-21
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2020 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-01-20  1.0      dgutierrez	Created
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Libraries
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------
entity generic_register_tb is

end entity generic_register_tb;

-------------------------------------------------------------------------------
-- Architectures
-------------------------------------------------------------------------------
architecture Behavioral of generic_register_tb is

    ---------------------------------------------------------------------------
    -- Component declaration for the unit under test (UUT)
    ---------------------------------------------------------------------------
    component generic_register is
        generic (
            g_NBITS : integer range 0 to 32 := 16
        );
        port (
            i_clock    : in  std_logic;
            i_nreset   : in  std_logic;
            i_data_in  : in  std_logic_vector((g_NBITS - 1) downto 0);
            i_load     : in  std_logic;
            i_clear    : in  std_logic;
            o_data_out : out std_logic_vector((g_NBITS - 1) downto 0)
        );
    end component generic_register;

    ---------------------------------------------------------------------------
    -- UUT signals declaration
    ---------------------------------------------------------------------------
    
    -- component generics
    constant g_NBITS : integer range 0 to 32 := 16;

    -- component input ports
    signal i_clock    : std_logic := '0';
    signal i_nreset   : std_logic := '0';
    signal i_data_in  : std_logic_vector((g_NBITS - 1) downto 0) := (others => '0');
    signal i_load     : std_logic := '0';
    signal i_clear    : std_logic := '0';

    -- component output ports
    signal o_data_out : std_logic_vector((g_NBITS - 1) downto 0);

    -- clock
    constant c_i_clock_period : time := 20 ns;

begin  -- architecture Behavioral

    ---------------------------------------------------------------------------
    -- UUT instantiation
    ---------------------------------------------------------------------------
    DUT: entity work.generic_register
        generic map (
            g_NBITS => g_NBITS
        )
        port map (
            i_clock    => i_clock,
            i_nreset   => i_nreset,
            i_data_in  => i_data_in,
            i_load     => i_load,
            i_clear    => i_clear,
            o_data_out => o_data_out
        );

    -- clock generation
    i_clock <= not i_clock after c_i_clock_period/2;

    -- waveform generation
    WaveGen_Proc: process
    begin
        -- insert signal assignments here

        --
        -- First reset
        --

        -- Hold the reset for 1 us
        i_nreset <= '0';
        wait for 1 us;

        -- Leave the reset
        i_nreset <= '1';
        wait for 1 us;

        --
        -- Idle
        --

        wait for 1 us;


        --
        -- Sync
        --
        wait until i_clock'event and i_clock = '1';
        wait for c_i_clock_period*10;
        
        --
        -- Load a value
        --

        -- Set the value
        i_data_in <= x"000F";
        -- Activate the load 
        i_load <= '1';

        -- Wait for 1 clock cycle
        wait for c_i_clock_period;

        -- Desactivate the load
        i_load <= '0';

        -- Wait for 10 clock cicles
        wait for c_i_clock_period*10;

        --
        -- Load another value
        --
        
        -- Set the value
        i_data_in <= x"00F0";
        -- Activate the load 
        i_load <= '1';

        -- Wait for 1 clock cycle
        wait for c_i_clock_period;

        -- Desactivate the load
        i_load <= '0';

        -- Wait for 10 clock cicles
        wait for c_i_clock_period * 10;

        --
        -- Clear the register
        --

        -- Set clear to 1
        i_clear <= '1';
        -- Wait for 1 clock cycle
        wait for c_i_clock_period;
        -- Set clear to 0
        i_clear <= '0';
        -- Wait for 10 clock cicles
        wait for c_i_clock_period * 10;

        --
        -- Load a value, and then set clear and load at the same time
        --

        -- Set the value
        i_data_in <= x"00FF";
        -- Activate the load 
        i_load <= '1';

        -- Wait for 1 clock cycle
        wait for c_i_clock_period;

        -- Desactivate the load
        i_load <= '0';

        -- Wait for 10 clock cicles
        wait for c_i_clock_period * 10;

        -- Set clear and load to 1
        i_clear <= '1';
        i_load <= '1';
        -- Wait for 1 clock cycle
        wait for c_i_clock_period;
        -- Set clear and load to 0
        i_clear <= '0';
        i_load <= '0';
        -- Wait for 10 clock cicles
        wait for c_i_clock_period * 10;
        

        wait;
    end process WaveGen_Proc;

    

end architecture Behavioral;

-------------------------------------------------------------------------------

configuration generic_register_tb_Behavioral_cfg of generic_register_tb is
    for Behavioral
    end for;
end generic_register_tb_Behavioral_cfg;

-------------------------------------------------------------------------------
