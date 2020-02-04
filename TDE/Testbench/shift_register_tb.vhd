-------------------------------------------------------------------------------
-- Title      : Testbench for design "shift_register"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : shift_register_tb.vhd
-- Author     :   <dgutierrez@DESKTOP-16SBGVD>
-- Company    : 
-- Created    : 2020-01-20
-- Last update: 2020-01-20
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
use ieee.numeric_std.all;

-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------
entity shift_register_tb is

end entity shift_register_tb;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture Behavioral of shift_register_tb is

    -------------------------------------------------------------------------------
    -- Component declaration for the unit under test (UUT)
    -------------------------------------------------------------------------------
    component shift_register is
        generic (
            g_NBITS     : integer := 16;
            g_LOG2NBITS : integer := 4
        );
        port (
            i_data_in       : in  std_logic_vector((g_NBITS - 1) downto 0);
            o_data_out      : out std_logic_vector((g_NBITS - 1) downto 0);
            i_left_right    : in  std_logic;
            i_num_positions : in  std_logic_vector((g_LOG2NBITS - 1) downto 0)
        );
    end component shift_register;

    -------------------------------------------------------------------------------
    -- UUT signals declaration
    -------------------------------------------------------------------------------

    -- component generics
    constant g_NBITS     : integer := 16;
    constant g_LOG2NBITS : integer := 4;

    -- component ports
    signal i_data_in       : std_logic_vector((g_NBITS - 1) downto 0) := (others => '0');
    signal o_data_out      : std_logic_vector((g_NBITS - 1) downto 0);
    signal i_left_right    : std_logic := '0';
    signal i_num_positions : std_logic_vector((g_LOG2NBITS - 1) downto 0) := (others => '0');

begin  -- architecture Behavioral

    ---------------------------------------------------------------------------
    -- UUT instantiation
    ---------------------------------------------------------------------------
    DUT: entity work.shift_register
        generic map (
            g_NBITS     => g_NBITS,
            g_LOG2NBITS => g_LOG2NBITS
        )
        port map (
            i_data_in       => i_data_in,
            o_data_out      => o_data_out,
            i_left_right    => i_left_right,
            i_num_positions => i_num_positions
        );

    ---------------------------------------------------------------------------
    -- Testbench processes
    ---------------------------------------------------------------------------
    
    WaveGen_Proc: process
    begin
        -- insert signal assignments here

        --
        -- Keep the inputs with ZERO value
        --

        -- Wait for 1 us
        wait for 1 us;

        --
        -- Set the input data, and wait
        --

        -- Set the input data to value 2
        i_data_in <= x"0002";
        
        -- Wait
        wait for 100 ns;

        -- Set the input data to value 0
        i_data_in <= x"0000";

        -- Wait
        wait for 100 ns;

        --
        -- Set the inputa data to value 2, and shift it to the lef by 1
        --

        -- Set the inputa data to value 2
        i_data_in <= x"0002";
        
        -- Wait
        wait for 100 ns;

        -- Set the shift direction to left
        i_left_right <= '0';

        -- Wait
        wait for 100 ns;

        -- Set the num_positions
        i_num_positions <= x"1";

        -- Wait
        wait for 100 ns;
        
        --
        -- Set the inputa data to value 1, and shift it to the lef by 1
        --

        -- Set the inputa data to value 1
        i_data_in <= x"0001";
        
        -- Wait
        wait for 100 ns;

        -- Set the shift direction to left
        i_left_right <= '0';

        -- Wait
        wait for 100 ns;

        -- Set the num_positions
        for v_numpos in 0 to 16 loop
            -- Set the numpositions
            i_num_positions <= std_logic_vector(to_unsigned(v_numpos, g_LOG2NBITS));
            -- Wait
            wait for 100 ns;
        end loop;  -- v_numpos

        -- Wait forever
        wait;
        
    end process WaveGen_Proc;

    

end architecture Behavioral;

-------------------------------------------------------------------------------

configuration shift_register_tb_Behavioral_cfg of shift_register_tb is
    for Behavioral
    end for;
end shift_register_tb_Behavioral_cfg;

-------------------------------------------------------------------------------
