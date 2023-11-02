-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "09/19/2023 13:28:53"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ROM IS
    PORT (
	a1 : OUT std_logic;
	CLK : IN std_logic;
	ADD : IN std_logic_vector(7 DOWNTO 0);
	a2 : OUT std_logic;
	a3 : OUT std_logic;
	a5 : OUT std_logic;
	a6 : OUT std_logic;
	a7 : OUT std_logic;
	b1 : OUT std_logic;
	b2 : OUT std_logic;
	b3 : OUT std_logic;
	b4 : OUT std_logic;
	b5 : OUT std_logic;
	b6 : OUT std_logic;
	b7 : OUT std_logic;
	c1 : OUT std_logic;
	c2 : OUT std_logic;
	c3 : OUT std_logic;
	c4 : OUT std_logic;
	c5 : OUT std_logic;
	c6 : OUT std_logic;
	c7 : OUT std_logic;
	d1 : OUT std_logic;
	d2 : OUT std_logic;
	d3 : OUT std_logic;
	d4 : OUT std_logic;
	d5 : OUT std_logic;
	d6 : OUT std_logic;
	d7 : OUT std_logic;
	a4 : OUT std_logic;
	Memory : OUT std_logic_vector(0 TO 15)
	);
END ROM;

-- Design Ports Information
-- a1	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a5	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a6	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a7	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b4	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b5	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b6	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b7	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c2	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c3	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c4	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c5	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c6	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c7	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d4	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d5	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d6	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d7	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a4	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory[0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory[1]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory[2]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory[6]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory[7]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory[8]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory[9]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory[10]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory[11]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory[12]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory[13]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory[14]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory[15]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD[7]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ROM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ADD : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_a2 : std_logic;
SIGNAL ww_a3 : std_logic;
SIGNAL ww_a5 : std_logic;
SIGNAL ww_a6 : std_logic;
SIGNAL ww_a7 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_b4 : std_logic;
SIGNAL ww_b5 : std_logic;
SIGNAL ww_b6 : std_logic;
SIGNAL ww_b7 : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL ww_c2 : std_logic;
SIGNAL ww_c3 : std_logic;
SIGNAL ww_c4 : std_logic;
SIGNAL ww_c5 : std_logic;
SIGNAL ww_c6 : std_logic;
SIGNAL ww_c7 : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_d2 : std_logic;
SIGNAL ww_d3 : std_logic;
SIGNAL ww_d4 : std_logic;
SIGNAL ww_d5 : std_logic;
SIGNAL ww_d6 : std_logic;
SIGNAL ww_d7 : std_logic;
SIGNAL ww_a4 : std_logic;
SIGNAL ww_Memory : std_logic_vector(0 TO 15);
SIGNAL \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ADD[0]~input_o\ : std_logic;
SIGNAL \ADD[1]~input_o\ : std_logic;
SIGNAL \ADD[2]~input_o\ : std_logic;
SIGNAL \ADD[3]~input_o\ : std_logic;
SIGNAL \ADD[4]~input_o\ : std_logic;
SIGNAL \ADD[5]~input_o\ : std_logic;
SIGNAL \ADD[6]~input_o\ : std_logic;
SIGNAL \ADD[7]~input_o\ : std_logic;
SIGNAL \inst|53~0_combout\ : std_logic;
SIGNAL \inst|50~0_combout\ : std_logic;
SIGNAL \inst|54~0_combout\ : std_logic;
SIGNAL \inst|49~0_combout\ : std_logic;
SIGNAL \inst|51~0_combout\ : std_logic;
SIGNAL \inst|55~0_combout\ : std_logic;
SIGNAL \inst1|53~0_combout\ : std_logic;
SIGNAL \inst1|50~0_combout\ : std_logic;
SIGNAL \inst1|54~0_combout\ : std_logic;
SIGNAL \inst1|52~0_combout\ : std_logic;
SIGNAL \inst1|49~0_combout\ : std_logic;
SIGNAL \inst1|51~0_combout\ : std_logic;
SIGNAL \inst1|55~0_combout\ : std_logic;
SIGNAL \inst2|53~0_combout\ : std_logic;
SIGNAL \inst2|50~0_combout\ : std_logic;
SIGNAL \inst2|54~0_combout\ : std_logic;
SIGNAL \inst2|52~0_combout\ : std_logic;
SIGNAL \inst2|49~0_combout\ : std_logic;
SIGNAL \inst2|51~0_combout\ : std_logic;
SIGNAL \inst2|55~0_combout\ : std_logic;
SIGNAL \inst3|53~0_combout\ : std_logic;
SIGNAL \inst3|50~0_combout\ : std_logic;
SIGNAL \inst3|54~0_combout\ : std_logic;
SIGNAL \inst3|52~0_combout\ : std_logic;
SIGNAL \inst3|49~0_combout\ : std_logic;
SIGNAL \inst3|51~0_combout\ : std_logic;
SIGNAL \inst3|55~0_combout\ : std_logic;
SIGNAL \inst|52~0_combout\ : std_logic;
SIGNAL \volksvagen|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|ALT_INV_55~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_55~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_55~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_55~0_combout\ : std_logic;

BEGIN

a1 <= ww_a1;
ww_CLK <= CLK;
ww_ADD <= ADD;
a2 <= ww_a2;
a3 <= ww_a3;
a5 <= ww_a5;
a6 <= ww_a6;
a7 <= ww_a7;
b1 <= ww_b1;
b2 <= ww_b2;
b3 <= ww_b3;
b4 <= ww_b4;
b5 <= ww_b5;
b6 <= ww_b6;
b7 <= ww_b7;
c1 <= ww_c1;
c2 <= ww_c2;
c3 <= ww_c3;
c4 <= ww_c4;
c5 <= ww_c5;
c6 <= ww_c6;
c7 <= ww_c7;
d1 <= ww_d1;
d2 <= ww_d2;
d3 <= ww_d3;
d4 <= ww_d4;
d5 <= ww_d5;
d6 <= ww_d6;
d7 <= ww_d7;
a4 <= ww_a4;
Memory <= ww_Memory;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\ADD[7]~input_o\ & \ADD[6]~input_o\ & \ADD[5]~input_o\ & \ADD[4]~input_o\ & \ADD[3]~input_o\ & \ADD[2]~input_o\ & \ADD[1]~input_o\ & \ADD[0]~input_o\);

\volksvagen|altsyncram_component|auto_generated|q_a\(0) <= \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\volksvagen|altsyncram_component|auto_generated|q_a\(1) <= \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\volksvagen|altsyncram_component|auto_generated|q_a\(2) <= \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\volksvagen|altsyncram_component|auto_generated|q_a\(3) <= \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\volksvagen|altsyncram_component|auto_generated|q_a\(4) <= \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\volksvagen|altsyncram_component|auto_generated|q_a\(5) <= \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\volksvagen|altsyncram_component|auto_generated|q_a\(6) <= \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\volksvagen|altsyncram_component|auto_generated|q_a\(7) <= \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\volksvagen|altsyncram_component|auto_generated|q_a\(8) <= \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\volksvagen|altsyncram_component|auto_generated|q_a\(9) <= \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\volksvagen|altsyncram_component|auto_generated|q_a\(10) <= \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\volksvagen|altsyncram_component|auto_generated|q_a\(11) <= \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\volksvagen|altsyncram_component|auto_generated|q_a\(12) <= \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\volksvagen|altsyncram_component|auto_generated|q_a\(13) <= \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\volksvagen|altsyncram_component|auto_generated|q_a\(14) <= \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\volksvagen|altsyncram_component|auto_generated|q_a\(15) <= \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \volksvagen|altsyncram_component|auto_generated|q_a\(1);
\volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \volksvagen|altsyncram_component|auto_generated|q_a\(2);
\volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \volksvagen|altsyncram_component|auto_generated|q_a\(3);
\volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \volksvagen|altsyncram_component|auto_generated|q_a\(4);
\volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \volksvagen|altsyncram_component|auto_generated|q_a\(5);
\volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \volksvagen|altsyncram_component|auto_generated|q_a\(6);
\volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \volksvagen|altsyncram_component|auto_generated|q_a\(7);
\volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \volksvagen|altsyncram_component|auto_generated|q_a\(8);
\volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \volksvagen|altsyncram_component|auto_generated|q_a\(9);
\volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \volksvagen|altsyncram_component|auto_generated|q_a\(10);
\volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \volksvagen|altsyncram_component|auto_generated|q_a\(11);
\volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(12) <= NOT \volksvagen|altsyncram_component|auto_generated|q_a\(12);
\volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(13) <= NOT \volksvagen|altsyncram_component|auto_generated|q_a\(13);
\volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(14) <= NOT \volksvagen|altsyncram_component|auto_generated|q_a\(14);
\volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(15) <= NOT \volksvagen|altsyncram_component|auto_generated|q_a\(15);
\volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \volksvagen|altsyncram_component|auto_generated|q_a\(0);
\inst3|ALT_INV_55~0_combout\ <= NOT \inst3|55~0_combout\;
\inst2|ALT_INV_55~0_combout\ <= NOT \inst2|55~0_combout\;
\inst1|ALT_INV_55~0_combout\ <= NOT \inst1|55~0_combout\;
\inst|ALT_INV_55~0_combout\ <= NOT \inst|55~0_combout\;

-- Location: IOOBUF_X40_Y0_N59
\a1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|53~0_combout\,
	devoe => ww_devoe,
	o => ww_a1);

-- Location: IOOBUF_X46_Y0_N2
\a2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|50~0_combout\,
	devoe => ww_devoe,
	o => ww_a2);

-- Location: IOOBUF_X40_Y0_N42
\a3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|54~0_combout\,
	devoe => ww_devoe,
	o => ww_a3);

-- Location: IOOBUF_X52_Y0_N2
\a5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|49~0_combout\,
	devoe => ww_devoe,
	o => ww_a5);

-- Location: IOOBUF_X51_Y0_N2
\a6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|51~0_combout\,
	devoe => ww_devoe,
	o => ww_a6);

-- Location: IOOBUF_X51_Y0_N19
\a7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_55~0_combout\,
	devoe => ww_devoe,
	o => ww_a7);

-- Location: IOOBUF_X48_Y0_N42
\b1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|53~0_combout\,
	devoe => ww_devoe,
	o => ww_b1);

-- Location: IOOBUF_X38_Y0_N53
\b2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|50~0_combout\,
	devoe => ww_devoe,
	o => ww_b2);

-- Location: IOOBUF_X22_Y0_N53
\b3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|54~0_combout\,
	devoe => ww_devoe,
	o => ww_b3);

-- Location: IOOBUF_X36_Y0_N19
\b4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|52~0_combout\,
	devoe => ww_devoe,
	o => ww_b4);

-- Location: IOOBUF_X38_Y0_N19
\b5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|49~0_combout\,
	devoe => ww_devoe,
	o => ww_b5);

-- Location: IOOBUF_X46_Y0_N53
\b6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|51~0_combout\,
	devoe => ww_devoe,
	o => ww_b6);

-- Location: IOOBUF_X40_Y0_N76
\b7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_55~0_combout\,
	devoe => ww_devoe,
	o => ww_b7);

-- Location: IOOBUF_X44_Y0_N36
\c1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|53~0_combout\,
	devoe => ww_devoe,
	o => ww_c1);

-- Location: IOOBUF_X40_Y0_N93
\c2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|50~0_combout\,
	devoe => ww_devoe,
	o => ww_c2);

-- Location: IOOBUF_X44_Y0_N53
\c3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|54~0_combout\,
	devoe => ww_devoe,
	o => ww_c3);

-- Location: IOOBUF_X43_Y0_N36
\c4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|52~0_combout\,
	devoe => ww_devoe,
	o => ww_c4);

-- Location: IOOBUF_X38_Y0_N36
\c5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|49~0_combout\,
	devoe => ww_devoe,
	o => ww_c5);

-- Location: IOOBUF_X43_Y0_N53
\c6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|51~0_combout\,
	devoe => ww_devoe,
	o => ww_c6);

-- Location: IOOBUF_X51_Y0_N53
\c7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_55~0_combout\,
	devoe => ww_devoe,
	o => ww_c7);

-- Location: IOOBUF_X52_Y0_N53
\d1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|53~0_combout\,
	devoe => ww_devoe,
	o => ww_d1);

-- Location: IOOBUF_X51_Y0_N36
\d2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|50~0_combout\,
	devoe => ww_devoe,
	o => ww_d2);

-- Location: IOOBUF_X48_Y0_N76
\d3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|54~0_combout\,
	devoe => ww_devoe,
	o => ww_d3);

-- Location: IOOBUF_X50_Y0_N36
\d4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|52~0_combout\,
	devoe => ww_devoe,
	o => ww_d4);

-- Location: IOOBUF_X48_Y0_N93
\d5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|49~0_combout\,
	devoe => ww_devoe,
	o => ww_d5);

-- Location: IOOBUF_X50_Y0_N53
\d6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|51~0_combout\,
	devoe => ww_devoe,
	o => ww_d6);

-- Location: IOOBUF_X46_Y0_N36
\d7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_55~0_combout\,
	devoe => ww_devoe,
	o => ww_d7);

-- Location: IOOBUF_X46_Y0_N19
\a4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|52~0_combout\,
	devoe => ww_devoe,
	o => ww_a4);

-- Location: IOOBUF_X54_Y14_N45
\Memory[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \volksvagen|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_Memory(0));

-- Location: IOOBUF_X44_Y0_N2
\Memory[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \volksvagen|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => ww_Memory(1));

-- Location: IOOBUF_X48_Y0_N59
\Memory[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \volksvagen|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => ww_Memory(2));

-- Location: IOOBUF_X54_Y18_N45
\Memory[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \volksvagen|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => ww_Memory(3));

-- Location: IOOBUF_X29_Y0_N2
\Memory[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \volksvagen|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => ww_Memory(4));

-- Location: IOOBUF_X36_Y0_N2
\Memory[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \volksvagen|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => ww_Memory(5));

-- Location: IOOBUF_X33_Y0_N76
\Memory[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \volksvagen|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => ww_Memory(6));

-- Location: IOOBUF_X44_Y0_N19
\Memory[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \volksvagen|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_Memory(7));

-- Location: IOOBUF_X43_Y0_N19
\Memory[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \volksvagen|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_Memory(8));

-- Location: IOOBUF_X38_Y0_N2
\Memory[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \volksvagen|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_Memory(9));

-- Location: IOOBUF_X43_Y0_N2
\Memory[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \volksvagen|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_Memory(10));

-- Location: IOOBUF_X52_Y0_N36
\Memory[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \volksvagen|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_Memory(11));

-- Location: IOOBUF_X54_Y14_N96
\Memory[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \volksvagen|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_Memory(12));

-- Location: IOOBUF_X50_Y0_N19
\Memory[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \volksvagen|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_Memory(13));

-- Location: IOOBUF_X50_Y0_N2
\Memory[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \volksvagen|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_Memory(14));

-- Location: IOOBUF_X52_Y0_N19
\Memory[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \volksvagen|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_Memory(15));

-- Location: IOIBUF_X33_Y0_N41
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G7
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X33_Y0_N58
\ADD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD(0),
	o => \ADD[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\ADD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD(1),
	o => \ADD[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\ADD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD(2),
	o => \ADD[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\ADD[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD(3),
	o => \ADD[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\ADD[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD(4),
	o => \ADD[4]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\ADD[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD(5),
	o => \ADD[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\ADD[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD(6),
	o => \ADD[6]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\ADD[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD(7),
	o => \ADD[7]~input_o\);

-- Location: M10K_X38_Y1_N0
\volksvagen|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080006001062000930206102063020900209001060010040000000000000000000C0806304062020910106005",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../Mem01.mif",
	init_file_layout => "port_a",
	logical_ram_name => "julieta:volksvagen|altsyncram:altsyncram_component|altsyncram_t624:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portaaddr => \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \volksvagen|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: MLABCELL_X45_Y1_N30
\inst|53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|53~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(14) $ 
-- (!\volksvagen|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( \volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(14) & 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(14) & 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110000001100000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \inst|53~0_combout\);

-- Location: MLABCELL_X45_Y1_N9
\inst|50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|50~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(13) ) ) ) # ( 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(14) ) ) ) # ( \volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(13) & \volksvagen|altsyncram_component|auto_generated|q_a\(14)) ) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(13) & \volksvagen|altsyncram_component|auto_generated|q_a\(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000010100000101000001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \inst|50~0_combout\);

-- Location: MLABCELL_X45_Y1_N12
\inst|54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|54~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(14) & 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(14) ) ) ) # 
-- ( !\volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(14) & \volksvagen|altsyncram_component|auto_generated|q_a\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000110011001100110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \inst|54~0_combout\);

-- Location: MLABCELL_X45_Y1_N51
\inst|49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|49~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(13) & 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(14)) ) ) ) # ( \volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(15) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(12) & 
-- ( !\volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(13) & \volksvagen|altsyncram_component|auto_generated|q_a\(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010111111111111111100000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \inst|49~0_combout\);

-- Location: MLABCELL_X45_Y1_N54
\inst|51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|51~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(14) & 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( \volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(14)) # 
-- (\volksvagen|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(14) & 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110011111100111100000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \inst|51~0_combout\);

-- Location: MLABCELL_X45_Y1_N3
\inst|55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|55~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(15) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(14)) # (\volksvagen|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( \volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(13) $ (!\volksvagen|altsyncram_component|auto_generated|q_a\(14)) ) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(14)) # (\volksvagen|altsyncram_component|auto_generated|q_a\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010110100101101011110101111101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \inst|55~0_combout\);

-- Location: LABCELL_X40_Y1_N33
\inst1|53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|53~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(10) & 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(8)) ) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(10) & 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(8)) ) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(10) $ 
-- (!\volksvagen|altsyncram_component|auto_generated|q_a\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000000000000000000000101000001010000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \inst1|53~0_combout\);

-- Location: LABCELL_X40_Y1_N36
\inst1|50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|50~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(10)) # 
-- (\volksvagen|altsyncram_component|auto_generated|q_a\(8)) ) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(8) & 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(10)) ) ) ) # ( \volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(8) & 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(10)) ) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(8) & 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011000000110000001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \inst1|50~0_combout\);

-- Location: LABCELL_X40_Y1_N15
\inst1|54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|54~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(10) ) ) ) # ( 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(10) & !\volksvagen|altsyncram_component|auto_generated|q_a\(8)) ) ) ) # ( 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(10) & !\volksvagen|altsyncram_component|auto_generated|q_a\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000001010000010100000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \inst1|54~0_combout\);

-- Location: LABCELL_X40_Y1_N48
\inst1|52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|52~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(8) $ 
-- (\volksvagen|altsyncram_component|auto_generated|q_a\(10)) ) ) ) # ( \volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(8) & 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(10)) ) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(8) $ 
-- (!\volksvagen|altsyncram_component|auto_generated|q_a\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000110000001100000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \inst1|52~0_combout\);

-- Location: LABCELL_X40_Y1_N57
\inst1|49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|49~0_combout\ = ( !\volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(10) & 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(8)) ) ) ) # ( \volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(8) ) ) ) # ( 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(8)) # (\volksvagen|altsyncram_component|auto_generated|q_a\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000011110000111100001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \inst1|49~0_combout\);

-- Location: LABCELL_X40_Y1_N0
\inst1|51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|51~0_combout\ = ( !\volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(8) & 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(10)) ) ) ) # ( \volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(10)) # 
-- (\volksvagen|altsyncram_component|auto_generated|q_a\(8)) ) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(8) & 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111100111111001100000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \inst1|51~0_combout\);

-- Location: LABCELL_X40_Y1_N6
\inst1|55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|55~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(11) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(10)) # (\volksvagen|altsyncram_component|auto_generated|q_a\(8)) ) ) ) # ( \volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(8)) # (!\volksvagen|altsyncram_component|auto_generated|q_a\(10)) ) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(9) & ( 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(11) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111001111110011110011111100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \inst1|55~0_combout\);

-- Location: LABCELL_X43_Y1_N33
\inst2|53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|53~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(7) & 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(5)) ) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(7) $ 
-- (\volksvagen|altsyncram_component|auto_generated|q_a\(5)) ) ) ) # ( \volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(7) & 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000010100101101001010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst2|53~0_combout\);

-- Location: LABCELL_X43_Y1_N6
\inst2|50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|50~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(5) $ 
-- (\volksvagen|altsyncram_component|auto_generated|q_a\(7)) ) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(5) & 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(7)) ) ) ) # ( \volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(7)) # 
-- (\volksvagen|altsyncram_component|auto_generated|q_a\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011111100000011000000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst2|50~0_combout\);

-- Location: LABCELL_X43_Y1_N42
\inst2|54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|54~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(5) & 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(7)) ) ) ) # ( \volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(7) ) ) ) # ( 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(5) & !\volksvagen|altsyncram_component|auto_generated|q_a\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000011110000111100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst2|54~0_combout\);

-- Location: LABCELL_X43_Y1_N51
\inst2|52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|52~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(5) ) ) ) # ( 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(7) & !\volksvagen|altsyncram_component|auto_generated|q_a\(5)) ) ) ) # ( 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(7) & !\volksvagen|altsyncram_component|auto_generated|q_a\(5)) ) ) ) # ( 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(7) & \volksvagen|altsyncram_component|auto_generated|q_a\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101000001010000010100000101000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst2|52~0_combout\);

-- Location: LABCELL_X43_Y1_N54
\inst2|49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|49~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(7) ) ) ) # ( 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(5)) # (!\volksvagen|altsyncram_component|auto_generated|q_a\(7)) ) ) ) # ( 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(5) & !\volksvagen|altsyncram_component|auto_generated|q_a\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011111100111111001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst2|49~0_combout\);

-- Location: LABCELL_X43_Y1_N3
\inst2|51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|51~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(7) $ 
-- (!\volksvagen|altsyncram_component|auto_generated|q_a\(5)) ) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(7) ) ) ) # 
-- ( !\volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(7) & \volksvagen|altsyncram_component|auto_generated|q_a\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000010101010101010100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst2|51~0_combout\);

-- Location: LABCELL_X43_Y1_N36
\inst2|55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|55~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(5)) # 
-- (\volksvagen|altsyncram_component|auto_generated|q_a\(7)) ) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(7)) # 
-- (\volksvagen|altsyncram_component|auto_generated|q_a\(5)) ) ) ) # ( \volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(7)) # 
-- (\volksvagen|altsyncram_component|auto_generated|q_a\(5)) ) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(6) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(4) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(7)) # 
-- (\volksvagen|altsyncram_component|auto_generated|q_a\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111111100111111001100111111001111111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst2|55~0_combout\);

-- Location: LABCELL_X48_Y1_N3
\inst3|53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|53~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(1) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(2) & (\volksvagen|altsyncram_component|auto_generated|q_a\(0) & 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(3))) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(1) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(2) & (\volksvagen|altsyncram_component|auto_generated|q_a\(0) & 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(3))) # (\volksvagen|altsyncram_component|auto_generated|q_a\(2) & (!\volksvagen|altsyncram_component|auto_generated|q_a\(0) $ (\volksvagen|altsyncram_component|auto_generated|q_a\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101000000000000101001011010000001010000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datad => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst3|53~0_combout\);

-- Location: LABCELL_X48_Y1_N6
\inst3|50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|50~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(1) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(0) & ((\volksvagen|altsyncram_component|auto_generated|q_a\(2)))) # 
-- (\volksvagen|altsyncram_component|auto_generated|q_a\(0) & (\volksvagen|altsyncram_component|auto_generated|q_a\(3))) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(1) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(2) & 
-- (!\volksvagen|altsyncram_component|auto_generated|q_a\(3) $ (!\volksvagen|altsyncram_component|auto_generated|q_a\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000111010001110100000110000001100001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst3|50~0_combout\);

-- Location: LABCELL_X48_Y1_N42
\inst3|54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|54~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(1) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(3) & (!\volksvagen|altsyncram_component|auto_generated|q_a\(0) & 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(2))) # (\volksvagen|altsyncram_component|auto_generated|q_a\(3) & ((\volksvagen|altsyncram_component|auto_generated|q_a\(2)))) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(1) & ( 
-- (\volksvagen|altsyncram_component|auto_generated|q_a\(3) & (!\volksvagen|altsyncram_component|auto_generated|q_a\(0) & \volksvagen|altsyncram_component|auto_generated|q_a\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100100001011000010100000100000001001000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst3|54~0_combout\);

-- Location: LABCELL_X48_Y1_N21
\inst3|52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|52~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(1) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(2) & (!\volksvagen|altsyncram_component|auto_generated|q_a\(0) & 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(3))) # (\volksvagen|altsyncram_component|auto_generated|q_a\(2) & (\volksvagen|altsyncram_component|auto_generated|q_a\(0))) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(1) & ( 
-- (!\volksvagen|altsyncram_component|auto_generated|q_a\(3) & (!\volksvagen|altsyncram_component|auto_generated|q_a\(2) $ (!\volksvagen|altsyncram_component|auto_generated|q_a\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000000001011010010101011010000000000000010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datad => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst3|52~0_combout\);

-- Location: LABCELL_X48_Y1_N24
\inst3|49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|49~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(1) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(3) & \volksvagen|altsyncram_component|auto_generated|q_a\(0)) ) ) # ( 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(1) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(2) & ((\volksvagen|altsyncram_component|auto_generated|q_a\(0)))) # (\volksvagen|altsyncram_component|auto_generated|q_a\(2) & 
-- (!\volksvagen|altsyncram_component|auto_generated|q_a\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000111010001000100010001000111010001110100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst3|49~0_combout\);

-- Location: LABCELL_X48_Y1_N33
\inst3|51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|51~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(1) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(3) & ((!\volksvagen|altsyncram_component|auto_generated|q_a\(2)) # 
-- (\volksvagen|altsyncram_component|auto_generated|q_a\(0)))) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(1) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(0) & (!\volksvagen|altsyncram_component|auto_generated|q_a\(2) $ 
-- (\volksvagen|altsyncram_component|auto_generated|q_a\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101101011110000000000001010000001011010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datad => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst3|51~0_combout\);

-- Location: LABCELL_X48_Y1_N36
\inst3|55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|55~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(1) & ( ((!\volksvagen|altsyncram_component|auto_generated|q_a\(0)) # (!\volksvagen|altsyncram_component|auto_generated|q_a\(2))) # 
-- (\volksvagen|altsyncram_component|auto_generated|q_a\(3)) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(1) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(3) & ((\volksvagen|altsyncram_component|auto_generated|q_a\(2)))) # 
-- (\volksvagen|altsyncram_component|auto_generated|q_a\(3) & ((!\volksvagen|altsyncram_component|auto_generated|q_a\(2)) # (\volksvagen|altsyncram_component|auto_generated|q_a\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101101011011111111011111110101011011010110111111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst3|55~0_combout\);

-- Location: MLABCELL_X45_Y1_N36
\inst|52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|52~0_combout\ = ( \volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(14) & 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( \volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( (!\volksvagen|altsyncram_component|auto_generated|q_a\(14) & 
-- \volksvagen|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( \volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(14) $ 
-- (\volksvagen|altsyncram_component|auto_generated|q_a\(13)) ) ) ) # ( !\volksvagen|altsyncram_component|auto_generated|q_a\(12) & ( !\volksvagen|altsyncram_component|auto_generated|q_a\(15) & ( (\volksvagen|altsyncram_component|auto_generated|q_a\(14) & 
-- !\volksvagen|altsyncram_component|auto_generated|q_a\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110000111100001100001100000011000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datae => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \volksvagen|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \inst|52~0_combout\);

-- Location: LABCELL_X24_Y42_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


