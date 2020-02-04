----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.01.2020 18:08:42
-- Design Name: 
-- Module Name: timer_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity basic_timer_tb is
end basic_timer_tb;

architecture Behavioral of basic_timer_tb is
    ---------------------------------------------------------------------------
    -- Component declaration for the Unit Under Test (UUT)
    ---------------------------------------------------------------------------
    component basic_timer is
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
    end component;

    ---------------------------------------------------------------------------
    -- UUT signals declaration
    ---------------------------------------------------------------------------

    -- Generic
    constant c_NBITS : integer := 16;   -- Counter bits resolution

    -- Inputs
    signal i_clock      : std_logic                                := '0';
    signal i_nreset     : std_logic                                := '1';
    signal i_tr_tick    : std_logic                                := '0';
    signal i_enable     : std_logic                                := '0';
    signal i_load       : std_logic                                := '0';
    signal i_load_value : std_logic_vector((c_NBITS - 1) downto 0) := (others => '0');

    -- Outputs
    signal o_current_value : std_logic_vector((c_NBITS - 1) downto 0);
    signal o_timeout       : std_logic;

    ---------------------------------------------------------------------------
    -- Testbench signals declaration
    ---------------------------------------------------------------------------
    
    -- Clock
    constant c_i_clock_period   : time := 20 ns;
    constant c_i_tr_tick_divisor_value : integer range 0 to 1000 := 50;

begin
    ---------------------------------------------------------------------------
    -- Instantiate the Unit Under Test (UUT)
    ---------------------------------------------------------------------------
    UUT: basic_timer --entity work.timer(Behavioral)
        generic map (
            g_NBITS => c_NBITS
        )
        port map (
            i_clock         => i_clock,
            i_nreset        => i_nreset,
            i_tr_tick       => i_tr_tick,
            i_enable        => i_enable,
            i_load          => i_load,
            i_load_value    => i_load_value,
            o_current_value => o_current_value,
            o_timeout       => o_timeout
        );

    ---------------------------------------------------------------------------
    -- Clocks generation
    ---------------------------------------------------------------------------
    -- purpose: Main clock generation
    -- type   : combinational
    -- inputs : 
    -- outputs: i_clock
    p_i_clock_generation: process
    begin  -- process p_i_clock_generation
        i_clock <= '0';
        wait for c_i_clock_period / 2;
        i_clock <= '1';
        wait for c_i_clock_period / 2;
    end process p_i_clock_generation;

    -- purpose: Time resolution tick generation. In this testbench, the time resolution is 1us
    -- type   : sequential
    -- inputs : i_clock, i_nreset
    -- outputs: i_tr_tick
    p_i_tr_clock_generation : process (i_clock, i_nreset)
        variable v_clock_divisor_counter : integer := 0;  -- Clock divisor counter
    begin  -- process p_i_tr_clock_generation
        if (i_nreset = '0') then          -- asynchronous reset (active low)
            v_clock_divisor_counter := 0;
            i_tr_tick <= '0';
        elsif (i_clock'event and i_clock = '1') then  -- rising clock edge
            v_clock_divisor_counter := v_clock_divisor_counter + 1;

            if (v_clock_divisor_counter = c_i_tr_tick_divisor_value) then
                i_tr_tick <= '1';
                v_clock_divisor_counter := 0;
            else
                i_tr_tick <= '0';
            end if;

        else
            
        end if;
    end process p_i_tr_clock_generation;

    -- purpose: Set the signals to generate the stimuli
    -- type   : combinational
    -- inputs : 
    -- outputs: 
    p_stimuli: process
    begin  -- process p_stimuli
        -- Hold the reset for 1ms
        wait for 1 ms;

        -- Leave the reset
        i_nreset <= '1';

        -- System in idle for 1 ms
        wait for 1 ms;

        -- Sync
        wait until i_clock'event and i_clock = '1';  -- rising clock edge
        wait for c_i_clock_period * 2;

        -- Load a value
        for v_load_val in 1 to 100 loop
            -- Set the input value to be load
            i_load_value <= std_logic_vector(to_unsigned(v_load_val, c_NBITS));

            -- Set load signal HIGH for a clock cycle
            i_load <= '1';
            wait for c_i_clock_period;
            i_load <= '0';

            -- Wait 5 clock cycles
            wait for c_i_clock_period * 5;

            -- Enable the timer
            i_enable <= '1';

            -- Keep enable HIGH until the timeout flag changes to HIGH
            wait until o_timeout = '1';

            -- Disable the timer
            i_enable <= '0';

            -- Sync
            wait until i_clock'event and i_clock = '1';  -- rising clock edge

            -- Wait 5 clock cycles
            wait for c_i_clock_period * 5;
            
        end loop;  -- v_load_val

        -- Testbench finished
        report "Testbench finished!" severity note;
        
        -- Wait forever
        wait;
        
    end process p_stimuli;

    -- purpose: Checking if the output value is negative
    -- type   : combinational
    -- inputs : o_current_value
    -- outputs: 
    p_non_negative_output_checking: process (o_current_value)
        variable v_temp : integer := 0;  -- Temporal variable
    begin  -- process p_non_negative_output_checking
        v_temp := to_integer(unsigned(o_current_value));

        assert v_temp >= 0 report "Testbench error: current value is negative" severity error;
        
    end process p_non_negative_output_checking;
    
end Behavioral;
