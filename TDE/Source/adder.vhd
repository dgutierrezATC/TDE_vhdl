-------------------------------------------------------------------------------
-- Title      : TDE basic timer feedback computation
-- Project    : 
-------------------------------------------------------------------------------
-- File       : basic_timer_feedback.vhd
-- Author     :   <Dani@DESKTOP-A0R07AP>
-- Company    : University of Seville
-- Created    : 2020-01-09
-- Last update: 2020-01-15
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
use ieee.std_logic_unsigned.all;

entity adder is
    
    generic (
        g_NBITS : integer range 0 to 32 := 16);       -- Number of bits of the input data

    port (
        i_input_data_a  : in  std_logic_vector((g_NBITS - 1) downto 0);  -- Current value
        i_input_data_b   : in  std_logic_vector((g_NBITS - 1) downto 0);  -- Feedback value
        o_output_data : out std_logic_vector((g_NBITS - 1) downto 0));  -- Result value

end entity adder;

architecture Behavioral of adder is

begin  -- architecture Behavioral

    -- purpose: Result calculation
    -- type   : combinational
    -- inputs : i_input_data_a, i_input_data_b
    -- outputs: o_output_data
    p_inputs_addition: process (i_input_data_a, i_input_data_b) is
    begin  -- process p_inputs_addition
        o_output_data <= i_input_data_a + i_input_data_b;
    end process p_inputs_addition;
    

end architecture Behavioral;
