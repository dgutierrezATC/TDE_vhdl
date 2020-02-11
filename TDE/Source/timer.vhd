-------------------------------------------------------------------------------
-- Title      : Timer
-- Project    : 
-------------------------------------------------------------------------------
-- File       : timer.vhd
-- Author     : Daniel Gutierrez-Galan (dgutierrez@atc.us.es)
-- Company    : 
-- Created    : 2020-01-15
-- Last update: 2020-01-15
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: Saturation detection not implemented yet!
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

-------------------------------------------------------------------------------
-- Entity declaration
-------------------------------------------------------------------------------
entity timer is
    
    generic (
        g_NBITS : integer range 0 to 32 := 16);       -- Number of bits of the input data

    port (
        i_clock         : in  std_logic;  -- Main clock
        i_nreset        : in  std_logic;  -- Asynchronous reset (active low)
        i_tr_tick       : in  std_logic;  -- Time resolution tick (secondary clock)
        i_start         : in  std_logic;  -- Start signal for enabling the timer
        i_initial_value : in  std_logic_vector((g_NBITS - 1) downto 0);  -- Initial value of the timer
        o_current_value : out std_logic_vector((g_NBITS - 1) downto 0) -- Current value of the timer
    ); 

end entity timer;

-------------------------------------------------------------------------------
-- Architectures
-------------------------------------------------------------------------------
architecture Structural of timer is
    ---------------------------------------------------------------------------
    -- Signals declaration
    ---------------------------------------------------------------------------
    signal w_enable : std_logic;        -- Timer enable signal from timer control to timer counter
    signal w_load : std_logic;          -- Timer load signal from timer control to timer counter
    signal w_load_value : std_logic_vector((g_NBITS - 1) downto 0);  -- Timer load value calculated in the feedback module
    signal w_current_value : std_logic_vector((g_NBITS - 1) downto 0);  -- Timer current value signal
    signal w_timeout : std_logic;       -- Timer timeout signal from timer to th etimer control
    
    ---------------------------------------------------------------------------
    -- Components declaration
    ---------------------------------------------------------------------------

    --
    -- Basic timer
    --
    component basic_timer is
        generic (
            g_NBITS : integer range 0 to 32 := 16
        );
        port (
            i_clock         : in  std_logic;
            i_nreset        : in  std_logic;
            i_tr_tick       : in  std_logic;
            i_enable        : in  std_logic;
            i_load          : in  std_logic;
            i_load_value    : in  std_logic_vector((g_NBITS - 1) downto 0);
            o_current_value : out std_logic_vector((g_NBITS - 1) downto 0);
            o_timeout       : out std_logic
        );
    end component basic_timer;

    --
    -- Basic timer control
    --
    component basic_timer_control is
        port (
            --i_clock   : in  std_logic;
            --i_nreset  : in  std_logic;
            i_start   : in  std_logic;
            i_timeout : in  std_logic;
            o_enable  : out std_logic;
            o_load    : out std_logic
        );
    end component basic_timer_control;

    --
    -- Basic timer feedback
    --
    component adder is
        generic (
            g_NBITS : integer range 0 to 32 := 16
        );
        port (
            i_input_data_a  : in  std_logic_vector((g_NBITS - 1) downto 0);
            i_input_data_b   : in  std_logic_vector((g_NBITS - 1) downto 0);
            o_output_data : out std_logic_vector((g_NBITS - 1) downto 0)
        );
    end component adder;

begin  -- architecture Structural
    ---------------------------------------------------------------------------
    -- Components instantiation
    ---------------------------------------------------------------------------

    --
    -- Basic timer
    --
    basic_timer_1: entity work.basic_timer
        generic map (
            g_NBITS => g_NBITS)
        port map (
            i_clock         => i_clock ,
            i_nreset        => i_nreset,
            i_tr_tick       => i_tr_tick,
            i_enable        => w_enable,
            i_load          => w_load,
            i_load_value    => w_load_value,
            o_current_value => w_current_value,
            o_timeout       => w_timeout
        );

    --
    -- Basic timer control
    --
    basic_timer_control_1: entity work.basic_timer_control
        port map (
            --i_clock   => i_clock,
            --i_nreset  => i_nreset,
            i_start   => i_start,
            i_timeout => w_timeout,
            o_enable  => w_enable,
            o_load    => w_load
        );
    
    --
    -- Basic timer feedback
    --
    adder_1: entity work.adder
        generic map (
            g_NBITS => g_NBITS)
        port map (
            i_input_data_a  => w_current_value,
            i_input_data_b   => i_initial_value,
            o_output_data => w_load_value
        );

    ---------------------------------------------------------------------------
    -- Assigns
    ---------------------------------------------------------------------------
    o_current_value <= w_current_value;

end architecture Structural;
