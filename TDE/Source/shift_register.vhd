-------------------------------------------------------------------------------
-- Title      : Generic shift register
-- Project    : 
-------------------------------------------------------------------------------
-- File       : shift_register.vhd
-- Author     :   <dgutierrez@DESKTOP-16SBGVD>
-- Company    : 
-- Created    : 2020-01-15
-- Last update: 2020-01-20
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: Generic shift register
-------------------------------------------------------------------------------
-- Copyright (c) 2020 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-01-15  1.0      dgutierrez	Created
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
entity shift_register is
    
    generic (
        g_NBITS     : integer range 0 to 32 := 16;    -- Number of bits of the databus
        g_LOG2NBITS : integer range 0 to 5  := 4
    );    -- Log2 of the number of bits

    port (
        i_data_in       : in  std_logic_vector((g_NBITS - 1) downto 0);  -- Input data
        o_data_out      : out std_logic_vector((g_NBITS - 1) downto 0);  -- Output data
        i_left_right    : in  std_logic;  -- Left or right selector
        i_num_positions : in  std_logic_vector((g_LOG2NBITS - 1) downto 0) -- Number of positions to shift
    ); 

end entity shift_register;

-------------------------------------------------------------------------------
-- Architectures
-------------------------------------------------------------------------------
architecture Behavioral of shift_register is

    signal w_shift_value : unsigned((g_NBITS - 1) downto 0);  -- Shift value

begin  -- architecture Behavioral

    -- purpose: Shift operation
    -- type   : combinational
    -- inputs : i_data_in
    -- outputs: w_shift_value
    p_shift_operation: process (i_data_in, i_left_right, i_num_positions) is
        variable v_positions : integer := 0;  -- Number of positions to shift the register value
    begin  -- process p_shift_operation
        v_positions := to_integer(unsigned(i_num_positions));

        if i_left_right = '0' then
            w_shift_value <= shift_left(unsigned(i_data_in), v_positions);
        else
            w_shift_value <= shift_right(unsigned(i_data_in), v_positions);
        end if;
        
    end process p_shift_operation;

    -- Assign
    o_data_out <= std_logic_vector(w_shift_value);

end architecture Behavioral;
