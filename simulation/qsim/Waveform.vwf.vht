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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/06/2023 19:28:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          cpu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cpu_vhd_vec_tst IS
END cpu_vhd_vec_tst;
ARCHITECTURE cpu_arch OF cpu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A0 : STD_LOGIC;
SIGNAL A1 : STD_LOGIC;
SIGNAL A2 : STD_LOGIC;
SIGNAL A3 : STD_LOGIC;
SIGNAL B0 : STD_LOGIC;
SIGNAL B1 : STD_LOGIC;
SIGNAL B2 : STD_LOGIC;
SIGNAL B3 : STD_LOGIC;
SIGNAL ClearCont : STD_LOGIC;
SIGNAL ClearRegi : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL COUNT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL hex00 : STD_LOGIC;
SIGNAL hex01 : STD_LOGIC;
SIGNAL hex02 : STD_LOGIC;
SIGNAL hex03 : STD_LOGIC;
SIGNAL hex04 : STD_LOGIC;
SIGNAL hex05 : STD_LOGIC;
SIGNAL hex06 : STD_LOGIC;
SIGNAL hex10 : STD_LOGIC;
SIGNAL hex11 : STD_LOGIC;
SIGNAL hex12 : STD_LOGIC;
SIGNAL hex13 : STD_LOGIC;
SIGNAL hex14 : STD_LOGIC;
SIGNAL hex15 : STD_LOGIC;
SIGNAL hex16 : STD_LOGIC;
SIGNAL hex20 : STD_LOGIC;
SIGNAL hex21 : STD_LOGIC;
SIGNAL hex22 : STD_LOGIC;
SIGNAL hex23 : STD_LOGIC;
SIGNAL hex24 : STD_LOGIC;
SIGNAL hex25 : STD_LOGIC;
SIGNAL hex26 : STD_LOGIC;
SIGNAL hex30 : STD_LOGIC;
SIGNAL hex31 : STD_LOGIC;
SIGNAL hex32 : STD_LOGIC;
SIGNAL hex33 : STD_LOGIC;
SIGNAL hex34 : STD_LOGIC;
SIGNAL hex35 : STD_LOGIC;
SIGNAL hex36 : STD_LOGIC;
SIGNAL hex40 : STD_LOGIC;
SIGNAL hex41 : STD_LOGIC;
SIGNAL hex42 : STD_LOGIC;
SIGNAL hex43 : STD_LOGIC;
SIGNAL hex44 : STD_LOGIC;
SIGNAL hex45 : STD_LOGIC;
SIGNAL hex46 : STD_LOGIC;
SIGNAL hex50 : STD_LOGIC;
SIGNAL hex51 : STD_LOGIC;
SIGNAL hex52 : STD_LOGIC;
SIGNAL hex53 : STD_LOGIC;
SIGNAL hex54 : STD_LOGIC;
SIGNAL hex55 : STD_LOGIC;
SIGNAL hex56 : STD_LOGIC;
SIGNAL JUMP : STD_LOGIC;
SIGNAL led0 : STD_LOGIC;
SIGNAL led1 : STD_LOGIC;
SIGNAL led2 : STD_LOGIC;
SIGNAL led3 : STD_LOGIC;
SIGNAL led4 : STD_LOGIC;
SIGNAL led5 : STD_LOGIC;
SIGNAL led6 : STD_LOGIC;
SIGNAL led7 : STD_LOGIC;
SIGNAL load_1 : STD_LOGIC;
SIGNAL load_2 : STD_LOGIC;
SIGNAL Master_clear : STD_LOGIC;
SIGNAL operando : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL pin_clock : STD_LOGIC;
SIGNAL reset_debouncer : STD_LOGIC;
SIGNAL RG_IN : STD_LOGIC;
SIGNAL ROM : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ULA : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT cpu
	PORT (
	A0 : OUT STD_LOGIC;
	A1 : OUT STD_LOGIC;
	A2 : OUT STD_LOGIC;
	A3 : OUT STD_LOGIC;
	B0 : OUT STD_LOGIC;
	B1 : OUT STD_LOGIC;
	B2 : OUT STD_LOGIC;
	B3 : OUT STD_LOGIC;
	ClearCont : OUT STD_LOGIC;
	ClearRegi : OUT STD_LOGIC;
	clock : IN STD_LOGIC;
	COUNT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	hex00 : OUT STD_LOGIC;
	hex01 : OUT STD_LOGIC;
	hex02 : OUT STD_LOGIC;
	hex03 : OUT STD_LOGIC;
	hex04 : OUT STD_LOGIC;
	hex05 : OUT STD_LOGIC;
	hex06 : OUT STD_LOGIC;
	hex10 : OUT STD_LOGIC;
	hex11 : OUT STD_LOGIC;
	hex12 : OUT STD_LOGIC;
	hex13 : OUT STD_LOGIC;
	hex14 : OUT STD_LOGIC;
	hex15 : OUT STD_LOGIC;
	hex16 : OUT STD_LOGIC;
	hex20 : OUT STD_LOGIC;
	hex21 : OUT STD_LOGIC;
	hex22 : OUT STD_LOGIC;
	hex23 : OUT STD_LOGIC;
	hex24 : OUT STD_LOGIC;
	hex25 : OUT STD_LOGIC;
	hex26 : OUT STD_LOGIC;
	hex30 : OUT STD_LOGIC;
	hex31 : OUT STD_LOGIC;
	hex32 : OUT STD_LOGIC;
	hex33 : OUT STD_LOGIC;
	hex34 : OUT STD_LOGIC;
	hex35 : OUT STD_LOGIC;
	hex36 : OUT STD_LOGIC;
	hex40 : OUT STD_LOGIC;
	hex41 : OUT STD_LOGIC;
	hex42 : OUT STD_LOGIC;
	hex43 : OUT STD_LOGIC;
	hex44 : OUT STD_LOGIC;
	hex45 : OUT STD_LOGIC;
	hex46 : OUT STD_LOGIC;
	hex50 : OUT STD_LOGIC;
	hex51 : OUT STD_LOGIC;
	hex52 : OUT STD_LOGIC;
	hex53 : OUT STD_LOGIC;
	hex54 : OUT STD_LOGIC;
	hex55 : OUT STD_LOGIC;
	hex56 : OUT STD_LOGIC;
	JUMP : OUT STD_LOGIC;
	led0 : OUT STD_LOGIC;
	led1 : OUT STD_LOGIC;
	led2 : OUT STD_LOGIC;
	led3 : OUT STD_LOGIC;
	led4 : OUT STD_LOGIC;
	led5 : OUT STD_LOGIC;
	led6 : OUT STD_LOGIC;
	led7 : OUT STD_LOGIC;
	load_1 : OUT STD_LOGIC;
	load_2 : OUT STD_LOGIC;
	Master_clear : IN STD_LOGIC;
	operando : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	pin_clock : IN STD_LOGIC;
	reset_debouncer : IN STD_LOGIC;
	RG_IN : OUT STD_LOGIC;
	ROM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ULA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : cpu
	PORT MAP (
-- list connections between master ports and signals
	A0 => A0,
	A1 => A1,
	A2 => A2,
	A3 => A3,
	B0 => B0,
	B1 => B1,
	B2 => B2,
	B3 => B3,
	ClearCont => ClearCont,
	ClearRegi => ClearRegi,
	clock => clock,
	COUNT => COUNT,
	hex00 => hex00,
	hex01 => hex01,
	hex02 => hex02,
	hex03 => hex03,
	hex04 => hex04,
	hex05 => hex05,
	hex06 => hex06,
	hex10 => hex10,
	hex11 => hex11,
	hex12 => hex12,
	hex13 => hex13,
	hex14 => hex14,
	hex15 => hex15,
	hex16 => hex16,
	hex20 => hex20,
	hex21 => hex21,
	hex22 => hex22,
	hex23 => hex23,
	hex24 => hex24,
	hex25 => hex25,
	hex26 => hex26,
	hex30 => hex30,
	hex31 => hex31,
	hex32 => hex32,
	hex33 => hex33,
	hex34 => hex34,
	hex35 => hex35,
	hex36 => hex36,
	hex40 => hex40,
	hex41 => hex41,
	hex42 => hex42,
	hex43 => hex43,
	hex44 => hex44,
	hex45 => hex45,
	hex46 => hex46,
	hex50 => hex50,
	hex51 => hex51,
	hex52 => hex52,
	hex53 => hex53,
	hex54 => hex54,
	hex55 => hex55,
	hex56 => hex56,
	JUMP => JUMP,
	led0 => led0,
	led1 => led1,
	led2 => led2,
	led3 => led3,
	led4 => led4,
	led5 => led5,
	led6 => led6,
	led7 => led7,
	load_1 => load_1,
	load_2 => load_2,
	Master_clear => Master_clear,
	operando => operando,
	pin_clock => pin_clock,
	reset_debouncer => reset_debouncer,
	RG_IN => RG_IN,
	ROM => ROM,
	ULA => ULA
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 25000 ps;
	clock <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- Master_clear
t_prcs_Master_clear: PROCESS
BEGIN
	Master_clear <= '1';
	WAIT FOR 60000 ps;
	Master_clear <= '0';
WAIT;
END PROCESS t_prcs_Master_clear;
END cpu_arch;
