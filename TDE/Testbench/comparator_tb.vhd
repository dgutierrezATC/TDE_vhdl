-------------------------------------------------------------------------------
-- Title      : Testbench for design "comparator"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : comparator_tb.vhd
-- Author     :   <dgutierrez@DESKTOP-16SBGVD>
-- Company    : 
-- Created    : 2020-01-28
-- Last update: 2020-01-28
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2020 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-01-28  1.0      dgutierrez	Created
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Libraries
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------
entity comparator_tb is

end entity comparator_tb;


-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture Behavioral of comparator_tb is

    ---------------------------------------------------------------------------
    -- UUT component declaration
    ---------------------------------------------------------------------------
    component comparator is
        generic (
            g_NBITS : integer range 0 to 32 := 16
        );
        port (
            i_input_a : in  std_logic_vector((g_NBITS - 1) downto 0);
            i_input_b : in  std_logic_vector((g_NBITS - 1) downto 0);
            o_equal   : out std_logic
        );
    end component comparator;

    ---------------------------------------------------------------------------
    -- UUT signals declaration
    ---------------------------------------------------------------------------
    
    -- component generics
    constant g_NBITS : integer range 0 to 32 := 16;

    -- component input ports
    signal i_input_a : std_logic_vector((g_NBITS - 1) downto 0) := (others => '0');
    signal i_input_b : std_logic_vector((g_NBITS - 1) downto 0) := (others => '0');

    -- component output ports
    signal o_equal   : std_logic;

begin  -- architecture Behavioral

    ---------------------------------------------------------------------------
    -- UUT instantiation
    ---------------------------------------------------------------------------
    DUT: entity work.comparator
        generic map (
            g_NBITS => g_NBITS
        )
        port map (
            i_input_a => i_input_a,
            i_input_b => i_input_b,
            o_equal   => o_equal
        );

    -- waveform generation
    WaveGen_Proc: process
    begin
        -- insert signal assignments here

        --
        -- Idle
        --

        -- Let the module be in idle state for a while
        wait for 1 us;

        --
        -- Case 1: A equal to B
        --

        i_input_a <= x"000A";
        i_input_b <= x"000A";

        wait for 1 us;

        --
        -- Case 2: A not equal to B
        --
        i_input_b <= x"000B";

        wait for 1 us;

        wait;
    end process WaveGen_Proc;

    

end architecture Behavioral;

-------------------------------------------------------------------------------

configuration comparator_tb_Behavioral_cfg of comparator_tb is
    for Behavioral
    end for;
end comparator_tb_Behavioral_cfg;

-------------------------------------------------------------------------------
