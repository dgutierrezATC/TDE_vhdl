-------------------------------------------------------------------------------
-- Title      : TDE project
-- Project    : 
-------------------------------------------------------------------------------
-- File       : spikes_generator_unsigned_bw.vhd
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
-- 2020-01-20  1.0      dgutierrez      Created
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Libraries
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------
entity spikes_generator_unsigned_bw is
    generic (
        g_NBITS_DATA    : integer range 0 to 32 := 19;
        g_NBITS_FREQDIV : integer range 0 to 32 := 16
        );
    port (
        i_clock           : in  std_logic;
        i_nreset          : in  std_logic;
        i_genfreq_divisor : in  std_logic_vector((g_NBITS_FREQDIV - 1) downto 0);
        i_data_in         : in  std_logic_vector((g_NBITS_DATA-1) downto 0);
        i_write           : in  std_logic;
        i_clear           : in  std_logic;
        o_spike_out       : out std_logic
        );
end spikes_generator_unsigned_bw;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture Behavioral of spikes_generator_unsigned_bw is

    ---------------------------------------------------------------------------
    -- Signals declaration
    ---------------------------------------------------------------------------
    signal r_cicle           : std_logic_vector(g_NBITS_DATA-1 downto 0);
    signal w_cicle_wise      : std_logic_vector(g_NBITS_DATA-1 downto 0);
    
    signal r_value_to_generate : std_logic_vector(g_NBITS_DATA-1 downto 0);

    signal w_tick : std_logic;
    signal w_generate : std_logic;
    
    signal w_output_spike : std_logic;

begin

    -- purpose: spikes generator clock divider generation
    -- type   : sequential
    -- inputs : i_clock, i_nreset
    -- outputs: r_ce
    p_clock_divider: process (i_nreset, i_clock)
        variable v_tick_counter : integer := 0;  -- internal counter variable
    begin  -- process p_clock_divider
        if (i_nreset = '0') then          -- asynchronous reset (active low)
            v_tick_counter := 0;
            w_tick <= '0';
        elsif (i_clock'event and i_clock = '1') then  -- rising clock edge
            if (v_tick_counter = to_integer(unsigned(i_genfreq_divisor)) or i_write = '1') then
                v_tick_counter := 0;
            else
                v_tick_counter := v_tick_counter + 1;
            end if;
            
            if(v_tick_counter = to_integer(unsigned(i_genfreq_divisor))) then
                w_tick <= '1';
            else
                w_tick <= '0';
            end if;
        else
            
        end if;
    end process p_clock_divider;
    
    -- purpose: spikes generator clock divider generation
    -- type   : sequential
    -- inputs : i_clock, i_nreset
    -- outputs: r_ce
    p_slices_counter: process (i_nreset, i_clock)
    begin  -- process p_slices_counter
        if (i_nreset = '0') then          -- asynchronous reset (active low)
            r_cicle <= (others => '0');
        elsif (i_clock'event and i_clock = '1') then  -- rising clock edge
            if (i_write = '1') then
                r_cicle <= (others => '0');
            elsif (w_tick = '1') then
                r_cicle <= r_cicle + 1;
            end if;
        else
            
        end if;
    end process p_slices_counter;
    
    -- purpose: bitwise operation
    -- type   : combinational
    -- inputs : r_cicle, 
    -- outputs: w_cicle_wise
    p_bitwise_operation: process(r_cicle)
    begin
        for i in 0 to (g_NBITS_DATA-1) loop
            w_cicle_wise(g_NBITS_DATA-1-i) <= r_cicle(i);
        end loop;
    end process p_bitwise_operation;
    
    -- purpose: store the value to be generated
    -- type   : sequential
    -- inputs : i_clock, i_nreset
    -- outputs: r_value_to_generate
    p_store_value_to_generate: process(i_clock, i_nreset)
    begin  --process p_store_value_to_generate
        if (i_nreset = '0') then -- asynchronous reset (active low)
            r_value_to_generate <= (others => '0');
        elsif(i_clock = '1' and i_clock'event) then -- rising clock edge
            if (i_write = '1') then
                r_value_to_generate <= i_data_in;
            else

            end if;
        end if;
    end process p_store_value_to_generate;
    
    -- purpose: A > B detection
    -- type   : combinational
    -- inputs : r_value_to_generate, w_cicle_wise
    -- outputs: w_generate
    p_generate_condition: process(r_value_to_generate, w_cicle_wise)
    begin
        if (conv_integer(r_value_to_generate) > conv_integer(w_cicle_wise)) then
            w_generate <= '1';
        else
            w_generate <= '0';
        end if;
    end process;
    
    -- purpose: Spike generation
    -- type   : combinational
    -- inputs : w_tick, w_generate
    -- outputs: w_output_spike
    p_spike_generation: process(w_tick, w_generate)
    begin
        if (w_tick = '1' and w_generate = '1') then
            w_output_spike <= '1';
        else
            w_output_spike <= '0';
        end if;
    end process p_spike_generation;
    
    -- purpose: Output enable
    -- type   : combinational
    -- inputs : w_output_spike, i_clear
    -- outputs: o_spike_out
    p_output_enable: process(w_output_spike, i_clear)
    begin
        if (i_clear = '1') then
            o_spike_out <= '0';
        else
            o_spike_out <= w_output_spike;
        end if;
    end process p_output_enable;

end Behavioral;
