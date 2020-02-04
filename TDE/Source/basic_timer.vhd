-------------------------------------------------------------------------------
-- Title      : Generic timer
-- Project    : TDE_vhdl
-------------------------------------------------------------------------------
-- File       : timer.vhd
-- Author     : Daniel Gutierrez-Galan (dgutierrez@atc.us.es)
-- Company    : University of Seville
-- Created    : 2020-01-07
-- Last update: 2020-01-08
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2020 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-01-07  1.0      dgutierrez	Created
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-----------------------------------------------------------------------------
-- Entity declaration
-----------------------------------------------------------------------------

entity basic_timer is
    generic (
        g_NBITS : integer range 0 to 32 := 16  -- Number of bits of the internal counter
    );
    port (
        i_clock         : in  std_logic;  -- Main clock
        i_nreset        : in  std_logic;  -- Reset (active LOW)
        i_tr_tick       : in  std_logic;  -- Time resolution tick (secondary clock)
        i_enable        : in  std_logic;  -- Timer enable
        i_load          : in  std_logic;  -- Load the initial value of the timer
        i_load_value    : in  std_logic_vector((g_NBITS - 1) downto 0);  -- Initial value of the timer
        o_current_value : out std_logic_vector((g_NBITS - 1) downto 0);  -- Current value of the timer
        o_timeout       : out std_logic   -- Timeout flag
    );
end basic_timer;

architecture Behavioral of basic_timer is
    -----------------------------------------------------------------------------
    -- Signals declaration
    -----------------------------------------------------------------------------

    signal r_counter_value : std_logic_vector((g_NBITS - 1) downto 0);  -- Internal counter register
    signal w_timeout : std_logic;       -- HIGH when the internal counter reaches ZERO; Otherwise, LOW.
    constant c_all_zeros : std_logic_vector((g_NBITS - 1) downto 0) := (others => '0');  -- All zeros constant value

begin  -- architecture Behavioral

    -----------------------------------------------------------------------------
    -- Processes
    -----------------------------------------------------------------------------
        
    -- purpose: Internal counter countdown.
    -- type   : sequential
    -- inputs : i_clock, i_nreset, i_load_value
    -- outputs: r_counter_value
    p_countdown: process (i_nreset, i_clock)
        variable v_counter : std_logic_vector((g_NBITS - 1) downto 0) := (others => '0');  -- internal counter variable
    begin  -- process p_countdown
        if (i_nreset = '0') then          -- asynchronous reset (active low)
            v_counter := (others => '0');
        elsif (i_clock'event and i_clock = '1') then  -- rising clock edge
            if (i_load = '1') then
                v_counter := i_load_value;
            elsif (i_enable = '1') then
                if (i_tr_tick = '1') then
                    v_counter := v_counter - 1;
                else

                end if;
            else
                
            end if;
        else
            
        end if;

        r_counter_value <= v_counter;
        
    end process p_countdown;


    -- purpose: Timeout detection. The timeout flag is set HIGH when the timer counter value reaches ZERO.
    -- type   : combinational
    -- inputs : r_counter_value
    -- outputs: w_timeout
    p_timeout_detection : process (r_counter_value)
    begin  -- process p_timeout_detection
        if (r_counter_value = c_all_zeros) then
            w_timeout <= '1';
        else
            w_timeout <= '0';
        end if;

    end process p_timeout_detection;

    ---------------------------------------------------------------------------
    -- Output assign
    ---------------------------------------------------------------------------
    o_timeout       <= w_timeout;
    o_current_value <= r_counter_value;


end architecture Behavioral;
