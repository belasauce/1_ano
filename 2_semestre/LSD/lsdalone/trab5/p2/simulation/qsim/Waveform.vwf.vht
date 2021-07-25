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
-- Generated on "04/30/2021 00:43:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          AccN
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY AccN_vhd_vec_tst IS
END AccN_vhd_vec_tst;
ARCHITECTURE AccN_arch OF AccN_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL datain : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataout : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT AccN
	PORT (
	clk : IN STD_LOGIC;
	datain : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	enable : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : AccN
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	datain => datain,
	dataout => dataout,
	enable => enable,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 310000 ps;
	reset <= '1';
	WAIT FOR 90000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
-- datain[7]
t_prcs_datain_7: PROCESS
BEGIN
	datain(7) <= '0';
	WAIT FOR 200000 ps;
	datain(7) <= '1';
	WAIT FOR 400000 ps;
	datain(7) <= '0';
WAIT;
END PROCESS t_prcs_datain_7;
-- datain[6]
t_prcs_datain_6: PROCESS
BEGIN
	datain(6) <= '0';
	WAIT FOR 200000 ps;
	datain(6) <= '1';
	WAIT FOR 400000 ps;
	datain(6) <= '0';
	WAIT FOR 200000 ps;
	datain(6) <= '1';
WAIT;
END PROCESS t_prcs_datain_6;
-- datain[5]
t_prcs_datain_5: PROCESS
BEGIN
	datain(5) <= '1';
	WAIT FOR 400000 ps;
	datain(5) <= '0';
	WAIT FOR 400000 ps;
	datain(5) <= '1';
WAIT;
END PROCESS t_prcs_datain_5;
-- datain[4]
t_prcs_datain_4: PROCESS
BEGIN
	datain(4) <= '0';
	WAIT FOR 200000 ps;
	datain(4) <= '1';
	WAIT FOR 600000 ps;
	datain(4) <= '0';
WAIT;
END PROCESS t_prcs_datain_4;
-- datain[3]
t_prcs_datain_3: PROCESS
BEGIN
	datain(3) <= '1';
	WAIT FOR 200000 ps;
	datain(3) <= '0';
	WAIT FOR 200000 ps;
	datain(3) <= '1';
	WAIT FOR 200000 ps;
	datain(3) <= '0';
	WAIT FOR 200000 ps;
	datain(3) <= '1';
WAIT;
END PROCESS t_prcs_datain_3;
-- datain[2]
t_prcs_datain_2: PROCESS
BEGIN
	datain(2) <= '1';
	WAIT FOR 200000 ps;
	datain(2) <= '0';
WAIT;
END PROCESS t_prcs_datain_2;
-- datain[1]
t_prcs_datain_1: PROCESS
BEGIN
	datain(1) <= '1';
	WAIT FOR 200000 ps;
	datain(1) <= '0';
WAIT;
END PROCESS t_prcs_datain_1;
-- datain[0]
t_prcs_datain_0: PROCESS
BEGIN
	datain(0) <= '1';
	WAIT FOR 400000 ps;
	datain(0) <= '0';
	WAIT FOR 200000 ps;
	datain(0) <= '1';
	WAIT FOR 200000 ps;
	datain(0) <= '0';
WAIT;
END PROCESS t_prcs_datain_0;
END AccN_arch;
