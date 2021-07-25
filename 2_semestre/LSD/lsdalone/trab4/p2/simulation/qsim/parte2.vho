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

-- DATE "04/23/2021 01:40:36"

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

ENTITY 	Register8 IS
    PORT (
	clk : IN std_logic;
	wrEn : IN std_logic;
	datain : IN std_logic_vector(7 DOWNTO 0);
	dataout : OUT std_logic_vector(7 DOWNTO 0)
	);
END Register8;

ARCHITECTURE structure OF Register8 IS
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
SIGNAL ww_wrEn : std_logic;
SIGNAL ww_datain : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \wrEn~input_o\ : std_logic;
SIGNAL \dataout[0]~reg0_q\ : std_logic;
SIGNAL \datain[1]~input_o\ : std_logic;
SIGNAL \dataout[1]~reg0_q\ : std_logic;
SIGNAL \datain[2]~input_o\ : std_logic;
SIGNAL \dataout[2]~reg0_q\ : std_logic;
SIGNAL \datain[3]~input_o\ : std_logic;
SIGNAL \dataout[3]~reg0_q\ : std_logic;
SIGNAL \datain[4]~input_o\ : std_logic;
SIGNAL \dataout[4]~reg0_q\ : std_logic;
SIGNAL \datain[5]~input_o\ : std_logic;
SIGNAL \dataout[5]~reg0_q\ : std_logic;
SIGNAL \datain[6]~input_o\ : std_logic;
SIGNAL \dataout[6]~reg0_q\ : std_logic;
SIGNAL \datain[7]~input_o\ : std_logic;
SIGNAL \dataout[7]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_wrEn <= wrEn;
ww_datain <= datain;
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
	i => \dataout[0]~reg0_q\,
	devoe => ww_devoe,
	o => \dataout[0]~output_o\);

\dataout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataout[1]~reg0_q\,
	devoe => ww_devoe,
	o => \dataout[1]~output_o\);

\dataout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataout[2]~reg0_q\,
	devoe => ww_devoe,
	o => \dataout[2]~output_o\);

\dataout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataout[3]~reg0_q\,
	devoe => ww_devoe,
	o => \dataout[3]~output_o\);

\dataout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataout[4]~reg0_q\,
	devoe => ww_devoe,
	o => \dataout[4]~output_o\);

\dataout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataout[5]~reg0_q\,
	devoe => ww_devoe,
	o => \dataout[5]~output_o\);

\dataout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataout[6]~reg0_q\,
	devoe => ww_devoe,
	o => \dataout[6]~output_o\);

\dataout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataout[7]~reg0_q\,
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

\wrEn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wrEn,
	o => \wrEn~input_o\);

\dataout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \datain[0]~input_o\,
	ena => \wrEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataout[0]~reg0_q\);

\datain[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(1),
	o => \datain[1]~input_o\);

\dataout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \datain[1]~input_o\,
	ena => \wrEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataout[1]~reg0_q\);

\datain[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(2),
	o => \datain[2]~input_o\);

\dataout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \datain[2]~input_o\,
	ena => \wrEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataout[2]~reg0_q\);

\datain[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(3),
	o => \datain[3]~input_o\);

\dataout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \datain[3]~input_o\,
	ena => \wrEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataout[3]~reg0_q\);

\datain[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(4),
	o => \datain[4]~input_o\);

\dataout[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \datain[4]~input_o\,
	ena => \wrEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataout[4]~reg0_q\);

\datain[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(5),
	o => \datain[5]~input_o\);

\dataout[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \datain[5]~input_o\,
	ena => \wrEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataout[5]~reg0_q\);

\datain[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(6),
	o => \datain[6]~input_o\);

\dataout[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \datain[6]~input_o\,
	ena => \wrEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataout[6]~reg0_q\);

\datain[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(7),
	o => \datain[7]~input_o\);

\dataout[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \datain[7]~input_o\,
	ena => \wrEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataout[7]~reg0_q\);

ww_dataout(0) <= \dataout[0]~output_o\;

ww_dataout(1) <= \dataout[1]~output_o\;

ww_dataout(2) <= \dataout[2]~output_o\;

ww_dataout(3) <= \dataout[3]~output_o\;

ww_dataout(4) <= \dataout[4]~output_o\;

ww_dataout(5) <= \dataout[5]~output_o\;

ww_dataout(6) <= \dataout[6]~output_o\;

ww_dataout(7) <= \dataout[7]~output_o\;
END structure;


