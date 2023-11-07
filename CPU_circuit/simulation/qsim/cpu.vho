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

-- DATE "11/06/2023 19:35:16"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cpu IS
    PORT (
	hex50 : OUT std_logic;
	ROM : OUT std_logic_vector(15 DOWNTO 0);
	pin_clock : IN std_logic;
	reset_debouncer : IN std_logic;
	clock : IN std_logic;
	COUNT : OUT std_logic_vector(7 DOWNTO 0);
	Master_clear : IN std_logic;
	operando : OUT std_logic_vector(3 DOWNTO 0);
	hex51 : OUT std_logic;
	hex52 : OUT std_logic;
	hex53 : OUT std_logic;
	hex54 : OUT std_logic;
	hex55 : OUT std_logic;
	hex56 : OUT std_logic;
	hex40 : OUT std_logic;
	hex41 : OUT std_logic;
	hex42 : OUT std_logic;
	hex43 : OUT std_logic;
	hex44 : OUT std_logic;
	hex45 : OUT std_logic;
	hex46 : OUT std_logic;
	hex30 : OUT std_logic;
	hex31 : OUT std_logic;
	hex32 : OUT std_logic;
	hex33 : OUT std_logic;
	hex34 : OUT std_logic;
	hex35 : OUT std_logic;
	hex36 : OUT std_logic;
	hex20 : OUT std_logic;
	hex21 : OUT std_logic;
	hex22 : OUT std_logic;
	hex23 : OUT std_logic;
	hex24 : OUT std_logic;
	hex25 : OUT std_logic;
	hex26 : OUT std_logic;
	hex10 : OUT std_logic;
	A3 : OUT std_logic;
	B0 : OUT std_logic;
	A0 : OUT std_logic;
	B1 : OUT std_logic;
	A1 : OUT std_logic;
	B2 : OUT std_logic;
	A2 : OUT std_logic;
	B3 : OUT std_logic;
	ULA : OUT std_logic_vector(1 DOWNTO 0);
	hex11 : OUT std_logic;
	hex12 : OUT std_logic;
	hex13 : OUT std_logic;
	hex14 : OUT std_logic;
	hex15 : OUT std_logic;
	hex16 : OUT std_logic;
	hex00 : OUT std_logic;
	hex01 : OUT std_logic;
	hex02 : OUT std_logic;
	hex03 : OUT std_logic;
	hex04 : OUT std_logic;
	hex05 : OUT std_logic;
	hex06 : OUT std_logic;
	led0 : OUT std_logic;
	led1 : OUT std_logic;
	led2 : OUT std_logic;
	led3 : OUT std_logic;
	led4 : OUT std_logic;
	led5 : OUT std_logic;
	led6 : OUT std_logic;
	RG_IN : OUT std_logic;
	ClearRegi : OUT std_logic;
	ClearCont : OUT std_logic;
	JUMP : OUT std_logic;
	load_1 : OUT std_logic;
	load_2 : OUT std_logic;
	led7 : OUT std_logic
	);
END cpu;

-- Design Ports Information
-- hex50	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM[15]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM[14]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM[13]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM[12]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM[11]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM[10]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM[9]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM[8]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM[7]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM[6]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUNT[7]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUNT[6]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUNT[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUNT[4]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUNT[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUNT[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUNT[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUNT[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operando[3]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operando[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operando[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operando[0]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex51	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex52	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex53	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex54	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex55	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex56	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex40	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex41	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex42	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex43	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex44	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex45	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex46	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex30	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex31	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex32	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex33	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex34	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex35	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex36	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex20	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex21	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex22	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex23	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex24	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex25	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex26	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex10	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex11	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex12	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex13	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex14	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex15	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex16	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex00	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex01	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex02	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex03	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex04	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex05	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex06	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led6	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RG_IN	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ClearRegi	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ClearCont	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMP	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_1	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_2	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led7	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Master_clear	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_debouncer	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_clock	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_hex50 : std_logic;
SIGNAL ww_ROM : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_pin_clock : std_logic;
SIGNAL ww_reset_debouncer : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_COUNT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Master_clear : std_logic;
SIGNAL ww_operando : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hex51 : std_logic;
SIGNAL ww_hex52 : std_logic;
SIGNAL ww_hex53 : std_logic;
SIGNAL ww_hex54 : std_logic;
SIGNAL ww_hex55 : std_logic;
SIGNAL ww_hex56 : std_logic;
SIGNAL ww_hex40 : std_logic;
SIGNAL ww_hex41 : std_logic;
SIGNAL ww_hex42 : std_logic;
SIGNAL ww_hex43 : std_logic;
SIGNAL ww_hex44 : std_logic;
SIGNAL ww_hex45 : std_logic;
SIGNAL ww_hex46 : std_logic;
SIGNAL ww_hex30 : std_logic;
SIGNAL ww_hex31 : std_logic;
SIGNAL ww_hex32 : std_logic;
SIGNAL ww_hex33 : std_logic;
SIGNAL ww_hex34 : std_logic;
SIGNAL ww_hex35 : std_logic;
SIGNAL ww_hex36 : std_logic;
SIGNAL ww_hex20 : std_logic;
SIGNAL ww_hex21 : std_logic;
SIGNAL ww_hex22 : std_logic;
SIGNAL ww_hex23 : std_logic;
SIGNAL ww_hex24 : std_logic;
SIGNAL ww_hex25 : std_logic;
SIGNAL ww_hex26 : std_logic;
SIGNAL ww_hex10 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_ULA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_hex11 : std_logic;
SIGNAL ww_hex12 : std_logic;
SIGNAL ww_hex13 : std_logic;
SIGNAL ww_hex14 : std_logic;
SIGNAL ww_hex15 : std_logic;
SIGNAL ww_hex16 : std_logic;
SIGNAL ww_hex00 : std_logic;
SIGNAL ww_hex01 : std_logic;
SIGNAL ww_hex02 : std_logic;
SIGNAL ww_hex03 : std_logic;
SIGNAL ww_hex04 : std_logic;
SIGNAL ww_hex05 : std_logic;
SIGNAL ww_hex06 : std_logic;
SIGNAL ww_led0 : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_led3 : std_logic;
SIGNAL ww_led4 : std_logic;
SIGNAL ww_led5 : std_logic;
SIGNAL ww_led6 : std_logic;
SIGNAL ww_RG_IN : std_logic;
SIGNAL ww_ClearRegi : std_logic;
SIGNAL ww_ClearCont : std_logic;
SIGNAL ww_JUMP : std_logic;
SIGNAL ww_load_1 : std_logic;
SIGNAL ww_load_2 : std_logic;
SIGNAL ww_led7 : std_logic;
SIGNAL \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \reset_debouncer~input_o\ : std_logic;
SIGNAL \deb|out_key~1_combout\ : std_logic;
SIGNAL \pin_clock~input_o\ : std_logic;
SIGNAL \pin_clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \deb|intermediate~1_combout\ : std_logic;
SIGNAL \deb|intermediate~_emulated_q\ : std_logic;
SIGNAL \deb|intermediate~0_combout\ : std_logic;
SIGNAL \deb|Add0~45_sumout\ : std_logic;
SIGNAL \deb|always0~0_combout\ : std_logic;
SIGNAL \deb|Add0~46\ : std_logic;
SIGNAL \deb|Add0~17_sumout\ : std_logic;
SIGNAL \deb|Add0~18\ : std_logic;
SIGNAL \deb|Add0~13_sumout\ : std_logic;
SIGNAL \deb|Add0~14\ : std_logic;
SIGNAL \deb|Add0~9_sumout\ : std_logic;
SIGNAL \deb|Add0~10\ : std_logic;
SIGNAL \deb|Add0~5_sumout\ : std_logic;
SIGNAL \deb|Add0~6\ : std_logic;
SIGNAL \deb|Add0~41_sumout\ : std_logic;
SIGNAL \deb|Add0~42\ : std_logic;
SIGNAL \deb|Add0~37_sumout\ : std_logic;
SIGNAL \deb|Add0~38\ : std_logic;
SIGNAL \deb|Add0~33_sumout\ : std_logic;
SIGNAL \deb|Add0~34\ : std_logic;
SIGNAL \deb|Add0~29_sumout\ : std_logic;
SIGNAL \deb|Add0~30\ : std_logic;
SIGNAL \deb|Add0~25_sumout\ : std_logic;
SIGNAL \deb|Add0~26\ : std_logic;
SIGNAL \deb|Add0~21_sumout\ : std_logic;
SIGNAL \deb|Add0~22\ : std_logic;
SIGNAL \deb|Add0~1_sumout\ : std_logic;
SIGNAL \deb|Add0~2\ : std_logic;
SIGNAL \deb|Add0~61_sumout\ : std_logic;
SIGNAL \deb|Add0~62\ : std_logic;
SIGNAL \deb|Add0~57_sumout\ : std_logic;
SIGNAL \deb|Add0~58\ : std_logic;
SIGNAL \deb|Add0~53_sumout\ : std_logic;
SIGNAL \deb|Add0~54\ : std_logic;
SIGNAL \deb|Add0~49_sumout\ : std_logic;
SIGNAL \deb|out_key~7_combout\ : std_logic;
SIGNAL \deb|out_key~6_combout\ : std_logic;
SIGNAL \deb|out_key~5_combout\ : std_logic;
SIGNAL \deb|out_key~8_combout\ : std_logic;
SIGNAL \deb|out_key~3_combout\ : std_logic;
SIGNAL \deb|out_key~_emulated_q\ : std_logic;
SIGNAL \deb|out_key~2_combout\ : std_logic;
SIGNAL \Master_clear~input_o\ : std_logic;
SIGNAL \inst1|inst8~0_combout\ : std_logic;
SIGNAL \unitC|inst8~0_combout\ : std_logic;
SIGNAL \inst1|inst8~q\ : std_logic;
SIGNAL \inst1|inst9~0_combout\ : std_logic;
SIGNAL \inst1|inst9~q\ : std_logic;
SIGNAL \inst1|inst13~combout\ : std_logic;
SIGNAL \inst1|inst10~0_combout\ : std_logic;
SIGNAL \inst1|inst10~q\ : std_logic;
SIGNAL \inst1|inst11~0_combout\ : std_logic;
SIGNAL \inst1|inst11~q\ : std_logic;
SIGNAL \inst1|inst50~combout\ : std_logic;
SIGNAL \inst1|inst19~combout\ : std_logic;
SIGNAL \inst1|inst3~1_combout\ : std_logic;
SIGNAL \inst1|inst3~3_combout\ : std_logic;
SIGNAL \inst1|inst3~0_combout\ : std_logic;
SIGNAL \inst1|inst3~_emulated_q\ : std_logic;
SIGNAL \inst1|inst3~2_combout\ : std_logic;
SIGNAL \inst1|inst18~combout\ : std_logic;
SIGNAL \inst1|inst49~combout\ : std_logic;
SIGNAL \inst1|inst2~1_combout\ : std_logic;
SIGNAL \inst1|inst2~3_combout\ : std_logic;
SIGNAL \inst1|inst2~0_combout\ : std_logic;
SIGNAL \inst1|inst2~_emulated_q\ : std_logic;
SIGNAL \inst1|inst2~2_combout\ : std_logic;
SIGNAL \inst1|inst44~combout\ : std_logic;
SIGNAL \inst1|inst17~combout\ : std_logic;
SIGNAL \inst1|inst1~1_combout\ : std_logic;
SIGNAL \inst1|inst1~3_combout\ : std_logic;
SIGNAL \inst1|inst1~0_combout\ : std_logic;
SIGNAL \inst1|inst1~_emulated_q\ : std_logic;
SIGNAL \inst1|inst1~2_combout\ : std_logic;
SIGNAL \inst1|inst24~combout\ : std_logic;
SIGNAL \inst1|inst16~combout\ : std_logic;
SIGNAL \inst1|inst~1_combout\ : std_logic;
SIGNAL \inst1|inst~3_combout\ : std_logic;
SIGNAL \inst1|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst~_emulated_q\ : std_logic;
SIGNAL \inst1|inst~2_combout\ : std_logic;
SIGNAL \inst12|53~0_combout\ : std_logic;
SIGNAL \inst12|50~0_combout\ : std_logic;
SIGNAL \inst12|54~0_combout\ : std_logic;
SIGNAL \inst12|52~0_combout\ : std_logic;
SIGNAL \inst12|49~0_combout\ : std_logic;
SIGNAL \inst12|51~0_combout\ : std_logic;
SIGNAL \inst12|55~0_combout\ : std_logic;
SIGNAL \inst13|53~0_combout\ : std_logic;
SIGNAL \inst13|50~0_combout\ : std_logic;
SIGNAL \inst13|54~0_combout\ : std_logic;
SIGNAL \inst13|52~0_combout\ : std_logic;
SIGNAL \inst13|49~0_combout\ : std_logic;
SIGNAL \inst13|51~0_combout\ : std_logic;
SIGNAL \inst13|55~0_combout\ : std_logic;
SIGNAL \inst14|53~0_combout\ : std_logic;
SIGNAL \inst14|50~0_combout\ : std_logic;
SIGNAL \inst14|54~0_combout\ : std_logic;
SIGNAL \inst14|52~0_combout\ : std_logic;
SIGNAL \inst14|49~0_combout\ : std_logic;
SIGNAL \inst14|51~0_combout\ : std_logic;
SIGNAL \inst14|55~0_combout\ : std_logic;
SIGNAL \inst15|53~0_combout\ : std_logic;
SIGNAL \inst15|50~0_combout\ : std_logic;
SIGNAL \inst15|54~0_combout\ : std_logic;
SIGNAL \inst15|52~0_combout\ : std_logic;
SIGNAL \inst15|49~0_combout\ : std_logic;
SIGNAL \inst15|51~0_combout\ : std_logic;
SIGNAL \inst15|55~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst16|inst4~combout\ : std_logic;
SIGNAL \inst|inst6~combout\ : std_logic;
SIGNAL \unitC|inst6~combout\ : std_logic;
SIGNAL \unitC|inst9~combout\ : std_logic;
SIGNAL \regiB|inst4~q\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst17|inst3~combout\ : std_logic;
SIGNAL \inst|inst|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \regiB|inst~q\ : std_logic;
SIGNAL \unitC|inst10~combout\ : std_logic;
SIGNAL \regiA|inst~q\ : std_logic;
SIGNAL \inst|inst4|inst33~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst34|inst1~0_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \regiB|inst2~q\ : std_logic;
SIGNAL \regiA|inst2~q\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst|inst1~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst31~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst31~1_combout\ : std_logic;
SIGNAL \inst|inst4|inst31~2_combout\ : std_logic;
SIGNAL \inst|inst2|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \regiA|inst3~q\ : std_logic;
SIGNAL \regiB|inst3~q\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst2|inst6~combout\ : std_logic;
SIGNAL \inst|inst4|inst32~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst32~1_combout\ : std_logic;
SIGNAL \inst|inst4|inst37|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \regiA|inst4~q\ : std_logic;
SIGNAL \inst17|53~0_combout\ : std_logic;
SIGNAL \inst17|50~0_combout\ : std_logic;
SIGNAL \inst17|54~0_combout\ : std_logic;
SIGNAL \inst17|52~0_combout\ : std_logic;
SIGNAL \inst17|49~0_combout\ : std_logic;
SIGNAL \inst17|51~0_combout\ : std_logic;
SIGNAL \inst17|55~0_combout\ : std_logic;
SIGNAL \inst16|53~0_combout\ : std_logic;
SIGNAL \inst16|50~0_combout\ : std_logic;
SIGNAL \inst16|54~0_combout\ : std_logic;
SIGNAL \inst16|52~0_combout\ : std_logic;
SIGNAL \inst16|49~0_combout\ : std_logic;
SIGNAL \inst16|51~0_combout\ : std_logic;
SIGNAL \inst16|55~0_combout\ : std_logic;
SIGNAL \unitC|inst13~combout\ : std_logic;
SIGNAL \unitC|inst2~0_combout\ : std_logic;
SIGNAL \inst10|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \deb|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_clock~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_debouncer~input_o\ : std_logic;
SIGNAL \ALT_INV_Master_clear~input_o\ : std_logic;
SIGNAL \deb|ALT_INV_out_key~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst1~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst3~1_combout\ : std_logic;
SIGNAL \deb|ALT_INV_intermediate~0_combout\ : std_logic;
SIGNAL \deb|ALT_INV_intermediate~_emulated_q\ : std_logic;
SIGNAL \deb|ALT_INV_out_key~8_combout\ : std_logic;
SIGNAL \deb|ALT_INV_out_key~7_combout\ : std_logic;
SIGNAL \deb|ALT_INV_out_key~6_combout\ : std_logic;
SIGNAL \deb|ALT_INV_out_key~5_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst24~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst16~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst44~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst17~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst1~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst49~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst18~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst2~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst50~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst19~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst3~0_combout\ : std_logic;
SIGNAL \deb|ALT_INV_out_key~2_combout\ : std_logic;
SIGNAL \deb|ALT_INV_out_key~_emulated_q\ : std_logic;
SIGNAL \inst|inst4|inst37|ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \inst|inst4|ALT_INV_inst31~2_combout\ : std_logic;
SIGNAL \inst|inst4|ALT_INV_inst31~1_combout\ : std_logic;
SIGNAL \inst|inst4|ALT_INV_inst32~1_combout\ : std_logic;
SIGNAL \inst|inst4|ALT_INV_inst32~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst34|ALT_INV_inst1~0_combout\ : std_logic;
SIGNAL \inst|inst4|ALT_INV_inst33~0_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst17|ALT_INV_inst3~combout\ : std_logic;
SIGNAL \inst|inst4|inst2|ALT_INV_inst6~combout\ : std_logic;
SIGNAL \inst|inst4|inst|ALT_INV_inst1~0_combout\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst16|ALT_INV_inst4~combout\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \inst|inst4|ALT_INV_inst31~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst6~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst~_emulated_q\ : std_logic;
SIGNAL \inst1|ALT_INV_inst1~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst1~_emulated_q\ : std_logic;
SIGNAL \inst1|ALT_INV_inst2~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst2~_emulated_q\ : std_logic;
SIGNAL \inst1|ALT_INV_inst3~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst3~_emulated_q\ : std_logic;
SIGNAL \inst1|ALT_INV_inst13~combout\ : std_logic;
SIGNAL \unitC|ALT_INV_inst8~0_combout\ : std_logic;
SIGNAL \unitC|ALT_INV_inst6~combout\ : std_logic;
SIGNAL \inst16|ALT_INV_55~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_55~0_combout\ : std_logic;
SIGNAL \regiB|ALT_INV_inst4~q\ : std_logic;
SIGNAL \regiB|ALT_INV_inst3~q\ : std_logic;
SIGNAL \regiB|ALT_INV_inst2~q\ : std_logic;
SIGNAL \regiB|ALT_INV_inst~q\ : std_logic;
SIGNAL \regiA|ALT_INV_inst~q\ : std_logic;
SIGNAL \regiA|ALT_INV_inst2~q\ : std_logic;
SIGNAL \regiA|ALT_INV_inst3~q\ : std_logic;
SIGNAL \regiA|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst15|ALT_INV_55~0_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_55~0_combout\ : std_logic;
SIGNAL \inst13|ALT_INV_55~0_combout\ : std_logic;
SIGNAL \inst12|ALT_INV_55~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst8~q\ : std_logic;
SIGNAL \inst1|ALT_INV_inst9~q\ : std_logic;
SIGNAL \inst1|ALT_INV_inst10~q\ : std_logic;
SIGNAL \inst1|ALT_INV_inst11~q\ : std_logic;
SIGNAL \deb|ALT_INV_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(15 DOWNTO 0);

BEGIN

hex50 <= ww_hex50;
ROM <= ww_ROM;
ww_pin_clock <= pin_clock;
ww_reset_debouncer <= reset_debouncer;
ww_clock <= clock;
COUNT <= ww_COUNT;
ww_Master_clear <= Master_clear;
operando <= ww_operando;
hex51 <= ww_hex51;
hex52 <= ww_hex52;
hex53 <= ww_hex53;
hex54 <= ww_hex54;
hex55 <= ww_hex55;
hex56 <= ww_hex56;
hex40 <= ww_hex40;
hex41 <= ww_hex41;
hex42 <= ww_hex42;
hex43 <= ww_hex43;
hex44 <= ww_hex44;
hex45 <= ww_hex45;
hex46 <= ww_hex46;
hex30 <= ww_hex30;
hex31 <= ww_hex31;
hex32 <= ww_hex32;
hex33 <= ww_hex33;
hex34 <= ww_hex34;
hex35 <= ww_hex35;
hex36 <= ww_hex36;
hex20 <= ww_hex20;
hex21 <= ww_hex21;
hex22 <= ww_hex22;
hex23 <= ww_hex23;
hex24 <= ww_hex24;
hex25 <= ww_hex25;
hex26 <= ww_hex26;
hex10 <= ww_hex10;
A3 <= ww_A3;
B0 <= ww_B0;
A0 <= ww_A0;
B1 <= ww_B1;
A1 <= ww_A1;
B2 <= ww_B2;
A2 <= ww_A2;
B3 <= ww_B3;
ULA <= ww_ULA;
hex11 <= ww_hex11;
hex12 <= ww_hex12;
hex13 <= ww_hex13;
hex14 <= ww_hex14;
hex15 <= ww_hex15;
hex16 <= ww_hex16;
hex00 <= ww_hex00;
hex01 <= ww_hex01;
hex02 <= ww_hex02;
hex03 <= ww_hex03;
hex04 <= ww_hex04;
hex05 <= ww_hex05;
hex06 <= ww_hex06;
led0 <= ww_led0;
led1 <= ww_led1;
led2 <= ww_led2;
led3 <= ww_led3;
led4 <= ww_led4;
led5 <= ww_led5;
led6 <= ww_led6;
RG_IN <= ww_RG_IN;
ClearRegi <= ww_ClearRegi;
ClearCont <= ww_ClearCont;
JUMP <= ww_JUMP;
load_1 <= ww_load_1;
load_2 <= ww_load_2;
led7 <= ww_led7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst10|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst1|inst11~q\ & \inst1|inst10~q\ & \inst1|inst9~q\ & \inst1|inst8~q\ & \inst1|inst3~2_combout\ & \inst1|inst2~2_combout\ & \inst1|inst1~2_combout\ & \inst1|inst~2_combout\);

\inst10|altsyncram_component|auto_generated|q_a\(0) <= \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst10|altsyncram_component|auto_generated|q_a\(1) <= \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst10|altsyncram_component|auto_generated|q_a\(2) <= \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst10|altsyncram_component|auto_generated|q_a\(3) <= \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst10|altsyncram_component|auto_generated|q_a\(4) <= \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst10|altsyncram_component|auto_generated|q_a\(5) <= \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst10|altsyncram_component|auto_generated|q_a\(6) <= \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst10|altsyncram_component|auto_generated|q_a\(7) <= \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst10|altsyncram_component|auto_generated|q_a\(8) <= \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst10|altsyncram_component|auto_generated|q_a\(9) <= \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst10|altsyncram_component|auto_generated|q_a\(10) <= \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst10|altsyncram_component|auto_generated|q_a\(11) <= \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst10|altsyncram_component|auto_generated|q_a\(12) <= \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst10|altsyncram_component|auto_generated|q_a\(13) <= \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst10|altsyncram_component|auto_generated|q_a\(14) <= \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst10|altsyncram_component|auto_generated|q_a\(15) <= \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\ALT_INV_clock~input_o\ <= NOT \clock~input_o\;
\ALT_INV_reset_debouncer~input_o\ <= NOT \reset_debouncer~input_o\;
\ALT_INV_Master_clear~input_o\ <= NOT \Master_clear~input_o\;
\deb|ALT_INV_out_key~1_combout\ <= NOT \deb|out_key~1_combout\;
\inst1|ALT_INV_inst~1_combout\ <= NOT \inst1|inst~1_combout\;
\inst1|ALT_INV_inst1~1_combout\ <= NOT \inst1|inst1~1_combout\;
\inst1|ALT_INV_inst2~1_combout\ <= NOT \inst1|inst2~1_combout\;
\inst1|ALT_INV_inst3~1_combout\ <= NOT \inst1|inst3~1_combout\;
\deb|ALT_INV_intermediate~0_combout\ <= NOT \deb|intermediate~0_combout\;
\deb|ALT_INV_intermediate~_emulated_q\ <= NOT \deb|intermediate~_emulated_q\;
\deb|ALT_INV_out_key~8_combout\ <= NOT \deb|out_key~8_combout\;
\deb|ALT_INV_out_key~7_combout\ <= NOT \deb|out_key~7_combout\;
\deb|ALT_INV_out_key~6_combout\ <= NOT \deb|out_key~6_combout\;
\deb|ALT_INV_out_key~5_combout\ <= NOT \deb|out_key~5_combout\;
\inst1|ALT_INV_inst24~combout\ <= NOT \inst1|inst24~combout\;
\inst1|ALT_INV_inst16~combout\ <= NOT \inst1|inst16~combout\;
\inst1|ALT_INV_inst~0_combout\ <= NOT \inst1|inst~0_combout\;
\inst1|ALT_INV_inst44~combout\ <= NOT \inst1|inst44~combout\;
\inst1|ALT_INV_inst17~combout\ <= NOT \inst1|inst17~combout\;
\inst1|ALT_INV_inst1~0_combout\ <= NOT \inst1|inst1~0_combout\;
\inst1|ALT_INV_inst49~combout\ <= NOT \inst1|inst49~combout\;
\inst1|ALT_INV_inst18~combout\ <= NOT \inst1|inst18~combout\;
\inst1|ALT_INV_inst2~0_combout\ <= NOT \inst1|inst2~0_combout\;
\inst1|ALT_INV_inst50~combout\ <= NOT \inst1|inst50~combout\;
\inst1|ALT_INV_inst19~combout\ <= NOT \inst1|inst19~combout\;
\inst1|ALT_INV_inst3~0_combout\ <= NOT \inst1|inst3~0_combout\;
\deb|ALT_INV_out_key~2_combout\ <= NOT \deb|out_key~2_combout\;
\deb|ALT_INV_out_key~_emulated_q\ <= NOT \deb|out_key~_emulated_q\;
\inst|inst4|inst37|ALT_INV_inst4~0_combout\ <= NOT \inst|inst4|inst37|inst4~0_combout\;
\inst|inst4|ALT_INV_inst31~2_combout\ <= NOT \inst|inst4|inst31~2_combout\;
\inst|inst4|ALT_INV_inst31~1_combout\ <= NOT \inst|inst4|inst31~1_combout\;
\inst|inst4|ALT_INV_inst32~1_combout\ <= NOT \inst|inst4|inst32~1_combout\;
\inst|inst4|ALT_INV_inst32~0_combout\ <= NOT \inst|inst4|inst32~0_combout\;
\inst|inst4|inst34|ALT_INV_inst1~0_combout\ <= NOT \inst|inst4|inst34|inst1~0_combout\;
\inst|inst4|ALT_INV_inst33~0_combout\ <= NOT \inst|inst4|inst33~0_combout\;
\inst8|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst4|inst17|ALT_INV_inst3~combout\ <= NOT \inst|inst4|inst17|inst3~combout\;
\inst|inst4|inst2|ALT_INV_inst6~combout\ <= NOT \inst|inst4|inst2|inst6~combout\;
\inst|inst4|inst|ALT_INV_inst1~0_combout\ <= NOT \inst|inst4|inst|inst1~0_combout\;
\inst6|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst4|inst16|ALT_INV_inst4~combout\ <= NOT \inst|inst4|inst16|inst4~combout\;
\inst7|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\ <= NOT \inst7|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\;
\inst|inst4|ALT_INV_inst31~0_combout\ <= NOT \inst|inst4|inst31~0_combout\;
\inst|ALT_INV_inst6~combout\ <= NOT \inst|inst6~combout\;
\inst1|ALT_INV_inst~2_combout\ <= NOT \inst1|inst~2_combout\;
\inst1|ALT_INV_inst~_emulated_q\ <= NOT \inst1|inst~_emulated_q\;
\inst1|ALT_INV_inst1~2_combout\ <= NOT \inst1|inst1~2_combout\;
\inst1|ALT_INV_inst1~_emulated_q\ <= NOT \inst1|inst1~_emulated_q\;
\inst1|ALT_INV_inst2~2_combout\ <= NOT \inst1|inst2~2_combout\;
\inst1|ALT_INV_inst2~_emulated_q\ <= NOT \inst1|inst2~_emulated_q\;
\inst1|ALT_INV_inst3~2_combout\ <= NOT \inst1|inst3~2_combout\;
\inst1|ALT_INV_inst3~_emulated_q\ <= NOT \inst1|inst3~_emulated_q\;
\inst1|ALT_INV_inst13~combout\ <= NOT \inst1|inst13~combout\;
\unitC|ALT_INV_inst8~0_combout\ <= NOT \unitC|inst8~0_combout\;
\unitC|ALT_INV_inst6~combout\ <= NOT \unitC|inst6~combout\;
\inst16|ALT_INV_55~0_combout\ <= NOT \inst16|55~0_combout\;
\inst17|ALT_INV_55~0_combout\ <= NOT \inst17|55~0_combout\;
\regiB|ALT_INV_inst4~q\ <= NOT \regiB|inst4~q\;
\regiB|ALT_INV_inst3~q\ <= NOT \regiB|inst3~q\;
\regiB|ALT_INV_inst2~q\ <= NOT \regiB|inst2~q\;
\regiB|ALT_INV_inst~q\ <= NOT \regiB|inst~q\;
\regiA|ALT_INV_inst~q\ <= NOT \regiA|inst~q\;
\regiA|ALT_INV_inst2~q\ <= NOT \regiA|inst2~q\;
\regiA|ALT_INV_inst3~q\ <= NOT \regiA|inst3~q\;
\regiA|ALT_INV_inst4~q\ <= NOT \regiA|inst4~q\;
\inst15|ALT_INV_55~0_combout\ <= NOT \inst15|55~0_combout\;
\inst14|ALT_INV_55~0_combout\ <= NOT \inst14|55~0_combout\;
\inst13|ALT_INV_55~0_combout\ <= NOT \inst13|55~0_combout\;
\inst12|ALT_INV_55~0_combout\ <= NOT \inst12|55~0_combout\;
\inst1|ALT_INV_inst8~q\ <= NOT \inst1|inst8~q\;
\inst1|ALT_INV_inst9~q\ <= NOT \inst1|inst9~q\;
\inst1|ALT_INV_inst10~q\ <= NOT \inst1|inst10~q\;
\inst1|ALT_INV_inst11~q\ <= NOT \inst1|inst11~q\;
\deb|ALT_INV_counter\(12) <= NOT \deb|counter\(12);
\deb|ALT_INV_counter\(13) <= NOT \deb|counter\(13);
\deb|ALT_INV_counter\(14) <= NOT \deb|counter\(14);
\deb|ALT_INV_counter\(15) <= NOT \deb|counter\(15);
\deb|ALT_INV_counter\(0) <= NOT \deb|counter\(0);
\deb|ALT_INV_counter\(5) <= NOT \deb|counter\(5);
\deb|ALT_INV_counter\(6) <= NOT \deb|counter\(6);
\deb|ALT_INV_counter\(7) <= NOT \deb|counter\(7);
\deb|ALT_INV_counter\(8) <= NOT \deb|counter\(8);
\deb|ALT_INV_counter\(9) <= NOT \deb|counter\(9);
\deb|ALT_INV_counter\(10) <= NOT \deb|counter\(10);
\deb|ALT_INV_counter\(1) <= NOT \deb|counter\(1);
\deb|ALT_INV_counter\(2) <= NOT \deb|counter\(2);
\deb|ALT_INV_counter\(3) <= NOT \deb|counter\(3);
\deb|ALT_INV_counter\(4) <= NOT \deb|counter\(4);
\deb|ALT_INV_counter\(11) <= NOT \deb|counter\(11);
\inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst10|altsyncram_component|auto_generated|q_a\(1);
\inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst10|altsyncram_component|auto_generated|q_a\(2);
\inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst10|altsyncram_component|auto_generated|q_a\(3);
\inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst10|altsyncram_component|auto_generated|q_a\(4);
\inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst10|altsyncram_component|auto_generated|q_a\(5);
\inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst10|altsyncram_component|auto_generated|q_a\(6);
\inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst10|altsyncram_component|auto_generated|q_a\(7);
\inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \inst10|altsyncram_component|auto_generated|q_a\(8);
\inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \inst10|altsyncram_component|auto_generated|q_a\(9);
\inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \inst10|altsyncram_component|auto_generated|q_a\(10);
\inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \inst10|altsyncram_component|auto_generated|q_a\(11);
\inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(12) <= NOT \inst10|altsyncram_component|auto_generated|q_a\(12);
\inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(13) <= NOT \inst10|altsyncram_component|auto_generated|q_a\(13);
\inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(14) <= NOT \inst10|altsyncram_component|auto_generated|q_a\(14);
\inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(15) <= NOT \inst10|altsyncram_component|auto_generated|q_a\(15);
\inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst10|altsyncram_component|auto_generated|q_a\(0);

-- Location: IOOBUF_X29_Y0_N2
\hex50~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|53~0_combout\,
	devoe => ww_devoe,
	o => ww_hex50);

-- Location: IOOBUF_X34_Y0_N53
\ROM[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_ROM(15));

-- Location: IOOBUF_X33_Y0_N59
\ROM[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => ww_ROM(14));

-- Location: IOOBUF_X23_Y0_N93
\ROM[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => ww_ROM(13));

-- Location: IOOBUF_X24_Y0_N36
\ROM[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => ww_ROM(12));

-- Location: IOOBUF_X29_Y0_N36
\ROM[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => ww_ROM(11));

-- Location: IOOBUF_X29_Y0_N53
\ROM[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => ww_ROM(10));

-- Location: IOOBUF_X24_Y0_N19
\ROM[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => ww_ROM(9));

-- Location: IOOBUF_X22_Y0_N36
\ROM[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_ROM(8));

-- Location: IOOBUF_X34_Y0_N2
\ROM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_ROM(7));

-- Location: IOOBUF_X36_Y0_N36
\ROM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_ROM(6));

-- Location: IOOBUF_X25_Y0_N19
\ROM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_ROM(5));

-- Location: IOOBUF_X19_Y0_N36
\ROM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_ROM(4));

-- Location: IOOBUF_X23_Y0_N59
\ROM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_ROM(3));

-- Location: IOOBUF_X25_Y0_N2
\ROM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_ROM(2));

-- Location: IOOBUF_X19_Y0_N19
\ROM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_ROM(1));

-- Location: IOOBUF_X34_Y45_N36
\ROM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_ROM(0));

-- Location: IOOBUF_X0_Y20_N5
\COUNT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst11~q\,
	devoe => ww_devoe,
	o => ww_COUNT(7));

-- Location: IOOBUF_X0_Y20_N39
\COUNT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst10~q\,
	devoe => ww_devoe,
	o => ww_COUNT(6));

-- Location: IOOBUF_X11_Y0_N53
\COUNT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst9~q\,
	devoe => ww_devoe,
	o => ww_COUNT(5));

-- Location: IOOBUF_X0_Y20_N56
\COUNT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst8~q\,
	devoe => ww_devoe,
	o => ww_COUNT(4));

-- Location: IOOBUF_X11_Y0_N2
\COUNT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst3~2_combout\,
	devoe => ww_devoe,
	o => ww_COUNT(3));

-- Location: IOOBUF_X10_Y0_N93
\COUNT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2~2_combout\,
	devoe => ww_devoe,
	o => ww_COUNT(2));

-- Location: IOOBUF_X11_Y0_N19
\COUNT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1~2_combout\,
	devoe => ww_devoe,
	o => ww_COUNT(1));

-- Location: IOOBUF_X10_Y0_N76
\COUNT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst~2_combout\,
	devoe => ww_devoe,
	o => ww_COUNT(0));

-- Location: IOOBUF_X23_Y0_N76
\operando[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_operando(3));

-- Location: IOOBUF_X25_Y0_N36
\operando[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_operando(2));

-- Location: IOOBUF_X19_Y0_N53
\operando[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_operando(1));

-- Location: IOOBUF_X34_Y45_N19
\operando[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_operando(0));

-- Location: IOOBUF_X22_Y0_N19
\hex51~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|50~0_combout\,
	devoe => ww_devoe,
	o => ww_hex51);

-- Location: IOOBUF_X43_Y0_N19
\hex52~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|54~0_combout\,
	devoe => ww_devoe,
	o => ww_hex52);

-- Location: IOOBUF_X50_Y0_N19
\hex53~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|52~0_combout\,
	devoe => ww_devoe,
	o => ww_hex53);

-- Location: IOOBUF_X0_Y21_N56
\hex54~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|49~0_combout\,
	devoe => ww_devoe,
	o => ww_hex54);

-- Location: IOOBUF_X0_Y21_N39
\hex55~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|51~0_combout\,
	devoe => ww_devoe,
	o => ww_hex55);

-- Location: IOOBUF_X44_Y0_N2
\hex56~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|ALT_INV_55~0_combout\,
	devoe => ww_devoe,
	o => ww_hex56);

-- Location: IOOBUF_X52_Y0_N36
\hex40~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|53~0_combout\,
	devoe => ww_devoe,
	o => ww_hex40);

-- Location: IOOBUF_X48_Y0_N59
\hex41~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|50~0_combout\,
	devoe => ww_devoe,
	o => ww_hex41);

-- Location: IOOBUF_X44_Y0_N19
\hex42~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|54~0_combout\,
	devoe => ww_devoe,
	o => ww_hex42);

-- Location: IOOBUF_X52_Y0_N19
\hex43~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|52~0_combout\,
	devoe => ww_devoe,
	o => ww_hex43);

-- Location: IOOBUF_X43_Y0_N2
\hex44~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|49~0_combout\,
	devoe => ww_devoe,
	o => ww_hex44);

-- Location: IOOBUF_X36_Y0_N2
\hex45~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|51~0_combout\,
	devoe => ww_devoe,
	o => ww_hex45);

-- Location: IOOBUF_X29_Y0_N19
\hex46~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|ALT_INV_55~0_combout\,
	devoe => ww_devoe,
	o => ww_hex46);

-- Location: IOOBUF_X40_Y0_N59
\hex30~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|53~0_combout\,
	devoe => ww_devoe,
	o => ww_hex30);

-- Location: IOOBUF_X46_Y0_N2
\hex31~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|50~0_combout\,
	devoe => ww_devoe,
	o => ww_hex31);

-- Location: IOOBUF_X40_Y0_N42
\hex32~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|54~0_combout\,
	devoe => ww_devoe,
	o => ww_hex32);

-- Location: IOOBUF_X46_Y0_N19
\hex33~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|52~0_combout\,
	devoe => ww_devoe,
	o => ww_hex33);

-- Location: IOOBUF_X52_Y0_N2
\hex34~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|49~0_combout\,
	devoe => ww_devoe,
	o => ww_hex34);

-- Location: IOOBUF_X51_Y0_N2
\hex35~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|51~0_combout\,
	devoe => ww_devoe,
	o => ww_hex35);

-- Location: IOOBUF_X51_Y0_N19
\hex36~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|ALT_INV_55~0_combout\,
	devoe => ww_devoe,
	o => ww_hex36);

-- Location: IOOBUF_X48_Y0_N42
\hex20~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|53~0_combout\,
	devoe => ww_devoe,
	o => ww_hex20);

-- Location: IOOBUF_X38_Y0_N53
\hex21~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|50~0_combout\,
	devoe => ww_devoe,
	o => ww_hex21);

-- Location: IOOBUF_X22_Y0_N53
\hex22~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|54~0_combout\,
	devoe => ww_devoe,
	o => ww_hex22);

-- Location: IOOBUF_X36_Y0_N19
\hex23~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|52~0_combout\,
	devoe => ww_devoe,
	o => ww_hex23);

-- Location: IOOBUF_X38_Y0_N19
\hex24~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|49~0_combout\,
	devoe => ww_devoe,
	o => ww_hex24);

-- Location: IOOBUF_X46_Y0_N53
\hex25~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|51~0_combout\,
	devoe => ww_devoe,
	o => ww_hex25);

-- Location: IOOBUF_X40_Y0_N76
\hex26~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|ALT_INV_55~0_combout\,
	devoe => ww_devoe,
	o => ww_hex26);

-- Location: IOOBUF_X44_Y0_N36
\hex10~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|53~0_combout\,
	devoe => ww_devoe,
	o => ww_hex10);

-- Location: IOOBUF_X40_Y45_N93
\A3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regiA|inst4~q\,
	devoe => ww_devoe,
	o => ww_A3);

-- Location: IOOBUF_X42_Y45_N53
\B0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regiB|inst~q\,
	devoe => ww_devoe,
	o => ww_B0);

-- Location: IOOBUF_X38_Y0_N2
\A0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regiA|inst~q\,
	devoe => ww_devoe,
	o => ww_A0);

-- Location: IOOBUF_X36_Y0_N53
\B1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regiB|inst2~q\,
	devoe => ww_devoe,
	o => ww_B1);

-- Location: IOOBUF_X54_Y14_N96
\A1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regiA|inst2~q\,
	devoe => ww_devoe,
	o => ww_A1);

-- Location: IOOBUF_X54_Y14_N79
\B2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regiB|inst3~q\,
	devoe => ww_devoe,
	o => ww_B2);

-- Location: IOOBUF_X50_Y0_N2
\A2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regiA|inst3~q\,
	devoe => ww_devoe,
	o => ww_A2);

-- Location: IOOBUF_X54_Y14_N45
\B3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regiB|inst4~q\,
	devoe => ww_devoe,
	o => ww_B3);

-- Location: IOOBUF_X24_Y0_N2
\ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => ww_ULA(1));

-- Location: IOOBUF_X23_Y0_N42
\ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_ULA(0));

-- Location: IOOBUF_X40_Y0_N93
\hex11~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|50~0_combout\,
	devoe => ww_devoe,
	o => ww_hex11);

-- Location: IOOBUF_X44_Y0_N53
\hex12~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|54~0_combout\,
	devoe => ww_devoe,
	o => ww_hex12);

-- Location: IOOBUF_X43_Y0_N36
\hex13~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|52~0_combout\,
	devoe => ww_devoe,
	o => ww_hex13);

-- Location: IOOBUF_X38_Y0_N36
\hex14~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|49~0_combout\,
	devoe => ww_devoe,
	o => ww_hex14);

-- Location: IOOBUF_X43_Y0_N53
\hex15~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|51~0_combout\,
	devoe => ww_devoe,
	o => ww_hex15);

-- Location: IOOBUF_X51_Y0_N53
\hex16~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|ALT_INV_55~0_combout\,
	devoe => ww_devoe,
	o => ww_hex16);

-- Location: IOOBUF_X52_Y0_N53
\hex00~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|53~0_combout\,
	devoe => ww_devoe,
	o => ww_hex00);

-- Location: IOOBUF_X51_Y0_N36
\hex01~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|50~0_combout\,
	devoe => ww_devoe,
	o => ww_hex01);

-- Location: IOOBUF_X48_Y0_N76
\hex02~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|54~0_combout\,
	devoe => ww_devoe,
	o => ww_hex02);

-- Location: IOOBUF_X50_Y0_N36
\hex03~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|52~0_combout\,
	devoe => ww_devoe,
	o => ww_hex03);

-- Location: IOOBUF_X48_Y0_N93
\hex04~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|49~0_combout\,
	devoe => ww_devoe,
	o => ww_hex04);

-- Location: IOOBUF_X50_Y0_N53
\hex05~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|51~0_combout\,
	devoe => ww_devoe,
	o => ww_hex05);

-- Location: IOOBUF_X46_Y0_N36
\hex06~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|ALT_INV_55~0_combout\,
	devoe => ww_devoe,
	o => ww_hex06);

-- Location: IOOBUF_X0_Y18_N79
\led0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst~2_combout\,
	devoe => ww_devoe,
	o => ww_led0);

-- Location: IOOBUF_X0_Y18_N96
\led1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1~2_combout\,
	devoe => ww_devoe,
	o => ww_led1);

-- Location: IOOBUF_X0_Y18_N62
\led2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2~2_combout\,
	devoe => ww_devoe,
	o => ww_led2);

-- Location: IOOBUF_X0_Y18_N45
\led3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst3~2_combout\,
	devoe => ww_devoe,
	o => ww_led3);

-- Location: IOOBUF_X0_Y19_N39
\led4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst8~q\,
	devoe => ww_devoe,
	o => ww_led4);

-- Location: IOOBUF_X0_Y19_N56
\led5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst9~q\,
	devoe => ww_devoe,
	o => ww_led5);

-- Location: IOOBUF_X0_Y19_N5
\led6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst10~q\,
	devoe => ww_devoe,
	o => ww_led6);

-- Location: IOOBUF_X18_Y0_N36
\RG_IN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \unitC|inst13~combout\,
	devoe => ww_devoe,
	o => ww_RG_IN);

-- Location: IOOBUF_X34_Y0_N36
\ClearRegi~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \unitC|inst6~combout\,
	devoe => ww_devoe,
	o => ww_ClearRegi);

-- Location: IOOBUF_X24_Y0_N53
\ClearCont~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \unitC|inst8~0_combout\,
	devoe => ww_devoe,
	o => ww_ClearCont);

-- Location: IOOBUF_X25_Y0_N53
\JUMP~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \unitC|inst2~0_combout\,
	devoe => ww_devoe,
	o => ww_JUMP);

-- Location: IOOBUF_X34_Y45_N2
\load_1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \unitC|inst10~combout\,
	devoe => ww_devoe,
	o => ww_load_1);

-- Location: IOOBUF_X34_Y0_N19
\load_2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \unitC|inst9~combout\,
	devoe => ww_devoe,
	o => ww_load_2);

-- Location: IOOBUF_X0_Y19_N22
\led7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst11~q\,
	devoe => ww_devoe,
	o => ww_led7);

-- Location: IOIBUF_X33_Y0_N75
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\reset_debouncer~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_debouncer,
	o => \reset_debouncer~input_o\);

-- Location: LABCELL_X31_Y2_N39
\deb|out_key~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|out_key~1_combout\ = ( \deb|out_key~1_combout\ & ( (\reset_debouncer~input_o\) # (\clock~input_o\) ) ) # ( !\deb|out_key~1_combout\ & ( (\clock~input_o\ & !\reset_debouncer~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clock~input_o\,
	datad => \ALT_INV_reset_debouncer~input_o\,
	dataf => \deb|ALT_INV_out_key~1_combout\,
	combout => \deb|out_key~1_combout\);

-- Location: IOIBUF_X22_Y0_N1
\pin_clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_clock,
	o => \pin_clock~input_o\);

-- Location: CLKCTRL_G6
\pin_clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \pin_clock~input_o\,
	outclk => \pin_clock~inputCLKENA0_outclk\);

-- Location: LABCELL_X32_Y1_N21
\deb|intermediate~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|intermediate~1_combout\ = ( \clock~input_o\ & ( !\deb|out_key~1_combout\ ) ) # ( !\clock~input_o\ & ( \deb|out_key~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deb|ALT_INV_out_key~1_combout\,
	dataf => \ALT_INV_clock~input_o\,
	combout => \deb|intermediate~1_combout\);

-- Location: FF_X32_Y1_N23
\deb|intermediate~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_clock~inputCLKENA0_outclk\,
	d => \deb|intermediate~1_combout\,
	clrn => \reset_debouncer~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb|intermediate~_emulated_q\);

-- Location: LABCELL_X32_Y2_N54
\deb|intermediate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|intermediate~0_combout\ = ( \deb|out_key~1_combout\ & ( (!\reset_debouncer~input_o\ & (\clock~input_o\)) # (\reset_debouncer~input_o\ & ((!\deb|intermediate~_emulated_q\))) ) ) # ( !\deb|out_key~1_combout\ & ( (!\reset_debouncer~input_o\ & 
-- (\clock~input_o\)) # (\reset_debouncer~input_o\ & ((\deb|intermediate~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011101110111010001000111011101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \ALT_INV_reset_debouncer~input_o\,
	datad => \deb|ALT_INV_intermediate~_emulated_q\,
	dataf => \deb|ALT_INV_out_key~1_combout\,
	combout => \deb|intermediate~0_combout\);

-- Location: LABCELL_X32_Y2_N0
\deb|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|Add0~45_sumout\ = SUM(( \deb|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \deb|Add0~46\ = CARRY(( \deb|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \deb|ALT_INV_counter\(0),
	cin => GND,
	sumout => \deb|Add0~45_sumout\,
	cout => \deb|Add0~46\);

-- Location: LABCELL_X32_Y2_N57
\deb|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|always0~0_combout\ = ( \deb|intermediate~0_combout\ & ( !\clock~input_o\ ) ) # ( !\deb|intermediate~0_combout\ & ( \clock~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_clock~input_o\,
	dataf => \deb|ALT_INV_intermediate~0_combout\,
	combout => \deb|always0~0_combout\);

-- Location: FF_X32_Y2_N2
\deb|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_clock~inputCLKENA0_outclk\,
	d => \deb|Add0~45_sumout\,
	clrn => \reset_debouncer~input_o\,
	sclr => \deb|always0~0_combout\,
	ena => \deb|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb|counter\(0));

-- Location: LABCELL_X32_Y2_N3
\deb|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|Add0~17_sumout\ = SUM(( \deb|counter\(1) ) + ( GND ) + ( \deb|Add0~46\ ))
-- \deb|Add0~18\ = CARRY(( \deb|counter\(1) ) + ( GND ) + ( \deb|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \deb|ALT_INV_counter\(1),
	cin => \deb|Add0~46\,
	sumout => \deb|Add0~17_sumout\,
	cout => \deb|Add0~18\);

-- Location: FF_X32_Y2_N5
\deb|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_clock~inputCLKENA0_outclk\,
	d => \deb|Add0~17_sumout\,
	clrn => \reset_debouncer~input_o\,
	sclr => \deb|always0~0_combout\,
	ena => \deb|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb|counter\(1));

-- Location: LABCELL_X32_Y2_N6
\deb|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|Add0~13_sumout\ = SUM(( \deb|counter\(2) ) + ( GND ) + ( \deb|Add0~18\ ))
-- \deb|Add0~14\ = CARRY(( \deb|counter\(2) ) + ( GND ) + ( \deb|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \deb|ALT_INV_counter\(2),
	cin => \deb|Add0~18\,
	sumout => \deb|Add0~13_sumout\,
	cout => \deb|Add0~14\);

-- Location: FF_X32_Y2_N8
\deb|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_clock~inputCLKENA0_outclk\,
	d => \deb|Add0~13_sumout\,
	clrn => \reset_debouncer~input_o\,
	sclr => \deb|always0~0_combout\,
	ena => \deb|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb|counter\(2));

-- Location: LABCELL_X32_Y2_N9
\deb|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|Add0~9_sumout\ = SUM(( \deb|counter\(3) ) + ( GND ) + ( \deb|Add0~14\ ))
-- \deb|Add0~10\ = CARRY(( \deb|counter\(3) ) + ( GND ) + ( \deb|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \deb|ALT_INV_counter\(3),
	cin => \deb|Add0~14\,
	sumout => \deb|Add0~9_sumout\,
	cout => \deb|Add0~10\);

-- Location: FF_X32_Y2_N11
\deb|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_clock~inputCLKENA0_outclk\,
	d => \deb|Add0~9_sumout\,
	clrn => \reset_debouncer~input_o\,
	sclr => \deb|always0~0_combout\,
	ena => \deb|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb|counter\(3));

-- Location: LABCELL_X32_Y2_N12
\deb|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|Add0~5_sumout\ = SUM(( \deb|counter\(4) ) + ( GND ) + ( \deb|Add0~10\ ))
-- \deb|Add0~6\ = CARRY(( \deb|counter\(4) ) + ( GND ) + ( \deb|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \deb|ALT_INV_counter\(4),
	cin => \deb|Add0~10\,
	sumout => \deb|Add0~5_sumout\,
	cout => \deb|Add0~6\);

-- Location: FF_X32_Y2_N14
\deb|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_clock~inputCLKENA0_outclk\,
	d => \deb|Add0~5_sumout\,
	clrn => \reset_debouncer~input_o\,
	sclr => \deb|always0~0_combout\,
	ena => \deb|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb|counter\(4));

-- Location: LABCELL_X32_Y2_N15
\deb|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|Add0~41_sumout\ = SUM(( \deb|counter\(5) ) + ( GND ) + ( \deb|Add0~6\ ))
-- \deb|Add0~42\ = CARRY(( \deb|counter\(5) ) + ( GND ) + ( \deb|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \deb|ALT_INV_counter\(5),
	cin => \deb|Add0~6\,
	sumout => \deb|Add0~41_sumout\,
	cout => \deb|Add0~42\);

-- Location: FF_X32_Y2_N17
\deb|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_clock~inputCLKENA0_outclk\,
	d => \deb|Add0~41_sumout\,
	clrn => \reset_debouncer~input_o\,
	sclr => \deb|always0~0_combout\,
	ena => \deb|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb|counter\(5));

-- Location: LABCELL_X32_Y2_N18
\deb|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|Add0~37_sumout\ = SUM(( \deb|counter\(6) ) + ( GND ) + ( \deb|Add0~42\ ))
-- \deb|Add0~38\ = CARRY(( \deb|counter\(6) ) + ( GND ) + ( \deb|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \deb|ALT_INV_counter\(6),
	cin => \deb|Add0~42\,
	sumout => \deb|Add0~37_sumout\,
	cout => \deb|Add0~38\);

-- Location: FF_X32_Y2_N20
\deb|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_clock~inputCLKENA0_outclk\,
	d => \deb|Add0~37_sumout\,
	clrn => \reset_debouncer~input_o\,
	sclr => \deb|always0~0_combout\,
	ena => \deb|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb|counter\(6));

-- Location: LABCELL_X32_Y2_N21
\deb|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|Add0~33_sumout\ = SUM(( \deb|counter\(7) ) + ( GND ) + ( \deb|Add0~38\ ))
-- \deb|Add0~34\ = CARRY(( \deb|counter\(7) ) + ( GND ) + ( \deb|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \deb|ALT_INV_counter\(7),
	cin => \deb|Add0~38\,
	sumout => \deb|Add0~33_sumout\,
	cout => \deb|Add0~34\);

-- Location: FF_X32_Y2_N23
\deb|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_clock~inputCLKENA0_outclk\,
	d => \deb|Add0~33_sumout\,
	clrn => \reset_debouncer~input_o\,
	sclr => \deb|always0~0_combout\,
	ena => \deb|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb|counter\(7));

-- Location: LABCELL_X32_Y2_N24
\deb|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|Add0~29_sumout\ = SUM(( \deb|counter\(8) ) + ( GND ) + ( \deb|Add0~34\ ))
-- \deb|Add0~30\ = CARRY(( \deb|counter\(8) ) + ( GND ) + ( \deb|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \deb|ALT_INV_counter\(8),
	cin => \deb|Add0~34\,
	sumout => \deb|Add0~29_sumout\,
	cout => \deb|Add0~30\);

-- Location: FF_X32_Y2_N26
\deb|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_clock~inputCLKENA0_outclk\,
	d => \deb|Add0~29_sumout\,
	clrn => \reset_debouncer~input_o\,
	sclr => \deb|always0~0_combout\,
	ena => \deb|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb|counter\(8));

-- Location: LABCELL_X32_Y2_N27
\deb|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|Add0~25_sumout\ = SUM(( \deb|counter\(9) ) + ( GND ) + ( \deb|Add0~30\ ))
-- \deb|Add0~26\ = CARRY(( \deb|counter\(9) ) + ( GND ) + ( \deb|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \deb|ALT_INV_counter\(9),
	cin => \deb|Add0~30\,
	sumout => \deb|Add0~25_sumout\,
	cout => \deb|Add0~26\);

-- Location: FF_X32_Y2_N29
\deb|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_clock~inputCLKENA0_outclk\,
	d => \deb|Add0~25_sumout\,
	clrn => \reset_debouncer~input_o\,
	sclr => \deb|always0~0_combout\,
	ena => \deb|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb|counter\(9));

-- Location: LABCELL_X32_Y2_N30
\deb|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|Add0~21_sumout\ = SUM(( \deb|counter\(10) ) + ( GND ) + ( \deb|Add0~26\ ))
-- \deb|Add0~22\ = CARRY(( \deb|counter\(10) ) + ( GND ) + ( \deb|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \deb|ALT_INV_counter\(10),
	cin => \deb|Add0~26\,
	sumout => \deb|Add0~21_sumout\,
	cout => \deb|Add0~22\);

-- Location: FF_X32_Y2_N32
\deb|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_clock~inputCLKENA0_outclk\,
	d => \deb|Add0~21_sumout\,
	clrn => \reset_debouncer~input_o\,
	sclr => \deb|always0~0_combout\,
	ena => \deb|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb|counter\(10));

-- Location: LABCELL_X32_Y2_N33
\deb|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|Add0~1_sumout\ = SUM(( \deb|counter\(11) ) + ( GND ) + ( \deb|Add0~22\ ))
-- \deb|Add0~2\ = CARRY(( \deb|counter\(11) ) + ( GND ) + ( \deb|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deb|ALT_INV_counter\(11),
	cin => \deb|Add0~22\,
	sumout => \deb|Add0~1_sumout\,
	cout => \deb|Add0~2\);

-- Location: FF_X32_Y2_N35
\deb|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_clock~inputCLKENA0_outclk\,
	d => \deb|Add0~1_sumout\,
	clrn => \reset_debouncer~input_o\,
	sclr => \deb|always0~0_combout\,
	ena => \deb|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb|counter\(11));

-- Location: LABCELL_X32_Y2_N36
\deb|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|Add0~61_sumout\ = SUM(( \deb|counter\(12) ) + ( GND ) + ( \deb|Add0~2\ ))
-- \deb|Add0~62\ = CARRY(( \deb|counter\(12) ) + ( GND ) + ( \deb|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \deb|ALT_INV_counter\(12),
	cin => \deb|Add0~2\,
	sumout => \deb|Add0~61_sumout\,
	cout => \deb|Add0~62\);

-- Location: FF_X32_Y2_N38
\deb|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_clock~inputCLKENA0_outclk\,
	d => \deb|Add0~61_sumout\,
	clrn => \reset_debouncer~input_o\,
	sclr => \deb|always0~0_combout\,
	ena => \deb|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb|counter\(12));

-- Location: LABCELL_X32_Y2_N39
\deb|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|Add0~57_sumout\ = SUM(( \deb|counter\(13) ) + ( GND ) + ( \deb|Add0~62\ ))
-- \deb|Add0~58\ = CARRY(( \deb|counter\(13) ) + ( GND ) + ( \deb|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \deb|ALT_INV_counter\(13),
	cin => \deb|Add0~62\,
	sumout => \deb|Add0~57_sumout\,
	cout => \deb|Add0~58\);

-- Location: FF_X32_Y2_N41
\deb|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_clock~inputCLKENA0_outclk\,
	d => \deb|Add0~57_sumout\,
	clrn => \reset_debouncer~input_o\,
	sclr => \deb|always0~0_combout\,
	ena => \deb|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb|counter\(13));

-- Location: LABCELL_X32_Y2_N42
\deb|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|Add0~53_sumout\ = SUM(( \deb|counter\(14) ) + ( GND ) + ( \deb|Add0~58\ ))
-- \deb|Add0~54\ = CARRY(( \deb|counter\(14) ) + ( GND ) + ( \deb|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \deb|ALT_INV_counter\(14),
	cin => \deb|Add0~58\,
	sumout => \deb|Add0~53_sumout\,
	cout => \deb|Add0~54\);

-- Location: FF_X32_Y2_N44
\deb|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_clock~inputCLKENA0_outclk\,
	d => \deb|Add0~53_sumout\,
	clrn => \reset_debouncer~input_o\,
	sclr => \deb|always0~0_combout\,
	ena => \deb|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb|counter\(14));

-- Location: LABCELL_X32_Y2_N45
\deb|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|Add0~49_sumout\ = SUM(( \deb|counter\(15) ) + ( GND ) + ( \deb|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \deb|ALT_INV_counter\(15),
	cin => \deb|Add0~54\,
	sumout => \deb|Add0~49_sumout\);

-- Location: FF_X32_Y2_N47
\deb|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_clock~inputCLKENA0_outclk\,
	d => \deb|Add0~49_sumout\,
	clrn => \reset_debouncer~input_o\,
	sclr => \deb|always0~0_combout\,
	ena => \deb|out_key~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb|counter\(15));

-- Location: LABCELL_X31_Y2_N45
\deb|out_key~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|out_key~7_combout\ = ( \deb|counter\(15) & ( (\deb|counter\(13) & (\deb|counter\(14) & (\deb|counter\(0) & \deb|counter\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deb|ALT_INV_counter\(13),
	datab => \deb|ALT_INV_counter\(14),
	datac => \deb|ALT_INV_counter\(0),
	datad => \deb|ALT_INV_counter\(12),
	dataf => \deb|ALT_INV_counter\(15),
	combout => \deb|out_key~7_combout\);

-- Location: LABCELL_X31_Y2_N6
\deb|out_key~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|out_key~6_combout\ = ( \deb|counter\(6) & ( \deb|counter\(9) & ( (\deb|counter\(5) & (\deb|counter\(10) & (\deb|counter\(7) & \deb|counter\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deb|ALT_INV_counter\(5),
	datab => \deb|ALT_INV_counter\(10),
	datac => \deb|ALT_INV_counter\(7),
	datad => \deb|ALT_INV_counter\(8),
	datae => \deb|ALT_INV_counter\(6),
	dataf => \deb|ALT_INV_counter\(9),
	combout => \deb|out_key~6_combout\);

-- Location: LABCELL_X32_Y1_N36
\deb|out_key~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|out_key~5_combout\ = ( \deb|counter\(4) & ( \deb|counter\(3) & ( (\deb|counter\(2) & \deb|counter\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \deb|ALT_INV_counter\(2),
	datad => \deb|ALT_INV_counter\(1),
	datae => \deb|ALT_INV_counter\(4),
	dataf => \deb|ALT_INV_counter\(3),
	combout => \deb|out_key~5_combout\);

-- Location: LABCELL_X32_Y2_N48
\deb|out_key~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|out_key~8_combout\ = ( \deb|out_key~6_combout\ & ( \deb|out_key~5_combout\ & ( (!\deb|out_key~7_combout\) # ((!\deb|counter\(11)) # (!\clock~input_o\ $ (!\deb|intermediate~0_combout\))) ) ) ) # ( !\deb|out_key~6_combout\ & ( \deb|out_key~5_combout\ ) 
-- ) # ( \deb|out_key~6_combout\ & ( !\deb|out_key~5_combout\ ) ) # ( !\deb|out_key~6_combout\ & ( !\deb|out_key~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clock~input_o\,
	datab => \deb|ALT_INV_intermediate~0_combout\,
	datac => \deb|ALT_INV_out_key~7_combout\,
	datad => \deb|ALT_INV_counter\(11),
	datae => \deb|ALT_INV_out_key~6_combout\,
	dataf => \deb|ALT_INV_out_key~5_combout\,
	combout => \deb|out_key~8_combout\);

-- Location: LABCELL_X31_Y2_N24
\deb|out_key~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|out_key~3_combout\ = ( \deb|intermediate~0_combout\ & ( !\deb|out_key~1_combout\ $ (((!\deb|out_key~2_combout\ & \deb|out_key~8_combout\))) ) ) # ( !\deb|intermediate~0_combout\ & ( !\deb|out_key~1_combout\ $ (((!\deb|out_key~2_combout\) # 
-- (!\deb|out_key~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101010101010010110101010101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deb|ALT_INV_out_key~1_combout\,
	datac => \deb|ALT_INV_out_key~2_combout\,
	datad => \deb|ALT_INV_out_key~8_combout\,
	dataf => \deb|ALT_INV_intermediate~0_combout\,
	combout => \deb|out_key~3_combout\);

-- Location: FF_X31_Y2_N26
\deb|out_key~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pin_clock~inputCLKENA0_outclk\,
	d => \deb|out_key~3_combout\,
	clrn => \reset_debouncer~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb|out_key~_emulated_q\);

-- Location: LABCELL_X31_Y2_N27
\deb|out_key~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \deb|out_key~2_combout\ = ( \deb|out_key~_emulated_q\ & ( (!\reset_debouncer~input_o\ & ((\clock~input_o\))) # (\reset_debouncer~input_o\ & (!\deb|out_key~1_combout\)) ) ) # ( !\deb|out_key~_emulated_q\ & ( (!\reset_debouncer~input_o\ & 
-- ((\clock~input_o\))) # (\reset_debouncer~input_o\ & (\deb|out_key~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111110011000000111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \deb|ALT_INV_out_key~1_combout\,
	datac => \ALT_INV_clock~input_o\,
	datad => \ALT_INV_reset_debouncer~input_o\,
	dataf => \deb|ALT_INV_out_key~_emulated_q\,
	combout => \deb|out_key~2_combout\);

-- Location: IOIBUF_X33_Y0_N41
\Master_clear~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Master_clear,
	o => \Master_clear~input_o\);

-- Location: LABCELL_X29_Y2_N36
\inst1|inst8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst8~0_combout\ = ( \inst1|inst2~2_combout\ & ( !\inst1|inst8~q\ $ (((!\inst1|inst1~2_combout\) # ((!\inst1|inst3~2_combout\) # (!\inst1|inst~2_combout\)))) ) ) # ( !\inst1|inst2~2_combout\ & ( \inst1|inst8~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000111100000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_inst1~2_combout\,
	datab => \inst1|ALT_INV_inst3~2_combout\,
	datac => \inst1|ALT_INV_inst8~q\,
	datad => \inst1|ALT_INV_inst~2_combout\,
	dataf => \inst1|ALT_INV_inst2~2_combout\,
	combout => \inst1|inst8~0_combout\);

-- Location: LABCELL_X29_Y2_N45
\unitC|inst8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \unitC|inst8~0_combout\ = ( \Master_clear~input_o\ ) # ( !\Master_clear~input_o\ & ( (!\inst10|altsyncram_component|auto_generated|q_a\(10) & \inst10|altsyncram_component|auto_generated|q_a\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \ALT_INV_Master_clear~input_o\,
	combout => \unitC|inst8~0_combout\);

-- Location: FF_X29_Y2_N23
\inst1|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deb|out_key~2_combout\,
	asdata => \inst1|inst8~0_combout\,
	clrn => \unitC|ALT_INV_inst8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8~q\);

-- Location: LABCELL_X29_Y2_N18
\inst1|inst9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst9~0_combout\ = ( \inst1|inst9~q\ & ( \inst1|inst2~2_combout\ & ( (!\inst1|inst1~2_combout\) # ((!\inst1|inst8~q\) # ((!\inst1|inst~2_combout\) # (!\inst1|inst3~2_combout\))) ) ) ) # ( !\inst1|inst9~q\ & ( \inst1|inst2~2_combout\ & ( 
-- (\inst1|inst1~2_combout\ & (\inst1|inst8~q\ & (\inst1|inst~2_combout\ & \inst1|inst3~2_combout\))) ) ) ) # ( \inst1|inst9~q\ & ( !\inst1|inst2~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_inst1~2_combout\,
	datab => \inst1|ALT_INV_inst8~q\,
	datac => \inst1|ALT_INV_inst~2_combout\,
	datad => \inst1|ALT_INV_inst3~2_combout\,
	datae => \inst1|ALT_INV_inst9~q\,
	dataf => \inst1|ALT_INV_inst2~2_combout\,
	combout => \inst1|inst9~0_combout\);

-- Location: FF_X29_Y2_N14
\inst1|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deb|out_key~2_combout\,
	asdata => \inst1|inst9~0_combout\,
	clrn => \unitC|ALT_INV_inst8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9~q\);

-- Location: LABCELL_X29_Y2_N30
\inst1|inst13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst13~combout\ = ( \inst1|inst3~2_combout\ & ( (\inst1|inst1~2_combout\ & (\inst1|inst8~q\ & (\inst1|inst~2_combout\ & \inst1|inst2~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_inst1~2_combout\,
	datab => \inst1|ALT_INV_inst8~q\,
	datac => \inst1|ALT_INV_inst~2_combout\,
	datad => \inst1|ALT_INV_inst2~2_combout\,
	dataf => \inst1|ALT_INV_inst3~2_combout\,
	combout => \inst1|inst13~combout\);

-- Location: LABCELL_X29_Y2_N12
\inst1|inst10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst10~0_combout\ = ( \inst1|inst13~combout\ & ( !\inst1|inst10~q\ $ (!\inst1|inst9~q\) ) ) # ( !\inst1|inst13~combout\ & ( \inst1|inst10~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst10~q\,
	datad => \inst1|ALT_INV_inst9~q\,
	dataf => \inst1|ALT_INV_inst13~combout\,
	combout => \inst1|inst10~0_combout\);

-- Location: FF_X29_Y2_N56
\inst1|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deb|out_key~2_combout\,
	asdata => \inst1|inst10~0_combout\,
	clrn => \unitC|ALT_INV_inst8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst10~q\);

-- Location: LABCELL_X29_Y2_N3
\inst1|inst11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst11~0_combout\ = ( \inst1|inst13~combout\ & ( !\inst1|inst11~q\ $ (((!\inst1|inst10~q\) # (!\inst1|inst9~q\))) ) ) # ( !\inst1|inst13~combout\ & ( \inst1|inst11~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010110010101100101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_inst11~q\,
	datab => \inst1|ALT_INV_inst10~q\,
	datac => \inst1|ALT_INV_inst9~q\,
	dataf => \inst1|ALT_INV_inst13~combout\,
	combout => \inst1|inst11~0_combout\);

-- Location: FF_X29_Y2_N29
\inst1|inst11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deb|out_key~2_combout\,
	asdata => \inst1|inst11~0_combout\,
	clrn => \unitC|ALT_INV_inst8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst11~q\);

-- Location: M10K_X30_Y2_N0
\inst10|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000600306200093020610106302090020000000000000000000000C0D0040009003060020900206305062010910206004",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../Mem02.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROMEU:inst10|altsyncram:altsyncram_component|altsyncram_j224:auto_generated|ALTSYNCRAM",
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
	clk0 => \deb|ALT_INV_out_key~2_combout\,
	portaaddr => \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X29_Y2_N42
\inst1|inst50\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst50~combout\ = ( \deb|out_key~2_combout\ & ( ((\inst10|altsyncram_component|auto_generated|q_a\(11) & ((!\inst10|altsyncram_component|auto_generated|q_a\(10)) # (!\inst10|altsyncram_component|auto_generated|q_a\(3))))) # (\Master_clear~input_o\) 
-- ) ) # ( !\deb|out_key~2_combout\ & ( ((!\inst10|altsyncram_component|auto_generated|q_a\(10) & \inst10|altsyncram_component|auto_generated|q_a\(11))) # (\Master_clear~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110101011111010111010101111101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Master_clear~input_o\,
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	dataf => \deb|ALT_INV_out_key~2_combout\,
	combout => \inst1|inst50~combout\);

-- Location: LABCELL_X29_Y2_N6
\inst1|inst19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst19~combout\ = ( \deb|out_key~2_combout\ & ( (\inst10|altsyncram_component|auto_generated|q_a\(11) & (\inst10|altsyncram_component|auto_generated|q_a\(3) & \inst10|altsyncram_component|auto_generated|q_a\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	dataf => \deb|ALT_INV_out_key~2_combout\,
	combout => \inst1|inst19~combout\);

-- Location: LABCELL_X29_Y2_N0
\inst1|inst3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3~1_combout\ = ( \inst1|inst19~combout\ & ( !\inst1|inst50~combout\ ) ) # ( !\inst1|inst19~combout\ & ( (!\inst1|inst50~combout\ & \inst1|inst3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst50~combout\,
	datad => \inst1|ALT_INV_inst3~1_combout\,
	dataf => \inst1|ALT_INV_inst19~combout\,
	combout => \inst1|inst3~1_combout\);

-- Location: MLABCELL_X28_Y2_N6
\inst1|inst3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3~3_combout\ = ( \inst1|inst3~2_combout\ & ( !\inst1|inst3~1_combout\ $ (((\inst1|inst1~2_combout\ & (\inst1|inst2~2_combout\ & \inst1|inst~2_combout\)))) ) ) # ( !\inst1|inst3~2_combout\ & ( !\inst1|inst3~1_combout\ $ 
-- (((!\inst1|inst1~2_combout\) # ((!\inst1|inst2~2_combout\) # (!\inst1|inst~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011110000011110001111011110000111000011111000011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_inst1~2_combout\,
	datab => \inst1|ALT_INV_inst2~2_combout\,
	datac => \inst1|ALT_INV_inst3~1_combout\,
	datad => \inst1|ALT_INV_inst~2_combout\,
	dataf => \inst1|ALT_INV_inst3~2_combout\,
	combout => \inst1|inst3~3_combout\);

-- Location: LABCELL_X29_Y2_N39
\inst1|inst3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3~0_combout\ = ( \inst1|inst50~combout\ ) # ( !\inst1|inst50~combout\ & ( \inst1|inst19~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_inst19~combout\,
	dataf => \inst1|ALT_INV_inst50~combout\,
	combout => \inst1|inst3~0_combout\);

-- Location: FF_X28_Y2_N7
\inst1|inst3~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deb|out_key~2_combout\,
	d => \inst1|inst3~3_combout\,
	clrn => \inst1|ALT_INV_inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3~_emulated_q\);

-- Location: LABCELL_X29_Y2_N15
\inst1|inst3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst3~2_combout\ = ( \inst1|inst19~combout\ & ( !\inst1|inst50~combout\ ) ) # ( !\inst1|inst19~combout\ & ( (!\inst1|inst50~combout\ & (!\inst1|inst3~_emulated_q\ $ (!\inst1|inst3~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000010001001000100011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_inst3~_emulated_q\,
	datab => \inst1|ALT_INV_inst50~combout\,
	datad => \inst1|ALT_INV_inst3~1_combout\,
	dataf => \inst1|ALT_INV_inst19~combout\,
	combout => \inst1|inst3~2_combout\);

-- Location: LABCELL_X29_Y2_N51
\inst1|inst18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst18~combout\ = ( \deb|out_key~2_combout\ & ( (\inst10|altsyncram_component|auto_generated|q_a\(2) & (\inst10|altsyncram_component|auto_generated|q_a\(11) & \inst10|altsyncram_component|auto_generated|q_a\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	dataf => \deb|ALT_INV_out_key~2_combout\,
	combout => \inst1|inst18~combout\);

-- Location: LABCELL_X29_Y2_N24
\inst1|inst49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst49~combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(2) & ( \deb|out_key~2_combout\ & ( ((\inst10|altsyncram_component|auto_generated|q_a\(11) & !\inst10|altsyncram_component|auto_generated|q_a\(10))) # (\Master_clear~input_o\) ) ) 
-- ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(2) & ( \deb|out_key~2_combout\ & ( (\Master_clear~input_o\) # (\inst10|altsyncram_component|auto_generated|q_a\(11)) ) ) ) # ( \inst10|altsyncram_component|auto_generated|q_a\(2) & ( 
-- !\deb|out_key~2_combout\ & ( ((\inst10|altsyncram_component|auto_generated|q_a\(11) & !\inst10|altsyncram_component|auto_generated|q_a\(10))) # (\Master_clear~input_o\) ) ) ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(2) & ( 
-- !\deb|out_key~2_combout\ & ( ((\inst10|altsyncram_component|auto_generated|q_a\(11) & !\inst10|altsyncram_component|auto_generated|q_a\(10))) # (\Master_clear~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001111001111110000111100111111001111110011111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \ALT_INV_Master_clear~input_o\,
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datae => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \deb|ALT_INV_out_key~2_combout\,
	combout => \inst1|inst49~combout\);

-- Location: MLABCELL_X28_Y2_N15
\inst1|inst2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2~1_combout\ = ( \inst1|inst2~1_combout\ & ( !\inst1|inst49~combout\ ) ) # ( !\inst1|inst2~1_combout\ & ( (\inst1|inst18~combout\ & !\inst1|inst49~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst18~combout\,
	datad => \inst1|ALT_INV_inst49~combout\,
	dataf => \inst1|ALT_INV_inst2~1_combout\,
	combout => \inst1|inst2~1_combout\);

-- Location: LABCELL_X29_Y2_N9
\inst1|inst2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2~3_combout\ = ( \inst1|inst2~2_combout\ & ( !\inst1|inst2~1_combout\ $ (((\inst1|inst~2_combout\ & \inst1|inst1~2_combout\))) ) ) # ( !\inst1|inst2~2_combout\ & ( !\inst1|inst2~1_combout\ $ (((!\inst1|inst~2_combout\) # 
-- (!\inst1|inst1~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110011111100000000111111110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_inst~2_combout\,
	datac => \inst1|ALT_INV_inst1~2_combout\,
	datad => \inst1|ALT_INV_inst2~1_combout\,
	dataf => \inst1|ALT_INV_inst2~2_combout\,
	combout => \inst1|inst2~3_combout\);

-- Location: LABCELL_X29_Y2_N33
\inst1|inst2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2~0_combout\ = ( \inst1|inst18~combout\ ) # ( !\inst1|inst18~combout\ & ( \inst1|inst49~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst49~combout\,
	dataf => \inst1|ALT_INV_inst18~combout\,
	combout => \inst1|inst2~0_combout\);

-- Location: FF_X29_Y2_N34
\inst1|inst2~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deb|out_key~2_combout\,
	asdata => \inst1|inst2~3_combout\,
	clrn => \inst1|ALT_INV_inst2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2~_emulated_q\);

-- Location: LABCELL_X29_Y2_N57
\inst1|inst2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst2~2_combout\ = ( \inst1|inst18~combout\ & ( !\inst1|inst49~combout\ ) ) # ( !\inst1|inst18~combout\ & ( (!\inst1|inst49~combout\ & (!\inst1|inst2~_emulated_q\ $ (!\inst1|inst2~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000010001001000100011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_inst2~_emulated_q\,
	datab => \inst1|ALT_INV_inst49~combout\,
	datad => \inst1|ALT_INV_inst2~1_combout\,
	dataf => \inst1|ALT_INV_inst18~combout\,
	combout => \inst1|inst2~2_combout\);

-- Location: LABCELL_X31_Y2_N33
\inst1|inst44\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst44~combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(11) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(10)) # (((\deb|out_key~2_combout\ & !\inst10|altsyncram_component|auto_generated|q_a\(1))) # (\Master_clear~input_o\)) ) 
-- ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(11) & ( \Master_clear~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001110111111101110111011111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datab => \ALT_INV_Master_clear~input_o\,
	datac => \deb|ALT_INV_out_key~2_combout\,
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \inst1|inst44~combout\);

-- Location: LABCELL_X31_Y2_N51
\inst1|inst17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst17~combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(11) & ( (\inst10|altsyncram_component|auto_generated|q_a\(10) & (\deb|out_key~2_combout\ & \inst10|altsyncram_component|auto_generated|q_a\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datac => \deb|ALT_INV_out_key~2_combout\,
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \inst1|inst17~combout\);

-- Location: LABCELL_X31_Y2_N48
\inst1|inst1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1~1_combout\ = ( \inst1|inst1~1_combout\ & ( !\inst1|inst44~combout\ ) ) # ( !\inst1|inst1~1_combout\ & ( (\inst1|inst17~combout\ & !\inst1|inst44~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_inst17~combout\,
	datac => \inst1|ALT_INV_inst44~combout\,
	dataf => \inst1|ALT_INV_inst1~1_combout\,
	combout => \inst1|inst1~1_combout\);

-- Location: LABCELL_X31_Y1_N15
\inst1|inst1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1~3_combout\ = ( \inst1|inst~2_combout\ & ( \inst1|inst1~2_combout\ & ( \inst1|inst1~1_combout\ ) ) ) # ( !\inst1|inst~2_combout\ & ( \inst1|inst1~2_combout\ & ( !\inst1|inst1~1_combout\ ) ) ) # ( \inst1|inst~2_combout\ & ( 
-- !\inst1|inst1~2_combout\ & ( !\inst1|inst1~1_combout\ ) ) ) # ( !\inst1|inst~2_combout\ & ( !\inst1|inst1~2_combout\ & ( \inst1|inst1~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_inst1~1_combout\,
	datae => \inst1|ALT_INV_inst~2_combout\,
	dataf => \inst1|ALT_INV_inst1~2_combout\,
	combout => \inst1|inst1~3_combout\);

-- Location: LABCELL_X31_Y2_N42
\inst1|inst1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1~0_combout\ = ( \inst1|inst44~combout\ ) # ( !\inst1|inst44~combout\ & ( \inst1|inst17~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_inst17~combout\,
	dataf => \inst1|ALT_INV_inst44~combout\,
	combout => \inst1|inst1~0_combout\);

-- Location: FF_X31_Y1_N16
\inst1|inst1~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deb|out_key~2_combout\,
	d => \inst1|inst1~3_combout\,
	clrn => \inst1|ALT_INV_inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1~_emulated_q\);

-- Location: LABCELL_X31_Y2_N3
\inst1|inst1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1~2_combout\ = ( \inst1|inst1~_emulated_q\ & ( (!\inst1|inst44~combout\ & ((!\inst1|inst1~1_combout\) # (\inst1|inst17~combout\))) ) ) # ( !\inst1|inst1~_emulated_q\ & ( (!\inst1|inst44~combout\ & ((\inst1|inst1~1_combout\) # 
-- (\inst1|inst17~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101010100010101000101010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_inst44~combout\,
	datab => \inst1|ALT_INV_inst17~combout\,
	datac => \inst1|ALT_INV_inst1~1_combout\,
	dataf => \inst1|ALT_INV_inst1~_emulated_q\,
	combout => \inst1|inst1~2_combout\);

-- Location: LABCELL_X31_Y2_N54
\inst1|inst24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst24~combout\ = ( \deb|out_key~2_combout\ & ( \inst10|altsyncram_component|auto_generated|q_a\(0) & ( ((!\inst10|altsyncram_component|auto_generated|q_a\(10) & \inst10|altsyncram_component|auto_generated|q_a\(11))) # (\Master_clear~input_o\) ) ) 
-- ) # ( !\deb|out_key~2_combout\ & ( \inst10|altsyncram_component|auto_generated|q_a\(0) & ( ((!\inst10|altsyncram_component|auto_generated|q_a\(10) & \inst10|altsyncram_component|auto_generated|q_a\(11))) # (\Master_clear~input_o\) ) ) ) # ( 
-- \deb|out_key~2_combout\ & ( !\inst10|altsyncram_component|auto_generated|q_a\(0) & ( (\inst10|altsyncram_component|auto_generated|q_a\(11)) # (\Master_clear~input_o\) ) ) ) # ( !\deb|out_key~2_combout\ & ( 
-- !\inst10|altsyncram_component|auto_generated|q_a\(0) & ( ((!\inst10|altsyncram_component|auto_generated|q_a\(10) & \inst10|altsyncram_component|auto_generated|q_a\(11))) # (\Master_clear~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110101010101011111111101010101111101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Master_clear~input_o\,
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datae => \deb|ALT_INV_out_key~2_combout\,
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst1|inst24~combout\);

-- Location: LABCELL_X31_Y2_N18
\inst1|inst16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst16~combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(0) & ( (\deb|out_key~2_combout\ & (\inst10|altsyncram_component|auto_generated|q_a\(10) & \inst10|altsyncram_component|auto_generated|q_a\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \deb|ALT_INV_out_key~2_combout\,
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst1|inst16~combout\);

-- Location: MLABCELL_X28_Y2_N30
\inst1|inst~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst~1_combout\ = ( \inst1|inst~1_combout\ & ( !\inst1|inst24~combout\ ) ) # ( !\inst1|inst~1_combout\ & ( (!\inst1|inst24~combout\ & \inst1|inst16~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_inst24~combout\,
	datac => \inst1|ALT_INV_inst16~combout\,
	dataf => \inst1|ALT_INV_inst~1_combout\,
	combout => \inst1|inst~1_combout\);

-- Location: LABCELL_X31_Y2_N0
\inst1|inst~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst~3_combout\ = ( \inst1|inst~2_combout\ & ( \inst1|inst~1_combout\ ) ) # ( !\inst1|inst~2_combout\ & ( !\inst1|inst~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_inst~1_combout\,
	dataf => \inst1|ALT_INV_inst~2_combout\,
	combout => \inst1|inst~3_combout\);

-- Location: LABCELL_X31_Y2_N21
\inst1|inst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst~0_combout\ = ( \inst1|inst24~combout\ ) # ( !\inst1|inst24~combout\ & ( \inst1|inst16~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_inst16~combout\,
	dataf => \inst1|ALT_INV_inst24~combout\,
	combout => \inst1|inst~0_combout\);

-- Location: FF_X31_Y2_N23
\inst1|inst~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deb|out_key~2_combout\,
	asdata => \inst1|inst~3_combout\,
	clrn => \inst1|ALT_INV_inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst~_emulated_q\);

-- Location: LABCELL_X31_Y2_N12
\inst1|inst~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst~2_combout\ = ( !\inst1|inst24~combout\ & ( (!\inst1|inst~_emulated_q\ $ (!\inst1|inst~1_combout\)) # (\inst1|inst16~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111001111001111111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_inst~_emulated_q\,
	datac => \inst1|ALT_INV_inst16~combout\,
	datad => \inst1|ALT_INV_inst~1_combout\,
	dataf => \inst1|ALT_INV_inst24~combout\,
	combout => \inst1|inst~2_combout\);

-- Location: LABCELL_X35_Y2_N30
\inst12|53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|53~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(13) & (!\inst10|altsyncram_component|auto_generated|q_a\(15) $ (\inst10|altsyncram_component|auto_generated|q_a\(12)))) ) 
-- ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(14) & ( (\inst10|altsyncram_component|auto_generated|q_a\(12) & (!\inst10|altsyncram_component|auto_generated|q_a\(13) $ (\inst10|altsyncram_component|auto_generated|q_a\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100110000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst12|53~0_combout\);

-- Location: LABCELL_X35_Y2_N54
\inst12|50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|50~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(13) & (!\inst10|altsyncram_component|auto_generated|q_a\(15) $ (!\inst10|altsyncram_component|auto_generated|q_a\(12)))) 
-- # (\inst10|altsyncram_component|auto_generated|q_a\(13) & ((!\inst10|altsyncram_component|auto_generated|q_a\(12)) # (\inst10|altsyncram_component|auto_generated|q_a\(15)))) ) ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(14) & ( 
-- (\inst10|altsyncram_component|auto_generated|q_a\(13) & (\inst10|altsyncram_component|auto_generated|q_a\(15) & \inst10|altsyncram_component|auto_generated|q_a\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101111001011110010111100101111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst12|50~0_combout\);

-- Location: LABCELL_X35_Y2_N51
\inst12|54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|54~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(12) & ( (\inst10|altsyncram_component|auto_generated|q_a\(14) & (\inst10|altsyncram_component|auto_generated|q_a\(15) & \inst10|altsyncram_component|auto_generated|q_a\(13))) ) ) # 
-- ( !\inst10|altsyncram_component|auto_generated|q_a\(12) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(14) & (!\inst10|altsyncram_component|auto_generated|q_a\(15) & \inst10|altsyncram_component|auto_generated|q_a\(13))) # 
-- (\inst10|altsyncram_component|auto_generated|q_a\(14) & (\inst10|altsyncram_component|auto_generated|q_a\(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100101000001011010010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \inst12|54~0_combout\);

-- Location: LABCELL_X35_Y2_N3
\inst12|52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|52~0_combout\ = (!\inst10|altsyncram_component|auto_generated|q_a\(13) & (!\inst10|altsyncram_component|auto_generated|q_a\(15) & (!\inst10|altsyncram_component|auto_generated|q_a\(12) $ (!\inst10|altsyncram_component|auto_generated|q_a\(14))))) # 
-- (\inst10|altsyncram_component|auto_generated|q_a\(13) & ((!\inst10|altsyncram_component|auto_generated|q_a\(12) & (\inst10|altsyncram_component|auto_generated|q_a\(15) & !\inst10|altsyncram_component|auto_generated|q_a\(14))) # 
-- (\inst10|altsyncram_component|auto_generated|q_a\(12) & ((\inst10|altsyncram_component|auto_generated|q_a\(14))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000100101010010000010010101001000001001010100100000100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	combout => \inst12|52~0_combout\);

-- Location: LABCELL_X35_Y2_N45
\inst12|49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|49~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(13) & ( \inst10|altsyncram_component|auto_generated|q_a\(14) & ( (\inst10|altsyncram_component|auto_generated|q_a\(12) & !\inst10|altsyncram_component|auto_generated|q_a\(15)) ) ) 
-- ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(13) & ( \inst10|altsyncram_component|auto_generated|q_a\(14) & ( !\inst10|altsyncram_component|auto_generated|q_a\(15) ) ) ) # ( \inst10|altsyncram_component|auto_generated|q_a\(13) & ( 
-- !\inst10|altsyncram_component|auto_generated|q_a\(14) & ( (\inst10|altsyncram_component|auto_generated|q_a\(12) & !\inst10|altsyncram_component|auto_generated|q_a\(15)) ) ) ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(13) & ( 
-- !\inst10|altsyncram_component|auto_generated|q_a\(14) & ( \inst10|altsyncram_component|auto_generated|q_a\(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010000000011111111000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datae => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst12|49~0_combout\);

-- Location: LABCELL_X35_Y2_N6
\inst12|51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|51~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(13) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(15) & ((!\inst10|altsyncram_component|auto_generated|q_a\(14)) # (\inst10|altsyncram_component|auto_generated|q_a\(12)))) 
-- ) ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(13) & ( (\inst10|altsyncram_component|auto_generated|q_a\(12) & (!\inst10|altsyncram_component|auto_generated|q_a\(15) $ (\inst10|altsyncram_component|auto_generated|q_a\(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001111001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	combout => \inst12|51~0_combout\);

-- Location: LABCELL_X35_Y2_N0
\inst12|55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|55~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(14) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(12) & ((!\inst10|altsyncram_component|auto_generated|q_a\(15)) # (\inst10|altsyncram_component|auto_generated|q_a\(13)))) 
-- # (\inst10|altsyncram_component|auto_generated|q_a\(12) & ((!\inst10|altsyncram_component|auto_generated|q_a\(13)) # (\inst10|altsyncram_component|auto_generated|q_a\(15)))) ) ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(14) & ( 
-- (\inst10|altsyncram_component|auto_generated|q_a\(13)) # (\inst10|altsyncram_component|auto_generated|q_a\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111011011110110111101101111011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \inst12|55~0_combout\);

-- Location: LABCELL_X31_Y1_N24
\inst13|53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|53~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(9) & ( (\inst10|altsyncram_component|auto_generated|q_a\(8) & (\inst10|altsyncram_component|auto_generated|q_a\(11) & !\inst10|altsyncram_component|auto_generated|q_a\(10))) ) ) # 
-- ( !\inst10|altsyncram_component|auto_generated|q_a\(9) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(8) & (!\inst10|altsyncram_component|auto_generated|q_a\(11) & \inst10|altsyncram_component|auto_generated|q_a\(10))) # 
-- (\inst10|altsyncram_component|auto_generated|q_a\(8) & (!\inst10|altsyncram_component|auto_generated|q_a\(11) $ (\inst10|altsyncram_component|auto_generated|q_a\(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010011001010001001001100100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \inst13|53~0_combout\);

-- Location: LABCELL_X31_Y1_N21
\inst13|50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|50~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(10) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(9) & (!\inst10|altsyncram_component|auto_generated|q_a\(11) $ (!\inst10|altsyncram_component|auto_generated|q_a\(8)))) # 
-- (\inst10|altsyncram_component|auto_generated|q_a\(9) & ((!\inst10|altsyncram_component|auto_generated|q_a\(8)) # (\inst10|altsyncram_component|auto_generated|q_a\(11)))) ) ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(10) & ( 
-- (\inst10|altsyncram_component|auto_generated|q_a\(9) & (\inst10|altsyncram_component|auto_generated|q_a\(11) & \inst10|altsyncram_component|auto_generated|q_a\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101110111100110010111011110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \inst13|50~0_combout\);

-- Location: LABCELL_X31_Y1_N54
\inst13|54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|54~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(9) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(11) & (!\inst10|altsyncram_component|auto_generated|q_a\(8) & !\inst10|altsyncram_component|auto_generated|q_a\(10))) # 
-- (\inst10|altsyncram_component|auto_generated|q_a\(11) & ((\inst10|altsyncram_component|auto_generated|q_a\(10)))) ) ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(9) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(8) & 
-- (\inst10|altsyncram_component|auto_generated|q_a\(11) & \inst10|altsyncram_component|auto_generated|q_a\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010001000001100111000100000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \inst13|54~0_combout\);

-- Location: LABCELL_X31_Y1_N9
\inst13|52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|52~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(10) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(9) & (!\inst10|altsyncram_component|auto_generated|q_a\(11) & !\inst10|altsyncram_component|auto_generated|q_a\(8))) # 
-- (\inst10|altsyncram_component|auto_generated|q_a\(9) & ((\inst10|altsyncram_component|auto_generated|q_a\(8)))) ) ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(10) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(9) & 
-- (!\inst10|altsyncram_component|auto_generated|q_a\(11) & \inst10|altsyncram_component|auto_generated|q_a\(8))) # (\inst10|altsyncram_component|auto_generated|q_a\(9) & (\inst10|altsyncram_component|auto_generated|q_a\(11) & 
-- !\inst10|altsyncram_component|auto_generated|q_a\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110001000000100011000100010001000010101011000100001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \inst13|52~0_combout\);

-- Location: LABCELL_X31_Y1_N36
\inst13|49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|49~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(9) & ( (\inst10|altsyncram_component|auto_generated|q_a\(8) & !\inst10|altsyncram_component|auto_generated|q_a\(11)) ) ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(9) & 
-- ( (!\inst10|altsyncram_component|auto_generated|q_a\(10) & (\inst10|altsyncram_component|auto_generated|q_a\(8))) # (\inst10|altsyncram_component|auto_generated|q_a\(10) & ((!\inst10|altsyncram_component|auto_generated|q_a\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111001100010101011100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \inst13|49~0_combout\);

-- Location: LABCELL_X31_Y1_N48
\inst13|51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|51~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(9) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(11) & ((!\inst10|altsyncram_component|auto_generated|q_a\(10)) # (\inst10|altsyncram_component|auto_generated|q_a\(8)))) ) 
-- ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(9) & ( (\inst10|altsyncram_component|auto_generated|q_a\(8) & (!\inst10|altsyncram_component|auto_generated|q_a\(11) $ (\inst10|altsyncram_component|auto_generated|q_a\(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000010001010001000001000111001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \inst13|51~0_combout\);

-- Location: LABCELL_X31_Y1_N33
\inst13|55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|55~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(10) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(9) & ((!\inst10|altsyncram_component|auto_generated|q_a\(11)) # (\inst10|altsyncram_component|auto_generated|q_a\(8)))) # 
-- (\inst10|altsyncram_component|auto_generated|q_a\(9) & ((!\inst10|altsyncram_component|auto_generated|q_a\(8)) # (\inst10|altsyncram_component|auto_generated|q_a\(11)))) ) ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(10) & ( 
-- (\inst10|altsyncram_component|auto_generated|q_a\(11)) # (\inst10|altsyncram_component|auto_generated|q_a\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011111011101101110111101110110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \inst13|55~0_combout\);

-- Location: LABCELL_X40_Y1_N39
\inst14|53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|53~0_combout\ = (!\inst10|altsyncram_component|auto_generated|q_a\(6) & (\inst10|altsyncram_component|auto_generated|q_a\(4) & (!\inst10|altsyncram_component|auto_generated|q_a\(5) $ (\inst10|altsyncram_component|auto_generated|q_a\(7))))) # 
-- (\inst10|altsyncram_component|auto_generated|q_a\(6) & (!\inst10|altsyncram_component|auto_generated|q_a\(5) & (!\inst10|altsyncram_component|auto_generated|q_a\(7) $ (\inst10|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000110001000001000011000100000100001100010000010000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst14|53~0_combout\);

-- Location: LABCELL_X40_Y1_N54
\inst14|50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|50~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(6) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(5) & (!\inst10|altsyncram_component|auto_generated|q_a\(7) $ (!\inst10|altsyncram_component|auto_generated|q_a\(4)))) # 
-- (\inst10|altsyncram_component|auto_generated|q_a\(5) & ((!\inst10|altsyncram_component|auto_generated|q_a\(4)) # (\inst10|altsyncram_component|auto_generated|q_a\(7)))) ) ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(6) & ( 
-- (\inst10|altsyncram_component|auto_generated|q_a\(5) & (\inst10|altsyncram_component|auto_generated|q_a\(7) & \inst10|altsyncram_component|auto_generated|q_a\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001011110010111100100000001000000010111100101111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datae => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \inst14|50~0_combout\);

-- Location: LABCELL_X40_Y1_N27
\inst14|54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|54~0_combout\ = (!\inst10|altsyncram_component|auto_generated|q_a\(6) & (\inst10|altsyncram_component|auto_generated|q_a\(5) & (!\inst10|altsyncram_component|auto_generated|q_a\(7) & !\inst10|altsyncram_component|auto_generated|q_a\(4)))) # 
-- (\inst10|altsyncram_component|auto_generated|q_a\(6) & (\inst10|altsyncram_component|auto_generated|q_a\(7) & ((!\inst10|altsyncram_component|auto_generated|q_a\(4)) # (\inst10|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001100000001010000110000000101000011000000010100001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst14|54~0_combout\);

-- Location: LABCELL_X40_Y1_N6
\inst14|52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|52~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(6) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(5) & (!\inst10|altsyncram_component|auto_generated|q_a\(7) & !\inst10|altsyncram_component|auto_generated|q_a\(4))) # 
-- (\inst10|altsyncram_component|auto_generated|q_a\(5) & ((\inst10|altsyncram_component|auto_generated|q_a\(4)))) ) ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(6) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(5) & 
-- (!\inst10|altsyncram_component|auto_generated|q_a\(7) & \inst10|altsyncram_component|auto_generated|q_a\(4))) # (\inst10|altsyncram_component|auto_generated|q_a\(5) & (\inst10|altsyncram_component|auto_generated|q_a\(7) & 
-- !\inst10|altsyncram_component|auto_generated|q_a\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000100001011000010100011000000110001000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datae => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \inst14|52~0_combout\);

-- Location: LABCELL_X40_Y1_N15
\inst14|49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|49~0_combout\ = (!\inst10|altsyncram_component|auto_generated|q_a\(5) & ((!\inst10|altsyncram_component|auto_generated|q_a\(6) & ((\inst10|altsyncram_component|auto_generated|q_a\(4)))) # (\inst10|altsyncram_component|auto_generated|q_a\(6) & 
-- (!\inst10|altsyncram_component|auto_generated|q_a\(7))))) # (\inst10|altsyncram_component|auto_generated|q_a\(5) & (((!\inst10|altsyncram_component|auto_generated|q_a\(7) & \inst10|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011111000001000001111100000100000111110000010000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \inst14|49~0_combout\);

-- Location: LABCELL_X40_Y1_N18
\inst14|51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|51~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(6) & ( (\inst10|altsyncram_component|auto_generated|q_a\(4) & (!\inst10|altsyncram_component|auto_generated|q_a\(5) $ (!\inst10|altsyncram_component|auto_generated|q_a\(7)))) ) ) # 
-- ( !\inst10|altsyncram_component|auto_generated|q_a\(6) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(7) & ((\inst10|altsyncram_component|auto_generated|q_a\(4)) # (\inst10|altsyncram_component|auto_generated|q_a\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100000001100000011001001100010011000000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datae => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \inst14|51~0_combout\);

-- Location: LABCELL_X40_Y1_N48
\inst14|55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|55~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(6) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(5) & ((!\inst10|altsyncram_component|auto_generated|q_a\(7)) # (\inst10|altsyncram_component|auto_generated|q_a\(4)))) # 
-- (\inst10|altsyncram_component|auto_generated|q_a\(5) & ((!\inst10|altsyncram_component|auto_generated|q_a\(4)) # (\inst10|altsyncram_component|auto_generated|q_a\(7)))) ) ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(6) & ( 
-- (\inst10|altsyncram_component|auto_generated|q_a\(7)) # (\inst10|altsyncram_component|auto_generated|q_a\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111110110111101101101110111011101111101101111011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datae => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \inst14|55~0_combout\);

-- Location: MLABCELL_X28_Y2_N51
\inst15|53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|53~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(2) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(1) & (!\inst10|altsyncram_component|auto_generated|q_a\(3) $ (\inst10|altsyncram_component|auto_generated|q_a\(0)))) ) ) # 
-- ( !\inst10|altsyncram_component|auto_generated|q_a\(2) & ( (\inst10|altsyncram_component|auto_generated|q_a\(0) & (!\inst10|altsyncram_component|auto_generated|q_a\(3) $ (\inst10|altsyncram_component|auto_generated|q_a\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100110000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \inst15|53~0_combout\);

-- Location: MLABCELL_X28_Y2_N54
\inst15|50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|50~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(0) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(3) & (!\inst10|altsyncram_component|auto_generated|q_a\(1) & \inst10|altsyncram_component|auto_generated|q_a\(2))) # 
-- (\inst10|altsyncram_component|auto_generated|q_a\(3) & (\inst10|altsyncram_component|auto_generated|q_a\(1))) ) ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(0) & ( (\inst10|altsyncram_component|auto_generated|q_a\(2) & 
-- ((\inst10|altsyncram_component|auto_generated|q_a\(1)) # (\inst10|altsyncram_component|auto_generated|q_a\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst15|50~0_combout\);

-- Location: MLABCELL_X28_Y2_N39
\inst15|54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|54~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(2) & ( (\inst10|altsyncram_component|auto_generated|q_a\(3) & ((!\inst10|altsyncram_component|auto_generated|q_a\(0)) # (\inst10|altsyncram_component|auto_generated|q_a\(1)))) ) ) 
-- # ( !\inst10|altsyncram_component|auto_generated|q_a\(2) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(3) & (\inst10|altsyncram_component|auto_generated|q_a\(1) & !\inst10|altsyncram_component|auto_generated|q_a\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000001010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \inst15|54~0_combout\);

-- Location: LABCELL_X29_Y2_N48
\inst15|52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|52~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(0) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(2) & (!\inst10|altsyncram_component|auto_generated|q_a\(1) & !\inst10|altsyncram_component|auto_generated|q_a\(3))) # 
-- (\inst10|altsyncram_component|auto_generated|q_a\(2) & (\inst10|altsyncram_component|auto_generated|q_a\(1))) ) ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(0) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(2) & 
-- (\inst10|altsyncram_component|auto_generated|q_a\(1) & \inst10|altsyncram_component|auto_generated|q_a\(3))) # (\inst10|altsyncram_component|auto_generated|q_a\(2) & (!\inst10|altsyncram_component|auto_generated|q_a\(1) & 
-- !\inst10|altsyncram_component|auto_generated|q_a\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010010100000000101010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst15|52~0_combout\);

-- Location: MLABCELL_X28_Y2_N42
\inst15|49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|49~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(0) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(3)) # ((!\inst10|altsyncram_component|auto_generated|q_a\(1) & !\inst10|altsyncram_component|auto_generated|q_a\(2))) ) ) 
-- # ( !\inst10|altsyncram_component|auto_generated|q_a\(0) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(3) & (!\inst10|altsyncram_component|auto_generated|q_a\(1) & \inst10|altsyncram_component|auto_generated|q_a\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100011101010111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst15|49~0_combout\);

-- Location: LABCELL_X35_Y2_N9
\inst15|51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|51~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(2) & ( (\inst10|altsyncram_component|auto_generated|q_a\(0) & (!\inst10|altsyncram_component|auto_generated|q_a\(3) $ (!\inst10|altsyncram_component|auto_generated|q_a\(1)))) ) ) # 
-- ( !\inst10|altsyncram_component|auto_generated|q_a\(2) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(3) & ((\inst10|altsyncram_component|auto_generated|q_a\(0)) # (\inst10|altsyncram_component|auto_generated|q_a\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \inst15|51~0_combout\);

-- Location: MLABCELL_X28_Y2_N24
\inst15|55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|55~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(0) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(1) $ (!\inst10|altsyncram_component|auto_generated|q_a\(2))) # (\inst10|altsyncram_component|auto_generated|q_a\(3)) ) ) # 
-- ( !\inst10|altsyncram_component|auto_generated|q_a\(0) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(3) $ (!\inst10|altsyncram_component|auto_generated|q_a\(2))) # (\inst10|altsyncram_component|auto_generated|q_a\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101101111011011110110111101101111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst15|55~0_combout\);

-- Location: MLABCELL_X34_Y2_N21
\inst|inst4|inst16|inst4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst16|inst4~combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(0) & ( !\inst10|altsyncram_component|auto_generated|q_a\(1) $ (((!\inst10|altsyncram_component|auto_generated|q_a\(8) & 
-- !\inst10|altsyncram_component|auto_generated|q_a\(9)))) ) ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(0) & ( \inst10|altsyncram_component|auto_generated|q_a\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101011111101000000101111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst|inst4|inst16|inst4~combout\);

-- Location: MLABCELL_X34_Y2_N39
\inst|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst6~combout\ = ( !\inst10|altsyncram_component|auto_generated|q_a\(9) & ( !\inst10|altsyncram_component|auto_generated|q_a\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \inst|inst6~combout\);

-- Location: LABCELL_X31_Y2_N30
\unitC|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \unitC|inst6~combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(10) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(11)) # (\Master_clear~input_o\) ) ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(10) & ( 
-- (\inst10|altsyncram_component|auto_generated|q_a\(11)) # (\Master_clear~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Master_clear~input_o\,
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \unitC|inst6~combout\);

-- Location: LABCELL_X35_Y2_N21
\unitC|inst9\ : cyclonev_lcell_comb
-- Equation(s):
-- \unitC|inst9~combout\ = ( !\inst10|altsyncram_component|auto_generated|q_a\(14) & ( \inst10|altsyncram_component|auto_generated|q_a\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \unitC|inst9~combout\);

-- Location: FF_X34_Y2_N47
\regiB|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deb|out_key~2_combout\,
	asdata => \inst|inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\,
	clrn => \unitC|ALT_INV_inst6~combout\,
	sload => VCC,
	ena => \unitC|inst9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regiB|inst4~q\);

-- Location: MLABCELL_X34_Y2_N54
\inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \regiB|inst4~q\ & ( ((\inst10|altsyncram_component|auto_generated|q_a\(13) & !\inst10|altsyncram_component|auto_generated|q_a\(12))) # (\regiA|inst4~q\) ) ) # ( !\regiB|inst4~q\ & 
-- ( (\regiA|inst4~q\ & ((!\inst10|altsyncram_component|auto_generated|q_a\(13)) # (\inst10|altsyncram_component|auto_generated|q_a\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \regiA|ALT_INV_inst4~q\,
	dataf => \regiB|ALT_INV_inst4~q\,
	combout => \inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X31_Y2_N36
\inst|inst4|inst17|inst3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst17|inst3~combout\ = ( !\inst10|altsyncram_component|auto_generated|q_a\(0) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(1) & (!\inst10|altsyncram_component|auto_generated|q_a\(2) & 
-- ((\inst10|altsyncram_component|auto_generated|q_a\(9)) # (\inst10|altsyncram_component|auto_generated|q_a\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001000000010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst|inst4|inst17|inst3~combout\);

-- Location: LABCELL_X35_Y2_N48
\inst|inst|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\ = ( \inst|inst4|inst33~0_combout\ & ( (!\inst10|altsyncram_component|auto_generated|q_a\(8)) # ((\inst10|altsyncram_component|auto_generated|q_a\(9) & 
-- \inst10|altsyncram_component|auto_generated|q_a\(1))) ) ) # ( !\inst|inst4|inst33~0_combout\ & ( (\inst10|altsyncram_component|auto_generated|q_a\(9) & (\inst10|altsyncram_component|auto_generated|q_a\(8) & 
-- \inst10|altsyncram_component|auto_generated|q_a\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111110000111100111111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \inst|inst4|ALT_INV_inst33~0_combout\,
	combout => \inst|inst|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X35_Y2_N2
\regiB|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deb|out_key~2_combout\,
	asdata => \inst|inst|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\,
	clrn => \unitC|ALT_INV_inst6~combout\,
	sload => VCC,
	ena => \unitC|inst9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regiB|inst~q\);

-- Location: LABCELL_X35_Y2_N39
\unitC|inst10\ : cyclonev_lcell_comb
-- Equation(s):
-- \unitC|inst10~combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(14) & ( !\inst10|altsyncram_component|auto_generated|q_a\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \unitC|inst10~combout\);

-- Location: FF_X34_Y2_N2
\regiA|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deb|out_key~2_combout\,
	asdata => \inst|inst|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\,
	clrn => \unitC|ALT_INV_inst6~combout\,
	sload => VCC,
	ena => \unitC|inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regiA|inst~q\);

-- Location: LABCELL_X35_Y2_N15
\inst|inst4|inst33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst33~0_combout\ = ( \regiA|inst~q\ & ( \inst10|altsyncram_component|auto_generated|q_a\(13) & ( !\inst10|altsyncram_component|auto_generated|q_a\(0) $ (((!\regiB|inst~q\ & !\inst10|altsyncram_component|auto_generated|q_a\(12)))) ) ) ) # ( 
-- !\regiA|inst~q\ & ( \inst10|altsyncram_component|auto_generated|q_a\(13) & ( !\inst10|altsyncram_component|auto_generated|q_a\(0) $ (((!\regiB|inst~q\) # (\inst10|altsyncram_component|auto_generated|q_a\(12)))) ) ) ) # ( \regiA|inst~q\ & ( 
-- !\inst10|altsyncram_component|auto_generated|q_a\(13) & ( !\inst10|altsyncram_component|auto_generated|q_a\(0) ) ) ) # ( !\regiA|inst~q\ & ( !\inst10|altsyncram_component|auto_generated|q_a\(13) & ( \inst10|altsyncram_component|auto_generated|q_a\(0) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000001011010000011110101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regiB|ALT_INV_inst~q\,
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datae => \regiA|ALT_INV_inst~q\,
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	combout => \inst|inst4|inst33~0_combout\);

-- Location: MLABCELL_X34_Y2_N42
\inst|inst4|inst34|inst1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst34|inst1~0_combout\ = ( !\inst|inst4|inst33~0_combout\ & ( \inst|inst4|inst2|inst6~combout\ & ( (!\inst|inst4|inst17|inst3~combout\ & (!\inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- (\inst10|altsyncram_component|auto_generated|q_a\(3) & !\inst|inst6~combout\))) # (\inst|inst4|inst17|inst3~combout\ & (\inst|inst6~combout\ & ((!\inst10|altsyncram_component|auto_generated|q_a\(3)) # 
-- (\inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) ) ) # ( !\inst|inst4|inst33~0_combout\ & ( !\inst|inst4|inst2|inst6~combout\ & ( (!\inst10|altsyncram_component|auto_generated|q_a\(3) & ((!\inst|inst4|inst17|inst3~combout\ & 
-- (!\inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & !\inst|inst6~combout\)) # (\inst|inst4|inst17|inst3~combout\ & ((\inst|inst6~combout\))))) # (\inst10|altsyncram_component|auto_generated|q_a\(3) & (!\inst|inst6~combout\ & 
-- ((!\inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (!\inst|inst4|inst17|inst3~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001000001100000000000000000000100000000011010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \inst|inst4|inst17|ALT_INV_inst3~combout\,
	datad => \inst|ALT_INV_inst6~combout\,
	datae => \inst|inst4|ALT_INV_inst33~0_combout\,
	dataf => \inst|inst4|inst2|ALT_INV_inst6~combout\,
	combout => \inst|inst4|inst34|inst1~0_combout\);

-- Location: LABCELL_X35_Y2_N27
\inst|inst1|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(0) & ( \inst|inst4|inst32~1_combout\ & ( (!\inst10|altsyncram_component|auto_generated|q_a\(8) & 
-- (((\inst|inst4|inst34|inst1~0_combout\)))) # (\inst10|altsyncram_component|auto_generated|q_a\(8) & ((!\inst10|altsyncram_component|auto_generated|q_a\(9)) # ((\inst10|altsyncram_component|auto_generated|q_a\(2))))) ) ) ) # ( 
-- !\inst10|altsyncram_component|auto_generated|q_a\(0) & ( \inst|inst4|inst32~1_combout\ & ( (!\inst10|altsyncram_component|auto_generated|q_a\(8) & (((\inst|inst4|inst34|inst1~0_combout\)))) # (\inst10|altsyncram_component|auto_generated|q_a\(8) & 
-- (\inst10|altsyncram_component|auto_generated|q_a\(9) & (\inst10|altsyncram_component|auto_generated|q_a\(2)))) ) ) ) # ( \inst10|altsyncram_component|auto_generated|q_a\(0) & ( !\inst|inst4|inst32~1_combout\ & ( 
-- (!\inst10|altsyncram_component|auto_generated|q_a\(8) & (((!\inst|inst4|inst34|inst1~0_combout\)))) # (\inst10|altsyncram_component|auto_generated|q_a\(8) & ((!\inst10|altsyncram_component|auto_generated|q_a\(9)) # 
-- ((\inst10|altsyncram_component|auto_generated|q_a\(2))))) ) ) ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(0) & ( !\inst|inst4|inst32~1_combout\ & ( (!\inst10|altsyncram_component|auto_generated|q_a\(8) & 
-- (((!\inst|inst4|inst34|inst1~0_combout\)))) # (\inst10|altsyncram_component|auto_generated|q_a\(8) & (\inst10|altsyncram_component|auto_generated|q_a\(9) & (\inst10|altsyncram_component|auto_generated|q_a\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000010001111100001011101100001111000100010000111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \inst|inst4|inst34|ALT_INV_inst1~0_combout\,
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datae => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \inst|inst4|ALT_INV_inst32~1_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X35_Y2_N32
\regiB|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deb|out_key~2_combout\,
	asdata => \inst|inst1|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\,
	clrn => \unitC|ALT_INV_inst6~combout\,
	sload => VCC,
	ena => \unitC|inst9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regiB|inst2~q\);

-- Location: FF_X34_Y2_N56
\regiA|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deb|out_key~2_combout\,
	asdata => \inst|inst1|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\,
	clrn => \unitC|ALT_INV_inst6~combout\,
	sload => VCC,
	ena => \unitC|inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regiA|inst2~q\);

-- Location: MLABCELL_X34_Y2_N3
\inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \regiA|inst2~q\ & ( (!\inst10|altsyncram_component|auto_generated|q_a\(13)) # ((\regiB|inst2~q\) # (\inst10|altsyncram_component|auto_generated|q_a\(12))) ) ) # ( !\regiA|inst2~q\ 
-- & ( (\inst10|altsyncram_component|auto_generated|q_a\(13) & (!\inst10|altsyncram_component|auto_generated|q_a\(12) & \regiB|inst2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \regiB|ALT_INV_inst2~q\,
	dataf => \regiA|ALT_INV_inst2~q\,
	combout => \inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y2_N0
\inst|inst4|inst|inst1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst|inst1~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(0) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(13) & (((\regiA|inst~q\)))) # (\inst10|altsyncram_component|auto_generated|q_a\(13) & 
-- ((!\inst10|altsyncram_component|auto_generated|q_a\(12) & (\regiB|inst~q\)) # (\inst10|altsyncram_component|auto_generated|q_a\(12) & ((\regiA|inst~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \regiB|ALT_INV_inst~q\,
	datad => \regiA|ALT_INV_inst~q\,
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \inst|inst4|inst|inst1~0_combout\);

-- Location: MLABCELL_X34_Y2_N18
\inst|inst4|inst31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst31~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(2) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(1) & (!\inst10|altsyncram_component|auto_generated|q_a\(0) & 
-- ((\inst10|altsyncram_component|auto_generated|q_a\(9)) # (\inst10|altsyncram_component|auto_generated|q_a\(8))))) ) ) # ( !\inst10|altsyncram_component|auto_generated|q_a\(2) & ( (((!\inst10|altsyncram_component|auto_generated|q_a\(8) & 
-- !\inst10|altsyncram_component|auto_generated|q_a\(9))) # (\inst10|altsyncram_component|auto_generated|q_a\(0))) # (\inst10|altsyncram_component|auto_generated|q_a\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111111111111100011111111111101110000000000000111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datab => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \inst|inst4|inst31~0_combout\);

-- Location: MLABCELL_X34_Y2_N12
\inst|inst4|inst31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst31~1_combout\ = ( \inst|inst4|inst16|inst4~combout\ & ( !\inst|inst4|inst31~0_combout\ $ (!\inst7|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ 
-- (((\inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\inst|inst4|inst|inst1~0_combout\)))) ) ) # ( !\inst|inst4|inst16|inst4~combout\ & ( !\inst|inst4|inst31~0_combout\ $ 
-- (!\inst7|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((\inst|inst4|inst|inst1~0_combout\ & \inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst|ALT_INV_inst1~0_combout\,
	datab => \inst6|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst|inst4|ALT_INV_inst31~0_combout\,
	datad => \inst7|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst4|inst16|ALT_INV_inst4~combout\,
	combout => \inst|inst4|inst31~1_combout\);

-- Location: MLABCELL_X34_Y2_N27
\inst|inst4|inst31~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst31~2_combout\ = ( \inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst|inst4|inst31~1_combout\ & ( (!\inst|inst6~combout\ & ((!\inst10|altsyncram_component|auto_generated|q_a\(3)) # 
-- ((\inst|inst4|inst17|inst3~combout\) # (\inst|inst4|inst2|inst6~combout\)))) # (\inst|inst6~combout\ & (\inst|inst4|inst17|inst3~combout\ & ((!\inst10|altsyncram_component|auto_generated|q_a\(3)) # (\inst|inst4|inst2|inst6~combout\)))) ) ) ) # ( 
-- !\inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst|inst4|inst31~1_combout\ & ( (!\inst10|altsyncram_component|auto_generated|q_a\(3) & (((\inst|inst4|inst2|inst6~combout\ & !\inst|inst6~combout\)) # 
-- (\inst|inst4|inst17|inst3~combout\))) # (\inst10|altsyncram_component|auto_generated|q_a\(3) & (\inst|inst4|inst2|inst6~combout\ & (!\inst|inst6~combout\ & \inst|inst4|inst17|inst3~combout\))) ) ) ) # ( 
-- \inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst4|inst31~1_combout\ & ( (!\inst|inst6~combout\ & (\inst10|altsyncram_component|auto_generated|q_a\(3) & (!\inst|inst4|inst2|inst6~combout\ & 
-- !\inst|inst4|inst17|inst3~combout\))) # (\inst|inst6~combout\ & ((!\inst|inst4|inst17|inst3~combout\) # ((\inst10|altsyncram_component|auto_generated|q_a\(3) & !\inst|inst4|inst2|inst6~combout\)))) ) ) ) # ( 
-- !\inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst4|inst31~1_combout\ & ( (!\inst10|altsyncram_component|auto_generated|q_a\(3) & (!\inst|inst4|inst17|inst3~combout\ & ((!\inst|inst4|inst2|inst6~combout\) # 
-- (\inst|inst6~combout\)))) # (\inst10|altsyncram_component|auto_generated|q_a\(3) & ((!\inst|inst4|inst2|inst6~combout\) # ((!\inst|inst4|inst17|inst3~combout\) # (\inst|inst6~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111101000101010011110000010000100000101110101011000011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \inst|inst4|inst2|ALT_INV_inst6~combout\,
	datac => \inst|ALT_INV_inst6~combout\,
	datad => \inst|inst4|inst17|ALT_INV_inst3~combout\,
	datae => \inst8|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst4|ALT_INV_inst31~1_combout\,
	combout => \inst|inst4|inst31~2_combout\);

-- Location: MLABCELL_X34_Y2_N6
\inst|inst2|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\ = ( !\inst10|altsyncram_component|auto_generated|q_a\(9) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(8) & ((!\inst|inst4|inst31~2_combout\ $ 
-- (((!\inst|inst4|inst34|inst1~0_combout\) # (\inst|inst4|inst32~1_combout\)))))) # (\inst10|altsyncram_component|auto_generated|q_a\(8) & ((((\inst10|altsyncram_component|auto_generated|q_a\(1)))))) ) ) # ( 
-- \inst10|altsyncram_component|auto_generated|q_a\(9) & ( (!\inst10|altsyncram_component|auto_generated|q_a\(8) & ((!\inst|inst4|inst31~2_combout\ $ (((!\inst|inst4|inst34|inst1~0_combout\) # (\inst|inst4|inst32~1_combout\)))))) # 
-- (\inst10|altsyncram_component|auto_generated|q_a\(8) & ((((\inst10|altsyncram_component|auto_generated|q_a\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001000001111001000100000111111011101000011111101110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|ALT_INV_inst32~1_combout\,
	datab => \inst|inst4|inst34|ALT_INV_inst1~0_combout\,
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datae => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	dataf => \inst|inst4|ALT_INV_inst31~2_combout\,
	datag => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \inst|inst2|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X34_Y2_N59
\regiA|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deb|out_key~2_combout\,
	asdata => \inst|inst2|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\,
	clrn => \unitC|ALT_INV_inst6~combout\,
	sload => VCC,
	ena => \unitC|inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regiA|inst3~q\);

-- Location: FF_X34_Y2_N35
\regiB|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deb|out_key~2_combout\,
	asdata => \inst|inst2|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\,
	clrn => \unitC|ALT_INV_inst6~combout\,
	sload => VCC,
	ena => \unitC|inst9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regiB|inst3~q\);

-- Location: MLABCELL_X34_Y2_N57
\inst7|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ = ( \regiB|inst3~q\ & ( ((\inst10|altsyncram_component|auto_generated|q_a\(13) & !\inst10|altsyncram_component|auto_generated|q_a\(12))) # (\regiA|inst3~q\) ) ) # ( !\regiB|inst3~q\ & 
-- ( (\regiA|inst3~q\ & ((!\inst10|altsyncram_component|auto_generated|q_a\(13)) # (\inst10|altsyncram_component|auto_generated|q_a\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111101010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datad => \regiA|ALT_INV_inst3~q\,
	dataf => \regiB|ALT_INV_inst3~q\,
	combout => \inst7|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\);

-- Location: MLABCELL_X34_Y2_N30
\inst|inst4|inst2|inst6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst2|inst6~combout\ = ( \inst|inst4|inst|inst1~0_combout\ & ( \inst|inst4|inst31~0_combout\ & ( (!\inst|inst6~combout\ & (((\inst7|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # 
-- (\inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst|inst4|inst16|inst4~combout\))) # (\inst|inst6~combout\ & (\inst7|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & 
-- ((\inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\inst|inst4|inst16|inst4~combout\)))) ) ) ) # ( !\inst|inst4|inst|inst1~0_combout\ & ( \inst|inst4|inst31~0_combout\ & ( (!\inst|inst6~combout\ & 
-- (((\inst|inst4|inst16|inst4~combout\ & \inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst7|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # (\inst|inst6~combout\ & (\inst|inst4|inst16|inst4~combout\ & 
-- (\inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & \inst7|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) ) # ( \inst|inst4|inst|inst1~0_combout\ & ( !\inst|inst4|inst31~0_combout\ & ( (!\inst|inst6~combout\ 
-- & (\inst7|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((\inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\inst|inst4|inst16|inst4~combout\)))) # (\inst|inst6~combout\ & 
-- (((\inst7|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst|inst4|inst16|inst4~combout\))) ) ) ) # ( !\inst|inst4|inst|inst1~0_combout\ & ( 
-- !\inst|inst4|inst31~0_combout\ & ( (!\inst|inst6~combout\ & (\inst|inst4|inst16|inst4~combout\ & (\inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & \inst7|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # 
-- (\inst|inst6~combout\ & (((\inst|inst4|inst16|inst4~combout\ & \inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # (\inst7|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000100110111111100000100110011010100110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst16|ALT_INV_inst4~combout\,
	datab => \inst|ALT_INV_inst6~combout\,
	datac => \inst6|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datad => \inst7|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datae => \inst|inst4|inst|ALT_INV_inst1~0_combout\,
	dataf => \inst|inst4|ALT_INV_inst31~0_combout\,
	combout => \inst|inst4|inst2|inst6~combout\);

-- Location: MLABCELL_X34_Y2_N15
\inst|inst4|inst32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst32~0_combout\ = ( \inst|inst6~combout\ & ( !\inst|inst4|inst|inst1~0_combout\ $ (!\inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (\inst10|altsyncram_component|auto_generated|q_a\(1))) ) ) # ( 
-- !\inst|inst6~combout\ & ( !\inst|inst4|inst|inst1~0_combout\ $ (!\inst6|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (!\inst10|altsyncram_component|auto_generated|q_a\(1) $ (\inst10|altsyncram_component|auto_generated|q_a\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011001101001100101100110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|inst|ALT_INV_inst1~0_combout\,
	datab => \inst6|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \inst|ALT_INV_inst6~combout\,
	combout => \inst|inst4|inst32~0_combout\);

-- Location: MLABCELL_X34_Y2_N24
\inst|inst4|inst32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst32~1_combout\ = ( \inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst|inst4|inst32~0_combout\ & ( (!\inst|inst4|inst17|inst3~combout\ & (!\inst|inst6~combout\ & 
-- ((!\inst10|altsyncram_component|auto_generated|q_a\(3)) # (\inst|inst4|inst2|inst6~combout\)))) # (\inst|inst4|inst17|inst3~combout\ & ((!\inst10|altsyncram_component|auto_generated|q_a\(3)) # ((!\inst|inst6~combout\) # 
-- (\inst|inst4|inst2|inst6~combout\)))) ) ) ) # ( !\inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( \inst|inst4|inst32~0_combout\ & ( (!\inst10|altsyncram_component|auto_generated|q_a\(3) & (((\inst|inst4|inst2|inst6~combout\ & 
-- !\inst|inst6~combout\)) # (\inst|inst4|inst17|inst3~combout\))) # (\inst10|altsyncram_component|auto_generated|q_a\(3) & (\inst|inst4|inst2|inst6~combout\ & (\inst|inst4|inst17|inst3~combout\ & !\inst|inst6~combout\))) ) ) ) # ( 
-- \inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst4|inst32~0_combout\ & ( (!\inst|inst4|inst17|inst3~combout\ & (((\inst10|altsyncram_component|auto_generated|q_a\(3) & !\inst|inst4|inst2|inst6~combout\)) # 
-- (\inst|inst6~combout\))) # (\inst|inst4|inst17|inst3~combout\ & (\inst10|altsyncram_component|auto_generated|q_a\(3) & (!\inst|inst4|inst2|inst6~combout\ & \inst|inst6~combout\))) ) ) ) # ( 
-- !\inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ( !\inst|inst4|inst32~0_combout\ & ( (!\inst10|altsyncram_component|auto_generated|q_a\(3) & (!\inst|inst4|inst17|inst3~combout\ & ((!\inst|inst4|inst2|inst6~combout\) # 
-- (\inst|inst6~combout\)))) # (\inst10|altsyncram_component|auto_generated|q_a\(3) & ((!\inst|inst4|inst2|inst6~combout\) # ((!\inst|inst4|inst17|inst3~combout\) # (\inst|inst6~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010011110101010000001111010000101011000010101011111100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \inst|inst4|inst2|ALT_INV_inst6~combout\,
	datac => \inst|inst4|inst17|ALT_INV_inst3~combout\,
	datad => \inst|ALT_INV_inst6~combout\,
	datae => \inst8|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst4|ALT_INV_inst32~0_combout\,
	combout => \inst|inst4|inst32~1_combout\);

-- Location: MLABCELL_X34_Y2_N36
\inst|inst4|inst37|inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst37|inst4~0_combout\ = ( \inst|inst4|inst2|inst6~combout\ & ( (!\inst10|altsyncram_component|auto_generated|q_a\(3) & (!\inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ $ (((!\inst|inst6~combout\ & 
-- !\inst|inst4|inst17|inst3~combout\))))) # (\inst10|altsyncram_component|auto_generated|q_a\(3) & ((!\inst|inst6~combout\ & (\inst|inst4|inst17|inst3~combout\ & \inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)) # 
-- (\inst|inst6~combout\ & ((\inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\) # (\inst|inst4|inst17|inst3~combout\))))) ) ) # ( !\inst|inst4|inst2|inst6~combout\ & ( (!\inst10|altsyncram_component|auto_generated|q_a\(3) & 
-- (\inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\ & ((\inst|inst4|inst17|inst3~combout\) # (\inst|inst6~combout\)))) # (\inst10|altsyncram_component|auto_generated|q_a\(3) & ((!\inst|inst4|inst17|inst3~combout\ & 
-- ((!\inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\))) # (\inst|inst4|inst17|inst3~combout\ & (\inst|inst6~combout\ & \inst8|LPM_MUX_component|auto_generated|l1_w0_n0_mux_dataout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000101011010100000010101100101011100101010010101110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \inst|ALT_INV_inst6~combout\,
	datac => \inst|inst4|inst17|ALT_INV_inst3~combout\,
	datad => \inst8|LPM_MUX_component|auto_generated|ALT_INV_l1_w0_n0_mux_dataout~0_combout\,
	dataf => \inst|inst4|inst2|ALT_INV_inst6~combout\,
	combout => \inst|inst4|inst37|inst4~0_combout\);

-- Location: MLABCELL_X34_Y2_N48
\inst|inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\ = ( !\inst10|altsyncram_component|auto_generated|q_a\(8) & ( !\inst|inst4|inst37|inst4~0_combout\ $ ((((!\inst|inst4|inst34|inst1~0_combout\) # 
-- ((!\inst|inst4|inst31~2_combout\))) # (\inst|inst4|inst32~1_combout\))) ) ) # ( \inst10|altsyncram_component|auto_generated|q_a\(8) & ( (((\inst10|altsyncram_component|auto_generated|q_a\(2) & (!\inst10|altsyncram_component|auto_generated|q_a\(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000011110000000000101101001011010000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|ALT_INV_inst32~1_combout\,
	datab => \inst|inst4|inst34|ALT_INV_inst1~0_combout\,
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datae => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \inst|inst4|ALT_INV_inst31~2_combout\,
	datag => \inst|inst4|inst37|ALT_INV_inst4~0_combout\,
	combout => \inst|inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\);

-- Location: FF_X34_Y2_N5
\regiA|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deb|out_key~2_combout\,
	asdata => \inst|inst3|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~0_combout\,
	clrn => \unitC|ALT_INV_inst6~combout\,
	sload => VCC,
	ena => \unitC|inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regiA|inst4~q\);

-- Location: MLABCELL_X42_Y2_N36
\inst17|53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|53~0_combout\ = ( \regiA|inst2~q\ & ( \regiA|inst~q\ & ( (\regiA|inst4~q\ & !\regiA|inst3~q\) ) ) ) # ( !\regiA|inst2~q\ & ( \regiA|inst~q\ & ( !\regiA|inst4~q\ $ (\regiA|inst3~q\) ) ) ) # ( !\regiA|inst2~q\ & ( !\regiA|inst~q\ & ( 
-- (!\regiA|inst4~q\ & \regiA|inst3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011000011110000110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \regiA|ALT_INV_inst4~q\,
	datac => \regiA|ALT_INV_inst3~q\,
	datae => \regiA|ALT_INV_inst2~q\,
	dataf => \regiA|ALT_INV_inst~q\,
	combout => \inst17|53~0_combout\);

-- Location: MLABCELL_X42_Y2_N21
\inst17|50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|50~0_combout\ = ( \regiA|inst2~q\ & ( \regiA|inst4~q\ & ( (\regiA|inst~q\) # (\regiA|inst3~q\) ) ) ) # ( !\regiA|inst2~q\ & ( \regiA|inst4~q\ & ( (\regiA|inst3~q\ & !\regiA|inst~q\) ) ) ) # ( \regiA|inst2~q\ & ( !\regiA|inst4~q\ & ( 
-- (\regiA|inst3~q\ & !\regiA|inst~q\) ) ) ) # ( !\regiA|inst2~q\ & ( !\regiA|inst4~q\ & ( (\regiA|inst3~q\ & \regiA|inst~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010100000101000001010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regiA|ALT_INV_inst3~q\,
	datac => \regiA|ALT_INV_inst~q\,
	datae => \regiA|ALT_INV_inst2~q\,
	dataf => \regiA|ALT_INV_inst4~q\,
	combout => \inst17|50~0_combout\);

-- Location: MLABCELL_X42_Y2_N24
\inst17|54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|54~0_combout\ = ( \regiA|inst2~q\ & ( \regiA|inst~q\ & ( (\regiA|inst4~q\ & \regiA|inst3~q\) ) ) ) # ( \regiA|inst2~q\ & ( !\regiA|inst~q\ & ( !\regiA|inst4~q\ $ (\regiA|inst3~q\) ) ) ) # ( !\regiA|inst2~q\ & ( !\regiA|inst~q\ & ( (\regiA|inst4~q\ 
-- & \regiA|inst3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000111100001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \regiA|ALT_INV_inst4~q\,
	datac => \regiA|ALT_INV_inst3~q\,
	datae => \regiA|ALT_INV_inst2~q\,
	dataf => \regiA|ALT_INV_inst~q\,
	combout => \inst17|54~0_combout\);

-- Location: MLABCELL_X42_Y2_N33
\inst17|52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|52~0_combout\ = ( \regiA|inst2~q\ & ( \regiA|inst4~q\ & ( !\regiA|inst3~q\ $ (\regiA|inst~q\) ) ) ) # ( \regiA|inst2~q\ & ( !\regiA|inst4~q\ & ( (\regiA|inst3~q\ & \regiA|inst~q\) ) ) ) # ( !\regiA|inst2~q\ & ( !\regiA|inst4~q\ & ( 
-- !\regiA|inst3~q\ $ (!\regiA|inst~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000001010000010100000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regiA|ALT_INV_inst3~q\,
	datac => \regiA|ALT_INV_inst~q\,
	datae => \regiA|ALT_INV_inst2~q\,
	dataf => \regiA|ALT_INV_inst4~q\,
	combout => \inst17|52~0_combout\);

-- Location: MLABCELL_X42_Y2_N0
\inst17|49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|49~0_combout\ = ( \regiA|inst2~q\ & ( \regiA|inst~q\ & ( !\regiA|inst4~q\ ) ) ) # ( !\regiA|inst2~q\ & ( \regiA|inst~q\ & ( (!\regiA|inst4~q\) # (!\regiA|inst3~q\) ) ) ) # ( !\regiA|inst2~q\ & ( !\regiA|inst~q\ & ( (!\regiA|inst4~q\ & 
-- \regiA|inst3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011111100111111001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \regiA|ALT_INV_inst4~q\,
	datac => \regiA|ALT_INV_inst3~q\,
	datae => \regiA|ALT_INV_inst2~q\,
	dataf => \regiA|ALT_INV_inst~q\,
	combout => \inst17|49~0_combout\);

-- Location: MLABCELL_X42_Y2_N45
\inst17|51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|51~0_combout\ = ( !\regiA|inst2~q\ & ( \regiA|inst4~q\ & ( (\regiA|inst3~q\ & \regiA|inst~q\) ) ) ) # ( \regiA|inst2~q\ & ( !\regiA|inst4~q\ & ( (!\regiA|inst3~q\) # (\regiA|inst~q\) ) ) ) # ( !\regiA|inst2~q\ & ( !\regiA|inst4~q\ & ( 
-- (!\regiA|inst3~q\ & \regiA|inst~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101011111010111100000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regiA|ALT_INV_inst3~q\,
	datac => \regiA|ALT_INV_inst~q\,
	datae => \regiA|ALT_INV_inst2~q\,
	dataf => \regiA|ALT_INV_inst4~q\,
	combout => \inst17|51~0_combout\);

-- Location: MLABCELL_X42_Y2_N48
\inst17|55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|55~0_combout\ = ( \regiA|inst~q\ & ( (!\regiA|inst3~q\ $ (!\regiA|inst2~q\)) # (\regiA|inst4~q\) ) ) # ( !\regiA|inst~q\ & ( (!\regiA|inst4~q\ $ (!\regiA|inst3~q\)) # (\regiA|inst2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011111111010110101111111101011111111101010101111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regiA|ALT_INV_inst4~q\,
	datac => \regiA|ALT_INV_inst3~q\,
	datad => \regiA|ALT_INV_inst2~q\,
	dataf => \regiA|ALT_INV_inst~q\,
	combout => \inst17|55~0_combout\);

-- Location: MLABCELL_X42_Y2_N51
\inst16|53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|53~0_combout\ = ( \regiB|inst4~q\ & ( (\regiB|inst~q\ & (!\regiB|inst3~q\ $ (!\regiB|inst2~q\))) ) ) # ( !\regiB|inst4~q\ & ( (!\regiB|inst2~q\ & (!\regiB|inst~q\ $ (!\regiB|inst3~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \regiB|ALT_INV_inst~q\,
	datac => \regiB|ALT_INV_inst3~q\,
	datad => \regiB|ALT_INV_inst2~q\,
	dataf => \regiB|ALT_INV_inst4~q\,
	combout => \inst16|53~0_combout\);

-- Location: MLABCELL_X42_Y2_N54
\inst16|50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|50~0_combout\ = ( \regiB|inst~q\ & ( (!\regiB|inst4~q\ & (\regiB|inst3~q\ & !\regiB|inst2~q\)) # (\regiB|inst4~q\ & ((\regiB|inst2~q\))) ) ) # ( !\regiB|inst~q\ & ( (\regiB|inst3~q\ & ((\regiB|inst2~q\) # (\regiB|inst4~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100100101001001010010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regiB|ALT_INV_inst4~q\,
	datab => \regiB|ALT_INV_inst3~q\,
	datac => \regiB|ALT_INV_inst2~q\,
	dataf => \regiB|ALT_INV_inst~q\,
	combout => \inst16|50~0_combout\);

-- Location: MLABCELL_X42_Y2_N57
\inst16|54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|54~0_combout\ = ( \regiB|inst2~q\ & ( (!\regiB|inst4~q\ & (!\regiB|inst3~q\ & !\regiB|inst~q\)) # (\regiB|inst4~q\ & (\regiB|inst3~q\)) ) ) # ( !\regiB|inst2~q\ & ( (\regiB|inst4~q\ & (\regiB|inst3~q\ & !\regiB|inst~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regiB|ALT_INV_inst4~q\,
	datac => \regiB|ALT_INV_inst3~q\,
	datad => \regiB|ALT_INV_inst~q\,
	dataf => \regiB|ALT_INV_inst2~q\,
	combout => \inst16|54~0_combout\);

-- Location: MLABCELL_X42_Y2_N12
\inst16|52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|52~0_combout\ = ( \regiB|inst2~q\ & ( (!\regiB|inst3~q\ & (\regiB|inst4~q\ & !\regiB|inst~q\)) # (\regiB|inst3~q\ & ((\regiB|inst~q\))) ) ) # ( !\regiB|inst2~q\ & ( (!\regiB|inst4~q\ & (!\regiB|inst3~q\ $ (!\regiB|inst~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000001100001100110000110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \regiB|ALT_INV_inst3~q\,
	datac => \regiB|ALT_INV_inst4~q\,
	datad => \regiB|ALT_INV_inst~q\,
	dataf => \regiB|ALT_INV_inst2~q\,
	combout => \inst16|52~0_combout\);

-- Location: MLABCELL_X42_Y2_N9
\inst16|49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|49~0_combout\ = ( \regiB|inst~q\ & ( (!\regiB|inst4~q\) # ((!\regiB|inst3~q\ & !\regiB|inst2~q\)) ) ) # ( !\regiB|inst~q\ & ( (!\regiB|inst4~q\ & (\regiB|inst3~q\ & !\regiB|inst2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000011111010101010101111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regiB|ALT_INV_inst4~q\,
	datac => \regiB|ALT_INV_inst3~q\,
	datad => \regiB|ALT_INV_inst2~q\,
	dataf => \regiB|ALT_INV_inst~q\,
	combout => \inst16|49~0_combout\);

-- Location: MLABCELL_X42_Y2_N6
\inst16|51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|51~0_combout\ = ( \regiB|inst~q\ & ( !\regiB|inst4~q\ $ (((\regiB|inst3~q\ & !\regiB|inst2~q\))) ) ) # ( !\regiB|inst~q\ & ( (!\regiB|inst4~q\ & (!\regiB|inst3~q\ & \regiB|inst2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010011010100110101001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regiB|ALT_INV_inst4~q\,
	datab => \regiB|ALT_INV_inst3~q\,
	datac => \regiB|ALT_INV_inst2~q\,
	dataf => \regiB|ALT_INV_inst~q\,
	combout => \inst16|51~0_combout\);

-- Location: MLABCELL_X42_Y2_N15
\inst16|55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|55~0_combout\ = ( \regiB|inst4~q\ & ( ((!\regiB|inst3~q\) # (\regiB|inst~q\)) # (\regiB|inst2~q\) ) ) # ( !\regiB|inst4~q\ & ( (!\regiB|inst2~q\ & (\regiB|inst3~q\)) # (\regiB|inst2~q\ & ((!\regiB|inst3~q\) # (!\regiB|inst~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011001110110011101100111011011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regiB|ALT_INV_inst2~q\,
	datab => \regiB|ALT_INV_inst3~q\,
	datac => \regiB|ALT_INV_inst~q\,
	dataf => \regiB|ALT_INV_inst4~q\,
	combout => \inst16|55~0_combout\);

-- Location: LABCELL_X24_Y1_N0
\unitC|inst13\ : cyclonev_lcell_comb
-- Equation(s):
-- \unitC|inst13~combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(13) & ( !\inst10|altsyncram_component|auto_generated|q_a\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datae => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	combout => \unitC|inst13~combout\);

-- Location: LABCELL_X29_Y2_N54
\unitC|inst2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \unitC|inst2~0_combout\ = ( \inst10|altsyncram_component|auto_generated|q_a\(11) & ( \inst10|altsyncram_component|auto_generated|q_a\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	dataf => \inst10|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \unitC|inst2~0_combout\);

-- Location: LABCELL_X5_Y26_N3
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


