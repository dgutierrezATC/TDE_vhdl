-------------------------------------------------------------------------------
-- Title      : Testbench for design "spikes_generator_unsigned_bw"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : spikes_generator_unsigned_bw_tb.vhd
-- Author     :   <dgutierrez@DESKTOP-16SBGVD>
-- Company    : 
-- Created    : 2020-01-23
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
-- 2020-01-23  1.0      dgutierrez	Created
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Libraries
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

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
            g_NBITS_DATA    : integer range 0 to 32 := 16;
            g_NBITS_FREQDIV : integer range 0 to 32 := 16
        );
        port (
            i_clock           : in  std_logic;
            i_nreset          : in  std_logic;
            i_genfreq_divisor : in  std_logic_vector((g_NBITS_FREQDIV - 1) downto 0);
            i_data_in         : in  std_logic_vector((g_NBITS_DATA-1) downto 0);
            i_write           : in  std_logic;
            i_clear           : in  std_logic;
            o_spike_out       : out std_logic
        );
    end component spikes_generator_unsigned_bw;

    ---------------------------------------------------------------------------
    -- UUT signals declaration
    ---------------------------------------------------------------------------

    -- component generics
    constant g_NBITS_DATA    : integer range 0 to 32 := 16;
    constant g_NBITS_FREQDIV : integer range 0 to 32 := 16;

    -- component input ports
    signal i_clock           : std_logic := '0';
    signal i_nreset          : std_logic := '0';
    signal i_genfreq_divisor : std_logic_vector((g_NBITS_FREQDIV - 1) downto 0) := (others => '0');
    signal i_data_in         : std_logic_vector((g_NBITS_DATA-1) downto 0)      := (others => '0');
    signal i_write           : std_logic := '0';
    signal i_clear           : std_logic := '0';

    -- component output ports
    signal o_spike_out       : std_logic;

    -- clock
    constant c_i_clock_period : time := 20 ns;

begin  -- architecture Behavioral

    ---------------------------------------------------------------------------
    -- DUT instantiation
    ---------------------------------------------------------------------------
    DUT: entity work.spikes_generator_unsigned_bw
        generic map (
            g_NBITS_DATA    => g_NBITS_DATA,
            g_NBITS_FREQDIV => g_NBITS_FREQDIV
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
    -- Stimuli
    ---------------------------------------------------------------------------
    -- waveform generation
    WaveGen_Proc: process
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
        i_write <= '1';
        wait for c_i_clock_period;
        i_write <= '0';

        wait for 5 ms;

        wait;
    end process WaveGen_Proc;

    

end architecture Behavioral;

-------------------------------------------------------------------------------

configuration spikes_generator_unsigned_bw_tb_Behavioral_cfg of spikes_generator_unsigned_bw_tb is
    for Behavioral
    end for;
end spikes_generator_unsigned_bw_tb_Behavioral_cfg;

-------------------------------------------------------------------------------
