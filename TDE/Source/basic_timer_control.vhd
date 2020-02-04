-------------------------------------------------------------------------------
-- Title      : Basic timer control logic
-- Project    : TDE_vhdl
-------------------------------------------------------------------------------
-- File       : basic_timer_control.vhd
-- Author     : Daniel Gutierrez-Galan (dgutierrez@atc.us.es)
-- Company    : University of Seville
-- Created    : 2020-01-08
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
-- 2020-01-08  1.0      Dani	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity basic_timer_control is
    
    port (
        --i_clock   : in  std_logic;      -- System clock
        --i_nreset  : in  std_logic;      -- Global reset
        i_start   : in  std_logic;      -- Start signal for enabling the timer
        i_timeout : in  std_logic;      -- Timeout signal for detecting the end of the timer
        o_enable  : out std_logic;      -- Enable the timer
        o_load    : out std_logic);     -- Let the timer load a new value

end entity basic_timer_control;

architecture Behavioral of basic_timer_control is
    
    ---------------------------------------------------------------------------
    -- Signals declaration
    ---------------------------------------------------------------------------

    -- State type definition
--    type t_state is (s_idle, s_load, s_countdown);                 -- FSM states

    -- FSM signals
--    signal r_current_state : t_state;   -- Current state register
--    signal r_next_state : t_state;      -- Next state register

    signal r_i_start_latched : std_logic;
    

begin  -- architecture Behavioral

    -- purpose: Current state update process with the next state
    -- type   : sequential
    -- inputs : i_clock, i_nreset, r_next_state
    -- outputs: i_current_state
--    p_FSM_update: process (i_clock, i_nreset) is
--    begin  -- process p_FSM_update
--        if i_nreset = '0' then          -- asynchronous reset (active low)
--            r_current_state <= s_idle;
--        elsif i_clock'event and i_clock = '1' then  -- rising clock edge
--            r_current_state <= r_next_state;
--        else
            
--        end if;
--    end process p_FSM_update;

    -- purpose: Transitions between states
    -- type   : combinational
    -- inputs : i_start, i_timeout
    -- outputs: o_enable, o_load
--    p_FSM_transitions: process (r_current_state, i_start, i_timeout) is
--    begin  -- process p_FSM_transitions
--        case r_current_state is
--            when  s_idle =>
--                o_enable <= '0';
--                o_load <= '0';

--                if i_start = '1' then
--                    r_next_state <= s_load;
--                else
--                    r_next_state <= s_idle;
--                end if;
                
--            when s_load =>
--                o_enable <= '0';
--                o_load <= '1';

--                r_next_state <= s_countdown;
                
--            when s_countdown =>
--                o_enable <= '1';
--                o_load <= '0';

--                if i_start = '1' then
--                    r_next_state <= s_load;
--                elsif i_timeout = '1' then
--                    r_next_state <= s_idle;
--                else
--                    r_next_state <= s_countdown;
--                end if;
                
--            when others =>
--                o_enable <= '0';
--                o_load <= '0';

--                r_next_state <= s_idle;
--        end case;
--    end process p_FSM_transitions;

    process (i_timeout)
    begin
        o_enable <= not i_timeout;
    end process;
    
--    process (i_clock, i_nreset)
--    begin
--        if i_nreset = '0' then
--            r_i_start_latched <= '0';
--        elsif i_clock'event and i_clock = '1' then
--            r_i_start_latched <= i_start;
--        end if;
--    end process;
    
--    process(i_start, r_i_start_latched)
--    begin
--        if (i_start = '1' and r_i_start_latched = '0') then
--            o_load <= '1';
--        else
--            o_load <= '0';
--        end if;
--    end process;
    process(i_start)
    begin
        o_load <= i_start;
    end process;

end architecture Behavioral;

