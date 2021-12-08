--///////////////////////////////////////////////////////////////////////////////
--//                                                                           //
--//    Copyright © 2016  Angel Francisco Jimenez-Fernandez                    //
--//                                                                           //
--//    This file is part of OpenNAS.                                          //
--//                                                                           //
--//    OpenNAS is free software: you can redistribute it and/or modify        //
--//    it under the terms of the GNU General Public License as published by   //
--//    the Free Software Foundation, either version 3 of the License, or      //
--//    (at your option) any later version.                                    //
--//                                                                           //
--//    OpenNAS is distributed in the hope that it will be useful,             //
--//    but WITHOUT ANY WARRANTY; without even the implied warranty of         //
--//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.See the            //
--//    GNU General Public License for more details.                           //
--//                                                                           //
--//    You should have received a copy of the GNU General Public License      //
--//    along with OpenNAS. If not, see <http://www.gnu.org/licenses/>.        //
--//                                                                           //
--///////////////////////////////////////////////////////////////////////////////


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity OpenNas_Cascade_STEREO_64ch is
    Port (
        clock   : in std_logic;
        rst_ext : in std_logic;
        --I2S Bus
        i2s_bclk      : in  STD_LOGIC;
        i2s_d_in: in  STD_LOGIC;
        i2s_lr: in  STD_LOGIC;
        --AER Output
        AER_DATA_OUT : out STD_LOGIC_VECTOR(15 downto 0);
        AER_REQ      : out STD_LOGIC;
        AER_ACK      : in  STD_LOGIC
    );
end OpenNas_Cascade_STEREO_64ch;

architecture OpenNas_arq of OpenNas_Cascade_STEREO_64ch is

    --I2S interface Stereo
    component i2s_to_spikes_stereo is
        Port (
            clock        : in std_logic;
            reset        : in std_logic;
            --I2S Bus
            i2s_bclk     : in std_logic;
            i2s_d_in     : in std_logic;
            i2s_lr       : in std_logic;
            --Spikes Output
            spikes_left  : out std_logic_vector(1 downto 0);
            spikes_rigth : out std_logic_vector(1 downto 0)
        );
    end component;

    --Cascade Filter Bank
    component CFBank_2or_64CH is
        Port (
            clock      : in  std_logic;
            rst        : in  std_logic;
            spikes_in  : in  std_logic_vector(1 downto 0);
            spikes_out : out std_logic_vector(127 downto 0)
        );
    end component;

    --Phase lock
    component AVCN is
        Generic (
            NUM_FREQ_CH             : integer := 36
        );
        Port (
            i_clock                 : in std_logic;
            i_nreset                : in std_logic;
            i_auditory_nerve_spikes : in std_logic_vector(((NUM_FREQ_CH * 2) - 1) downto 0);
            o_phase_locked_spikes   : out std_logic_vector((NUM_FREQ_CH - 1) downto 0)
        );
    end component;

    --TDE network
    component tde_network is
        generic (
            g_NBITS              : integer range 0 to 32 := 16;
            g_LOG2NBITS          : integer range 0 to 5  := 4;
            g_TWO_POW_NBITS_DATA : integer               := 65536;
            g_SPIKEGEN_METHOD    : integer range 0 to 1  := 0;
            g_NNETWORKS          : integer range 0 to 32 := 2;
            g_NNEURONSNETWORK    : integer range 0 to 32 := 4;
            g_NNEURONSTOTAL      : integer range 0 to 1024 := 8
        );
        port (
            i_clock         : in  std_logic;
            i_nreset        : in  std_logic;
            i_tr_tick       : in  std_logic;
            i_left_stim     : in  std_logic;
            i_right_stim    : in  std_logic;
            o_output_spikes : out std_logic_vector((g_NNEURONSTOTAL - 1) downto 0)
        );
    end component;

    --Spikes Distributed Monitor
    component AER_DISTRIBUTED_MONITOR is
        Generic (   
            N_SPIKES       : INTEGER := 128;
            LOG_2_N_SPIKES : INTEGER := 7;
            TAM_AER        : INTEGER := 512;
            IL_AER         : INTEGER := 11
        );
        Port (
            CLK            : in  STD_LOGIC;
            RST            : in  STD_LOGIC;
            SPIKES_IN      : in  STD_LOGIC_VECTOR(N_SPIKES - 1 downto 0);
            AER_DATA_OUT   : out STD_LOGIC_VECTOR(15 downto 0);
            AER_REQ        : out STD_LOGIC;
            AER_ACK        : in  STD_LOGIC);
    end component;

    --Reset signals
    signal reset : std_logic;

    --Number of frequency channels
    constant nas_number_freq_ch : integer := 64;

    --Tr tick
    constant c_i_tr_tick_divisor_value : integer range 0 to 100 := 50;  -- 20 ns * 50 = 1000 ns = 1 us
    signal tr_tick                     : std_logic;

    --Left spikes
    signal spikes_in_left  : std_logic_vector(1 downto 0);
    signal spikes_out_left : std_logic_vector(127 downto 0);
    signal spikes_out_left_phase_locked : std_logic_vector(63 downto 0);
	constant spikes_out_left_phase_locked_zeros : std_logic_vector(63 downto 0) := (others => '0');

    --Rigth spikes
    signal spikes_in_rigth  : std_logic_vector(1 downto 0);
    signal spikes_out_rigth : std_logic_vector(127 downto 0);
    signal spikes_out_rigth_phase_locked : std_logic_vector(63 downto 0);
	constant spikes_out_right_phase_locked_zeros : std_logic_vector(63 downto 0) := (others => '0');

    --Output spikes
    signal spikes_out : std_logic_vector(255 downto 0);
    constant zeros    : std_logic_vector(191 downto 0) := (others => '0');

    --TDE output spikes
    signal tde_network_output_spikes : std_logic_vector(63 downto 0);


    begin

        reset <= rst_ext;

        --Output spikes connection
        --spikes_out <= spikes_out_rigth & spikes_out_left;
		--spikes_out <= spikes_out_right_phase_locked_zeros & spikes_out_rigth_phase_locked & spikes_out_left_phase_locked_zeros & spikes_out_left_phase_locked;
        --spikes_out <= spikes_out_rigth & spikes_out_left(127 downto 8) & tde_network_output_spikes;
        spikes_out <= zeros & tde_network_output_spikes;

        --I2S Stereo
        U_I2S_Stereo: i2s_to_spikes_stereo
        Port Map (
            clock        => clock,
            reset        => reset,
            --I2S Bus
            i2s_bclk     => i2s_bclk,
            i2s_d_in     => i2s_d_in,
            i2s_lr       => i2s_lr,
            --Spikes Output
            spikes_left  => spikes_in_left,
            spikes_rigth => spikes_in_rigth
        );

        --Cascade Filter Bank
        U_CFBank_2or_64CH_Left: CFBank_2or_64CH
        Port Map (
            clock      => clock,
            rst        => reset,
            spikes_in  => spikes_in_left,
            spikes_out => spikes_out_left
        );

        U_CFBank_2or_64CH_Rigth: CFBank_2or_64CH
        Port Map (
            clock      => clock,
            rst        => reset,
            spikes_in  => spikes_in_rigth,
            spikes_out => spikes_out_rigth
        );

        --AVCN left
        U_phase_lock_left: AVCN
        Generic Map (
            NUM_FREQ_CH             => nas_number_freq_ch
        )
        Port Map (
            i_clock                 => clock,
            i_nreset                => reset,
            i_auditory_nerve_spikes => spikes_out_left,
            o_phase_locked_spikes   => spikes_out_left_phase_locked
        );
        
        --AVCN right
        U_phase_lock_right: AVCN
        Generic Map (
            NUM_FREQ_CH             => nas_number_freq_ch
        )
        Port Map (
            i_clock                 => clock,
            i_nreset                => reset,
            i_auditory_nerve_spikes => spikes_out_rigth,
            o_phase_locked_spikes   => spikes_out_rigth_phase_locked
        );

        --TDE network using NAS freq. channel 25 (1366.22057562633 Hz)
        U_TDE_network_ch_25: tde_network
        Generic Map (
            g_NBITS              => 16,
            g_LOG2NBITS          => 4,
            g_TWO_POW_NBITS_DATA => 65536,
            g_SPIKEGEN_METHOD    => 0,
            g_NNETWORKS          => 2,
            g_NNEURONSNETWORK    => 4,
            g_NNEURONSTOTAL      => 8
        )
        Port Map (
            i_clock         => clock,
            i_nreset        => reset,
            i_tr_tick       => tr_tick,
            i_left_stim     => spikes_out_left_phase_locked(25),
            i_right_stim    => spikes_out_rigth_phase_locked(25),
            o_output_spikes => tde_network_output_spikes(7 downto 0)
        );

        --TDE network using NAS freq. channel 27 (1093.87745841366 Hz)
        U_TDE_network_ch_27: tde_network
        Generic Map (
            g_NBITS              => 16,
            g_LOG2NBITS          => 4,
            g_TWO_POW_NBITS_DATA => 65536,
            g_SPIKEGEN_METHOD    => 0,
            g_NNETWORKS          => 2,
            g_NNEURONSNETWORK    => 4,
            g_NNEURONSTOTAL      => 8
        )
        Port Map (
            i_clock         => clock,
            i_nreset        => reset,
            i_tr_tick       => tr_tick,
            i_left_stim     => spikes_out_left_phase_locked(27),
            i_right_stim    => spikes_out_rigth_phase_locked(27),
            o_output_spikes => tde_network_output_spikes(15 downto 8)
        );

        --TDE network using NAS freq. channel 29 (875.823359252936 Hz)
        U_TDE_network_ch_29: tde_network
        Generic Map (
            g_NBITS              => 16,
            g_LOG2NBITS          => 4,
            g_TWO_POW_NBITS_DATA => 65536,
            g_SPIKEGEN_METHOD    => 0,
            g_NNETWORKS          => 2,
            g_NNEURONSNETWORK    => 4,
            g_NNEURONSTOTAL      => 8
        )
        Port Map (
            i_clock         => clock,
            i_nreset        => reset,
            i_tr_tick       => tr_tick,
            i_left_stim     => spikes_out_left_phase_locked(29),
            i_right_stim    => spikes_out_rigth_phase_locked(29),
            o_output_spikes => tde_network_output_spikes(23 downto 16)
        );

        --TDE network using NAS freq. channel 31 (701.236277165355 Hz)
        U_TDE_network_ch_31: tde_network
        Generic Map (
            g_NBITS              => 16,
            g_LOG2NBITS          => 4,
            g_TWO_POW_NBITS_DATA => 65536,
            g_SPIKEGEN_METHOD    => 0,
            g_NNETWORKS          => 2,
            g_NNEURONSNETWORK    => 4,
            g_NNEURONSTOTAL      => 8
        )
        Port Map (
            i_clock         => clock,
            i_nreset        => reset,
            i_tr_tick       => tr_tick,
            i_left_stim     => spikes_out_left_phase_locked(31),
            i_right_stim    => spikes_out_rigth_phase_locked(31),
            o_output_spikes => tde_network_output_spikes(31 downto 24)
        );

        --TDE network using NAS freq. channel 33 (561.451474452756 Hz)
        U_TDE_network_ch_33: tde_network
        Generic Map (
            g_NBITS              => 16,
            g_LOG2NBITS          => 4,
            g_TWO_POW_NBITS_DATA => 65536,
            g_SPIKEGEN_METHOD    => 0,
            g_NNETWORKS          => 2,
            g_NNEURONSNETWORK    => 4,
            g_NNEURONSTOTAL      => 8
        )
        Port Map (
            i_clock         => clock,
            i_nreset        => reset,
            i_tr_tick       => tr_tick,
            i_left_stim     => spikes_out_left_phase_locked(33),
            i_right_stim    => spikes_out_rigth_phase_locked(33),
            o_output_spikes => tde_network_output_spikes(39 downto 32)
        );

        --TDE network using NAS freq. channel 35 (449.531446717839 Hz)
        U_TDE_network_ch_35: tde_network
        Generic Map (
            g_NBITS              => 16,
            g_LOG2NBITS          => 4,
            g_TWO_POW_NBITS_DATA => 65536,
            g_SPIKEGEN_METHOD    => 0,
            g_NNETWORKS          => 2,
            g_NNEURONSNETWORK    => 4,
            g_NNEURONSTOTAL      => 8
        )
        Port Map (
            i_clock         => clock,
            i_nreset        => reset,
            i_tr_tick       => tr_tick,
            i_left_stim     => spikes_out_left_phase_locked(35),
            i_right_stim    => spikes_out_rigth_phase_locked(35),
            o_output_spikes => tde_network_output_spikes(47 downto 40)
        );

        --TDE network using NAS freq. channel 37 (359.921615283312 Hz)
        U_TDE_network_ch_37: tde_network
        Generic Map (
            g_NBITS              => 16,
            g_LOG2NBITS          => 4,
            g_TWO_POW_NBITS_DATA => 65536,
            g_SPIKEGEN_METHOD    => 0,
            g_NNETWORKS          => 2,
            g_NNEURONSNETWORK    => 4,
            g_NNEURONSTOTAL      => 8
        )
        Port Map (
            i_clock         => clock,
            i_nreset        => reset,
            i_tr_tick       => tr_tick,
            i_left_stim     => spikes_out_left_phase_locked(37),
            i_right_stim    => spikes_out_rigth_phase_locked(37),
            o_output_spikes => tde_network_output_spikes(55 downto 48)
        );

        --TDE network using NAS freq. channel 39 (288.174654062545 Hz)
        U_TDE_network_ch_39: tde_network
        Generic Map (
            g_NBITS              => 16,
            g_LOG2NBITS          => 4,
            g_TWO_POW_NBITS_DATA => 65536,
            g_SPIKEGEN_METHOD    => 0,
            g_NNETWORKS          => 2,
            g_NNEURONSNETWORK    => 4,
            g_NNEURONSTOTAL      => 8
        )
        Port Map (
            i_clock         => clock,
            i_nreset        => reset,
            i_tr_tick       => tr_tick,
            i_left_stim     => spikes_out_left_phase_locked(39),
            i_right_stim    => spikes_out_rigth_phase_locked(39),
            o_output_spikes => tde_network_output_spikes(63 downto 56)
        );

        --Spikes Distributed Monitor
        U_AER_DISTRIBUTED_MONITOR: AER_DISTRIBUTED_MONITOR
        Generic Map (
            N_SPIKES       =>256,
            LOG_2_N_SPIKES =>8,
            TAM_AER        =>2048,
            IL_AER         =>11
        )
        Port Map (
            CLK            => clock,
            RST            => reset,
            SPIKES_IN      => spikes_out,
            AER_DATA_OUT   => AER_DATA_OUT,
            AER_REQ        => AER_REQ,
            AER_ACK        => AER_ACK
        );

        -- purpose: i_tr_tick clock generation
        -- type   : sequential
        -- inputs : clock, i_nreset
        -- outputs: tr_tick
        p_tr_tick_generation: process (reset, clock)
            variable v_tr_tick_counter : integer range 0 to c_i_tr_tick_divisor_value := 0;  -- internal counter variable
        begin  -- process p_tr_tick_generation
            if (reset = '0') then          -- asynchronous reset (active low)
                v_tr_tick_counter := 0;
                tr_tick <= '0';
            elsif (clock'event and clock = '1') then  -- rising clock edge
                v_tr_tick_counter := v_tr_tick_counter + 1;
                if (v_tr_tick_counter = c_i_tr_tick_divisor_value) then
                    v_tr_tick_counter := 0;
                    tr_tick <= '1';
                else
                    tr_tick <= '0';
                end if;
            else
                
            end if;
            
        end process p_tr_tick_generation;

end OpenNas_arq;
