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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "04/23/2021 11:01:12"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALUDemo_mdysplay IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(10 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALUDemo_mdysplay;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALUDemo_mdysplay IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \inst2|decOut_n[6]~26_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst2|decOut_n[6]~31_combout\ : std_logic;
SIGNAL \inst2|decOut_n[5]~12_combout\ : std_logic;
SIGNAL \inst2|decOut_n[5]~35_combout\ : std_logic;
SIGNAL \inst2|decOut_n[4]~27_combout\ : std_logic;
SIGNAL \inst2|decOut_n[4]~32_combout\ : std_logic;
SIGNAL \inst2|decOut_n[3]~28_combout\ : std_logic;
SIGNAL \inst2|decOut_n[3]~33_combout\ : std_logic;
SIGNAL \inst2|decOut_n[2]~21_combout\ : std_logic;
SIGNAL \inst2|decOut_n[2]~36_combout\ : std_logic;
SIGNAL \inst2|decOut_n[1]~29_combout\ : std_logic;
SIGNAL \inst2|decOut_n[1]~34_combout\ : std_logic;
SIGNAL \inst|m[2]~9_combout\ : std_logic;
SIGNAL \inst|m[3]~10_combout\ : std_logic;
SIGNAL \inst|m[1]~11_combout\ : std_logic;
SIGNAL \inst|m[0]~8_combout\ : std_logic;
SIGNAL \inst2|decOut_n[0]~30_combout\ : std_logic;
SIGNAL \inst3|Mux0~4_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\ : std_logic;
SIGNAL \inst3|Mux0~5_combout\ : std_logic;
SIGNAL \inst3|Mux0~1_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Add0~1_combout\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|Add0~3_combout\ : std_logic;
SIGNAL \inst3|Add0~5_cout\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Mux0~2_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\ : std_logic;
SIGNAL \inst3|Mux0~3_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|Mux1~2_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\ : std_logic;
SIGNAL \inst3|Mux1~3_combout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|Mux1~1_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\ : std_logic;
SIGNAL \inst3|Mux2~2_combout\ : std_logic;
SIGNAL \inst3|Mux2~3_combout\ : std_logic;
SIGNAL \inst3|Mux2~1_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~1_combout\ : std_logic;
SIGNAL \inst3|Mux3~2_combout\ : std_logic;
SIGNAL \inst3|Mux3~3_combout\ : std_logic;
SIGNAL \inst3|Mux3~4_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst3|Mod0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst3|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|ALT_INV_m[0]~8_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_m[0]~8_combout\ <= NOT \inst|m[0]~8_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[6]~31_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[5]~35_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[4]~32_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[3]~33_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[2]~36_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[1]~34_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[0]~30_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|m[3]~10_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|m[2]~9_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|m[1]~11_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_m[0]~8_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X110_Y17_N10
\inst|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(2) = (\SW[6]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(2));

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X110_Y17_N8
\inst|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(4) = (\SW[7]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ $ (((\SW[1]~input_o\ & \SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(4));

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X110_Y17_N30
\inst|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(1) = (\SW[5]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X111_Y17_N18
\inst|Mult0|auto_generated|cs2a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|cs2a[1]~0_combout\ = \SW[1]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X111_Y17_N24
\inst|Mult0|auto_generated|le4a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(5) = \SW[3]~input_o\ $ (((\SW[1]~input_o\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X110_Y17_N12
\inst|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(3) = (\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (\inst|Mult0|auto_generated|le4a\(5) $ ((\SW[7]~input_o\)))) # (!\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (\inst|Mult0|auto_generated|le4a\(5) & 
-- ((!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \inst|Mult0|auto_generated|le4a\(5),
	datac => \SW[7]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(3));

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X111_Y17_N20
\inst|Mult0|auto_generated|le3a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(4) = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # (!\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X110_Y17_N16
\inst|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(2) = (\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\inst|Mult0|auto_generated|le4a\(5) $ (\SW[6]~input_o\)))) # (!\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\SW[5]~input_o\ & 
-- (\inst|Mult0|auto_generated|le4a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst|Mult0|auto_generated|le4a\(5),
	datac => \inst|Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \SW[6]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X110_Y17_N2
\inst|Mult0|auto_generated|le3a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(3) = (\SW[0]~input_o\ & (\SW[1]~input_o\ $ ((\SW[7]~input_o\)))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\ & ((!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X110_Y17_N4
\inst|Mult0|auto_generated|le3a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(2) = (\SW[0]~input_o\ & (\SW[1]~input_o\ $ ((\SW[6]~input_o\)))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\ & ((!\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X110_Y17_N18
\inst|Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~0_combout\ = (\inst|Mult0|auto_generated|le3a\(2) & (\inst|Mult0|auto_generated|le4a\(5) $ (VCC))) # (!\inst|Mult0|auto_generated|le3a\(2) & (\inst|Mult0|auto_generated|le4a\(5) & VCC))
-- \inst|Mult0|auto_generated|op_1~1\ = CARRY((\inst|Mult0|auto_generated|le3a\(2) & \inst|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le3a\(2),
	datab => \inst|Mult0|auto_generated|le4a\(5),
	datad => VCC,
	combout => \inst|Mult0|auto_generated|op_1~0_combout\,
	cout => \inst|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X110_Y17_N20
\inst|Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~2_combout\ = (\inst|Mult0|auto_generated|le3a\(3) & (!\inst|Mult0|auto_generated|op_1~1\)) # (!\inst|Mult0|auto_generated|le3a\(3) & ((\inst|Mult0|auto_generated|op_1~1\) # (GND)))
-- \inst|Mult0|auto_generated|op_1~3\ = CARRY((!\inst|Mult0|auto_generated|op_1~1\) # (!\inst|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~1\,
	combout => \inst|Mult0|auto_generated|op_1~2_combout\,
	cout => \inst|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X110_Y17_N22
\inst|Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~4_combout\ = ((\inst|Mult0|auto_generated|le3a\(4) $ (\inst|Mult0|auto_generated|le4a\(2) $ (!\inst|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \inst|Mult0|auto_generated|op_1~5\ = CARRY((\inst|Mult0|auto_generated|le3a\(4) & ((\inst|Mult0|auto_generated|le4a\(2)) # (!\inst|Mult0|auto_generated|op_1~3\))) # (!\inst|Mult0|auto_generated|le3a\(4) & (\inst|Mult0|auto_generated|le4a\(2) & 
-- !\inst|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le3a\(4),
	datab => \inst|Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~3\,
	combout => \inst|Mult0|auto_generated|op_1~4_combout\,
	cout => \inst|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X110_Y17_N24
\inst|Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~6_combout\ = (\inst|Mult0|auto_generated|le5a\(1) & ((\inst|Mult0|auto_generated|le4a\(3) & (\inst|Mult0|auto_generated|op_1~5\ & VCC)) # (!\inst|Mult0|auto_generated|le4a\(3) & (!\inst|Mult0|auto_generated|op_1~5\)))) # 
-- (!\inst|Mult0|auto_generated|le5a\(1) & ((\inst|Mult0|auto_generated|le4a\(3) & (!\inst|Mult0|auto_generated|op_1~5\)) # (!\inst|Mult0|auto_generated|le4a\(3) & ((\inst|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \inst|Mult0|auto_generated|op_1~7\ = CARRY((\inst|Mult0|auto_generated|le5a\(1) & (!\inst|Mult0|auto_generated|le4a\(3) & !\inst|Mult0|auto_generated|op_1~5\)) # (!\inst|Mult0|auto_generated|le5a\(1) & ((!\inst|Mult0|auto_generated|op_1~5\) # 
-- (!\inst|Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le5a\(1),
	datab => \inst|Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~5\,
	combout => \inst|Mult0|auto_generated|op_1~6_combout\,
	cout => \inst|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X110_Y17_N26
\inst|Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~8_combout\ = ((\inst|Mult0|auto_generated|le5a\(2) $ (\inst|Mult0|auto_generated|le4a\(4) $ (!\inst|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \inst|Mult0|auto_generated|op_1~9\ = CARRY((\inst|Mult0|auto_generated|le5a\(2) & ((\inst|Mult0|auto_generated|le4a\(4)) # (!\inst|Mult0|auto_generated|op_1~7\))) # (!\inst|Mult0|auto_generated|le5a\(2) & (\inst|Mult0|auto_generated|le4a\(4) & 
-- !\inst|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le5a\(2),
	datab => \inst|Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~7\,
	combout => \inst|Mult0|auto_generated|op_1~8_combout\,
	cout => \inst|Mult0|auto_generated|op_1~9\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X111_Y17_N6
\inst|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(0) = (\SW[4]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X110_Y17_N6
\inst|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(1) = (\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (\SW[5]~input_o\ $ (((\inst|Mult0|auto_generated|le4a\(5)))))) # (!\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\SW[4]~input_o\ & 
-- \inst|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst|Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \SW[4]~input_o\,
	datad => \inst|Mult0|auto_generated|le4a\(5),
	combout => \inst|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X111_Y17_N8
\inst|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(0) = \SW[3]~input_o\ $ (((\SW[1]~input_o\ & ((\SW[2]~input_o\) # (\SW[4]~input_o\))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ & \SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X110_Y16_N26
\inst|Mult0|auto_generated|le3a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(1) = (\SW[0]~input_o\ & (\SW[1]~input_o\ $ ((\SW[5]~input_o\)))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\ & ((!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X110_Y17_N0
\inst|Mult0|auto_generated|le3a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(0) = \SW[1]~input_o\ $ (((\SW[0]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[4]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X109_Y17_N4
\inst|Mult0|auto_generated|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~0_combout\ = (\SW[1]~input_o\ & (\inst|Mult0|auto_generated|le3a\(0) $ (VCC))) # (!\SW[1]~input_o\ & (\inst|Mult0|auto_generated|le3a\(0) & VCC))
-- \inst|Mult0|auto_generated|op_3~1\ = CARRY((\SW[1]~input_o\ & \inst|Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \inst|Mult0|auto_generated|op_3~0_combout\,
	cout => \inst|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X109_Y17_N6
\inst|Mult0|auto_generated|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~2_combout\ = (\inst|Mult0|auto_generated|le3a\(1) & (!\inst|Mult0|auto_generated|op_3~1\)) # (!\inst|Mult0|auto_generated|le3a\(1) & ((\inst|Mult0|auto_generated|op_3~1\) # (GND)))
-- \inst|Mult0|auto_generated|op_3~3\ = CARRY((!\inst|Mult0|auto_generated|op_3~1\) # (!\inst|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~1\,
	combout => \inst|Mult0|auto_generated|op_3~2_combout\,
	cout => \inst|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X109_Y17_N8
\inst|Mult0|auto_generated|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~4_combout\ = ((\inst|Mult0|auto_generated|le4a\(0) $ (\inst|Mult0|auto_generated|op_1~0_combout\ $ (!\inst|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \inst|Mult0|auto_generated|op_3~5\ = CARRY((\inst|Mult0|auto_generated|le4a\(0) & ((\inst|Mult0|auto_generated|op_1~0_combout\) # (!\inst|Mult0|auto_generated|op_3~3\))) # (!\inst|Mult0|auto_generated|le4a\(0) & (\inst|Mult0|auto_generated|op_1~0_combout\ 
-- & !\inst|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(0),
	datab => \inst|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~3\,
	combout => \inst|Mult0|auto_generated|op_3~4_combout\,
	cout => \inst|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X109_Y17_N10
\inst|Mult0|auto_generated|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~6_combout\ = (\inst|Mult0|auto_generated|le4a\(1) & ((\inst|Mult0|auto_generated|op_1~2_combout\ & (\inst|Mult0|auto_generated|op_3~5\ & VCC)) # (!\inst|Mult0|auto_generated|op_1~2_combout\ & 
-- (!\inst|Mult0|auto_generated|op_3~5\)))) # (!\inst|Mult0|auto_generated|le4a\(1) & ((\inst|Mult0|auto_generated|op_1~2_combout\ & (!\inst|Mult0|auto_generated|op_3~5\)) # (!\inst|Mult0|auto_generated|op_1~2_combout\ & ((\inst|Mult0|auto_generated|op_3~5\) 
-- # (GND)))))
-- \inst|Mult0|auto_generated|op_3~7\ = CARRY((\inst|Mult0|auto_generated|le4a\(1) & (!\inst|Mult0|auto_generated|op_1~2_combout\ & !\inst|Mult0|auto_generated|op_3~5\)) # (!\inst|Mult0|auto_generated|le4a\(1) & ((!\inst|Mult0|auto_generated|op_3~5\) # 
-- (!\inst|Mult0|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(1),
	datab => \inst|Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~5\,
	combout => \inst|Mult0|auto_generated|op_3~6_combout\,
	cout => \inst|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X109_Y17_N12
\inst|Mult0|auto_generated|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~8_combout\ = ((\inst|Mult0|auto_generated|le5a\(0) $ (\inst|Mult0|auto_generated|op_1~4_combout\ $ (!\inst|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \inst|Mult0|auto_generated|op_3~9\ = CARRY((\inst|Mult0|auto_generated|le5a\(0) & ((\inst|Mult0|auto_generated|op_1~4_combout\) # (!\inst|Mult0|auto_generated|op_3~7\))) # (!\inst|Mult0|auto_generated|le5a\(0) & (\inst|Mult0|auto_generated|op_1~4_combout\ 
-- & !\inst|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le5a\(0),
	datab => \inst|Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~7\,
	combout => \inst|Mult0|auto_generated|op_3~8_combout\,
	cout => \inst|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X109_Y17_N14
\inst|Mult0|auto_generated|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~10_combout\ = (\SW[1]~input_o\ & ((\inst|Mult0|auto_generated|op_1~6_combout\ & (\inst|Mult0|auto_generated|op_3~9\ & VCC)) # (!\inst|Mult0|auto_generated|op_1~6_combout\ & (!\inst|Mult0|auto_generated|op_3~9\)))) # 
-- (!\SW[1]~input_o\ & ((\inst|Mult0|auto_generated|op_1~6_combout\ & (!\inst|Mult0|auto_generated|op_3~9\)) # (!\inst|Mult0|auto_generated|op_1~6_combout\ & ((\inst|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \inst|Mult0|auto_generated|op_3~11\ = CARRY((\SW[1]~input_o\ & (!\inst|Mult0|auto_generated|op_1~6_combout\ & !\inst|Mult0|auto_generated|op_3~9\)) # (!\SW[1]~input_o\ & ((!\inst|Mult0|auto_generated|op_3~9\) # 
-- (!\inst|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~9\,
	combout => \inst|Mult0|auto_generated|op_3~10_combout\,
	cout => \inst|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X109_Y17_N16
\inst|Mult0|auto_generated|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~12_combout\ = ((\SW[1]~input_o\ $ (\inst|Mult0|auto_generated|op_1~8_combout\ $ (!\inst|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \inst|Mult0|auto_generated|op_3~13\ = CARRY((\SW[1]~input_o\ & ((\inst|Mult0|auto_generated|op_1~8_combout\) # (!\inst|Mult0|auto_generated|op_3~11\))) # (!\SW[1]~input_o\ & (\inst|Mult0|auto_generated|op_1~8_combout\ & 
-- !\inst|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~11\,
	combout => \inst|Mult0|auto_generated|op_3~12_combout\,
	cout => \inst|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X110_Y17_N14
\inst|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(3) = (\SW[7]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X110_Y17_N28
\inst|Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~10_combout\ = \inst|Mult0|auto_generated|le5a\(3) $ (\inst|Mult0|auto_generated|op_1~9\ $ (!\inst|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|auto_generated|le5a\(3),
	datad => \inst|Mult0|auto_generated|le4a\(5),
	cin => \inst|Mult0|auto_generated|op_1~9\,
	combout => \inst|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X109_Y17_N18
\inst|Mult0|auto_generated|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~14_combout\ = \SW[1]~input_o\ $ (\inst|Mult0|auto_generated|op_1~10_combout\ $ (!\inst|Mult0|auto_generated|op_3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|Mult0|auto_generated|op_1~10_combout\,
	cin => \inst|Mult0|auto_generated|op_3~13\,
	combout => \inst|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X109_Y19_N0
\inst2|decOut_n[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[6]~26_combout\ = (\inst|Mult0|auto_generated|op_3~8_combout\ & (!\inst|Mult0|auto_generated|op_3~14_combout\ & (\inst|Mult0|auto_generated|op_3~12_combout\ $ (!\inst|Mult0|auto_generated|op_3~10_combout\)))) # 
-- (!\inst|Mult0|auto_generated|op_3~8_combout\ & (!\inst|Mult0|auto_generated|op_3~10_combout\ & (\inst|Mult0|auto_generated|op_3~12_combout\ $ (!\inst|Mult0|auto_generated|op_3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~12_combout\,
	datab => \inst|Mult0|auto_generated|op_3~10_combout\,
	datac => \inst|Mult0|auto_generated|op_3~14_combout\,
	datad => \inst|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst2|decOut_n[6]~26_combout\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X109_Y19_N4
\inst2|decOut_n[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[6]~31_combout\ = ((\inst2|decOut_n[6]~26_combout\) # ((\SW[10]~input_o\) # (\SW[8]~input_o\))) # (!\SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \inst2|decOut_n[6]~26_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst2|decOut_n[6]~31_combout\);

-- Location: LCCOMB_X109_Y19_N16
\inst2|decOut_n[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[5]~12_combout\ = (\inst|Mult0|auto_generated|op_3~12_combout\ & (\inst|Mult0|auto_generated|op_3~8_combout\ & (\inst|Mult0|auto_generated|op_3~10_combout\ $ (\inst|Mult0|auto_generated|op_3~14_combout\)))) # 
-- (!\inst|Mult0|auto_generated|op_3~12_combout\ & (!\inst|Mult0|auto_generated|op_3~14_combout\ & ((\inst|Mult0|auto_generated|op_3~10_combout\) # (\inst|Mult0|auto_generated|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~12_combout\,
	datab => \inst|Mult0|auto_generated|op_3~10_combout\,
	datac => \inst|Mult0|auto_generated|op_3~14_combout\,
	datad => \inst|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst2|decOut_n[5]~12_combout\);

-- Location: LCCOMB_X109_Y19_N2
\inst2|decOut_n[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[5]~35_combout\ = (\SW[9]~input_o\ & (\inst2|decOut_n[5]~12_combout\ & (!\SW[10]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \inst2|decOut_n[5]~12_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst2|decOut_n[5]~35_combout\);

-- Location: LCCOMB_X109_Y17_N0
\inst2|decOut_n[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[4]~27_combout\ = (\inst|Mult0|auto_generated|op_3~10_combout\ & (\inst|Mult0|auto_generated|op_3~8_combout\ & ((!\inst|Mult0|auto_generated|op_3~14_combout\)))) # (!\inst|Mult0|auto_generated|op_3~10_combout\ & 
-- ((\inst|Mult0|auto_generated|op_3~12_combout\ & ((!\inst|Mult0|auto_generated|op_3~14_combout\))) # (!\inst|Mult0|auto_generated|op_3~12_combout\ & (\inst|Mult0|auto_generated|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~8_combout\,
	datab => \inst|Mult0|auto_generated|op_3~12_combout\,
	datac => \inst|Mult0|auto_generated|op_3~10_combout\,
	datad => \inst|Mult0|auto_generated|op_3~14_combout\,
	combout => \inst2|decOut_n[4]~27_combout\);

-- Location: LCCOMB_X109_Y17_N28
\inst2|decOut_n[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[4]~32_combout\ = (!\SW[10]~input_o\ & (!\SW[8]~input_o\ & (\inst2|decOut_n[4]~27_combout\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \inst2|decOut_n[4]~27_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst2|decOut_n[4]~32_combout\);

-- Location: LCCOMB_X109_Y19_N20
\inst2|decOut_n[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[3]~28_combout\ = (\inst|Mult0|auto_generated|op_3~10_combout\ & ((\inst|Mult0|auto_generated|op_3~12_combout\ & ((\inst|Mult0|auto_generated|op_3~8_combout\))) # (!\inst|Mult0|auto_generated|op_3~12_combout\ & 
-- (\inst|Mult0|auto_generated|op_3~14_combout\ & !\inst|Mult0|auto_generated|op_3~8_combout\)))) # (!\inst|Mult0|auto_generated|op_3~10_combout\ & (!\inst|Mult0|auto_generated|op_3~14_combout\ & (\inst|Mult0|auto_generated|op_3~12_combout\ $ 
-- (\inst|Mult0|auto_generated|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~12_combout\,
	datab => \inst|Mult0|auto_generated|op_3~10_combout\,
	datac => \inst|Mult0|auto_generated|op_3~14_combout\,
	datad => \inst|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst2|decOut_n[3]~28_combout\);

-- Location: LCCOMB_X109_Y19_N22
\inst2|decOut_n[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[3]~33_combout\ = (\SW[9]~input_o\ & (\inst2|decOut_n[3]~28_combout\ & (!\SW[10]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \inst2|decOut_n[3]~28_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst2|decOut_n[3]~33_combout\);

-- Location: LCCOMB_X109_Y17_N24
\inst2|decOut_n[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[2]~21_combout\ = (\inst|Mult0|auto_generated|op_3~12_combout\ & (\inst|Mult0|auto_generated|op_3~14_combout\ & ((\inst|Mult0|auto_generated|op_3~10_combout\) # (!\inst|Mult0|auto_generated|op_3~8_combout\)))) # 
-- (!\inst|Mult0|auto_generated|op_3~12_combout\ & (!\inst|Mult0|auto_generated|op_3~8_combout\ & (\inst|Mult0|auto_generated|op_3~10_combout\ & !\inst|Mult0|auto_generated|op_3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~8_combout\,
	datab => \inst|Mult0|auto_generated|op_3~12_combout\,
	datac => \inst|Mult0|auto_generated|op_3~10_combout\,
	datad => \inst|Mult0|auto_generated|op_3~14_combout\,
	combout => \inst2|decOut_n[2]~21_combout\);

-- Location: LCCOMB_X109_Y17_N2
\inst2|decOut_n[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[2]~36_combout\ = (!\SW[10]~input_o\ & (!\SW[8]~input_o\ & (\inst2|decOut_n[2]~21_combout\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \inst2|decOut_n[2]~21_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst2|decOut_n[2]~36_combout\);

-- Location: LCCOMB_X109_Y17_N26
\inst2|decOut_n[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[1]~29_combout\ = (\inst|Mult0|auto_generated|op_3~10_combout\ & ((\inst|Mult0|auto_generated|op_3~8_combout\ & ((\inst|Mult0|auto_generated|op_3~14_combout\))) # (!\inst|Mult0|auto_generated|op_3~8_combout\ & 
-- (\inst|Mult0|auto_generated|op_3~12_combout\)))) # (!\inst|Mult0|auto_generated|op_3~10_combout\ & (\inst|Mult0|auto_generated|op_3~12_combout\ & (\inst|Mult0|auto_generated|op_3~8_combout\ $ (\inst|Mult0|auto_generated|op_3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~8_combout\,
	datab => \inst|Mult0|auto_generated|op_3~12_combout\,
	datac => \inst|Mult0|auto_generated|op_3~10_combout\,
	datad => \inst|Mult0|auto_generated|op_3~14_combout\,
	combout => \inst2|decOut_n[1]~29_combout\);

-- Location: LCCOMB_X109_Y17_N22
\inst2|decOut_n[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[1]~34_combout\ = (!\SW[10]~input_o\ & (!\SW[8]~input_o\ & (\inst2|decOut_n[1]~29_combout\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \inst2|decOut_n[1]~29_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst2|decOut_n[1]~34_combout\);

-- Location: LCCOMB_X109_Y19_N8
\inst|m[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[2]~9_combout\ = (\inst|Mult0|auto_generated|op_3~12_combout\ & (!\SW[10]~input_o\ & (\SW[9]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~12_combout\,
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|m[2]~9_combout\);

-- Location: LCCOMB_X109_Y19_N10
\inst|m[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[3]~10_combout\ = (\SW[9]~input_o\ & (\inst|Mult0|auto_generated|op_3~14_combout\ & (!\SW[10]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \inst|Mult0|auto_generated|op_3~14_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|m[3]~10_combout\);

-- Location: LCCOMB_X109_Y19_N28
\inst|m[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[1]~11_combout\ = (\SW[9]~input_o\ & (\inst|Mult0|auto_generated|op_3~10_combout\ & (!\SW[10]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \inst|Mult0|auto_generated|op_3~10_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|m[1]~11_combout\);

-- Location: LCCOMB_X109_Y19_N14
\inst|m[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[0]~8_combout\ = ((\SW[10]~input_o\) # ((\SW[8]~input_o\) # (!\SW[9]~input_o\))) # (!\inst|Mult0|auto_generated|op_3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~8_combout\,
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|m[0]~8_combout\);

-- Location: LCCOMB_X88_Y72_N16
\inst2|decOut_n[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[0]~30_combout\ = (\inst|m[2]~9_combout\ & (!\inst|m[1]~11_combout\ & (\inst|m[3]~10_combout\ $ (\inst|m[0]~8_combout\)))) # (!\inst|m[2]~9_combout\ & (!\inst|m[0]~8_combout\ & (\inst|m[3]~10_combout\ $ (!\inst|m[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|m[2]~9_combout\,
	datab => \inst|m[3]~10_combout\,
	datac => \inst|m[1]~11_combout\,
	datad => \inst|m[0]~8_combout\,
	combout => \inst2|decOut_n[0]~30_combout\);

-- Location: LCCOMB_X111_Y18_N0
\inst3|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~4_combout\ = (\SW[3]~input_o\ & ((\SW[9]~input_o\ $ (\SW[7]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[3]~input_o\ & ((\SW[9]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst3|Mux0~4_combout\);

-- Location: LCCOMB_X111_Y18_N24
\inst3|Mod0|auto_generated|divider|divider|StageOut[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\ = (\SW[1]~input_o\ & (!\SW[6]~input_o\ & \SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\);

-- Location: LCCOMB_X111_Y18_N18
\inst3|Mod0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\SW[7]~input_o\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\) # ((\SW[3]~input_o\) # (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: LCCOMB_X111_Y18_N28
\inst3|Mod0|auto_generated|divider|divider|selnose[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ = (\SW[3]~input_o\) # ((\SW[2]~input_o\) # ((!\SW[7]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst3|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\);

-- Location: LCCOMB_X111_Y18_N6
\inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ = (\SW[6]~input_o\ & ((\inst3|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\);

-- Location: LCCOMB_X110_Y15_N20
\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[5]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[5]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[5]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X110_Y15_N22
\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\ & (!\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\ & 
-- ((\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (\SW[1]~input_o\ & !\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\) # (!\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X110_Y15_N24
\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\SW[2]~input_o\ $ (\inst3|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\SW[2]~input_o\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & !\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # 
-- (!\SW[2]~input_o\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\) # (!\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => VCC,
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X110_Y15_N26
\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X110_Y15_N10
\inst3|Mod0|auto_generated|divider|divider|StageOut[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ = (\SW[3]~input_o\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\SW[3]~input_o\ & 
-- ((\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \SW[3]~input_o\,
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\);

-- Location: LCCOMB_X110_Y15_N28
\inst3|Mod0|auto_generated|divider|divider|StageOut[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (\SW[3]~input_o\ & (((\inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)))) # (!\SW[3]~input_o\ & 
-- ((\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # (!\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datab => \SW[3]~input_o\,
	datac => \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\);

-- Location: LCCOMB_X110_Y15_N30
\inst3|Mod0|auto_generated|divider|divider|StageOut[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\SW[5]~input_o\)))) # (!\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\SW[3]~input_o\ & ((\SW[5]~input_o\))) # (!\SW[3]~input_o\ & (\inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\);

-- Location: LCCOMB_X110_Y15_N0
\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\SW[4]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[4]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X110_Y15_N2
\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\inst3|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & ((\SW[1]~input_o\ & (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)))) # (!\inst3|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & ((\SW[1]~input_o\ & 
-- ((\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\inst3|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & (\SW[1]~input_o\ & !\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & ((\SW[1]~input_o\) # (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X110_Y15_N4
\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\SW[2]~input_o\ $ (\inst3|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ $ (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\SW[2]~input_o\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ & !\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # 
-- (!\SW[2]~input_o\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\) # (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datad => VCC,
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X110_Y15_N6
\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\inst3|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & ((\SW[3]~input_o\ & (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\SW[3]~input_o\ & (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # (!\inst3|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & ((\SW[3]~input_o\ & 
-- ((\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # (!\SW[3]~input_o\ & (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\inst3|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & (\SW[3]~input_o\ & !\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & ((\SW[3]~input_o\) # (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X110_Y15_N8
\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X110_Y15_N16
\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\)) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\);

-- Location: LCCOMB_X109_Y19_N12
\inst3|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~5_combout\ = (\inst3|Mux0~4_combout\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\) # ((\SW[9]~input_o\) # (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~4_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst3|Mux0~5_combout\);

-- Location: LCCOMB_X109_Y19_N6
\inst3|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~1_combout\ = (\SW[10]~input_o\) # ((\SW[9]~input_o\ & \SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst3|Mux0~1_combout\);

-- Location: LCCOMB_X109_Y19_N18
\inst3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (!\SW[10]~input_o\ & \SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X111_Y16_N24
\inst3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \SW[8]~input_o\ $ (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst3|Add0~0_combout\);

-- Location: LCCOMB_X111_Y16_N26
\inst3|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~1_combout\ = \SW[8]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst3|Add0~1_combout\);

-- Location: LCCOMB_X111_Y16_N4
\inst3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = \SW[8]~input_o\ $ (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst3|Add0~2_combout\);

-- Location: LCCOMB_X111_Y16_N22
\inst3|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~3_combout\ = \SW[0]~input_o\ $ (\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[8]~input_o\,
	combout => \inst3|Add0~3_combout\);

-- Location: LCCOMB_X111_Y16_N10
\inst3|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~5_cout\ = CARRY(\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => VCC,
	cout => \inst3|Add0~5_cout\);

-- Location: LCCOMB_X111_Y16_N12
\inst3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\SW[4]~input_o\ & ((\inst3|Add0~3_combout\ & (\inst3|Add0~5_cout\ & VCC)) # (!\inst3|Add0~3_combout\ & (!\inst3|Add0~5_cout\)))) # (!\SW[4]~input_o\ & ((\inst3|Add0~3_combout\ & (!\inst3|Add0~5_cout\)) # (!\inst3|Add0~3_combout\ 
-- & ((\inst3|Add0~5_cout\) # (GND)))))
-- \inst3|Add0~7\ = CARRY((\SW[4]~input_o\ & (!\inst3|Add0~3_combout\ & !\inst3|Add0~5_cout\)) # (!\SW[4]~input_o\ & ((!\inst3|Add0~5_cout\) # (!\inst3|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst3|Add0~3_combout\,
	datad => VCC,
	cin => \inst3|Add0~5_cout\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: LCCOMB_X111_Y16_N14
\inst3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = ((\inst3|Add0~2_combout\ $ (\SW[5]~input_o\ $ (!\inst3|Add0~7\)))) # (GND)
-- \inst3|Add0~9\ = CARRY((\inst3|Add0~2_combout\ & ((\SW[5]~input_o\) # (!\inst3|Add0~7\))) # (!\inst3|Add0~2_combout\ & (\SW[5]~input_o\ & !\inst3|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~2_combout\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: LCCOMB_X111_Y16_N16
\inst3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|Add0~1_combout\ & ((\SW[6]~input_o\ & (\inst3|Add0~9\ & VCC)) # (!\SW[6]~input_o\ & (!\inst3|Add0~9\)))) # (!\inst3|Add0~1_combout\ & ((\SW[6]~input_o\ & (!\inst3|Add0~9\)) # (!\SW[6]~input_o\ & ((\inst3|Add0~9\) # 
-- (GND)))))
-- \inst3|Add0~11\ = CARRY((\inst3|Add0~1_combout\ & (!\SW[6]~input_o\ & !\inst3|Add0~9\)) # (!\inst3|Add0~1_combout\ & ((!\inst3|Add0~9\) # (!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~1_combout\,
	datab => \SW[6]~input_o\,
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCCOMB_X111_Y16_N18
\inst3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = \inst3|Add0~0_combout\ $ (\inst3|Add0~11\ $ (!\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~0_combout\,
	datad => \SW[7]~input_o\,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\);

-- Location: LCCOMB_X109_Y19_N24
\inst3|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~2_combout\ = (\inst3|Mux0~1_combout\ & (\inst3|Mux0~0_combout\)) # (!\inst3|Mux0~1_combout\ & ((\inst3|Mux0~0_combout\ & (\inst|Mult0|auto_generated|op_3~6_combout\)) # (!\inst3|Mux0~0_combout\ & ((\inst3|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~1_combout\,
	datab => \inst3|Mux0~0_combout\,
	datac => \inst|Mult0|auto_generated|op_3~6_combout\,
	datad => \inst3|Add0~12_combout\,
	combout => \inst3|Mux0~2_combout\);

-- Location: LCCOMB_X111_Y18_N16
\inst3|Mod0|auto_generated|divider|divider|selnose[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\ = (!\SW[3]~input_o\ & !\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst3|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\);

-- Location: LCCOMB_X111_Y18_N26
\inst3|Mod0|auto_generated|divider|divider|selnose[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|selnose\(0) = ((\SW[1]~input_o\) # ((!\SW[7]~input_o\ & \SW[0]~input_o\))) # (!\inst3|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \inst3|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst3|Mod0|auto_generated|divider|divider|selnose\(0));

-- Location: LCCOMB_X109_Y19_N26
\inst3|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~3_combout\ = (\inst3|Mux0~2_combout\ & (((!\inst3|Mux0~1_combout\) # (!\inst3|Mod0|auto_generated|divider|divider|selnose\(0))))) # (!\inst3|Mux0~2_combout\ & (\inst3|Mux0~5_combout\ & ((\inst3|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~5_combout\,
	datab => \inst3|Mux0~2_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|selnose\(0),
	datad => \inst3|Mux0~1_combout\,
	combout => \inst3|Mux0~3_combout\);

-- Location: LCCOMB_X111_Y18_N30
\inst3|Mod0|auto_generated|divider|divider|selnose[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\ = (\inst3|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # ((!\SW[6]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst3|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\);

-- Location: LCCOMB_X111_Y18_N12
\inst3|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~2_combout\ = (\SW[2]~input_o\ & ((\SW[6]~input_o\ $ (\SW[9]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[2]~input_o\ & ((\SW[9]~input_o\ & ((\SW[6]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst3|Mux1~2_combout\);

-- Location: LCCOMB_X110_Y15_N18
\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\))) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\);

-- Location: LCCOMB_X111_Y18_N22
\inst3|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~3_combout\ = (\inst3|Mux1~2_combout\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\) # ((\SW[8]~input_o\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux1~2_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst3|Mux1~3_combout\);

-- Location: LCCOMB_X111_Y18_N20
\inst3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (\inst3|Mux0~0_combout\ & (((\inst3|Mux0~1_combout\)))) # (!\inst3|Mux0~0_combout\ & ((\inst3|Mux0~1_combout\ & ((\inst3|Mux1~3_combout\))) # (!\inst3|Mux0~1_combout\ & (\inst3|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~10_combout\,
	datab => \inst3|Mux0~0_combout\,
	datac => \inst3|Mux1~3_combout\,
	datad => \inst3|Mux0~1_combout\,
	combout => \inst3|Mux1~0_combout\);

-- Location: LCCOMB_X111_Y18_N8
\inst3|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~1_combout\ = (\inst3|Mux0~0_combout\ & ((\inst3|Mux1~0_combout\ & (!\inst3|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\)) # (!\inst3|Mux1~0_combout\ & ((\inst|Mult0|auto_generated|op_3~4_combout\))))) # (!\inst3|Mux0~0_combout\ & 
-- (((\inst3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\,
	datab => \inst3|Mux0~0_combout\,
	datac => \inst|Mult0|auto_generated|op_3~4_combout\,
	datad => \inst3|Mux1~0_combout\,
	combout => \inst3|Mux1~1_combout\);

-- Location: LCCOMB_X110_Y16_N12
\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[5]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[5]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[5]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X110_Y16_N14
\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\SW[1]~input_o\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & 
-- (\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\SW[1]~input_o\ & ((!\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # 
-- (!\SW[1]~input_o\ & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X110_Y16_N16
\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\inst3|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\SW[2]~input_o\ $ (\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\inst3|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & ((!\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & (!\SW[2]~input_o\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X110_Y16_N18
\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X111_Y16_N28
\inst3|Div0|auto_generated|divider|divider|selnose[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|selnose\(10) = (\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\) # (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst3|Div0|auto_generated|divider|divider|selnose\(10));

-- Location: LCCOMB_X111_Y16_N8
\inst3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (\inst3|Mux0~0_combout\ & ((\inst|Mult0|auto_generated|op_3~2_combout\) # ((\inst3|Mux0~1_combout\)))) # (!\inst3|Mux0~0_combout\ & (((\inst3|Add0~8_combout\ & !\inst3|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~2_combout\,
	datab => \inst3|Add0~8_combout\,
	datac => \inst3|Mux0~0_combout\,
	datad => \inst3|Mux0~1_combout\,
	combout => \inst3|Mux2~0_combout\);

-- Location: LCCOMB_X110_Y15_N12
\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst3|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\)) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\);

-- Location: LCCOMB_X111_Y16_N20
\inst3|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~2_combout\ = (\SW[5]~input_o\ & ((\SW[9]~input_o\ $ (\SW[1]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[5]~input_o\ & ((\SW[9]~input_o\ & ((\SW[1]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst3|Mux2~2_combout\);

-- Location: LCCOMB_X111_Y16_N6
\inst3|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~3_combout\ = (\inst3|Mux2~2_combout\ & ((\SW[8]~input_o\) # ((\inst3|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\,
	datac => \SW[9]~input_o\,
	datad => \inst3|Mux2~2_combout\,
	combout => \inst3|Mux2~3_combout\);

-- Location: LCCOMB_X111_Y16_N30
\inst3|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~1_combout\ = (\inst3|Mux0~1_combout\ & ((\inst3|Mux2~0_combout\ & (!\inst3|Div0|auto_generated|divider|divider|selnose\(10))) # (!\inst3|Mux2~0_combout\ & ((\inst3|Mux2~3_combout\))))) # (!\inst3|Mux0~1_combout\ & (((\inst3|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~1_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|selnose\(10),
	datac => \inst3|Mux2~0_combout\,
	datad => \inst3|Mux2~3_combout\,
	combout => \inst3|Mux2~1_combout\);

-- Location: LCCOMB_X110_Y16_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\inst3|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\))) # (!\SW[3]~input_o\ & 
-- (\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \SW[3]~input_o\,
	datad => \inst3|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\);

-- Location: LCCOMB_X110_Y16_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # (!\SW[3]~input_o\ & 
-- (\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \SW[3]~input_o\,
	datad => \inst3|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X110_Y16_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\SW[5]~input_o\)) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\SW[3]~input_o\ & (\SW[5]~input_o\)) # (!\SW[3]~input_o\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \SW[3]~input_o\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X110_Y16_N2
\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X110_Y16_N4
\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\SW[1]~input_o\ & ((!\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\) # (!\inst3|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\))) # 
-- (!\SW[1]~input_o\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X110_Y16_N6
\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & ((!\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\) # (!\SW[2]~input_o\))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & (!\SW[2]~input_o\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X110_Y16_N8
\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ & (\SW[3]~input_o\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ & ((\SW[3]~input_o\) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X110_Y16_N10
\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X110_Y15_N14
\inst3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\SW[4]~input_o\)) # (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\SW[8]~input_o\ & (\SW[4]~input_o\)) # 
-- (!\SW[8]~input_o\ & ((\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \SW[8]~input_o\,
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	combout => \inst3|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y18_N2
\inst3|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~1_combout\ = (\SW[9]~input_o\ & (((\SW[8]~input_o\)))) # (!\SW[9]~input_o\ & (\inst3|Mux3~0_combout\ & ((\SW[0]~input_o\) # (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux3~0_combout\,
	datab => \SW[9]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst3|Mux3~1_combout\);

-- Location: LCCOMB_X111_Y16_N0
\inst3|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~2_combout\ = (\SW[9]~input_o\ & ((\SW[0]~input_o\ & ((!\SW[4]~input_o\) # (!\inst3|Mux3~1_combout\))) # (!\SW[0]~input_o\ & ((\SW[4]~input_o\))))) # (!\SW[9]~input_o\ & (((\inst3|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst3|Mux3~1_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst3|Mux3~2_combout\);

-- Location: LCCOMB_X111_Y16_N2
\inst3|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~3_combout\ = (\inst3|Mux0~1_combout\ & (((\inst3|Mux0~0_combout\) # (\inst3|Mux3~2_combout\)))) # (!\inst3|Mux0~1_combout\ & (\inst3|Add0~6_combout\ & (!\inst3|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~1_combout\,
	datab => \inst3|Add0~6_combout\,
	datac => \inst3|Mux0~0_combout\,
	datad => \inst3|Mux3~2_combout\,
	combout => \inst3|Mux3~3_combout\);

-- Location: LCCOMB_X110_Y16_N24
\inst3|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~4_combout\ = (\inst3|Mux0~0_combout\ & ((\inst3|Mux3~3_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)) # (!\inst3|Mux3~3_combout\ & ((\inst|Mult0|auto_generated|op_3~0_combout\))))) # 
-- (!\inst3|Mux0~0_combout\ & (((\inst3|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datab => \inst3|Mux0~0_combout\,
	datac => \inst|Mult0|auto_generated|op_3~0_combout\,
	datad => \inst3|Mux3~3_combout\,
	combout => \inst3|Mux3~4_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


