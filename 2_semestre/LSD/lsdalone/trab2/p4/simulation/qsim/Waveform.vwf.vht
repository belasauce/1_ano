-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/21/2021 18:56:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PEnc4_2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PEnc4_2_vhd_vec_tst IS
END PEnc4_2_vhd_vec_tst;
ARCHITECTURE PEnc4_2_arch OF PEnc4_2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL decodedin : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL encodedout : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL validout : STD_LOGIC;
COMPONENT PEnc4_2
	PORT (
	decodedin : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	encodedout : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	validout : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PEnc4_2
	PORT MAP (
-- list connections between master ports and signals
	decodedin => decodedin,
	encodedout => encodedout,
	validout => validout
	);
-- decodedin[3]
t_prcs_decodedin_3: PROCESS
BEGIN
	decodedin(3) <= '1';
	WAIT FOR 500000 ps;
	decodedin(3) <= '0';
	WAIT FOR 100000 ps;
	decodedin(3) <= '1';
	WAIT FOR 300000 ps;
	decodedin(3) <= '0';
WAIT;
END PROCESS t_prcs_decodedin_3;
-- decodedin[2]
t_prcs_decodedin_2: PROCESS
BEGIN
	decodedin(2) <= '0';
	WAIT FOR 400000 ps;
	decodedin(2) <= '1';
	WAIT FOR 100000 ps;
	decodedin(2) <= '0';
WAIT;
END PROCESS t_prcs_decodedin_2;
-- decodedin[1]
t_prcs_decodedin_1: PROCESS
BEGIN
	decodedin(1) <= '0';
	WAIT FOR 100000 ps;
	decodedin(1) <= '1';
	WAIT FOR 100000 ps;
	decodedin(1) <= '0';
	WAIT FOR 400000 ps;
	decodedin(1) <= '1';
	WAIT FOR 100000 ps;
	decodedin(1) <= '0';
	WAIT FOR 200000 ps;
	decodedin(1) <= '1';
WAIT;
END PROCESS t_prcs_decodedin_1;
-- decodedin[0]
t_prcs_decodedin_0: PROCESS
BEGIN
	decodedin(0) <= '1';
	WAIT FOR 300000 ps;
	decodedin(0) <= '0';
	WAIT FOR 200000 ps;
	decodedin(0) <= '1';
	WAIT FOR 200000 ps;
	decodedin(0) <= '0';
	WAIT FOR 100000 ps;
	decodedin(0) <= '1';
	WAIT FOR 100000 ps;
	decodedin(0) <= '0';
WAIT;
END PROCESS t_prcs_decodedin_0;
END PEnc4_2_arch;
