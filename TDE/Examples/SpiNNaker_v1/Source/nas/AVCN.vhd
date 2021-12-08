----------------------------------------------------------------------------------
-- Company: University of Sevilla
-- Engineer: Daniel Gutierrez-Galan
-- 
-- Create Date: 12.12.2018 11:57:45
-- Design Name: 
-- Module Name: AVCN - Behavioral
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
ENTITY AVCN IS
    GENERIC (
        NUM_FREQ_CH : INTEGER := 36
    );
    PORT (
        i_clock : IN std_logic;
        i_nreset : IN std_logic;
        i_auditory_nerve_spikes : IN std_logic_vector(((NUM_FREQ_CH * 2) - 1) DOWNTO 0);
        o_phase_locked_spikes : OUT std_logic_vector((NUM_FREQ_CH - 1) DOWNTO 0)
    );
END AVCN;

ARCHITECTURE Behavioral OF AVCN IS

    --====================================================--
    -- Components
    --====================================================--
    --Spherical bushy cell neuron component
    COMPONENT spherical_bushy_cell IS
        PORT (
            i_clock : IN STD_LOGIC;
            i_nreset : IN STD_LOGIC;
            i_pos_spike : IN STD_LOGIC;
            i_neg_spike : IN STD_LOGIC;
            o_phase_locked_spike : OUT STD_LOGIC
        );
    END COMPONENT;

    --====================================================--
    -- Constants
    --====================================================--

    --====================================================--
    -- Signals
    --====================================================--
BEGIN

    --====================================================--
    -- Instances
    --====================================================--

    GEN_SBC :
    FOR I IN 0 TO (NUM_FREQ_CH - 1) GENERATE
        SBCX : spherical_bushy_cell
        PORT MAP(
            i_clock => i_clock,
            i_nreset => i_nreset,
            i_pos_spike => i_auditory_nerve_spikes(I * 2),
            i_neg_spike => i_auditory_nerve_spikes((I * 2) + 1),
            o_phase_locked_spike => o_phase_locked_spikes(I)
        );
    END GENERATE GEN_SBC;

END Behavioral;