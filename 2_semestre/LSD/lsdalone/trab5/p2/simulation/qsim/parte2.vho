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

-- DATE "04/30/2021 00:43:11"

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

ENTITY 	AccN IS
    PORT (
	clk : IN std_logic;
	datain : IN std_logic_vector(7 DOWNTO 0);
	reset : IN std_logic;
	enable : IN std_logic;
	dataout : OUT std_logic_vector(7 DOWNTO 0)
	);
END AccN;

ARCHITECTURE structure OF AccN IS
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
SIGNAL ww_datain : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_dataout : std_logic_vector(7 DOWNTO 0);
SIGNAL \dataout[0]~output_o\ : std_logic;
SIGNAL \dataout[1]~output_o\ : std_logic;
SIGNAL \dataout[2]~output_o\ : std_logic;
SIGNAL \dataout[3]~output_o\ : std_logic;
SIGNAL \dataout[4]~output_o\ : std_logic;
SIGNAL \dataout[5]~output_o\ : std_logic;
SIGNAL \dataout[6]~output_o\ : std_logic;
SIGNAL \dataout[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \datain[0]~input_o\ : std_logic;
SIGNAL \t2|dataout[0]~8_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \t2|dataout[0]~10_combout\ : std_logic;
SIGNAL \datain[1]~input_o\ : std_logic;
SIGNAL \t2|dataout[0]~9\ : std_logic;
SIGNAL \t2|dataout[1]~11_combout\ : std_logic;
SIGNAL \datain[2]~input_o\ : std_logic;
SIGNAL \t2|dataout[1]~12\ : std_logic;
SIGNAL \t2|dataout[2]~13_combout\ : std_logic;
SIGNAL \datain[3]~input_o\ : std_logic;
SIGNAL \t2|dataout[2]~14\ : std_logic;
SIGNAL \t2|dataout[3]~15_combout\ : std_logic;
SIGNAL \datain[4]~input_o\ : std_logic;
SIGNAL \t2|dataout[3]~16\ : std_logic;
SIGNAL \t2|dataout[4]~17_combout\ : std_logic;
SIGNAL \datain[5]~input_o\ : std_logic;
SIGNAL \t2|dataout[4]~18\ : std_logic;
SIGNAL \t2|dataout[5]~19_combout\ : std_logic;
SIGNAL \datain[6]~input_o\ : std_logic;
SIGNAL \t2|dataout[5]~20\ : std_logic;
SIGNAL \t2|dataout[6]~21_combout\ : std_logic;
SIGNAL \datain[7]~input_o\ : std_logic;
SIGNAL \t2|dataout[6]~22\ : std_logic;
SIGNAL \t2|dataout[7]~23_combout\ : std_logic;
SIGNAL \t2|dataout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_datain <= datain;
ww_reset <= reset;
ww_enable <= enable;
dataout <= ww_dataout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dataout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t2|dataout\(0),
	devoe => ww_devoe,
	o => \dataout[0]~output_o\);

\dataout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t2|dataout\(1),
	devoe => ww_devoe,
	o => \dataout[1]~output_o\);

\dataout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t2|dataout\(2),
	devoe => ww_devoe,
	o => \dataout[2]~output_o\);

\dataout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t2|dataout\(3),
	devoe => ww_devoe,
	o => \dataout[3]~output_o\);

\dataout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t2|dataout\(4),
	devoe => ww_devoe,
	o => \dataout[4]~output_o\);

\dataout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t2|dataout\(5),
	devoe => ww_devoe,
	o => \dataout[5]~output_o\);

\dataout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t2|dataout\(6),
	devoe => ww_devoe,
	o => \dataout[6]~output_o\);

\dataout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t2|dataout\(7),
	devoe => ww_devoe,
	o => \dataout[7]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\datain[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(0),
	o => \datain[0]~input_o\);

\t2|dataout[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|dataout[0]~8_combout\ = (\t2|dataout\(0) & (\datain[0]~input_o\ $ (VCC))) # (!\t2|dataout\(0) & (\datain[0]~input_o\ & VCC))
-- \t2|dataout[0]~9\ = CARRY((\t2|dataout\(0) & \datain[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t2|dataout\(0),
	datab => \datain[0]~input_o\,
	datad => VCC,
	combout => \t2|dataout[0]~8_combout\,
	cout => \t2|dataout[0]~9\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\t2|dataout[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|dataout[0]~10_combout\ = (\reset~input_o\) # (\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \enable~input_o\,
	combout => \t2|dataout[0]~10_combout\);

\t2|dataout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t2|dataout[0]~8_combout\,
	sclr => \reset~input_o\,
	ena => \t2|dataout[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|dataout\(0));

\datain[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(1),
	o => \datain[1]~input_o\);

\t2|dataout[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|dataout[1]~11_combout\ = (\t2|dataout\(1) & ((\datain[1]~input_o\ & (\t2|dataout[0]~9\ & VCC)) # (!\datain[1]~input_o\ & (!\t2|dataout[0]~9\)))) # (!\t2|dataout\(1) & ((\datain[1]~input_o\ & (!\t2|dataout[0]~9\)) # (!\datain[1]~input_o\ & 
-- ((\t2|dataout[0]~9\) # (GND)))))
-- \t2|dataout[1]~12\ = CARRY((\t2|dataout\(1) & (!\datain[1]~input_o\ & !\t2|dataout[0]~9\)) # (!\t2|dataout\(1) & ((!\t2|dataout[0]~9\) # (!\datain[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|dataout\(1),
	datab => \datain[1]~input_o\,
	datad => VCC,
	cin => \t2|dataout[0]~9\,
	combout => \t2|dataout[1]~11_combout\,
	cout => \t2|dataout[1]~12\);

\t2|dataout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t2|dataout[1]~11_combout\,
	sclr => \reset~input_o\,
	ena => \t2|dataout[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|dataout\(1));

\datain[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(2),
	o => \datain[2]~input_o\);

\t2|dataout[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|dataout[2]~13_combout\ = ((\t2|dataout\(2) $ (\datain[2]~input_o\ $ (!\t2|dataout[1]~12\)))) # (GND)
-- \t2|dataout[2]~14\ = CARRY((\t2|dataout\(2) & ((\datain[2]~input_o\) # (!\t2|dataout[1]~12\))) # (!\t2|dataout\(2) & (\datain[2]~input_o\ & !\t2|dataout[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|dataout\(2),
	datab => \datain[2]~input_o\,
	datad => VCC,
	cin => \t2|dataout[1]~12\,
	combout => \t2|dataout[2]~13_combout\,
	cout => \t2|dataout[2]~14\);

\t2|dataout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t2|dataout[2]~13_combout\,
	sclr => \reset~input_o\,
	ena => \t2|dataout[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|dataout\(2));

\datain[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(3),
	o => \datain[3]~input_o\);

\t2|dataout[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|dataout[3]~15_combout\ = (\t2|dataout\(3) & ((\datain[3]~input_o\ & (\t2|dataout[2]~14\ & VCC)) # (!\datain[3]~input_o\ & (!\t2|dataout[2]~14\)))) # (!\t2|dataout\(3) & ((\datain[3]~input_o\ & (!\t2|dataout[2]~14\)) # (!\datain[3]~input_o\ & 
-- ((\t2|dataout[2]~14\) # (GND)))))
-- \t2|dataout[3]~16\ = CARRY((\t2|dataout\(3) & (!\datain[3]~input_o\ & !\t2|dataout[2]~14\)) # (!\t2|dataout\(3) & ((!\t2|dataout[2]~14\) # (!\datain[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|dataout\(3),
	datab => \datain[3]~input_o\,
	datad => VCC,
	cin => \t2|dataout[2]~14\,
	combout => \t2|dataout[3]~15_combout\,
	cout => \t2|dataout[3]~16\);

\t2|dataout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t2|dataout[3]~15_combout\,
	sclr => \reset~input_o\,
	ena => \t2|dataout[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|dataout\(3));

\datain[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(4),
	o => \datain[4]~input_o\);

\t2|dataout[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|dataout[4]~17_combout\ = ((\t2|dataout\(4) $ (\datain[4]~input_o\ $ (!\t2|dataout[3]~16\)))) # (GND)
-- \t2|dataout[4]~18\ = CARRY((\t2|dataout\(4) & ((\datain[4]~input_o\) # (!\t2|dataout[3]~16\))) # (!\t2|dataout\(4) & (\datain[4]~input_o\ & !\t2|dataout[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|dataout\(4),
	datab => \datain[4]~input_o\,
	datad => VCC,
	cin => \t2|dataout[3]~16\,
	combout => \t2|dataout[4]~17_combout\,
	cout => \t2|dataout[4]~18\);

\t2|dataout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t2|dataout[4]~17_combout\,
	sclr => \reset~input_o\,
	ena => \t2|dataout[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|dataout\(4));

\datain[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(5),
	o => \datain[5]~input_o\);

\t2|dataout[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|dataout[5]~19_combout\ = (\t2|dataout\(5) & ((\datain[5]~input_o\ & (\t2|dataout[4]~18\ & VCC)) # (!\datain[5]~input_o\ & (!\t2|dataout[4]~18\)))) # (!\t2|dataout\(5) & ((\datain[5]~input_o\ & (!\t2|dataout[4]~18\)) # (!\datain[5]~input_o\ & 
-- ((\t2|dataout[4]~18\) # (GND)))))
-- \t2|dataout[5]~20\ = CARRY((\t2|dataout\(5) & (!\datain[5]~input_o\ & !\t2|dataout[4]~18\)) # (!\t2|dataout\(5) & ((!\t2|dataout[4]~18\) # (!\datain[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|dataout\(5),
	datab => \datain[5]~input_o\,
	datad => VCC,
	cin => \t2|dataout[4]~18\,
	combout => \t2|dataout[5]~19_combout\,
	cout => \t2|dataout[5]~20\);

\t2|dataout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t2|dataout[5]~19_combout\,
	sclr => \reset~input_o\,
	ena => \t2|dataout[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|dataout\(5));

\datain[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(6),
	o => \datain[6]~input_o\);

\t2|dataout[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|dataout[6]~21_combout\ = ((\t2|dataout\(6) $ (\datain[6]~input_o\ $ (!\t2|dataout[5]~20\)))) # (GND)
-- \t2|dataout[6]~22\ = CARRY((\t2|dataout\(6) & ((\datain[6]~input_o\) # (!\t2|dataout[5]~20\))) # (!\t2|dataout\(6) & (\datain[6]~input_o\ & !\t2|dataout[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|dataout\(6),
	datab => \datain[6]~input_o\,
	datad => VCC,
	cin => \t2|dataout[5]~20\,
	combout => \t2|dataout[6]~21_combout\,
	cout => \t2|dataout[6]~22\);

\t2|dataout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t2|dataout[6]~21_combout\,
	sclr => \reset~input_o\,
	ena => \t2|dataout[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|dataout\(6));

\datain[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(7),
	o => \datain[7]~input_o\);

\t2|dataout[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|dataout[7]~23_combout\ = \t2|dataout\(7) $ (\datain[7]~input_o\ $ (\t2|dataout[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t2|dataout\(7),
	datab => \datain[7]~input_o\,
	cin => \t2|dataout[6]~22\,
	combout => \t2|dataout[7]~23_combout\);

\t2|dataout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \t2|dataout[7]~23_combout\,
	sclr => \reset~input_o\,
	ena => \t2|dataout[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2|dataout\(7));

ww_dataout(0) <= \dataout[0]~output_o\;

ww_dataout(1) <= \dataout[1]~output_o\;

ww_dataout(2) <= \dataout[2]~output_o\;

ww_dataout(3) <= \dataout[3]~output_o\;

ww_dataout(4) <= \dataout[4]~output_o\;

ww_dataout(5) <= \dataout[5]~output_o\;

ww_dataout(6) <= \dataout[6]~output_o\;

ww_dataout(7) <= \dataout[7]~output_o\;
END structure;


