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

-- DATE "06/15/2021 13:54:04"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bin_to_bcd_fsm IS
    PORT (
	clk : IN std_logic;
	bin_input : IN std_logic_vector(9 DOWNTO 0);
	activate : IN std_logic;
	digit2 : OUT std_logic_vector(3 DOWNTO 0);
	digit1 : OUT std_logic_vector(3 DOWNTO 0);
	digit0 : OUT std_logic_vector(3 DOWNTO 0);
	done : OUT std_logic
	);
END bin_to_bcd_fsm;

ARCHITECTURE structure OF bin_to_bcd_fsm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_bin_input : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_activate : std_logic;
SIGNAL ww_digit2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_digit1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_digit0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_done : std_logic;
SIGNAL \digit2[0]~output_o\ : std_logic;
SIGNAL \digit2[1]~output_o\ : std_logic;
SIGNAL \digit2[2]~output_o\ : std_logic;
SIGNAL \digit2[3]~output_o\ : std_logic;
SIGNAL \digit1[0]~output_o\ : std_logic;
SIGNAL \digit1[1]~output_o\ : std_logic;
SIGNAL \digit1[2]~output_o\ : std_logic;
SIGNAL \digit1[3]~output_o\ : std_logic;
SIGNAL \digit0[0]~output_o\ : std_logic;
SIGNAL \digit0[1]~output_o\ : std_logic;
SIGNAL \digit0[2]~output_o\ : std_logic;
SIGNAL \digit0[3]~output_o\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \bin_input[2]~input_o\ : std_logic;
SIGNAL \input[2]~0_combout\ : std_logic;
SIGNAL \bin_input[1]~input_o\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \activate~input_o\ : std_logic;
SIGNAL \input[1]~8_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \s_state.finish~q\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \s_state.idle~q\ : std_logic;
SIGNAL \input[1]~10_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \input[1]~11_combout\ : std_logic;
SIGNAL \input[1]~12_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \cem[0]~2_combout\ : std_logic;
SIGNAL \input[9]~13_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \bin_input[3]~input_o\ : std_logic;
SIGNAL \input[3]~1_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \bin_input[4]~input_o\ : std_logic;
SIGNAL \input[4]~7_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \bin_input[5]~input_o\ : std_logic;
SIGNAL \input[5]~5_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \bin_input[6]~input_o\ : std_logic;
SIGNAL \input[6]~6_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \bin_input[7]~input_o\ : std_logic;
SIGNAL \input[7]~2_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \bin_input[8]~input_o\ : std_logic;
SIGNAL \input[8]~3_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \bin_input[9]~input_o\ : std_logic;
SIGNAL \input[9]~4_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \s_state.sub10~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \s_state.sub100~q\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \cem[0]~3_combout\ : std_logic;
SIGNAL \digit2[0]~reg0_q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \digit2[1]~reg0_q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \digit2[2]~reg0_q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \digit2[3]~reg0_q\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \dez[0]~2_combout\ : std_logic;
SIGNAL \digit1[0]~reg0_q\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \digit1[1]~reg0_q\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \digit1[2]~reg0_q\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \digit1[3]~reg0_q\ : std_logic;
SIGNAL \bin_input[0]~input_o\ : std_logic;
SIGNAL \input[0]~9_combout\ : std_logic;
SIGNAL \digit0[0]~reg0_q\ : std_logic;
SIGNAL \digit0[1]~reg0_q\ : std_logic;
SIGNAL \digit0[2]~reg0_q\ : std_logic;
SIGNAL \digit0[3]~reg0_q\ : std_logic;
SIGNAL \done~reg0_q\ : std_logic;
SIGNAL input : std_logic_vector(9 DOWNTO 0);
SIGNAL cem : std_logic_vector(3 DOWNTO 0);
SIGNAL dez : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_bin_input <= bin_input;
ww_activate <= activate;
digit2 <= ww_digit2;
digit1 <= ww_digit1;
digit0 <= ww_digit0;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\digit2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \digit2[0]~output_o\);

\digit2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit2[1]~reg0_q\,
	devoe => ww_devoe,
	o => \digit2[1]~output_o\);

\digit2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit2[2]~reg0_q\,
	devoe => ww_devoe,
	o => \digit2[2]~output_o\);

\digit2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit2[3]~reg0_q\,
	devoe => ww_devoe,
	o => \digit2[3]~output_o\);

\digit1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \digit1[0]~output_o\);

\digit1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \digit1[1]~output_o\);

\digit1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \digit1[2]~output_o\);

\digit1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \digit1[3]~output_o\);

\digit0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit0[0]~reg0_q\,
	devoe => ww_devoe,
	o => \digit0[0]~output_o\);

\digit0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit0[1]~reg0_q\,
	devoe => ww_devoe,
	o => \digit0[1]~output_o\);

\digit0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit0[2]~reg0_q\,
	devoe => ww_devoe,
	o => \digit0[2]~output_o\);

\digit0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit0[3]~reg0_q\,
	devoe => ww_devoe,
	o => \digit0[3]~output_o\);

\done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \done~reg0_q\,
	devoe => ww_devoe,
	o => \done~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = input(2) $ (VCC)
-- \Add0~1\ = CARRY(input(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input(2),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

\bin_input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_input(2),
	o => \bin_input[2]~input_o\);

\input[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[2]~0_combout\ = (\s_state.sub100~q\ & (\Add0~0_combout\)) # (!\s_state.sub100~q\ & ((\bin_input[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \bin_input[2]~input_o\,
	datad => \s_state.sub100~q\,
	combout => \input[2]~0_combout\);

\bin_input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_input(1),
	o => \bin_input[1]~input_o\);

\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!input(5) & (((!input(1) & !input(2))) # (!input(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input(1),
	datab => input(2),
	datac => input(3),
	datad => input(5),
	combout => \LessThan1~0_combout\);

\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\LessThan0~0_combout\ & (\LessThan1~0_combout\ & (!input(6) & !input(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan1~0_combout\,
	datac => input(6),
	datad => input(4),
	combout => \LessThan1~1_combout\);

\activate~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_activate,
	o => \activate~input_o\);

\input[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[1]~8_combout\ = (\activate~input_o\ & !\s_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \activate~input_o\,
	datad => \s_state.idle~q\,
	combout => \input[1]~8_combout\);

\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\input[1]~8_combout\ & (!\Selector0~0_combout\ & ((!\LessThan1~1_combout\) # (!\s_state.sub10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.sub10~q\,
	datab => \LessThan1~1_combout\,
	datac => \input[1]~8_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\s_state.sub10~q\ & (\LessThan1~1_combout\ & (!\s_state.finish~q\ & !\Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.sub10~q\,
	datab => \LessThan1~1_combout\,
	datac => \s_state.finish~q\,
	datad => \Selector0~1_combout\,
	combout => \Selector3~0_combout\);

\s_state.finish\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.finish~q\);

\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\s_state.finish~q\ & ((\s_state.idle~q\) # (!\Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.finish~q\,
	datab => \Selector0~1_combout\,
	datad => \s_state.idle~q\,
	combout => \Selector0~2_combout\);

\s_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.idle~q\);

\input[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[1]~10_combout\ = (\s_state.idle~q\ & ((\s_state.sub10~q\))) # (!\s_state.idle~q\ & (\activate~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \activate~input_o\,
	datab => \s_state.idle~q\,
	datac => \s_state.sub10~q\,
	combout => \input[1]~10_combout\);

\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = input(1) $ (VCC)
-- \Add2~1\ = CARRY(input(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input(1),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

\input[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[1]~11_combout\ = (\LessThan1~1_combout\ & (input(1))) # (!\LessThan1~1_combout\ & ((\input[1]~10_combout\ & ((\Add2~0_combout\))) # (!\input[1]~10_combout\ & (input(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input(1),
	datab => \LessThan1~1_combout\,
	datac => \Add2~0_combout\,
	datad => \input[1]~10_combout\,
	combout => \input[1]~11_combout\);

\input[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[1]~12_combout\ = (\s_state.idle~q\ & (((\input[1]~11_combout\)))) # (!\s_state.idle~q\ & ((\input[1]~10_combout\ & (\bin_input[1]~input_o\)) # (!\input[1]~10_combout\ & ((\input[1]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_input[1]~input_o\,
	datab => \s_state.idle~q\,
	datac => \input[1]~10_combout\,
	datad => \input[1]~11_combout\,
	combout => \input[1]~12_combout\);

\input[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \input[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input(1));

\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (input(2) & (\Add2~1\ & VCC)) # (!input(2) & (!\Add2~1\))
-- \Add2~3\ = CARRY((!input(2) & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => input(2),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!input(2) & (!input(3) & !input(4)))) # (!input(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input(2),
	datab => input(3),
	datac => input(4),
	datad => input(5),
	combout => \LessThan0~1_combout\);

\cem[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cem[0]~2_combout\ = ((\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # (!input(6))))) # (!\s_state.sub100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~1_combout\,
	datac => input(6),
	datad => \s_state.sub100~q\,
	combout => \cem[0]~2_combout\);

\input[9]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[9]~13_combout\ = ((\input[1]~8_combout\) # ((!\LessThan1~1_combout\ & \s_state.sub10~q\))) # (!\cem[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cem[0]~2_combout\,
	datab => \LessThan1~1_combout\,
	datac => \s_state.sub10~q\,
	datad => \input[1]~8_combout\,
	combout => \input[9]~13_combout\);

\input[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \input[2]~0_combout\,
	asdata => \Add2~2_combout\,
	sload => \s_state.sub10~q\,
	ena => \input[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input(2));

\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (input(3) & (\Add0~1\ & VCC)) # (!input(3) & (!\Add0~1\))
-- \Add0~3\ = CARRY((!input(3) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => input(3),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

\bin_input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_input(3),
	o => \bin_input[3]~input_o\);

\input[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[3]~1_combout\ = (\s_state.sub100~q\ & (\Add0~2_combout\)) # (!\s_state.sub100~q\ & ((\bin_input[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \bin_input[3]~input_o\,
	datad => \s_state.sub100~q\,
	combout => \input[3]~1_combout\);

\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (input(3) & (\Add2~3\ $ (GND))) # (!input(3) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((input(3) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => input(3),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

\input[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \input[3]~1_combout\,
	asdata => \Add2~4_combout\,
	sload => \s_state.sub10~q\,
	ena => \input[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input(3));

\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (input(4) & ((GND) # (!\Add0~3\))) # (!input(4) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((input(4)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => input(4),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

\bin_input[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_input(4),
	o => \bin_input[4]~input_o\);

\input[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[4]~7_combout\ = (\s_state.sub100~q\ & (\Add0~4_combout\)) # (!\s_state.sub100~q\ & ((\bin_input[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \bin_input[4]~input_o\,
	datad => \s_state.sub100~q\,
	combout => \input[4]~7_combout\);

\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (input(4) & (\Add2~5\ & VCC)) # (!input(4) & (!\Add2~5\))
-- \Add2~7\ = CARRY((!input(4) & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => input(4),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

\input[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \input[4]~7_combout\,
	asdata => \Add2~6_combout\,
	sload => \s_state.sub10~q\,
	ena => \input[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input(4));

\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (input(5) & (!\Add0~5\)) # (!input(5) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!input(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => input(5),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

\bin_input[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_input(5),
	o => \bin_input[5]~input_o\);

\input[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[5]~5_combout\ = (\s_state.sub100~q\ & (\Add0~6_combout\)) # (!\s_state.sub100~q\ & ((\bin_input[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \bin_input[5]~input_o\,
	datad => \s_state.sub100~q\,
	combout => \input[5]~5_combout\);

\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (input(5) & ((GND) # (!\Add2~7\))) # (!input(5) & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((input(5)) # (!\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => input(5),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

\input[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \input[5]~5_combout\,
	asdata => \Add2~8_combout\,
	sload => \s_state.sub10~q\,
	ena => \input[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input(5));

\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (input(6) & (\Add0~7\ $ (GND))) # (!input(6) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((input(6) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => input(6),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

\bin_input[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_input(6),
	o => \bin_input[6]~input_o\);

\input[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[6]~6_combout\ = (\s_state.sub100~q\ & (\Add0~8_combout\)) # (!\s_state.sub100~q\ & ((\bin_input[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \bin_input[6]~input_o\,
	datad => \s_state.sub100~q\,
	combout => \input[6]~6_combout\);

\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (input(6) & (\Add2~9\ & VCC)) # (!input(6) & (!\Add2~9\))
-- \Add2~11\ = CARRY((!input(6) & !\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => input(6),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

\input[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \input[6]~6_combout\,
	asdata => \Add2~10_combout\,
	sload => \s_state.sub10~q\,
	ena => \input[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input(6));

\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (input(7) & (\Add0~9\ & VCC)) # (!input(7) & (!\Add0~9\))
-- \Add0~11\ = CARRY((!input(7) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => input(7),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

\bin_input[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_input(7),
	o => \bin_input[7]~input_o\);

\input[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[7]~2_combout\ = (\s_state.sub100~q\ & (\Add0~10_combout\)) # (!\s_state.sub100~q\ & ((\bin_input[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \bin_input[7]~input_o\,
	datad => \s_state.sub100~q\,
	combout => \input[7]~2_combout\);

\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (input(7) & ((GND) # (!\Add2~11\))) # (!input(7) & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((input(7)) # (!\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => input(7),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

\input[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \input[7]~2_combout\,
	asdata => \Add2~12_combout\,
	sload => \s_state.sub10~q\,
	ena => \input[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input(7));

\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (input(8) & ((GND) # (!\Add0~11\))) # (!input(8) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((input(8)) # (!\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => input(8),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

\bin_input[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_input(8),
	o => \bin_input[8]~input_o\);

\input[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[8]~3_combout\ = (\s_state.sub100~q\ & (\Add0~12_combout\)) # (!\s_state.sub100~q\ & ((\bin_input[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \bin_input[8]~input_o\,
	datad => \s_state.sub100~q\,
	combout => \input[8]~3_combout\);

\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (input(8) & (\Add2~13\ & VCC)) # (!input(8) & (!\Add2~13\))
-- \Add2~15\ = CARRY((!input(8) & !\Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => input(8),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

\input[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \input[8]~3_combout\,
	asdata => \Add2~14_combout\,
	sload => \s_state.sub10~q\,
	ena => \input[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input(8));

\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = input(9) $ (!\Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => input(9),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

\bin_input[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_input(9),
	o => \bin_input[9]~input_o\);

\input[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[9]~4_combout\ = (\s_state.sub100~q\ & (\Add0~14_combout\)) # (!\s_state.sub100~q\ & ((\bin_input[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \bin_input[9]~input_o\,
	datad => \s_state.sub100~q\,
	combout => \input[9]~4_combout\);

\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = input(9) $ (\Add2~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => input(9),
	cin => \Add2~15\,
	combout => \Add2~16_combout\);

\input[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \input[9]~4_combout\,
	asdata => \Add2~16_combout\,
	sload => \s_state.sub10~q\,
	ena => \input[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input(9));

\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!input(7) & (!input(8) & !input(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => input(7),
	datac => input(8),
	datad => input(9),
	combout => \LessThan0~0_combout\);

\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\s_state.sub100~q\ & (\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # (!input(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.sub100~q\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => input(6),
	combout => \Selector0~0_combout\);

\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\s_state.finish~q\ & ((\Selector0~1_combout\ & (\s_state.sub10~q\)) # (!\Selector0~1_combout\ & ((\Selector0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.sub10~q\,
	datab => \Selector0~0_combout\,
	datac => \Selector0~1_combout\,
	datad => \s_state.finish~q\,
	combout => \Selector2~0_combout\);

\s_state.sub10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.sub10~q\);

\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\Selector0~0_combout\ & ((!\LessThan1~1_combout\) # (!\s_state.sub10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.sub10~q\,
	datac => \LessThan1~1_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector1~0_combout\);

\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\ & (!\s_state.finish~q\ & ((\s_state.sub100~q\) # (\input[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \s_state.sub100~q\,
	datac => \input[1]~8_combout\,
	datad => \s_state.finish~q\,
	combout => \Selector1~1_combout\);

\s_state.sub100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.sub100~q\);

\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!cem(0) & \s_state.sub100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cem(0),
	datad => \s_state.sub100~q\,
	combout => \Selector16~0_combout\);

\cem[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cem[0]~3_combout\ = ((\activate~input_o\ & !\s_state.idle~q\)) # (!\cem[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \activate~input_o\,
	datab => \s_state.idle~q\,
	datac => \cem[0]~2_combout\,
	combout => \cem[0]~3_combout\);

\cem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector16~0_combout\,
	ena => \cem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cem(0));

\digit2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => cem(0),
	ena => \s_state.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit2[0]~reg0_q\);

\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\s_state.sub100~q\ & (cem(0) $ (cem(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.sub100~q\,
	datac => cem(0),
	datad => cem(1),
	combout => \Selector15~0_combout\);

\cem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector15~0_combout\,
	ena => \cem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cem(1));

\digit2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => cem(1),
	ena => \s_state.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit2[1]~reg0_q\);

\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\s_state.sub100~q\ & (cem(2) $ (((cem(0) & cem(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.sub100~q\,
	datab => cem(2),
	datac => cem(0),
	datad => cem(1),
	combout => \Selector14~0_combout\);

\cem[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector14~0_combout\,
	ena => \cem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cem(2));

\digit2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => cem(2),
	ena => \s_state.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit2[2]~reg0_q\);

\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = cem(3) $ (((cem(0) & (cem(1) & cem(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cem(3),
	datab => cem(0),
	datac => cem(1),
	datad => cem(2),
	combout => \Add1~0_combout\);

\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\s_state.sub100~q\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.sub100~q\,
	datab => \Add1~0_combout\,
	combout => \Selector13~0_combout\);

\cem[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector13~0_combout\,
	ena => \cem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cem(3));

\digit2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => cem(3),
	ena => \s_state.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit2[3]~reg0_q\);

\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (!dez(0) & \s_state.sub10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dez(0),
	datad => \s_state.sub10~q\,
	combout => \Selector20~0_combout\);

\dez[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dez[0]~2_combout\ = (\activate~input_o\ & (((!\LessThan1~1_combout\ & \s_state.sub10~q\)) # (!\s_state.idle~q\))) # (!\activate~input_o\ & (((!\LessThan1~1_combout\ & \s_state.sub10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \activate~input_o\,
	datab => \s_state.idle~q\,
	datac => \LessThan1~1_combout\,
	datad => \s_state.sub10~q\,
	combout => \dez[0]~2_combout\);

\dez[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector20~0_combout\,
	ena => \dez[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dez(0));

\digit1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => dez(0),
	ena => \s_state.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit1[0]~reg0_q\);

\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\s_state.sub10~q\ & (dez(0) $ (dez(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.sub10~q\,
	datac => dez(0),
	datad => dez(1),
	combout => \Selector19~0_combout\);

\dez[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector19~0_combout\,
	ena => \dez[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dez(1));

\digit1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => dez(1),
	ena => \s_state.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit1[1]~reg0_q\);

\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\s_state.sub10~q\ & (dez(2) $ (((dez(0) & dez(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.sub10~q\,
	datab => dez(2),
	datac => dez(0),
	datad => dez(1),
	combout => \Selector18~0_combout\);

\dez[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector18~0_combout\,
	ena => \dez[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dez(2));

\digit1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => dez(2),
	ena => \s_state.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit1[2]~reg0_q\);

\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = dez(3) $ (((dez(0) & (dez(1) & dez(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dez(3),
	datab => dez(0),
	datac => dez(1),
	datad => dez(2),
	combout => \Add3~0_combout\);

\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\s_state.sub10~q\ & \Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.sub10~q\,
	datab => \Add3~0_combout\,
	combout => \Selector17~0_combout\);

\dez[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector17~0_combout\,
	ena => \dez[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dez(3));

\digit1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => dez(3),
	ena => \s_state.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit1[3]~reg0_q\);

\bin_input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_input(0),
	o => \bin_input[0]~input_o\);

\input[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \input[0]~9_combout\ = (\activate~input_o\ & ((\s_state.idle~q\ & (input(0))) # (!\s_state.idle~q\ & ((\bin_input[0]~input_o\))))) # (!\activate~input_o\ & (input(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => input(0),
	datab => \bin_input[0]~input_o\,
	datac => \activate~input_o\,
	datad => \s_state.idle~q\,
	combout => \input[0]~9_combout\);

\input[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \input[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input(0));

\digit0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => input(0),
	ena => \s_state.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit0[0]~reg0_q\);

\digit0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => input(1),
	ena => \s_state.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit0[1]~reg0_q\);

\digit0[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => input(2),
	ena => \s_state.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit0[2]~reg0_q\);

\digit0[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => input(3),
	ena => \s_state.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit0[3]~reg0_q\);

\done~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_state.finish~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \done~reg0_q\);

ww_digit2(0) <= \digit2[0]~output_o\;

ww_digit2(1) <= \digit2[1]~output_o\;

ww_digit2(2) <= \digit2[2]~output_o\;

ww_digit2(3) <= \digit2[3]~output_o\;

ww_digit1(0) <= \digit1[0]~output_o\;

ww_digit1(1) <= \digit1[1]~output_o\;

ww_digit1(2) <= \digit1[2]~output_o\;

ww_digit1(3) <= \digit1[3]~output_o\;

ww_digit0(0) <= \digit0[0]~output_o\;

ww_digit0(1) <= \digit0[1]~output_o\;

ww_digit0(2) <= \digit0[2]~output_o\;

ww_digit0(3) <= \digit0[3]~output_o\;

ww_done <= \done~output_o\;
END structure;


