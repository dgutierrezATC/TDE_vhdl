--/////////////////////////////////////////////////////////////////////////////////
--//                                                                             //
--//    Copyright � 2020  Daniel Gutierrez-Galan                                 //
--//                                                                             //
--//    This file is part of the TDE_vhdl project.                               //
--//                                                                             //
--//    TDE_vhdl is free software: you can redistribute it and/or modify         //
--//    it under the terms of the GNU General Public License as published by     //
--//    the Free Software Foundation, either version 3 of the License, or        //
--//    (at your option) any later version.                                      //
--//                                                                             //
--//    THE_vhdl is distributed in the hope that it will be useful,              //
--//    but WITHOUT ANY WARRANTY; without even the implied warranty of           //
--//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.See the              //
--//    GNU General Public License for more details.                             //
--//                                                                             //
--//    You should have received a copy of the GNU General Public License        //
--//    along with TDE_vhdl. If not, see <http://www.gnu.org/licenses/>.         //
--//                                                                             //
--/////////////////////////////////////////////////////////////////////////////////

-------------------------------------------------------------------------------
-- Title      : spikes_generator_unsigned_bw
-- Project    : TDE_vhdl
-------------------------------------------------------------------------------
-- File       : spikes_generator_unsigned_bw.vhd
-- Author     : Daniel Gutierrez-Galan (dgutierrez@atc.us.es)
-- Company    : University of Seville
-- Created    : 2020-01-20
-- Last update: 2020-04-14
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
        g_NBITS_DATA         : integer range 0 to 32 := 16;                           -- Number of bits of the internal counter
        g_METHOD             : integer range 0 to 1  := 0;                            -- Spike generation method: 0--> Bitwise, 1-->modulus
        g_TWO_POW_NBITS_DATA : integer               := 65536                         -- 2^g_NBITS
    );
    port (
        i_clock              : in  std_logic;                                         -- Main clock
        i_nreset             : in  std_logic;                                         -- Asynchronous reset (active low)
        i_genfreq_divisor    : in  std_logic_vector((g_NBITS_DATA - 1) downto 0);     -- Clock frequency divisor value
        i_data_in            : in  std_logic_vector((g_NBITS_DATA-1) downto 0);       -- Data to convert to spikes
        i_write              : in  std_logic;                                         -- Signal to capture the input data value
        i_clear              : in  std_logic;                                         -- Signal to clear the internal registers
        o_spike_out          : out std_logic                                          -- Output spike signal
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
    signal w_cicle_processed      : std_logic_vector(g_NBITS_DATA-1 downto 0);
    
    signal w_mult_result : integer;
    
    signal r_value_to_generate : std_logic_vector(g_NBITS_DATA-1 downto 0);

    signal w_tick : std_logic;
    signal w_generate : std_logic;
    
    signal w_output_spike : std_logic;

begin

    -----------------------------------------------------------------------------
    -- Processes
    -----------------------------------------------------------------------------
    
    -- purpose: spikes generator clock divider generation
    -- type   : sequential
    -- inputs : i_clock, i_nreset
    -- outputs: w_tick
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
    -- outputs: r_cicle
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
    
    gen_modulus_method_generation: if g_METHOD = 1 generate
        -- purpose: A*B calculation
        -- type   : combinational
        -- inputs : r_value_to_generate, r_cicle
        -- outputs: w_mult_result
        p_generate_condition: process(r_value_to_generate, r_cicle)
        begin
            w_mult_result <= conv_integer(r_cicle) * conv_integer(r_value_to_generate);
        end process;
        
        -- purpose: a mod B calculation
        -- type   : combinational
        -- inputs : w_mult_result
        -- outputs: w_cicle_processed
        p_modulo_operation: process(w_mult_result)
            variable v_res : integer := 0;
        begin
            v_res := w_mult_result mod g_TWO_POW_NBITS_DATA;
            w_cicle_processed <= std_logic_vector(to_unsigned(v_res, w_cicle_processed'length));
        end process;
    end generate gen_modulus_method_generation;
    
    
    gen_bitwise_method_generation: if g_METHOD = 0 generate
        -- purpose: bitwise operation
        -- type   : combinational
        -- inputs : r_cicle, 
        -- outputs: w_cicle_processed
        p_bitwise_operation: process(r_cicle)
        begin
            for i in 0 to (g_NBITS_DATA-1) loop
                w_cicle_processed(g_NBITS_DATA-1-i) <= r_cicle(i);
            end loop;
        end process p_bitwise_operation;
    end generate gen_bitwise_method_generation;
    
    -- purpose: A > B detection
    -- type   : combinational
    -- inputs : r_value_to_generate, w_cicle_processed
    -- outputs: w_generate
    p_generate_condition: process(r_value_to_generate, w_cicle_processed)
    begin 
        if (conv_integer(r_value_to_generate) > conv_integer(w_cicle_processed)) then
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
