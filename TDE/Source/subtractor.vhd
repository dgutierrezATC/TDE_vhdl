-------------------------------------------------------------------------------
-- Title      : TDE project
-- Project    : 
-------------------------------------------------------------------------------
-- File       : subtractor.vhd
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
use ieee.std_logic_unsigned.all;

-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------
entity subtractor is
    
    generic (
        g_NBITS : integer range 0 to 32 := 16  -- Bits of the input and output data
    );  
    port (
        i_input_data_a : in  std_logic_vector((g_NBITS - 1) downto 0);  -- Input A
        i_input_data_b : in  std_logic_vector((g_NBITS - 1) downto 0);  -- Input B
        o_output_data  : out std_logic_vector((g_NBITS - 1) downto 0)   -- Output result A - B
    );  

end entity subtractor;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture Behavioral of subtractor is
    
begin  -- architecture Behavioral

    -- purpose: Subtraction computation
    -- type   : combinational
    -- inputs : i_input_data_a, i_input_data_b
    -- outputs: o_output_data
    p_subtraction: process (i_input_data_a, i_input_data_b) is
    begin  -- process p_subtraction
        o_output_data <= i_input_data_a - i_input_data_b;
    end process p_subtraction;

end architecture Behavioral;
