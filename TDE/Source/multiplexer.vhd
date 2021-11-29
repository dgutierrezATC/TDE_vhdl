-------------------------------------------------------------------------------
-- Title      : TDE project
-- Project    : 
-------------------------------------------------------------------------------
-- File       : multiplexer.vhd
-- Author     :   <dgutierrez@DESKTOP-16SBGVD>
-- Company    : 
-- Created    : 2021-11-22
-- Last update: 2021-11-22
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2020 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2021-11-22  1.0      dgutierrez	Created
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Libraries
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------
entity multiplexer is
    
    generic (
        g_NBITS : integer range 0 to 32 := 16
    );
    port (
        i_select  : in  std_logic;                                 -- Output selector
        i_input_a : in  std_logic_vector((g_NBITS - 1) downto 0);  -- Input A
        i_input_b : in  std_logic_vector((g_NBITS - 1) downto 0);  -- Input B
        o_output  : out std_logic_vector((g_NBITS - 1) downto 0)   -- Selected input
    );     -- Comparison result

end entity multiplexer;

-------------------------------------------------------------------------------
-- Architectures
-------------------------------------------------------------------------------
architecture Behavioral of multiplexer is

begin  -- architecture Behavioral

    -- purpose: Select the output between A and B signals
    -- type   : combinational
    -- inputs : i_select, i_input_a, i_input_b
    -- outputs: o_output
    p_selection: process (i_select, i_input_a, i_input_b) is
    begin  -- process p_selection
        if i_select = '0' then
            o_output <= i_input_a;
        else
            o_output <= i_input_b;
        end if;
    end process p_selection;

end architecture Behavioral;
