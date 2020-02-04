-------------------------------------------------------------------------------
-- Title      : TDE project
-- Project    : 
-------------------------------------------------------------------------------
-- File       : generic_register.vhd
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

-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------
entity generic_register is
    
    generic (
        g_NBITS : integer range 0 to 32 := 16);  -- Number of bits of the data

    port (
        i_clock    : in std_logic;      -- Main clock
        i_nreset   : in std_logic;      -- Reset
        i_data_in  : in std_logic_vector((g_NBITS - 1) downto 0);  -- Input data
        i_load     : in std_logic;      -- Load signal
        i_clear    : in std_logic;      -- Clear signal
        o_data_out : out std_logic_vector((g_NBITS - 1) downto 0)  -- Output data
    );

end entity generic_register;

architecture Behavioral of generic_register is

begin  -- architecture Behavioral

    -- purpose: Register data update
    -- type   : sequential
    -- inputs : i_clock, i_nreset, i_load, i_clear
    -- outputs: o_data_out
    p_register_update: process (i_clock, i_nreset) is
    begin  -- process p_register_update
        if i_nreset = '0' then          -- asynchronous reset (active low)
            o_data_out <= (others => '0');
        elsif i_clock'event and i_clock = '1' then  -- rising clock edge
            if i_clear = '1' then
                o_data_out <= (others => '0');
            elsif i_load = '1' then
                o_data_out <= i_data_in;
            else

            end if;
                
        end if;
    end process p_register_update;

end architecture Behavioral;
