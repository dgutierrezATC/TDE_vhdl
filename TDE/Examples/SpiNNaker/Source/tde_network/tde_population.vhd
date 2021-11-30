--/////////////////////////////////////////////////////////////////////////////////
--//                                                                             //
--//    Copyright (c) 2020  Daniel Gutierrez-Galan                               //
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
-- Title      : tde_population
-- Project    : TDE_vhdl
-------------------------------------------------------------------------------
-- File       : tde_population.vhd
-- Author     : Daniel Gutierrez-Galan
-- Company    : University of Seville
-- Created    : 2020-06-17
-- Last update: 2020-06-17
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2020 University of Seville
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-06-17  1.0      dgutierrez	Created
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Libraries
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use std.textio.all;

-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------
entity tde_population is

    generic (
        g_NBITS              : integer range 0 to 32 := 16;     -- Data width
        g_LOG2NBITS          : integer range 0 to 5  := 4;      -- Log2 of g_NBITS
        g_TWO_POW_NBITS_DATA : integer               := 65536;  -- 2**g_NBITS
        g_SPIKEGEN_METHOD    : integer range 0 to 1  := 0;      -- Spike generator mode selector
        g_NNEURONS           : integer range 0 to 32 := 4;      -- Number of TDE
        g_NEURONS_PARAMS     : string                := "tde_population_000_params.data"
    );

    port (
        i_clock         : in  std_logic;  -- Main clock
        i_nreset        : in  std_logic;  -- Low active reset
        i_tr_tick       : in  std_logic;  -- Time resolution tick
        i_facilitatory  : in  std_logic;  -- Facilitatory input
        i_trigger       : in  std_logic;  -- Trigger input
        o_output_spikes : out std_logic_vector((g_NNEURONS - 1) downto 0)  -- Output spikes
    );

end entity tde_population;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture Behavioral of tde_population is

    ---------------------------------------------------------------------------
    -- Signals declaration
    ---------------------------------------------------------------------------
    type t_nbits_data_array is array (0 to ((g_NNEURONS * 6) - 1)) of std_logic_vector((g_NBITS - 1) downto 0);  -- Array of NBITS words

    -- impure function f_init_tde_params_from_file (p_reg_content_filename : in string) return t_nbits_data_array is
    --     file f_regs_file          : text is in p_reg_content_filename;
    --     variable f_regs_file_line : line;
    --     variable f_regs_content   : t_nbits_data_array;
    -- begin
    --     for I in t_nbits_data_array'range loop
    --         readline (f_regs_file, f_regs_file_line);
    --         hread (f_regs_file_line, f_regs_content(I));
    --     end loop;
    --     return f_regs_content;
    -- end function;

    impure function f_init_tde_params_from_file (p_reg_content_filename : in string) return t_nbits_data_array is
        file f_regs_file          : text open read_mode is p_reg_content_filename;
        variable f_regs_file_line : line;
        variable f_regs_content   : t_nbits_data_array;
        variable v_line_data      : bit_vector(f_regs_content(0)'range);
    begin
        for I in t_nbits_data_array'range loop
            readline (f_regs_file, f_regs_file_line);
            read (f_regs_file_line, v_line_data);
            f_regs_content(I) := to_stdlogicvector(v_line_data);
        end loop;

        return f_regs_content;
    end function;

    signal r_neurons_params : t_nbits_data_array := f_init_tde_params_from_file(g_NEURONS_PARAMS);  -- TDEs' parameters' values
    
    ---------------------------------------------------------------------------
    -- Components declaration
    ---------------------------------------------------------------------------

    --
    -- TDE
    --
    component tde is
        generic (
            g_NBITS              : integer range 0 to 32;
            g_LOG2NBITS          : integer range 0 to 5;
            g_SPIKEGEN_METHOD    : integer range 0 to 1;
            g_TWO_POW_NBITS_DATA : integer
        );
        port (
            i_clock          : in  std_logic;
            i_nreset         : in  std_logic;
            i_tr_tick        : in  std_logic;
            i_facilitatory   : in  std_logic;
            i_trigger        : in  std_logic;
            i_tau            : in  std_logic_vector((g_LOG2NBITS - 1) downto 0);
            i_weight         : in  std_logic_vector((g_LOG2NBITS - 1) downto 0);
            i_decay          : in  std_logic_vector((g_LOG2NBITS - 1) downto 0);
            i_detection_time : in  std_logic_vector((g_NBITS - 1) downto 0);
            i_faci_sat_value : in  std_logic_vector((g_NBITS - 1) downto 0);
            i_trig_sat_value : in  std_logic_vector((g_NBITS - 1) downto 0);
            o_output_spike   : out std_logic
        );
    end component tde;

begin  -- architecture Behavioral

    ---------------------------------------------------------------------------
    -- Components instantiation
    ---------------------------------------------------------------------------

    --
    -- Generate multiple TDEs
    --
    gen_tde_population: for v_index in 0 to (g_NNEURONS - 1) generate
        tde_x: entity work.tde
            generic map (
                g_NBITS              => g_NBITS,
                g_LOG2NBITS          => g_LOG2NBITS,
                g_SPIKEGEN_METHOD    => g_SPIKEGEN_METHOD,
                g_TWO_POW_NBITS_DATA => g_TWO_POW_NBITS_DATA
            )
            port map (
                i_clock          => i_clock,
                i_nreset         => i_nreset,
                i_tr_tick        => i_tr_tick,
                i_facilitatory   => i_facilitatory,
                i_trigger        => i_trigger,
                i_tau            => r_neurons_params(0 + (6 * v_index))(3 downto 0),
                i_weight         => r_neurons_params(1 + (6 * v_index))(3 downto 0),
                i_decay          => r_neurons_params(2 + (6 * v_index))(3 downto 0),
                i_detection_time => r_neurons_params(3 + (6 * v_index)),
                i_faci_sat_value => r_neurons_params(4 + (6 * v_index)),
                i_trig_sat_value => r_neurons_params(5 + (6 * v_index)),
                o_output_spike   => o_output_spikes(v_index)
            );
    end generate gen_tde_population;
    

end architecture Behavioral;
