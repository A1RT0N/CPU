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

-- DATE "09/26/2023 14:29:32"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contador IS
    PORT (
	B : OUT std_logic;
	jump : IN std_logic;
	op : IN std_logic_vector(3 DOWNTO 0);
	clear : IN std_logic;
	fpga : IN std_logic;
	debres : IN std_logic;
	clock : IN std_logic;
	C : OUT std_logic;
	A : OUT std_logic;
	D : OUT std_logic;
	E : OUT std_logic;
	F : OUT std_logic;
	G : OUT std_logic;
	H : OUT std_logic
	);
END contador;

-- Design Ports Information
-- B	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debres	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_jump : std_logic;
SIGNAL ww_op : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clear : std_logic;
SIGNAL ww_fpga : std_logic;
SIGNAL ww_debres : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL ww_H : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \jump~input_o\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \inst17~combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \inst29~combout\ : std_logic;
SIGNAL \inst1~1_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \debres~input_o\ : std_logic;
SIGNAL \inst44|out_key~1_combout\ : std_logic;
SIGNAL \fpga~input_o\ : std_logic;
SIGNAL \fpga~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst44|intermediate~1_combout\ : std_logic;
SIGNAL \inst44|intermediate~_emulated_q\ : std_logic;
SIGNAL \inst44|intermediate~0_combout\ : std_logic;
SIGNAL \inst44|Add0~45_sumout\ : std_logic;
SIGNAL \inst44|always0~0_combout\ : std_logic;
SIGNAL \inst44|Add0~46\ : std_logic;
SIGNAL \inst44|Add0~17_sumout\ : std_logic;
SIGNAL \inst44|Add0~18\ : std_logic;
SIGNAL \inst44|Add0~13_sumout\ : std_logic;
SIGNAL \inst44|Add0~14\ : std_logic;
SIGNAL \inst44|Add0~9_sumout\ : std_logic;
SIGNAL \inst44|Add0~10\ : std_logic;
SIGNAL \inst44|Add0~5_sumout\ : std_logic;
SIGNAL \inst44|Add0~6\ : std_logic;
SIGNAL \inst44|Add0~41_sumout\ : std_logic;
SIGNAL \inst44|Add0~42\ : std_logic;
SIGNAL \inst44|Add0~37_sumout\ : std_logic;
SIGNAL \inst44|Add0~38\ : std_logic;
SIGNAL \inst44|Add0~33_sumout\ : std_logic;
SIGNAL \inst44|Add0~34\ : std_logic;
SIGNAL \inst44|Add0~29_sumout\ : std_logic;
SIGNAL \inst44|Add0~30\ : std_logic;
SIGNAL \inst44|Add0~25_sumout\ : std_logic;
SIGNAL \inst44|Add0~26\ : std_logic;
SIGNAL \inst44|Add0~21_sumout\ : std_logic;
SIGNAL \inst44|Add0~22\ : std_logic;
SIGNAL \inst44|Add0~1_sumout\ : std_logic;
SIGNAL \inst44|Add0~2\ : std_logic;
SIGNAL \inst44|Add0~61_sumout\ : std_logic;
SIGNAL \inst44|Add0~62\ : std_logic;
SIGNAL \inst44|Add0~57_sumout\ : std_logic;
SIGNAL \inst44|Add0~58\ : std_logic;
SIGNAL \inst44|Add0~53_sumout\ : std_logic;
SIGNAL \inst44|Add0~54\ : std_logic;
SIGNAL \inst44|Add0~49_sumout\ : std_logic;
SIGNAL \inst44|out_key~7_combout\ : std_logic;
SIGNAL \inst44|out_key~5_combout\ : std_logic;
SIGNAL \inst44|out_key~6_combout\ : std_logic;
SIGNAL \inst44|out_key~8_combout\ : std_logic;
SIGNAL \inst44|out_key~3_combout\ : std_logic;
SIGNAL \inst44|out_key~_emulated_q\ : std_logic;
SIGNAL \inst44|out_key~2_combout\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \inst16~combout\ : std_logic;
SIGNAL \inst28~combout\ : std_logic;
SIGNAL \inst~1_combout\ : std_logic;
SIGNAL \inst~3_combout\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \inst~_emulated_q\ : std_logic;
SIGNAL \inst~2_combout\ : std_logic;
SIGNAL \inst1~3_combout\ : std_logic;
SIGNAL \inst1~0_combout\ : std_logic;
SIGNAL \inst1~_emulated_q\ : std_logic;
SIGNAL \inst1~2_combout\ : std_logic;
SIGNAL \op[2]~input_o\ : std_logic;
SIGNAL \inst30~combout\ : std_logic;
SIGNAL \inst18~combout\ : std_logic;
SIGNAL \inst2~1_combout\ : std_logic;
SIGNAL \inst2~3_combout\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \inst2~_emulated_q\ : std_logic;
SIGNAL \inst2~2_combout\ : std_logic;
SIGNAL \op[3]~input_o\ : std_logic;
SIGNAL \inst31~combout\ : std_logic;
SIGNAL \inst19~combout\ : std_logic;
SIGNAL \inst3~1_combout\ : std_logic;
SIGNAL \inst3~3_combout\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst3~_emulated_q\ : std_logic;
SIGNAL \inst3~2_combout\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;
SIGNAL \inst8~q\ : std_logic;
SIGNAL \inst9~0_combout\ : std_logic;
SIGNAL \inst9~q\ : std_logic;
SIGNAL \inst10~1_combout\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \inst10~q\ : std_logic;
SIGNAL \inst11~1_combout\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \inst11~q\ : std_logic;
SIGNAL \inst44|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_clock~input_o\ : std_logic;
SIGNAL \ALT_INV_debres~input_o\ : std_logic;
SIGNAL \ALT_INV_op[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_op[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_op[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_op[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_jump~input_o\ : std_logic;
SIGNAL \ALT_INV_clear~input_o\ : std_logic;
SIGNAL \inst44|ALT_INV_out_key~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst3~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst1~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst11~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst10~1_combout\ : std_logic;
SIGNAL \inst44|ALT_INV_intermediate~0_combout\ : std_logic;
SIGNAL \inst44|ALT_INV_intermediate~_emulated_q\ : std_logic;
SIGNAL \inst44|ALT_INV_out_key~8_combout\ : std_logic;
SIGNAL \inst44|ALT_INV_out_key~7_combout\ : std_logic;
SIGNAL \inst44|ALT_INV_out_key~6_combout\ : std_logic;
SIGNAL \inst44|ALT_INV_out_key~5_combout\ : std_logic;
SIGNAL \inst44|ALT_INV_out_key~2_combout\ : std_logic;
SIGNAL \inst44|ALT_INV_out_key~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_inst31~combout\ : std_logic;
SIGNAL \ALT_INV_inst19~combout\ : std_logic;
SIGNAL \ALT_INV_inst3~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst28~combout\ : std_logic;
SIGNAL \ALT_INV_inst16~combout\ : std_logic;
SIGNAL \ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst30~combout\ : std_logic;
SIGNAL \ALT_INV_inst18~combout\ : std_logic;
SIGNAL \ALT_INV_inst2~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst29~combout\ : std_logic;
SIGNAL \ALT_INV_inst17~combout\ : std_logic;
SIGNAL \ALT_INV_inst1~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst3~2_combout\ : std_logic;
SIGNAL \ALT_INV_inst3~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_inst~2_combout\ : std_logic;
SIGNAL \ALT_INV_inst~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_inst2~2_combout\ : std_logic;
SIGNAL \ALT_INV_inst2~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_inst1~2_combout\ : std_logic;
SIGNAL \ALT_INV_inst1~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_inst11~q\ : std_logic;
SIGNAL \ALT_INV_inst10~q\ : std_logic;
SIGNAL \ALT_INV_inst9~q\ : std_logic;
SIGNAL \ALT_INV_inst8~q\ : std_logic;
SIGNAL \inst44|ALT_INV_counter\ : std_logic_vector(15 DOWNTO 0);

BEGIN

B <= ww_B;
ww_jump <= jump;
ww_op <= op;
ww_clear <= clear;
ww_fpga <= fpga;
ww_debres <= debres;
ww_clock <= clock;
C <= ww_C;
A <= ww_A;
D <= ww_D;
E <= ww_E;
F <= ww_F;
G <= ww_G;
H <= ww_H;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clock~input_o\ <= NOT \clock~input_o\;
\ALT_INV_debres~input_o\ <= NOT \debres~input_o\;
\ALT_INV_op[3]~input_o\ <= NOT \op[3]~input_o\;
\ALT_INV_op[0]~input_o\ <= NOT \op[0]~input_o\;
\ALT_INV_op[2]~input_o\ <= NOT \op[2]~input_o\;
\ALT_INV_op[1]~input_o\ <= NOT \op[1]~input_o\;
\ALT_INV_jump~input_o\ <= NOT \jump~input_o\;
\ALT_INV_clear~input_o\ <= NOT \clear~input_o\;
\inst44|ALT_INV_out_key~1_combout\ <= NOT \inst44|out_key~1_combout\;
\ALT_INV_inst3~1_combout\ <= NOT \inst3~1_combout\;
\ALT_INV_inst~1_combout\ <= NOT \inst~1_combout\;
\ALT_INV_inst2~1_combout\ <= NOT \inst2~1_combout\;
\ALT_INV_inst1~1_combout\ <= NOT \inst1~1_combout\;
\ALT_INV_inst11~1_combout\ <= NOT \inst11~1_combout\;
\ALT_INV_inst10~1_combout\ <= NOT \inst10~1_combout\;
\inst44|ALT_INV_intermediate~0_combout\ <= NOT \inst44|intermediate~0_combout\;
\inst44|ALT_INV_intermediate~_emulated_q\ <= NOT \inst44|intermediate~_emulated_q\;
\inst44|ALT_INV_out_key~8_combout\ <= NOT \inst44|out_key~8_combout\;
\inst44|ALT_INV_out_key~7_combout\ <= NOT \inst44|out_key~7_combout\;
\inst44|ALT_INV_out_key~6_combout\ <= NOT \inst44|out_key~6_combout\;
\inst44|ALT_INV_out_key~5_combout\ <= NOT \inst44|out_key~5_combout\;
\inst44|ALT_INV_out_key~2_combout\ <= NOT \inst44|out_key~2_combout\;
\inst44|ALT_INV_out_key~_emulated_q\ <= NOT \inst44|out_key~_emulated_q\;
\ALT_INV_inst31~combout\ <= NOT \inst31~combout\;
\ALT_INV_inst19~combout\ <= NOT \inst19~combout\;
\ALT_INV_inst3~0_combout\ <= NOT \inst3~0_combout\;
\ALT_INV_inst28~combout\ <= NOT \inst28~combout\;
\ALT_INV_inst16~combout\ <= NOT \inst16~combout\;
\ALT_INV_inst~0_combout\ <= NOT \inst~0_combout\;
\ALT_INV_inst30~combout\ <= NOT \inst30~combout\;
\ALT_INV_inst18~combout\ <= NOT \inst18~combout\;
\ALT_INV_inst2~0_combout\ <= NOT \inst2~0_combout\;
\ALT_INV_inst29~combout\ <= NOT \inst29~combout\;
\ALT_INV_inst17~combout\ <= NOT \inst17~combout\;
\ALT_INV_inst1~0_combout\ <= NOT \inst1~0_combout\;
\ALT_INV_inst3~2_combout\ <= NOT \inst3~2_combout\;
\ALT_INV_inst3~_emulated_q\ <= NOT \inst3~_emulated_q\;
\ALT_INV_inst~2_combout\ <= NOT \inst~2_combout\;
\ALT_INV_inst~_emulated_q\ <= NOT \inst~_emulated_q\;
\ALT_INV_inst2~2_combout\ <= NOT \inst2~2_combout\;
\ALT_INV_inst2~_emulated_q\ <= NOT \inst2~_emulated_q\;
\ALT_INV_inst1~2_combout\ <= NOT \inst1~2_combout\;
\ALT_INV_inst1~_emulated_q\ <= NOT \inst1~_emulated_q\;
\ALT_INV_inst11~q\ <= NOT \inst11~q\;
\ALT_INV_inst10~q\ <= NOT \inst10~q\;
\ALT_INV_inst9~q\ <= NOT \inst9~q\;
\ALT_INV_inst8~q\ <= NOT \inst8~q\;
\inst44|ALT_INV_counter\(12) <= NOT \inst44|counter\(12);
\inst44|ALT_INV_counter\(13) <= NOT \inst44|counter\(13);
\inst44|ALT_INV_counter\(14) <= NOT \inst44|counter\(14);
\inst44|ALT_INV_counter\(15) <= NOT \inst44|counter\(15);
\inst44|ALT_INV_counter\(0) <= NOT \inst44|counter\(0);
\inst44|ALT_INV_counter\(5) <= NOT \inst44|counter\(5);
\inst44|ALT_INV_counter\(6) <= NOT \inst44|counter\(6);
\inst44|ALT_INV_counter\(7) <= NOT \inst44|counter\(7);
\inst44|ALT_INV_counter\(8) <= NOT \inst44|counter\(8);
\inst44|ALT_INV_counter\(9) <= NOT \inst44|counter\(9);
\inst44|ALT_INV_counter\(10) <= NOT \inst44|counter\(10);
\inst44|ALT_INV_counter\(1) <= NOT \inst44|counter\(1);
\inst44|ALT_INV_counter\(2) <= NOT \inst44|counter\(2);
\inst44|ALT_INV_counter\(3) <= NOT \inst44|counter\(3);
\inst44|ALT_INV_counter\(4) <= NOT \inst44|counter\(4);
\inst44|ALT_INV_counter\(11) <= NOT \inst44|counter\(11);

-- Location: IOOBUF_X0_Y18_N96
\B~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~2_combout\,
	devoe => ww_devoe,
	o => ww_B);

-- Location: IOOBUF_X0_Y18_N62
\C~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~2_combout\,
	devoe => ww_devoe,
	o => ww_C);

-- Location: IOOBUF_X0_Y18_N79
\A~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~2_combout\,
	devoe => ww_devoe,
	o => ww_A);

-- Location: IOOBUF_X0_Y18_N45
\D~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~2_combout\,
	devoe => ww_devoe,
	o => ww_D);

-- Location: IOOBUF_X0_Y19_N39
\E~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8~q\,
	devoe => ww_devoe,
	o => ww_E);

-- Location: IOOBUF_X0_Y19_N56
\F~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~q\,
	devoe => ww_devoe,
	o => ww_F);

-- Location: IOOBUF_X0_Y19_N5
\G~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10~q\,
	devoe => ww_devoe,
	o => ww_G);

-- Location: IOOBUF_X0_Y19_N22
\H~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~q\,
	devoe => ww_devoe,
	o => ww_H);

-- Location: IOIBUF_X33_Y0_N75
\jump~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump,
	o => \jump~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\op[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

-- Location: MLABCELL_X28_Y3_N3
inst17 : cyclonev_lcell_comb
-- Equation(s):
-- \inst17~combout\ = ( \op[1]~input_o\ & ( \jump~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_jump~input_o\,
	dataf => \ALT_INV_op[1]~input_o\,
	combout => \inst17~combout\);

-- Location: IOIBUF_X33_Y0_N58
\clear~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: MLABCELL_X28_Y3_N24
inst29 : cyclonev_lcell_comb
-- Equation(s):
-- \inst29~combout\ = ( \op[1]~input_o\ & ( \clear~input_o\ ) ) # ( !\op[1]~input_o\ & ( (\clear~input_o\) # (\jump~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_jump~input_o\,
	datad => \ALT_INV_clear~input_o\,
	dataf => \ALT_INV_op[1]~input_o\,
	combout => \inst29~combout\);

-- Location: MLABCELL_X28_Y3_N36
\inst1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1~1_combout\ = ( \inst1~1_combout\ & ( !\inst29~combout\ ) ) # ( !\inst1~1_combout\ & ( (\inst17~combout\ & !\inst29~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111100001111000001010000010100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst17~combout\,
	datac => \ALT_INV_inst29~combout\,
	datae => \ALT_INV_inst1~1_combout\,
	combout => \inst1~1_combout\);

-- Location: IOIBUF_X33_Y0_N41
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\debres~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_debres,
	o => \debres~input_o\);

-- Location: MLABCELL_X34_Y1_N15
\inst44|out_key~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|out_key~1_combout\ = ( \debres~input_o\ & ( \clock~input_o\ & ( \inst44|out_key~1_combout\ ) ) ) # ( !\debres~input_o\ & ( \clock~input_o\ ) ) # ( \debres~input_o\ & ( !\clock~input_o\ & ( \inst44|out_key~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst44|ALT_INV_out_key~1_combout\,
	datae => \ALT_INV_debres~input_o\,
	dataf => \ALT_INV_clock~input_o\,
	combout => \inst44|out_key~1_combout\);

-- Location: IOIBUF_X22_Y0_N1
\fpga~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fpga,
	o => \fpga~input_o\);

-- Location: CLKCTRL_G6
\fpga~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \fpga~input_o\,
	outclk => \fpga~inputCLKENA0_outclk\);

-- Location: MLABCELL_X34_Y1_N36
\inst44|intermediate~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|intermediate~1_combout\ = ( \inst44|out_key~1_combout\ & ( !\clock~input_o\ ) ) # ( !\inst44|out_key~1_combout\ & ( \clock~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	dataf => \inst44|ALT_INV_out_key~1_combout\,
	combout => \inst44|intermediate~1_combout\);

-- Location: FF_X34_Y1_N38
\inst44|intermediate~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga~inputCLKENA0_outclk\,
	d => \inst44|intermediate~1_combout\,
	clrn => \debres~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|intermediate~_emulated_q\);

-- Location: MLABCELL_X34_Y1_N9
\inst44|intermediate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|intermediate~0_combout\ = ( \inst44|intermediate~_emulated_q\ & ( \inst44|out_key~1_combout\ & ( (\clock~input_o\ & !\debres~input_o\) ) ) ) # ( !\inst44|intermediate~_emulated_q\ & ( \inst44|out_key~1_combout\ & ( (\debres~input_o\) # 
-- (\clock~input_o\) ) ) ) # ( \inst44|intermediate~_emulated_q\ & ( !\inst44|out_key~1_combout\ & ( (\debres~input_o\) # (\clock~input_o\) ) ) ) # ( !\inst44|intermediate~_emulated_q\ & ( !\inst44|out_key~1_combout\ & ( (\clock~input_o\ & !\debres~input_o\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011101110111011101110100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_debres~input_o\,
	datae => \inst44|ALT_INV_intermediate~_emulated_q\,
	dataf => \inst44|ALT_INV_out_key~1_combout\,
	combout => \inst44|intermediate~0_combout\);

-- Location: LABCELL_X35_Y1_N0
\inst44|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|Add0~45_sumout\ = SUM(( \inst44|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \inst44|Add0~46\ = CARRY(( \inst44|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst44|ALT_INV_counter\(0),
	cin => GND,
	sumout => \inst44|Add0~45_sumout\,
	cout => \inst44|Add0~46\);

-- Location: MLABCELL_X34_Y1_N0
\inst44|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|always0~0_combout\ = ( \inst44|intermediate~0_combout\ & ( !\clock~input_o\ ) ) # ( !\inst44|intermediate~0_combout\ & ( \clock~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	dataf => \inst44|ALT_INV_intermediate~0_combout\,
	combout => \inst44|always0~0_combout\);

-- Location: FF_X35_Y1_N2
\inst44|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga~inputCLKENA0_outclk\,
	d => \inst44|Add0~45_sumout\,
	clrn => \debres~input_o\,
	sclr => \inst44|always0~0_combout\,
	ena => \inst44|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|counter\(0));

-- Location: LABCELL_X35_Y1_N3
\inst44|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|Add0~17_sumout\ = SUM(( \inst44|counter\(1) ) + ( GND ) + ( \inst44|Add0~46\ ))
-- \inst44|Add0~18\ = CARRY(( \inst44|counter\(1) ) + ( GND ) + ( \inst44|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst44|ALT_INV_counter\(1),
	cin => \inst44|Add0~46\,
	sumout => \inst44|Add0~17_sumout\,
	cout => \inst44|Add0~18\);

-- Location: FF_X35_Y1_N5
\inst44|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga~inputCLKENA0_outclk\,
	d => \inst44|Add0~17_sumout\,
	clrn => \debres~input_o\,
	sclr => \inst44|always0~0_combout\,
	ena => \inst44|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|counter\(1));

-- Location: LABCELL_X35_Y1_N6
\inst44|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|Add0~13_sumout\ = SUM(( \inst44|counter\(2) ) + ( GND ) + ( \inst44|Add0~18\ ))
-- \inst44|Add0~14\ = CARRY(( \inst44|counter\(2) ) + ( GND ) + ( \inst44|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst44|ALT_INV_counter\(2),
	cin => \inst44|Add0~18\,
	sumout => \inst44|Add0~13_sumout\,
	cout => \inst44|Add0~14\);

-- Location: FF_X35_Y1_N8
\inst44|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga~inputCLKENA0_outclk\,
	d => \inst44|Add0~13_sumout\,
	clrn => \debres~input_o\,
	sclr => \inst44|always0~0_combout\,
	ena => \inst44|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|counter\(2));

-- Location: LABCELL_X35_Y1_N9
\inst44|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|Add0~9_sumout\ = SUM(( \inst44|counter\(3) ) + ( GND ) + ( \inst44|Add0~14\ ))
-- \inst44|Add0~10\ = CARRY(( \inst44|counter\(3) ) + ( GND ) + ( \inst44|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst44|ALT_INV_counter\(3),
	cin => \inst44|Add0~14\,
	sumout => \inst44|Add0~9_sumout\,
	cout => \inst44|Add0~10\);

-- Location: FF_X35_Y1_N11
\inst44|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga~inputCLKENA0_outclk\,
	d => \inst44|Add0~9_sumout\,
	clrn => \debres~input_o\,
	sclr => \inst44|always0~0_combout\,
	ena => \inst44|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|counter\(3));

-- Location: LABCELL_X35_Y1_N12
\inst44|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|Add0~5_sumout\ = SUM(( \inst44|counter\(4) ) + ( GND ) + ( \inst44|Add0~10\ ))
-- \inst44|Add0~6\ = CARRY(( \inst44|counter\(4) ) + ( GND ) + ( \inst44|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst44|ALT_INV_counter\(4),
	cin => \inst44|Add0~10\,
	sumout => \inst44|Add0~5_sumout\,
	cout => \inst44|Add0~6\);

-- Location: FF_X35_Y1_N14
\inst44|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga~inputCLKENA0_outclk\,
	d => \inst44|Add0~5_sumout\,
	clrn => \debres~input_o\,
	sclr => \inst44|always0~0_combout\,
	ena => \inst44|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|counter\(4));

-- Location: LABCELL_X35_Y1_N15
\inst44|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|Add0~41_sumout\ = SUM(( \inst44|counter\(5) ) + ( GND ) + ( \inst44|Add0~6\ ))
-- \inst44|Add0~42\ = CARRY(( \inst44|counter\(5) ) + ( GND ) + ( \inst44|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst44|ALT_INV_counter\(5),
	cin => \inst44|Add0~6\,
	sumout => \inst44|Add0~41_sumout\,
	cout => \inst44|Add0~42\);

-- Location: FF_X35_Y1_N17
\inst44|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga~inputCLKENA0_outclk\,
	d => \inst44|Add0~41_sumout\,
	clrn => \debres~input_o\,
	sclr => \inst44|always0~0_combout\,
	ena => \inst44|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|counter\(5));

-- Location: LABCELL_X35_Y1_N18
\inst44|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|Add0~37_sumout\ = SUM(( \inst44|counter\(6) ) + ( GND ) + ( \inst44|Add0~42\ ))
-- \inst44|Add0~38\ = CARRY(( \inst44|counter\(6) ) + ( GND ) + ( \inst44|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst44|ALT_INV_counter\(6),
	cin => \inst44|Add0~42\,
	sumout => \inst44|Add0~37_sumout\,
	cout => \inst44|Add0~38\);

-- Location: FF_X35_Y1_N20
\inst44|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga~inputCLKENA0_outclk\,
	d => \inst44|Add0~37_sumout\,
	clrn => \debres~input_o\,
	sclr => \inst44|always0~0_combout\,
	ena => \inst44|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|counter\(6));

-- Location: LABCELL_X35_Y1_N21
\inst44|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|Add0~33_sumout\ = SUM(( \inst44|counter\(7) ) + ( GND ) + ( \inst44|Add0~38\ ))
-- \inst44|Add0~34\ = CARRY(( \inst44|counter\(7) ) + ( GND ) + ( \inst44|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst44|ALT_INV_counter\(7),
	cin => \inst44|Add0~38\,
	sumout => \inst44|Add0~33_sumout\,
	cout => \inst44|Add0~34\);

-- Location: FF_X35_Y1_N23
\inst44|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga~inputCLKENA0_outclk\,
	d => \inst44|Add0~33_sumout\,
	clrn => \debres~input_o\,
	sclr => \inst44|always0~0_combout\,
	ena => \inst44|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|counter\(7));

-- Location: LABCELL_X35_Y1_N24
\inst44|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|Add0~29_sumout\ = SUM(( \inst44|counter\(8) ) + ( GND ) + ( \inst44|Add0~34\ ))
-- \inst44|Add0~30\ = CARRY(( \inst44|counter\(8) ) + ( GND ) + ( \inst44|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst44|ALT_INV_counter\(8),
	cin => \inst44|Add0~34\,
	sumout => \inst44|Add0~29_sumout\,
	cout => \inst44|Add0~30\);

-- Location: FF_X35_Y1_N26
\inst44|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga~inputCLKENA0_outclk\,
	d => \inst44|Add0~29_sumout\,
	clrn => \debres~input_o\,
	sclr => \inst44|always0~0_combout\,
	ena => \inst44|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|counter\(8));

-- Location: LABCELL_X35_Y1_N27
\inst44|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|Add0~25_sumout\ = SUM(( \inst44|counter\(9) ) + ( GND ) + ( \inst44|Add0~30\ ))
-- \inst44|Add0~26\ = CARRY(( \inst44|counter\(9) ) + ( GND ) + ( \inst44|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst44|ALT_INV_counter\(9),
	cin => \inst44|Add0~30\,
	sumout => \inst44|Add0~25_sumout\,
	cout => \inst44|Add0~26\);

-- Location: FF_X35_Y1_N29
\inst44|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga~inputCLKENA0_outclk\,
	d => \inst44|Add0~25_sumout\,
	clrn => \debres~input_o\,
	sclr => \inst44|always0~0_combout\,
	ena => \inst44|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|counter\(9));

-- Location: LABCELL_X35_Y1_N30
\inst44|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|Add0~21_sumout\ = SUM(( \inst44|counter\(10) ) + ( GND ) + ( \inst44|Add0~26\ ))
-- \inst44|Add0~22\ = CARRY(( \inst44|counter\(10) ) + ( GND ) + ( \inst44|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst44|ALT_INV_counter\(10),
	cin => \inst44|Add0~26\,
	sumout => \inst44|Add0~21_sumout\,
	cout => \inst44|Add0~22\);

-- Location: FF_X35_Y1_N32
\inst44|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga~inputCLKENA0_outclk\,
	d => \inst44|Add0~21_sumout\,
	clrn => \debres~input_o\,
	sclr => \inst44|always0~0_combout\,
	ena => \inst44|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|counter\(10));

-- Location: LABCELL_X35_Y1_N33
\inst44|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|Add0~1_sumout\ = SUM(( \inst44|counter\(11) ) + ( GND ) + ( \inst44|Add0~22\ ))
-- \inst44|Add0~2\ = CARRY(( \inst44|counter\(11) ) + ( GND ) + ( \inst44|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|ALT_INV_counter\(11),
	cin => \inst44|Add0~22\,
	sumout => \inst44|Add0~1_sumout\,
	cout => \inst44|Add0~2\);

-- Location: FF_X35_Y1_N35
\inst44|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga~inputCLKENA0_outclk\,
	d => \inst44|Add0~1_sumout\,
	clrn => \debres~input_o\,
	sclr => \inst44|always0~0_combout\,
	ena => \inst44|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|counter\(11));

-- Location: LABCELL_X35_Y1_N36
\inst44|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|Add0~61_sumout\ = SUM(( \inst44|counter\(12) ) + ( GND ) + ( \inst44|Add0~2\ ))
-- \inst44|Add0~62\ = CARRY(( \inst44|counter\(12) ) + ( GND ) + ( \inst44|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst44|ALT_INV_counter\(12),
	cin => \inst44|Add0~2\,
	sumout => \inst44|Add0~61_sumout\,
	cout => \inst44|Add0~62\);

-- Location: FF_X35_Y1_N38
\inst44|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga~inputCLKENA0_outclk\,
	d => \inst44|Add0~61_sumout\,
	clrn => \debres~input_o\,
	sclr => \inst44|always0~0_combout\,
	ena => \inst44|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|counter\(12));

-- Location: LABCELL_X35_Y1_N39
\inst44|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|Add0~57_sumout\ = SUM(( \inst44|counter\(13) ) + ( GND ) + ( \inst44|Add0~62\ ))
-- \inst44|Add0~58\ = CARRY(( \inst44|counter\(13) ) + ( GND ) + ( \inst44|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst44|ALT_INV_counter\(13),
	cin => \inst44|Add0~62\,
	sumout => \inst44|Add0~57_sumout\,
	cout => \inst44|Add0~58\);

-- Location: FF_X35_Y1_N41
\inst44|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga~inputCLKENA0_outclk\,
	d => \inst44|Add0~57_sumout\,
	clrn => \debres~input_o\,
	sclr => \inst44|always0~0_combout\,
	ena => \inst44|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|counter\(13));

-- Location: LABCELL_X35_Y1_N42
\inst44|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|Add0~53_sumout\ = SUM(( \inst44|counter\(14) ) + ( GND ) + ( \inst44|Add0~58\ ))
-- \inst44|Add0~54\ = CARRY(( \inst44|counter\(14) ) + ( GND ) + ( \inst44|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst44|ALT_INV_counter\(14),
	cin => \inst44|Add0~58\,
	sumout => \inst44|Add0~53_sumout\,
	cout => \inst44|Add0~54\);

-- Location: FF_X35_Y1_N44
\inst44|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga~inputCLKENA0_outclk\,
	d => \inst44|Add0~53_sumout\,
	clrn => \debres~input_o\,
	sclr => \inst44|always0~0_combout\,
	ena => \inst44|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|counter\(14));

-- Location: LABCELL_X35_Y1_N45
\inst44|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|Add0~49_sumout\ = SUM(( \inst44|counter\(15) ) + ( GND ) + ( \inst44|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst44|ALT_INV_counter\(15),
	cin => \inst44|Add0~54\,
	sumout => \inst44|Add0~49_sumout\);

-- Location: FF_X35_Y1_N47
\inst44|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga~inputCLKENA0_outclk\,
	d => \inst44|Add0~49_sumout\,
	clrn => \debres~input_o\,
	sclr => \inst44|always0~0_combout\,
	ena => \inst44|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|counter\(15));

-- Location: LABCELL_X35_Y1_N54
\inst44|out_key~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|out_key~7_combout\ = ( \inst44|counter\(15) & ( \inst44|counter\(14) & ( (\inst44|counter\(0) & (\inst44|counter\(13) & \inst44|counter\(12))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|ALT_INV_counter\(0),
	datab => \inst44|ALT_INV_counter\(13),
	datac => \inst44|ALT_INV_counter\(12),
	datae => \inst44|ALT_INV_counter\(15),
	dataf => \inst44|ALT_INV_counter\(14),
	combout => \inst44|out_key~7_combout\);

-- Location: LABCELL_X36_Y1_N36
\inst44|out_key~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|out_key~5_combout\ = ( \inst44|counter\(1) & ( \inst44|counter\(3) & ( (\inst44|counter\(2) & \inst44|counter\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst44|ALT_INV_counter\(2),
	datad => \inst44|ALT_INV_counter\(4),
	datae => \inst44|ALT_INV_counter\(1),
	dataf => \inst44|ALT_INV_counter\(3),
	combout => \inst44|out_key~5_combout\);

-- Location: LABCELL_X36_Y1_N45
\inst44|out_key~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|out_key~6_combout\ = ( \inst44|counter\(8) & ( \inst44|counter\(10) & ( (\inst44|counter\(7) & (\inst44|counter\(6) & (\inst44|counter\(9) & \inst44|counter\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|ALT_INV_counter\(7),
	datab => \inst44|ALT_INV_counter\(6),
	datac => \inst44|ALT_INV_counter\(9),
	datad => \inst44|ALT_INV_counter\(5),
	datae => \inst44|ALT_INV_counter\(8),
	dataf => \inst44|ALT_INV_counter\(10),
	combout => \inst44|out_key~6_combout\);

-- Location: LABCELL_X35_Y1_N48
\inst44|out_key~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|out_key~8_combout\ = ( \inst44|out_key~5_combout\ & ( \inst44|out_key~6_combout\ & ( (!\inst44|out_key~7_combout\) # ((!\inst44|counter\(11)) # (!\clock~input_o\ $ (!\inst44|intermediate~0_combout\))) ) ) ) # ( !\inst44|out_key~5_combout\ & ( 
-- \inst44|out_key~6_combout\ ) ) # ( \inst44|out_key~5_combout\ & ( !\inst44|out_key~6_combout\ ) ) # ( !\inst44|out_key~5_combout\ & ( !\inst44|out_key~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \inst44|ALT_INV_intermediate~0_combout\,
	datac => \inst44|ALT_INV_out_key~7_combout\,
	datad => \inst44|ALT_INV_counter\(11),
	datae => \inst44|ALT_INV_out_key~5_combout\,
	dataf => \inst44|ALT_INV_out_key~6_combout\,
	combout => \inst44|out_key~8_combout\);

-- Location: MLABCELL_X34_Y1_N42
\inst44|out_key~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|out_key~3_combout\ = ( \inst44|intermediate~0_combout\ & ( \inst44|out_key~2_combout\ & ( !\inst44|out_key~1_combout\ ) ) ) # ( !\inst44|intermediate~0_combout\ & ( \inst44|out_key~2_combout\ & ( !\inst44|out_key~1_combout\ $ 
-- (!\inst44|out_key~8_combout\) ) ) ) # ( \inst44|intermediate~0_combout\ & ( !\inst44|out_key~2_combout\ & ( !\inst44|out_key~1_combout\ $ (\inst44|out_key~8_combout\) ) ) ) # ( !\inst44|intermediate~0_combout\ & ( !\inst44|out_key~2_combout\ & ( 
-- \inst44|out_key~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101100110011001100101100110011001101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|ALT_INV_out_key~1_combout\,
	datab => \inst44|ALT_INV_out_key~8_combout\,
	datae => \inst44|ALT_INV_intermediate~0_combout\,
	dataf => \inst44|ALT_INV_out_key~2_combout\,
	combout => \inst44|out_key~3_combout\);

-- Location: FF_X34_Y1_N44
\inst44|out_key~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga~inputCLKENA0_outclk\,
	d => \inst44|out_key~3_combout\,
	clrn => \debres~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|out_key~_emulated_q\);

-- Location: MLABCELL_X34_Y1_N27
\inst44|out_key~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst44|out_key~2_combout\ = ( \debres~input_o\ & ( \inst44|out_key~_emulated_q\ & ( !\inst44|out_key~1_combout\ ) ) ) # ( !\debres~input_o\ & ( \inst44|out_key~_emulated_q\ & ( \clock~input_o\ ) ) ) # ( \debres~input_o\ & ( !\inst44|out_key~_emulated_q\ 
-- & ( \inst44|out_key~1_combout\ ) ) ) # ( !\debres~input_o\ & ( !\inst44|out_key~_emulated_q\ & ( \clock~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100110011001100111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clock~input_o\,
	datac => \inst44|ALT_INV_out_key~1_combout\,
	datae => \ALT_INV_debres~input_o\,
	dataf => \inst44|ALT_INV_out_key~_emulated_q\,
	combout => \inst44|out_key~2_combout\);

-- Location: IOIBUF_X36_Y0_N52
\op[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

-- Location: LABCELL_X29_Y1_N12
inst16 : cyclonev_lcell_comb
-- Equation(s):
-- \inst16~combout\ = ( \op[0]~input_o\ & ( \jump~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_jump~input_o\,
	dataf => \ALT_INV_op[0]~input_o\,
	combout => \inst16~combout\);

-- Location: LABCELL_X29_Y1_N57
inst28 : cyclonev_lcell_comb
-- Equation(s):
-- \inst28~combout\ = ( \clear~input_o\ & ( \op[0]~input_o\ ) ) # ( \clear~input_o\ & ( !\op[0]~input_o\ ) ) # ( !\clear~input_o\ & ( !\op[0]~input_o\ & ( \jump~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_jump~input_o\,
	datae => \ALT_INV_clear~input_o\,
	dataf => \ALT_INV_op[0]~input_o\,
	combout => \inst28~combout\);

-- Location: LABCELL_X29_Y3_N51
\inst~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst~1_combout\ = ( \inst~1_combout\ & ( !\inst28~combout\ ) ) # ( !\inst~1_combout\ & ( (\inst16~combout\ & !\inst28~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst16~combout\,
	datac => \ALT_INV_inst28~combout\,
	dataf => \ALT_INV_inst~1_combout\,
	combout => \inst~1_combout\);

-- Location: LABCELL_X29_Y3_N24
\inst~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst~3_combout\ = ( \inst~2_combout\ & ( \inst~1_combout\ ) ) # ( !\inst~2_combout\ & ( !\inst~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst~1_combout\,
	dataf => \ALT_INV_inst~2_combout\,
	combout => \inst~3_combout\);

-- Location: LABCELL_X29_Y3_N54
\inst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = ( \inst28~combout\ ) # ( !\inst28~combout\ & ( \inst16~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst16~combout\,
	dataf => \ALT_INV_inst28~combout\,
	combout => \inst~0_combout\);

-- Location: FF_X29_Y3_N26
\inst~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst44|out_key~2_combout\,
	d => \inst~3_combout\,
	clrn => \ALT_INV_inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~_emulated_q\);

-- Location: LABCELL_X29_Y3_N57
\inst~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst~2_combout\ = ( \inst~1_combout\ & ( (!\inst28~combout\ & ((!\inst~_emulated_q\) # (\inst16~combout\))) ) ) # ( !\inst~1_combout\ & ( (!\inst28~combout\ & ((\inst~_emulated_q\) # (\inst16~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000011010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst16~combout\,
	datab => \ALT_INV_inst~_emulated_q\,
	datac => \ALT_INV_inst28~combout\,
	dataf => \ALT_INV_inst~1_combout\,
	combout => \inst~2_combout\);

-- Location: MLABCELL_X28_Y3_N27
\inst1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1~3_combout\ = ( \inst1~2_combout\ & ( !\inst1~1_combout\ $ (\inst~2_combout\) ) ) # ( !\inst1~2_combout\ & ( !\inst1~1_combout\ $ (!\inst~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst1~1_combout\,
	datab => \ALT_INV_inst~2_combout\,
	dataf => \ALT_INV_inst1~2_combout\,
	combout => \inst1~3_combout\);

-- Location: MLABCELL_X28_Y3_N30
\inst1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1~0_combout\ = ( \inst29~combout\ ) # ( !\inst29~combout\ & ( \inst17~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst17~combout\,
	dataf => \ALT_INV_inst29~combout\,
	combout => \inst1~0_combout\);

-- Location: FF_X28_Y3_N28
\inst1~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst44|out_key~2_combout\,
	d => \inst1~3_combout\,
	clrn => \ALT_INV_inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1~_emulated_q\);

-- Location: MLABCELL_X28_Y3_N18
\inst1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1~2_combout\ = ( \inst17~combout\ & ( !\inst29~combout\ ) ) # ( !\inst17~combout\ & ( (!\inst29~combout\ & (!\inst1~1_combout\ $ (!\inst1~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000111100001111000001100000011000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst1~1_combout\,
	datab => \ALT_INV_inst1~_emulated_q\,
	datac => \ALT_INV_inst29~combout\,
	datae => \ALT_INV_inst17~combout\,
	combout => \inst1~2_combout\);

-- Location: IOIBUF_X34_Y0_N35
\op[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(2),
	o => \op[2]~input_o\);

-- Location: LABCELL_X29_Y1_N18
inst30 : cyclonev_lcell_comb
-- Equation(s):
-- \inst30~combout\ = ( \clear~input_o\ & ( \op[2]~input_o\ ) ) # ( \clear~input_o\ & ( !\op[2]~input_o\ ) ) # ( !\clear~input_o\ & ( !\op[2]~input_o\ & ( \jump~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_jump~input_o\,
	datae => \ALT_INV_clear~input_o\,
	dataf => \ALT_INV_op[2]~input_o\,
	combout => \inst30~combout\);

-- Location: LABCELL_X29_Y1_N48
inst18 : cyclonev_lcell_comb
-- Equation(s):
-- \inst18~combout\ = ( \op[2]~input_o\ & ( \jump~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_jump~input_o\,
	dataf => \ALT_INV_op[2]~input_o\,
	combout => \inst18~combout\);

-- Location: LABCELL_X29_Y3_N6
\inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2~1_combout\ = ( \inst18~combout\ & ( \inst2~1_combout\ & ( !\inst30~combout\ ) ) ) # ( !\inst18~combout\ & ( \inst2~1_combout\ & ( !\inst30~combout\ ) ) ) # ( \inst18~combout\ & ( !\inst2~1_combout\ & ( !\inst30~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst30~combout\,
	datae => \ALT_INV_inst18~combout\,
	dataf => \ALT_INV_inst2~1_combout\,
	combout => \inst2~1_combout\);

-- Location: LABCELL_X29_Y3_N36
\inst2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2~3_combout\ = ( \inst2~2_combout\ & ( \inst1~2_combout\ & ( !\inst~2_combout\ $ (\inst2~1_combout\) ) ) ) # ( !\inst2~2_combout\ & ( \inst1~2_combout\ & ( !\inst~2_combout\ $ (!\inst2~1_combout\) ) ) ) # ( \inst2~2_combout\ & ( !\inst1~2_combout\ & 
-- ( !\inst2~1_combout\ ) ) ) # ( !\inst2~2_combout\ & ( !\inst1~2_combout\ & ( \inst2~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000110011110011001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inst~2_combout\,
	datad => \ALT_INV_inst2~1_combout\,
	datae => \ALT_INV_inst2~2_combout\,
	dataf => \ALT_INV_inst1~2_combout\,
	combout => \inst2~3_combout\);

-- Location: LABCELL_X29_Y3_N15
\inst2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = ( \inst18~combout\ ) # ( !\inst18~combout\ & ( \inst30~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst30~combout\,
	datae => \ALT_INV_inst18~combout\,
	combout => \inst2~0_combout\);

-- Location: FF_X29_Y3_N37
\inst2~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst44|out_key~2_combout\,
	d => \inst2~3_combout\,
	clrn => \ALT_INV_inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~_emulated_q\);

-- Location: LABCELL_X29_Y3_N45
\inst2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2~2_combout\ = ( !\inst30~combout\ & ( \inst2~1_combout\ & ( (!\inst2~_emulated_q\) # (\inst18~combout\) ) ) ) # ( !\inst30~combout\ & ( !\inst2~1_combout\ & ( (\inst18~combout\) # (\inst2~_emulated_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000000000000000011001111110011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inst2~_emulated_q\,
	datac => \ALT_INV_inst18~combout\,
	datae => \ALT_INV_inst30~combout\,
	dataf => \ALT_INV_inst2~1_combout\,
	combout => \inst2~2_combout\);

-- Location: IOIBUF_X33_Y0_N92
\op[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(3),
	o => \op[3]~input_o\);

-- Location: LABCELL_X29_Y1_N30
inst31 : cyclonev_lcell_comb
-- Equation(s):
-- \inst31~combout\ = ( \op[3]~input_o\ & ( \clear~input_o\ ) ) # ( !\op[3]~input_o\ & ( (\clear~input_o\) # (\jump~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000011110000111100111111001111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_jump~input_o\,
	datac => \ALT_INV_clear~input_o\,
	datae => \ALT_INV_op[3]~input_o\,
	combout => \inst31~combout\);

-- Location: LABCELL_X29_Y1_N39
inst19 : cyclonev_lcell_comb
-- Equation(s):
-- \inst19~combout\ = ( \op[3]~input_o\ & ( \jump~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_jump~input_o\,
	datae => \ALT_INV_op[3]~input_o\,
	combout => \inst19~combout\);

-- Location: LABCELL_X29_Y2_N24
\inst3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3~1_combout\ = ( \inst19~combout\ & ( \inst3~1_combout\ & ( !\inst31~combout\ ) ) ) # ( !\inst19~combout\ & ( \inst3~1_combout\ & ( !\inst31~combout\ ) ) ) # ( \inst19~combout\ & ( !\inst3~1_combout\ & ( !\inst31~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inst31~combout\,
	datae => \ALT_INV_inst19~combout\,
	dataf => \ALT_INV_inst3~1_combout\,
	combout => \inst3~1_combout\);

-- Location: LABCELL_X29_Y2_N48
\inst3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3~3_combout\ = ( \inst2~2_combout\ & ( \inst3~2_combout\ & ( !\inst3~1_combout\ $ (((\inst1~2_combout\ & \inst~2_combout\))) ) ) ) # ( !\inst2~2_combout\ & ( \inst3~2_combout\ & ( !\inst3~1_combout\ ) ) ) # ( \inst2~2_combout\ & ( !\inst3~2_combout\ 
-- & ( !\inst3~1_combout\ $ (((!\inst1~2_combout\) # (!\inst~2_combout\))) ) ) ) # ( !\inst2~2_combout\ & ( !\inst3~2_combout\ & ( \inst3~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000111100001111011110000111100001110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst1~2_combout\,
	datab => \ALT_INV_inst~2_combout\,
	datac => \ALT_INV_inst3~1_combout\,
	datae => \ALT_INV_inst2~2_combout\,
	dataf => \ALT_INV_inst3~2_combout\,
	combout => \inst3~3_combout\);

-- Location: LABCELL_X29_Y2_N18
\inst3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = ( \inst19~combout\ & ( \inst31~combout\ ) ) # ( !\inst19~combout\ & ( \inst31~combout\ ) ) # ( \inst19~combout\ & ( !\inst31~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_inst19~combout\,
	dataf => \ALT_INV_inst31~combout\,
	combout => \inst3~0_combout\);

-- Location: FF_X29_Y2_N49
\inst3~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst44|out_key~2_combout\,
	d => \inst3~3_combout\,
	clrn => \ALT_INV_inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~_emulated_q\);

-- Location: LABCELL_X29_Y2_N39
\inst3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3~2_combout\ = ( \inst19~combout\ & ( !\inst31~combout\ ) ) # ( !\inst19~combout\ & ( !\inst31~combout\ & ( !\inst3~1_combout\ $ (!\inst3~_emulated_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst3~1_combout\,
	datab => \ALT_INV_inst3~_emulated_q\,
	datae => \ALT_INV_inst19~combout\,
	dataf => \ALT_INV_inst31~combout\,
	combout => \inst3~2_combout\);

-- Location: MLABCELL_X28_Y3_N6
\inst8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = ( \inst~2_combout\ & ( \inst3~2_combout\ & ( !\inst8~q\ $ (((!\inst2~2_combout\) # (!\inst1~2_combout\))) ) ) ) # ( !\inst~2_combout\ & ( \inst3~2_combout\ & ( \inst8~q\ ) ) ) # ( \inst~2_combout\ & ( !\inst3~2_combout\ & ( \inst8~q\ ) 
-- ) ) # ( !\inst~2_combout\ & ( !\inst3~2_combout\ & ( \inst8~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst2~2_combout\,
	datab => \ALT_INV_inst1~2_combout\,
	datad => \ALT_INV_inst8~q\,
	datae => \ALT_INV_inst~2_combout\,
	dataf => \ALT_INV_inst3~2_combout\,
	combout => \inst8~0_combout\);

-- Location: FF_X28_Y3_N50
inst8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst44|out_key~2_combout\,
	asdata => \inst8~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8~q\);

-- Location: MLABCELL_X28_Y3_N42
\inst9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9~0_combout\ = ( \inst~2_combout\ & ( \inst3~2_combout\ & ( !\inst9~q\ $ (((!\inst2~2_combout\) # ((!\inst1~2_combout\) # (!\inst8~q\)))) ) ) ) # ( !\inst~2_combout\ & ( \inst3~2_combout\ & ( \inst9~q\ ) ) ) # ( \inst~2_combout\ & ( 
-- !\inst3~2_combout\ & ( \inst9~q\ ) ) ) # ( !\inst~2_combout\ & ( !\inst3~2_combout\ & ( \inst9~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst2~2_combout\,
	datab => \ALT_INV_inst1~2_combout\,
	datac => \ALT_INV_inst9~q\,
	datad => \ALT_INV_inst8~q\,
	datae => \ALT_INV_inst~2_combout\,
	dataf => \ALT_INV_inst3~2_combout\,
	combout => \inst9~0_combout\);

-- Location: FF_X28_Y3_N32
inst9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst44|out_key~2_combout\,
	asdata => \inst9~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9~q\);

-- Location: MLABCELL_X28_Y3_N0
\inst10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10~1_combout\ = (\inst8~q\ & \inst9~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst8~q\,
	datab => \ALT_INV_inst9~q\,
	combout => \inst10~1_combout\);

-- Location: MLABCELL_X28_Y3_N15
\inst10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = ( \inst3~2_combout\ & ( \inst10~q\ & ( (!\inst2~2_combout\) # ((!\inst1~2_combout\) # ((!\inst~2_combout\) # (!\inst10~1_combout\))) ) ) ) # ( !\inst3~2_combout\ & ( \inst10~q\ ) ) # ( \inst3~2_combout\ & ( !\inst10~q\ & ( 
-- (\inst2~2_combout\ & (\inst1~2_combout\ & (\inst~2_combout\ & \inst10~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst2~2_combout\,
	datab => \ALT_INV_inst1~2_combout\,
	datac => \ALT_INV_inst~2_combout\,
	datad => \ALT_INV_inst10~1_combout\,
	datae => \ALT_INV_inst3~2_combout\,
	dataf => \ALT_INV_inst10~q\,
	combout => \inst10~0_combout\);

-- Location: FF_X28_Y3_N23
inst10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst44|out_key~2_combout\,
	asdata => \inst10~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10~q\);

-- Location: MLABCELL_X28_Y3_N54
\inst11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11~1_combout\ = ( \inst8~q\ & ( (\inst10~q\ & \inst9~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst10~q\,
	datab => \ALT_INV_inst9~q\,
	datae => \ALT_INV_inst8~q\,
	combout => \inst11~1_combout\);

-- Location: MLABCELL_X28_Y3_N51
\inst11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = ( \inst~2_combout\ & ( \inst3~2_combout\ & ( !\inst11~q\ $ (((!\inst1~2_combout\) # ((!\inst2~2_combout\) # (!\inst11~1_combout\)))) ) ) ) # ( !\inst~2_combout\ & ( \inst3~2_combout\ & ( \inst11~q\ ) ) ) # ( \inst~2_combout\ & ( 
-- !\inst3~2_combout\ & ( \inst11~q\ ) ) ) # ( !\inst~2_combout\ & ( !\inst3~2_combout\ & ( \inst11~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst11~q\,
	datab => \ALT_INV_inst1~2_combout\,
	datac => \ALT_INV_inst2~2_combout\,
	datad => \ALT_INV_inst11~1_combout\,
	datae => \ALT_INV_inst~2_combout\,
	dataf => \ALT_INV_inst3~2_combout\,
	combout => \inst11~0_combout\);

-- Location: FF_X28_Y3_N59
inst11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst44|out_key~2_combout\,
	asdata => \inst11~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11~q\);

-- Location: LABCELL_X6_Y23_N3
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


