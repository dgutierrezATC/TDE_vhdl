----------------------------------------------------------------------------------
-- Company: University of Sevilla
-- Engineer: Daniel Gutierrez-Galan
-- 
-- Create Date: 12.12.2018 11:57:45
-- Design Name: 
-- Module Name: s_bushy_cell - Behavioral
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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
ENTITY spherical_bushy_cell IS
    PORT (
        i_clock : IN std_logic;
        i_nreset : IN std_logic;
        i_pos_spike : IN std_logic;
        i_neg_spike : IN std_logic;
        o_phase_locked_spike : OUT std_logic
    );
END spherical_bushy_cell;

ARCHITECTURE Behavioral OF spherical_bushy_cell IS

    --====================================================--
    -- Signals
    --====================================================--
    SIGNAL last_spike_polarity : std_logic;
    SIGNAL zero_cross : std_logic;

BEGIN

    zero_crossing_detection : PROCESS (i_clock, i_nreset)--, last_spike_polarity, i_neg_spike)
    BEGIN
        IF i_nreset = '0' THEN
            zero_cross <= '0';
        ELSE
            IF rising_edge(i_clock) THEN
                IF (i_neg_spike = '1') AND (last_spike_polarity = '1') THEN
                    zero_cross <= '1';
                    --elsif (i_pos_spike = '1') and (last_spike_polarity = "10") then
                    --zero_cross <= '1';
                ELSE
                    zero_cross <= '0';
                END IF;
            ELSE

            END IF;
        END IF;

    END PROCESS zero_crossing_detection;

    spike_polarity_update : PROCESS (i_clock, i_nreset)--, i_pos_spike)--, i_neg_spike)
    BEGIN
        IF i_nreset = '0' THEN
            last_spike_polarity <= '0';
        ELSE
            IF rising_edge(i_clock) THEN
                IF i_pos_spike = '1' THEN
                    last_spike_polarity <= '1';
                ELSIF i_neg_spike = '1' THEN
                    last_spike_polarity <= '0';
                ELSE

                END IF;
            ELSE

            END IF;
        END IF;
    END PROCESS spike_polarity_update;

    o_phase_locked_spike <= zero_cross;
    --o_phase_locked_spike <= i_pos_spike OR i_neg_spike;

END Behavioral;