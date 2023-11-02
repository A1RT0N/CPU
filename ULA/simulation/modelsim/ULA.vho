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

-- DATE "09/19/2023 15:05:36"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA IS
    PORT (
	Z0 : OUT std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	CONT : IN std_logic_vector(1 DOWNTO 0);
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	Z1 : OUT std_logic;
	Z2 : OUT std_logic;
	Z3 : OUT std_logic
	);
END ULA;

-- Design Ports Information
-- Z0	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z1	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z2	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z3	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Z0 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_CONT : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_B0 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_Z1 : std_logic;
SIGNAL ww_Z2 : std_logic;
SIGNAL ww_Z3 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \inst4|inst33~0_combout\ : std_logic;
SIGNAL \CONT[1]~input_o\ : std_logic;
SIGNAL \CONT[0]~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \inst4|inst1|inst6~combout\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \inst4|inst17|inst4~combout\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \inst4|inst47|inst3~0_combout\ : std_logic;
SIGNAL \inst4|inst18|inst4~combout\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \inst4|inst47|inst3~1_combout\ : std_logic;
SIGNAL \inst4|inst17|inst3~combout\ : std_logic;
SIGNAL \inst4|inst35|inst4~0_combout\ : std_logic;
SIGNAL \inst4|inst35|inst4~1_combout\ : std_logic;
SIGNAL \inst1|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst35|inst3~combout\ : std_logic;
SIGNAL \inst4|inst16|inst3~0_combout\ : std_logic;
SIGNAL \inst4|inst31~0_combout\ : std_logic;
SIGNAL \inst2|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst6~combout\ : std_logic;
SIGNAL \inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \inst3|LPM_MUX_component|auto_generated|ALT_INV_l2_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst4|inst2|ALT_INV_inst6~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst31~0_combout\ : std_logic;
SIGNAL \inst4|inst16|ALT_INV_inst3~0_combout\ : std_logic;
SIGNAL \inst4|inst35|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst4|inst35|ALT_INV_inst4~1_combout\ : std_logic;
SIGNAL \inst4|inst35|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst4|inst47|ALT_INV_inst3~1_combout\ : std_logic;
SIGNAL \inst4|inst47|ALT_INV_inst3~0_combout\ : std_logic;
SIGNAL \inst4|inst1|ALT_INV_inst6~combout\ : std_logic;
SIGNAL \inst4|inst17|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst4|inst18|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst4|inst17|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \ALT_INV_inst6~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst33~0_combout\ : std_logic;
SIGNAL \ALT_INV_A1~input_o\ : std_logic;
SIGNAL \ALT_INV_CONT[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_CONT[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A0~input_o\ : std_logic;
SIGNAL \ALT_INV_B0~input_o\ : std_logic;
SIGNAL \ALT_INV_A3~input_o\ : std_logic;
SIGNAL \ALT_INV_A2~input_o\ : std_logic;
SIGNAL \ALT_INV_B3~input_o\ : std_logic;
SIGNAL \ALT_INV_B2~input_o\ : std_logic;
SIGNAL \ALT_INV_B1~input_o\ : std_logic;

BEGIN

Z0 <= ww_Z0;
ww_A0 <= A0;
ww_A1 <= A1;
ww_A2 <= A2;
ww_A3 <= A3;
ww_CONT <= CONT;
ww_B0 <= B0;
ww_B1 <= B1;
ww_B2 <= B2;
ww_B3 <= B3;
Z1 <= ww_Z1;
Z2 <= ww_Z2;
Z3 <= ww_Z3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst3|LPM_MUX_component|auto_generated|ALT_INV_l2_w0_n0_mux_dataout~0_combout\ <= NOT \inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\;
\inst4|inst2|ALT_INV_inst6~combout\ <= NOT \inst4|inst2|inst6~combout\;
\inst4|ALT_INV_inst31~0_combout\ <= NOT \inst4|inst31~0_combout\;
\inst4|inst16|ALT_INV_inst3~0_combout\ <= NOT \inst4|inst16|inst3~0_combout\;
\inst4|inst35|ALT_INV_inst3~combout\ <= NOT \inst4|inst35|inst3~combout\;
\inst4|inst35|ALT_INV_inst4~1_combout\ <= NOT \inst4|inst35|inst4~1_combout\;
\inst4|inst35|ALT_INV_inst4~0_combout\ <= NOT \inst4|inst35|inst4~0_combout\;
\inst4|inst47|ALT_INV_inst3~1_combout\ <= NOT \inst4|inst47|inst3~1_combout\;
\inst4|inst47|ALT_INV_inst3~0_combout\ <= NOT \inst4|inst47|inst3~0_combout\;
\inst4|inst1|ALT_INV_inst6~combout\ <= NOT \inst4|inst1|inst6~combout\;
\inst4|inst17|ALT_INV_inst4~combout\ <= NOT \inst4|inst17|inst4~combout\;
\inst4|inst18|ALT_INV_inst4~combout\ <= NOT \inst4|inst18|inst4~combout\;
\inst4|inst17|ALT_INV_inst3~combout\ <= NOT \inst4|inst17|inst3~combout\;
\ALT_INV_inst6~combout\ <= NOT \inst6~combout\;
\inst4|ALT_INV_inst33~0_combout\ <= NOT \inst4|inst33~0_combout\;
\ALT_INV_A1~input_o\ <= NOT \A1~input_o\;
\ALT_INV_CONT[0]~input_o\ <= NOT \CONT[0]~input_o\;
\ALT_INV_CONT[1]~input_o\ <= NOT \CONT[1]~input_o\;
\ALT_INV_A0~input_o\ <= NOT \A0~input_o\;
\ALT_INV_B0~input_o\ <= NOT \B0~input_o\;
\ALT_INV_A3~input_o\ <= NOT \A3~input_o\;
\ALT_INV_A2~input_o\ <= NOT \A2~input_o\;
\ALT_INV_B3~input_o\ <= NOT \B3~input_o\;
\ALT_INV_B2~input_o\ <= NOT \B2~input_o\;
\ALT_INV_B1~input_o\ <= NOT \B1~input_o\;

-- Location: IOOBUF_X0_Y18_N79
\Z0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_Z0);

-- Location: IOOBUF_X0_Y18_N96
\Z1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_Z1);

-- Location: IOOBUF_X0_Y18_N62
\Z2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\,
	devoe => ww_devoe,
	o => ww_Z2);

-- Location: IOOBUF_X0_Y18_N45
\Z3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~1_combout\,
	devoe => ww_devoe,
	o => ww_Z3);

-- Location: IOIBUF_X33_Y0_N41
\A0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\B0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: MLABCELL_X28_Y4_N0
\inst4|inst33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst33~0_combout\ = ( \B0~input_o\ & ( !\A0~input_o\ ) ) # ( !\B0~input_o\ & ( \A0~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A0~input_o\,
	dataf => \ALT_INV_B0~input_o\,
	combout => \inst4|inst33~0_combout\);

-- Location: IOIBUF_X33_Y0_N75
\CONT[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONT(1),
	o => \CONT[1]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\CONT[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONT(0),
	o => \CONT[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\A1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: LABCELL_X24_Y4_N3
\inst|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\ = ( \A1~input_o\ & ( (!\CONT[0]~input_o\ & (\inst4|inst33~0_combout\)) # (\CONT[0]~input_o\ & ((\CONT[1]~input_o\))) ) ) # ( !\A1~input_o\ & ( (\inst4|inst33~0_combout\ & 
-- !\CONT[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000111101010101000000000101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst33~0_combout\,
	datac => \ALT_INV_CONT[1]~input_o\,
	datad => \ALT_INV_CONT[0]~input_o\,
	datae => \ALT_INV_A1~input_o\,
	combout => \inst|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X24_Y4_N9
inst6 : cyclonev_lcell_comb
-- Equation(s):
-- \inst6~combout\ = ( !\CONT[1]~input_o\ & ( !\CONT[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONT[0]~input_o\,
	datae => \ALT_INV_CONT[1]~input_o\,
	combout => \inst6~combout\);

-- Location: IOIBUF_X36_Y0_N52
\B1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: MLABCELL_X28_Y4_N18
\inst4|inst1|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst1|inst6~combout\ = ( \CONT[1]~input_o\ & ( \B0~input_o\ & ( (!\A1~input_o\ & (\A0~input_o\)) # (\A1~input_o\ & ((\B1~input_o\))) ) ) ) # ( !\CONT[1]~input_o\ & ( \B0~input_o\ & ( (!\A0~input_o\ & (((\A1~input_o\ & \B1~input_o\)))) # 
-- (\A0~input_o\ & ((!\CONT[0]~input_o\ $ (!\A1~input_o\)) # (\B1~input_o\))) ) ) ) # ( \CONT[1]~input_o\ & ( !\B0~input_o\ & ( (\B1~input_o\ & (!\A1~input_o\ $ (!\A0~input_o\))) ) ) ) # ( !\CONT[1]~input_o\ & ( !\B0~input_o\ & ( (\B1~input_o\ & 
-- (!\A1~input_o\ $ (((!\CONT[0]~input_o\) # (!\A0~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110110000000000011110000000110001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONT[0]~input_o\,
	datab => \ALT_INV_A1~input_o\,
	datac => \ALT_INV_A0~input_o\,
	datad => \ALT_INV_B1~input_o\,
	datae => \ALT_INV_CONT[1]~input_o\,
	dataf => \ALT_INV_B0~input_o\,
	combout => \inst4|inst1|inst6~combout\);

-- Location: IOIBUF_X34_Y0_N1
\A2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: MLABCELL_X28_Y4_N42
\inst4|inst17|inst4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst17|inst4~combout\ = ( \A1~input_o\ & ( !\A2~input_o\ $ (((\CONT[0]~input_o\) # (\CONT[1]~input_o\))) ) ) # ( !\A1~input_o\ & ( !\A2~input_o\ $ (((\A0~input_o\ & ((\CONT[0]~input_o\) # (\CONT[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000010101111010100001010111000000001111111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A0~input_o\,
	datab => \ALT_INV_CONT[1]~input_o\,
	datac => \ALT_INV_CONT[0]~input_o\,
	datad => \ALT_INV_A2~input_o\,
	dataf => \ALT_INV_A1~input_o\,
	combout => \inst4|inst17|inst4~combout\);

-- Location: IOIBUF_X34_Y0_N35
\B3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\A3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: MLABCELL_X28_Y4_N24
\inst4|inst47|inst3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst47|inst3~0_combout\ = ( \A3~input_o\ & ( \A1~input_o\ & ( (!\CONT[0]~input_o\ & !\CONT[1]~input_o\) ) ) ) # ( !\A3~input_o\ & ( \A1~input_o\ & ( (!\CONT[0]~input_o\ & !\CONT[1]~input_o\) ) ) ) # ( \A3~input_o\ & ( !\A1~input_o\ & ( 
-- (!\CONT[0]~input_o\ & !\CONT[1]~input_o\) ) ) ) # ( !\A3~input_o\ & ( !\A1~input_o\ & ( (!\CONT[0]~input_o\ & ((!\CONT[1]~input_o\) # ((!\A0~input_o\ & !\A2~input_o\)))) # (\CONT[0]~input_o\ & (((!\A0~input_o\ & !\A2~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONT[0]~input_o\,
	datab => \ALT_INV_CONT[1]~input_o\,
	datac => \ALT_INV_A0~input_o\,
	datad => \ALT_INV_A2~input_o\,
	datae => \ALT_INV_A3~input_o\,
	dataf => \ALT_INV_A1~input_o\,
	combout => \inst4|inst47|inst3~0_combout\);

-- Location: MLABCELL_X28_Y4_N36
\inst4|inst18|inst4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst18|inst4~combout\ = ( \A3~input_o\ & ( \A1~input_o\ & ( (\CONT[1]~input_o\) # (\CONT[0]~input_o\) ) ) ) # ( !\A3~input_o\ & ( \A1~input_o\ & ( (!\CONT[0]~input_o\ & !\CONT[1]~input_o\) ) ) ) # ( \A3~input_o\ & ( !\A1~input_o\ & ( 
-- (!\CONT[0]~input_o\ & (\CONT[1]~input_o\ & ((\A2~input_o\) # (\A0~input_o\)))) # (\CONT[0]~input_o\ & (((\A2~input_o\) # (\A0~input_o\)))) ) ) ) # ( !\A3~input_o\ & ( !\A1~input_o\ & ( (!\CONT[0]~input_o\ & ((!\CONT[1]~input_o\) # ((!\A0~input_o\ & 
-- !\A2~input_o\)))) # (\CONT[0]~input_o\ & (((!\A0~input_o\ & !\A2~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010001000000001110111011110001000100010000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONT[0]~input_o\,
	datab => \ALT_INV_CONT[1]~input_o\,
	datac => \ALT_INV_A0~input_o\,
	datad => \ALT_INV_A2~input_o\,
	datae => \ALT_INV_A3~input_o\,
	dataf => \ALT_INV_A1~input_o\,
	combout => \inst4|inst18|inst4~combout\);

-- Location: IOIBUF_X34_Y0_N52
\B2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: MLABCELL_X28_Y4_N30
\inst4|inst47|inst3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst47|inst3~1_combout\ = ( \inst4|inst18|inst4~combout\ & ( \B2~input_o\ & ( (\B3~input_o\ & (!\inst4|inst47|inst3~0_combout\ & ((!\inst4|inst17|inst4~combout\) # (\inst4|inst1|inst6~combout\)))) ) ) ) # ( !\inst4|inst18|inst4~combout\ & ( 
-- \B2~input_o\ & ( (!\inst4|inst47|inst3~0_combout\ & (((!\inst4|inst17|inst4~combout\) # (\B3~input_o\)) # (\inst4|inst1|inst6~combout\))) ) ) ) # ( \inst4|inst18|inst4~combout\ & ( !\B2~input_o\ & ( (\inst4|inst1|inst6~combout\ & 
-- (!\inst4|inst17|inst4~combout\ & (\B3~input_o\ & !\inst4|inst47|inst3~0_combout\))) ) ) ) # ( !\inst4|inst18|inst4~combout\ & ( !\B2~input_o\ & ( (!\inst4|inst47|inst3~0_combout\ & (((\inst4|inst1|inst6~combout\ & !\inst4|inst17|inst4~combout\)) # 
-- (\B3~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100000000000001000000000011011111000000000000110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|ALT_INV_inst6~combout\,
	datab => \inst4|inst17|ALT_INV_inst4~combout\,
	datac => \ALT_INV_B3~input_o\,
	datad => \inst4|inst47|ALT_INV_inst3~0_combout\,
	datae => \inst4|inst18|ALT_INV_inst4~combout\,
	dataf => \ALT_INV_B2~input_o\,
	combout => \inst4|inst47|inst3~1_combout\);

-- Location: MLABCELL_X28_Y4_N3
\inst4|inst17|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst17|inst3~combout\ = ( !\A1~input_o\ & ( (!\A0~input_o\ & (!\A2~input_o\ & ((\CONT[0]~input_o\) # (\CONT[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010100000001000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A0~input_o\,
	datab => \ALT_INV_CONT[1]~input_o\,
	datac => \ALT_INV_A2~input_o\,
	datad => \ALT_INV_CONT[0]~input_o\,
	dataf => \ALT_INV_A1~input_o\,
	combout => \inst4|inst17|inst3~combout\);

-- Location: MLABCELL_X28_Y4_N6
\inst4|inst35|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst35|inst4~0_combout\ = ( \CONT[1]~input_o\ & ( \B0~input_o\ & ( !\A1~input_o\ $ (\B1~input_o\) ) ) ) # ( !\CONT[1]~input_o\ & ( \B0~input_o\ & ( !\A1~input_o\ $ (!\B1~input_o\ $ (((\A0~input_o\) # (\CONT[0]~input_o\)))) ) ) ) # ( 
-- \CONT[1]~input_o\ & ( !\B0~input_o\ & ( !\A1~input_o\ $ (!\A0~input_o\ $ (!\B1~input_o\)) ) ) ) # ( !\CONT[1]~input_o\ & ( !\B0~input_o\ & ( !\A1~input_o\ $ (!\B1~input_o\ $ (((\CONT[0]~input_o\ & !\A0~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001110011100110000110011110001101100100100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONT[0]~input_o\,
	datab => \ALT_INV_A1~input_o\,
	datac => \ALT_INV_A0~input_o\,
	datad => \ALT_INV_B1~input_o\,
	datae => \ALT_INV_CONT[1]~input_o\,
	dataf => \ALT_INV_B0~input_o\,
	combout => \inst4|inst35|inst4~0_combout\);

-- Location: LABCELL_X24_Y4_N12
\inst4|inst35|inst4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst35|inst4~1_combout\ = ( \inst4|inst35|inst4~0_combout\ & ( \A3~input_o\ & ( (!\inst4|inst33~0_combout\ & (\inst6~combout\)) # (\inst4|inst33~0_combout\ & ((!\inst4|inst47|inst3~1_combout\))) ) ) ) # ( !\inst4|inst35|inst4~0_combout\ & ( 
-- \A3~input_o\ & ( (!\inst4|inst33~0_combout\ & (!\inst6~combout\)) # (\inst4|inst33~0_combout\ & ((\inst4|inst47|inst3~1_combout\))) ) ) ) # ( \inst4|inst35|inst4~0_combout\ & ( !\A3~input_o\ & ( (!\inst4|inst33~0_combout\ & (\inst6~combout\)) # 
-- (\inst4|inst33~0_combout\ & ((!\inst4|inst47|inst3~1_combout\ $ (\inst4|inst17|inst3~combout\)))) ) ) ) # ( !\inst4|inst35|inst4~0_combout\ & ( !\A3~input_o\ & ( (!\inst4|inst33~0_combout\ & (!\inst6~combout\)) # (\inst4|inst33~0_combout\ & 
-- ((!\inst4|inst47|inst3~1_combout\ $ (!\inst4|inst17|inst3~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110111011000011100100010011110001101100011010111001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst33~0_combout\,
	datab => \ALT_INV_inst6~combout\,
	datac => \inst4|inst47|ALT_INV_inst3~1_combout\,
	datad => \inst4|inst17|ALT_INV_inst3~combout\,
	datae => \inst4|inst35|ALT_INV_inst4~0_combout\,
	dataf => \ALT_INV_A3~input_o\,
	combout => \inst4|inst35|inst4~1_combout\);

-- Location: MLABCELL_X28_Y4_N12
\inst1|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\ = ( \CONT[1]~input_o\ & ( (!\CONT[0]~input_o\ & (\inst4|inst35|inst4~1_combout\)) # (\CONT[0]~input_o\ & ((\A2~input_o\))) ) ) # ( !\CONT[1]~input_o\ & ( (!\CONT[0]~input_o\ & 
-- (\inst4|inst35|inst4~1_combout\)) # (\CONT[0]~input_o\ & ((\A0~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001000100111011100100111001001110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONT[0]~input_o\,
	datab => \inst4|inst35|ALT_INV_inst4~1_combout\,
	datac => \ALT_INV_A0~input_o\,
	datad => \ALT_INV_A2~input_o\,
	datae => \ALT_INV_CONT[1]~input_o\,
	combout => \inst1|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X24_Y4_N18
\inst4|inst35|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst35|inst3~combout\ = ( \inst4|inst35|inst4~0_combout\ & ( \A3~input_o\ & ( (!\inst4|inst33~0_combout\ & (!\inst6~combout\ & !\inst4|inst47|inst3~1_combout\)) ) ) ) # ( !\inst4|inst35|inst4~0_combout\ & ( \A3~input_o\ & ( 
-- (!\inst4|inst33~0_combout\ & (\inst6~combout\ & \inst4|inst47|inst3~1_combout\)) ) ) ) # ( \inst4|inst35|inst4~0_combout\ & ( !\A3~input_o\ & ( (!\inst4|inst33~0_combout\ & (!\inst6~combout\ & (!\inst4|inst47|inst3~1_combout\ $ 
-- (\inst4|inst17|inst3~combout\)))) ) ) ) # ( !\inst4|inst35|inst4~0_combout\ & ( !\A3~input_o\ & ( (!\inst4|inst33~0_combout\ & (\inst6~combout\ & (!\inst4|inst47|inst3~1_combout\ $ (!\inst4|inst17|inst3~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000100000000000100000000010000000101000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_inst33~0_combout\,
	datab => \ALT_INV_inst6~combout\,
	datac => \inst4|inst47|ALT_INV_inst3~1_combout\,
	datad => \inst4|inst17|ALT_INV_inst3~combout\,
	datae => \inst4|inst35|ALT_INV_inst4~0_combout\,
	dataf => \ALT_INV_A3~input_o\,
	combout => \inst4|inst35|inst3~combout\);

-- Location: MLABCELL_X28_Y4_N45
\inst4|inst16|inst3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst16|inst3~0_combout\ = ( !\A1~input_o\ & ( (!\A0~input_o\ & ((\CONT[0]~input_o\) # (\CONT[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A0~input_o\,
	datac => \ALT_INV_CONT[1]~input_o\,
	datad => \ALT_INV_CONT[0]~input_o\,
	dataf => \ALT_INV_A1~input_o\,
	combout => \inst4|inst16|inst3~0_combout\);

-- Location: MLABCELL_X28_Y4_N48
\inst4|inst31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst31~0_combout\ = ( \A2~input_o\ & ( \B2~input_o\ & ( !\inst4|inst16|inst3~0_combout\ $ (!\inst4|inst1|inst6~combout\ $ (\inst4|inst47|inst3~1_combout\)) ) ) ) # ( !\A2~input_o\ & ( \B2~input_o\ & ( !\inst4|inst1|inst6~combout\ $ 
-- (!\inst4|inst47|inst3~1_combout\ $ (((!\A3~input_o\) # (!\inst4|inst16|inst3~0_combout\)))) ) ) ) # ( \A2~input_o\ & ( !\B2~input_o\ & ( !\inst4|inst16|inst3~0_combout\ $ (!\inst4|inst1|inst6~combout\ $ (!\inst4|inst47|inst3~1_combout\)) ) ) ) # ( 
-- !\A2~input_o\ & ( !\B2~input_o\ & ( !\inst4|inst1|inst6~combout\ $ (!\inst4|inst47|inst3~1_combout\ $ (((\A3~input_o\ & \inst4|inst16|inst3~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001110000110011110011100001000111100011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A3~input_o\,
	datab => \inst4|inst16|ALT_INV_inst3~0_combout\,
	datac => \inst4|inst1|ALT_INV_inst6~combout\,
	datad => \inst4|inst47|ALT_INV_inst3~1_combout\,
	datae => \ALT_INV_A2~input_o\,
	dataf => \ALT_INV_B2~input_o\,
	combout => \inst4|inst31~0_combout\);

-- Location: LABCELL_X24_Y4_N24
\inst2|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\ = ( \CONT[0]~input_o\ & ( \A3~input_o\ & ( (\CONT[1]~input_o\) # (\A1~input_o\) ) ) ) # ( !\CONT[0]~input_o\ & ( \A3~input_o\ & ( !\inst4|inst35|inst3~combout\ $ 
-- (!\inst4|inst31~0_combout\) ) ) ) # ( \CONT[0]~input_o\ & ( !\A3~input_o\ & ( (\A1~input_o\ & !\CONT[1]~input_o\) ) ) ) # ( !\CONT[0]~input_o\ & ( !\A3~input_o\ & ( !\inst4|inst35|inst3~combout\ $ (!\inst4|inst31~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000010001000100010000001111111100000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A1~input_o\,
	datab => \ALT_INV_CONT[1]~input_o\,
	datac => \inst4|inst35|ALT_INV_inst3~combout\,
	datad => \inst4|ALT_INV_inst31~0_combout\,
	datae => \ALT_INV_CONT[0]~input_o\,
	dataf => \ALT_INV_A3~input_o\,
	combout => \inst2|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X28_Y4_N57
\inst4|inst2|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst6~combout\ = ( \B2~input_o\ & ( (!\inst4|inst17|inst4~combout\) # (\inst4|inst1|inst6~combout\) ) ) # ( !\B2~input_o\ & ( (!\inst4|inst17|inst4~combout\ & \inst4|inst1|inst6~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst17|ALT_INV_inst4~combout\,
	datad => \inst4|inst1|ALT_INV_inst6~combout\,
	dataf => \ALT_INV_B2~input_o\,
	combout => \inst4|inst2|inst6~combout\);

-- Location: MLABCELL_X28_Y4_N54
\inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\ = ( \inst6~combout\ & ( (!\B3~input_o\ & (!\inst4|inst2|inst6~combout\ $ (((!\A3~input_o\) # (\inst4|inst17|inst3~combout\))))) # (\B3~input_o\ & ((!\inst4|inst2|inst6~combout\ & 
-- ((!\A3~input_o\) # (\inst4|inst17|inst3~combout\))) # (\inst4|inst2|inst6~combout\ & (\A3~input_o\)))) ) ) # ( !\inst6~combout\ & ( (!\B3~input_o\ & ((!\inst4|inst2|inst6~combout\ & (\A3~input_o\ & !\inst4|inst17|inst3~combout\)) # 
-- (\inst4|inst2|inst6~combout\ & (!\A3~input_o\ & \inst4|inst17|inst3~combout\)))) # (\B3~input_o\ & ((!\inst4|inst2|inst6~combout\ & (!\A3~input_o\ & \inst4|inst17|inst3~combout\)) # (\inst4|inst2|inst6~combout\ & (!\A3~input_o\ $ 
-- (\inst4|inst17|inst3~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100001100001000110000110000101101001011001110110100101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B3~input_o\,
	datab => \inst4|inst2|ALT_INV_inst6~combout\,
	datac => \ALT_INV_A3~input_o\,
	datad => \inst4|inst17|ALT_INV_inst3~combout\,
	dataf => \ALT_INV_inst6~combout\,
	combout => \inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X24_Y4_N30
\inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~1_combout\ = ( \inst4|inst31~0_combout\ & ( \A2~input_o\ & ( (!\CONT[0]~input_o\ & (!\inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\ $ ((!\inst4|inst35|inst3~combout\)))) 
-- # (\CONT[0]~input_o\ & (((!\CONT[1]~input_o\)))) ) ) ) # ( !\inst4|inst31~0_combout\ & ( \A2~input_o\ & ( (!\CONT[0]~input_o\ & (\inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\)) # (\CONT[0]~input_o\ & ((!\CONT[1]~input_o\))) ) ) ) 
-- # ( \inst4|inst31~0_combout\ & ( !\A2~input_o\ & ( (!\CONT[0]~input_o\ & (!\inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\ $ (!\inst4|inst35|inst3~combout\))) ) ) ) # ( !\inst4|inst31~0_combout\ & ( !\A2~input_o\ & ( 
-- (!\CONT[0]~input_o\ & \inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001010000010100001110111001000100111110100101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CONT[0]~input_o\,
	datab => \inst3|LPM_MUX_component|auto_generated|ALT_INV_l2_w0_n0_mux_dataout~0_combout\,
	datac => \inst4|inst35|ALT_INV_inst3~combout\,
	datad => \ALT_INV_CONT[1]~input_o\,
	datae => \inst4|ALT_INV_inst31~0_combout\,
	dataf => \ALT_INV_A2~input_o\,
	combout => \inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X7_Y1_N0
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


