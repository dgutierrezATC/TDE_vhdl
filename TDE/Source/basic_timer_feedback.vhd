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

entity basic_timer_feedback is
    
    generic (
        g_NBITS : integer range 0 to 32 := 16);       -- Number of bits of the input data

    port (
        i_current_value  : in  std_logic_vector((g_NBITS - 1) downto 0);  -- Current value of the timer
        i_offset_value   : in  std_logic_vector((g_NBITS - 1) downto 0);  -- Value to add to the timer current value
        o_feedback_value : out std_logic_vector((g_NBITS - 1) downto 0));  -- Result value

end entity basic_timer_feedback;

architecture Behavioral of basic_timer_feedback is

begin  -- architecture Behavioral

    -- purpose: Result calculation
    -- type   : combinational
    -- inputs : i_current_value, i_offset_value
    -- outputs: o_feedback_value
    p_inputs_addition: process (i_current_value, i_offset_value) is
    begin  -- process p_inputs_addition
        o_feedback_value <= i_current_value + i_offset_value;
    end process p_inputs_addition;
    

end architecture Behavioral;
