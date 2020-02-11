-------------------------------------------------------------------------------
-- Title      : Testbench for design "basic_timer_feedback"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : basic_timer_feedback_tb.vhd
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

entity adder_tb is

end entity adder_tb;

-------------------------------------------------------------------------------

architecture Behavioral of adder_tb is

    component adder is
        generic (
            g_NBITS : integer);
        port (
            i_input_data_a  : in  std_logic_vector((g_NBITS - 1) downto 0);
            i_input_data_b   : in  std_logic_vector((g_NBITS - 1) downto 0);
            o_output_data : out std_logic_vector((g_NBITS - 1) downto 0)
        );
    end component adder;

    -- component generics
    constant c_NBITS : integer := 16;

    -- component ports

    -- Inputs
    signal i_input_data_a  : std_logic_vector((c_NBITS - 1) downto 0) := (others => '0');
    signal i_input_data_b   : std_logic_vector((c_NBITS - 1) downto 0) := x"0100";

    -- Output
    signal o_output_data : std_logic_vector((c_NBITS - 1) downto 0);

begin  -- architecture Behavioral

    -- component instantiation
    DUT: entity work.adder
        generic map (
            g_NBITS => c_NBITS)
        port map (
            i_input_data_a  => i_input_data_a,
            i_input_data_b   => i_input_data_b,
            o_output_data => o_output_data
        );


    -- waveform generation
    WaveGen_Proc: process
    begin
        -- insert signal assignments here

        -- Wait for 1 us
        wait for 1 us;

        -- Change current value of the timer
        i_input_data_a <= x"0001";

        -- Wait for 100 ns
        wait for 100 ns;

        -- Change current value of the timer
        i_input_data_a <= x"0100";

        -- Wait
        wait;
        
    end process WaveGen_Proc;

    

end architecture Behavioral;

-------------------------------------------------------------------------------

configuration adder_tb_Behavioral_cfg of adder_tb is
    for Behavioral
    end for;
end adder_tb_Behavioral_cfg;

-------------------------------------------------------------------------------
