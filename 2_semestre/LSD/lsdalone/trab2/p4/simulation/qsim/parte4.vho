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

-- DATE "04/21/2021 18:56:07"

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

ENTITY 	PEnc4_2 IS
    PORT (
	decodedin : IN std_logic_vector(3 DOWNTO 0);
	encodedout : OUT std_logic_vector(1 DOWNTO 0);
	validout : OUT std_logic
	);
END PEnc4_2;

ARCHITECTURE structure OF PEnc4_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_decodedin : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_encodedout : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_validout : std_logic;
SIGNAL \encodedout[0]~output_o\ : std_logic;
SIGNAL \encodedout[1]~output_o\ : std_logic;
SIGNAL \validout~output_o\ : std_logic;
SIGNAL \decodedin[1]~input_o\ : std_logic;
SIGNAL \decodedin[2]~input_o\ : std_logic;
SIGNAL \decodedin[0]~input_o\ : std_logic;
SIGNAL \encodedout~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \decodedin[3]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;

BEGIN

ww_decodedin <= decodedin;
encodedout <= ww_encodedout;
validout <= ww_validout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;

\encodedout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encodedout~0_combout\,
	devoe => ww_devoe,
	o => \encodedout[0]~output_o\);

\encodedout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \encodedout[1]~output_o\);

\validout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~1_combout\,
	devoe => ww_devoe,
	o => \validout~output_o\);

\decodedin[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedin(1),
	o => \decodedin[1]~input_o\);

\decodedin[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedin(2),
	o => \decodedin[2]~input_o\);

\decodedin[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedin(0),
	o => \decodedin[0]~input_o\);

\encodedout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedout~0_combout\ = (!\decodedin[0]~input_o\ & ((\decodedin[1]~input_o\) # (!\decodedin[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedin[1]~input_o\,
	datac => \decodedin[2]~input_o\,
	datad => \decodedin[0]~input_o\,
	combout => \encodedout~0_combout\);

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\decodedin[0]~input_o\ & !\decodedin[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decodedin[0]~input_o\,
	datad => \decodedin[1]~input_o\,
	combout => \Equal0~0_combout\);

\decodedin[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedin(3),
	o => \decodedin[3]~input_o\);

\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\decodedin[0]~input_o\ & (!\decodedin[1]~input_o\ & (!\decodedin[2]~input_o\ & !\decodedin[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedin[0]~input_o\,
	datab => \decodedin[1]~input_o\,
	datac => \decodedin[2]~input_o\,
	datad => \decodedin[3]~input_o\,
	combout => \Equal0~1_combout\);

ww_encodedout(0) <= \encodedout[0]~output_o\;

ww_encodedout(1) <= \encodedout[1]~output_o\;

ww_validout <= \validout~output_o\;
END structure;


