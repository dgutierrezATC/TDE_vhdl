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

entity basic_timer_feedback_tb is

end entity basic_timer_feedback_tb;

-------------------------------------------------------------------------------

architecture Behavioral of basic_timer_feedback_tb is

    component basic_timer_feedback is
        generic (
            g_NBITS : integer);
        port (
            i_current_value  : in  std_logic_vector((g_NBITS - 1) downto 0);
            i_offset_value   : in  std_logic_vector((g_NBITS - 1) downto 0);
            o_feedback_value : out std_logic_vector((g_NBITS - 1) downto 0)
        );
    end component basic_timer_feedback;

    -- component generics
    constant c_NBITS : integer := 16;

    -- component ports

    -- Inputs
    signal i_current_value  : std_logic_vector((c_NBITS - 1) downto 0) := (others => '0');
    signal i_offset_value   : std_logic_vector((c_NBITS - 1) downto 0) := x"0100";

    -- Output
    signal o_feedback_value : std_logic_vector((c_NBITS - 1) downto 0);

begin  -- architecture Behavioral

    -- component instantiation
    DUT: entity work.basic_timer_feedback
        generic map (
            g_NBITS => c_NBITS)
        port map (
            i_current_value  => i_current_value,
            i_offset_value   => i_offset_value,
            o_feedback_value => o_feedback_value
        );


    -- waveform generation
    WaveGen_Proc: process
    begin
        -- insert signal assignments here

        -- Wait for 1 us
        wait for 1 us;

        -- Change current value of the timer
        i_current_value <= x"0001";

        -- Wait for 100 ns
        wait for 100 ns;

        -- Change current value of the timer
        i_current_value <= x"0100";

        -- Wait
        wait;
        
    end process WaveGen_Proc;

    

end architecture Behavioral;

-------------------------------------------------------------------------------

configuration basic_timer_feedback_tb_Behavioral_cfg of basic_timer_feedback_tb is
    for Behavioral
    end for;
end basic_timer_feedback_tb_Behavioral_cfg;

-------------------------------------------------------------------------------
