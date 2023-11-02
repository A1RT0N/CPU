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
-- Generated on "09/19/2023 13:28:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ROM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ROM_vhd_vec_tst IS
END ROM_vhd_vec_tst;
ARCHITECTURE ROM_arch OF ROM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a1 : STD_LOGIC;
SIGNAL a2 : STD_LOGIC;
SIGNAL a3 : STD_LOGIC;
SIGNAL a4 : STD_LOGIC;
SIGNAL a5 : STD_LOGIC;
SIGNAL a6 : STD_LOGIC;
SIGNAL a7 : STD_LOGIC;
SIGNAL ADD : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL b1 : STD_LOGIC;
SIGNAL b2 : STD_LOGIC;
SIGNAL b3 : STD_LOGIC;
SIGNAL b4 : STD_LOGIC;
SIGNAL b5 : STD_LOGIC;
SIGNAL b6 : STD_LOGIC;
SIGNAL b7 : STD_LOGIC;
SIGNAL c1 : STD_LOGIC;
SIGNAL c2 : STD_LOGIC;
SIGNAL c3 : STD_LOGIC;
SIGNAL c4 : STD_LOGIC;
SIGNAL c5 : STD_LOGIC;
SIGNAL c6 : STD_LOGIC;
SIGNAL c7 : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL d1 : STD_LOGIC;
SIGNAL d2 : STD_LOGIC;
SIGNAL d3 : STD_LOGIC;
SIGNAL d4 : STD_LOGIC;
SIGNAL d5 : STD_LOGIC;
SIGNAL d6 : STD_LOGIC;
SIGNAL d7 : STD_LOGIC;
SIGNAL Memory : STD_LOGIC_VECTOR(0 TO 15);
COMPONENT ROM
	PORT (
	a1 : OUT STD_LOGIC;
	a2 : OUT STD_LOGIC;
	a3 : OUT STD_LOGIC;
	a4 : OUT STD_LOGIC;
	a5 : OUT STD_LOGIC;
	a6 : OUT STD_LOGIC;
	a7 : OUT STD_LOGIC;
	ADD : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	b1 : OUT STD_LOGIC;
	b2 : OUT STD_LOGIC;
	b3 : OUT STD_LOGIC;
	b4 : OUT STD_LOGIC;
	b5 : OUT STD_LOGIC;
	b6 : OUT STD_LOGIC;
	b7 : OUT STD_LOGIC;
	c1 : OUT STD_LOGIC;
	c2 : OUT STD_LOGIC;
	c3 : OUT STD_LOGIC;
	c4 : OUT STD_LOGIC;
	c5 : OUT STD_LOGIC;
	c6 : OUT STD_LOGIC;
	c7 : OUT STD_LOGIC;
	CLK : IN STD_LOGIC;
	d1 : OUT STD_LOGIC;
	d2 : OUT STD_LOGIC;
	d3 : OUT STD_LOGIC;
	d4 : OUT STD_LOGIC;
	d5 : OUT STD_LOGIC;
	d6 : OUT STD_LOGIC;
	d7 : OUT STD_LOGIC;
	Memory : OUT STD_LOGIC_VECTOR(0 TO 15)
	);
END COMPONENT;
BEGIN
	i1 : ROM
	PORT MAP (
-- list connections between master ports and signals
	a1 => a1,
	a2 => a2,
	a3 => a3,
	a4 => a4,
	a5 => a5,
	a6 => a6,
	a7 => a7,
	ADD => ADD,
	b1 => b1,
	b2 => b2,
	b3 => b3,
	b4 => b4,
	b5 => b5,
	b6 => b6,
	b7 => b7,
	c1 => c1,
	c2 => c2,
	c3 => c3,
	c4 => c4,
	c5 => c5,
	c6 => c6,
	c7 => c7,
	CLK => CLK,
	d1 => d1,
	d2 => d2,
	d3 => d3,
	d4 => d4,
	d5 => d5,
	d6 => d6,
	d7 => d7,
	Memory => Memory
	);
-- ADD[7]
t_prcs_ADD_7: PROCESS
BEGIN
	ADD(7) <= '0';
WAIT;
END PROCESS t_prcs_ADD_7;
-- ADD[6]
t_prcs_ADD_6: PROCESS
BEGIN
	ADD(6) <= '0';
WAIT;
END PROCESS t_prcs_ADD_6;
-- ADD[5]
t_prcs_ADD_5: PROCESS
BEGIN
	ADD(5) <= '0';
WAIT;
END PROCESS t_prcs_ADD_5;
-- ADD[4]
t_prcs_ADD_4: PROCESS
BEGIN
	ADD(4) <= '0';
	WAIT FOR 1600000 ps;
	ADD(4) <= '1';
WAIT;
END PROCESS t_prcs_ADD_4;
-- ADD[3]
t_prcs_ADD_3: PROCESS
BEGIN
	ADD(3) <= '0';
	WAIT FOR 800000 ps;
	ADD(3) <= '1';
	WAIT FOR 800000 ps;
	ADD(3) <= '0';
WAIT;
END PROCESS t_prcs_ADD_3;
-- ADD[2]
t_prcs_ADD_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		ADD(2) <= '0';
		WAIT FOR 400000 ps;
		ADD(2) <= '1';
		WAIT FOR 400000 ps;
	END LOOP;
	ADD(2) <= '0';
WAIT;
END PROCESS t_prcs_ADD_2;
-- ADD[1]
t_prcs_ADD_1: PROCESS
BEGIN
LOOP
	ADD(1) <= '0';
	WAIT FOR 200000 ps;
	ADD(1) <= '1';
	WAIT FOR 200000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ADD_1;
-- ADD[0]
t_prcs_ADD_0: PROCESS
BEGIN
LOOP
	ADD(0) <= '0';
	WAIT FOR 100000 ps;
	ADD(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ADD_0;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 25000 ps;
	CLK <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
END ROM_arch;
