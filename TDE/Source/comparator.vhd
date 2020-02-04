-------------------------------------------------------------------------------
-- Title      : TDE project
-- Project    : 
-------------------------------------------------------------------------------
-- File       : comparator.vhd
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
entity comparator is
    
    generic (
        g_NBITS : integer range 0 to 32 := 16
    );
    port (
        i_input_a : in  std_logic_vector((g_NBITS - 1) downto 0);  -- Input A
        i_input_b : in  std_logic_vector((g_NBITS - 1) downto 0);  -- Input B
        o_equal   : out std_logic);     -- Comparison result

end entity comparator;

-------------------------------------------------------------------------------
-- Architectures
-------------------------------------------------------------------------------
architecture Behavioral of comparator is

begin  -- architecture Behavioral

    -- purpose: Compare A and B signals
    -- type   : combinational
    -- inputs : i_input_a, i_input_b
    -- outputs: o_equal
    p_comparison: process (i_input_a, i_input_b) is
    begin  -- process p_comparison
        if i_input_a = i_input_b then
            o_equal <= '1';
        else
            o_equal <= '0';
        end if;
    end process p_comparison;

end architecture Behavioral;
