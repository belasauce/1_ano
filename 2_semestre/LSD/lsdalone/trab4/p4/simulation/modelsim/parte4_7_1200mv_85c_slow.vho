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

-- DATE "04/26/2021 14:22:27"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FreqDivider_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(0 DOWNTO 0)
	);
END FreqDivider_Demo;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FreqDivider_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \divisor|Add2~0_combout\ : std_logic;
SIGNAL \divisor|Add2~1\ : std_logic;
SIGNAL \divisor|Add2~2_combout\ : std_logic;
SIGNAL \divisor|Add2~3\ : std_logic;
SIGNAL \divisor|Add2~4_combout\ : std_logic;
SIGNAL \divisor|Add2~5\ : std_logic;
SIGNAL \divisor|Add2~6_combout\ : std_logic;
SIGNAL \divisor|Add2~7\ : std_logic;
SIGNAL \divisor|Add2~8_combout\ : std_logic;
SIGNAL \divisor|Add2~9\ : std_logic;
SIGNAL \divisor|Add2~10_combout\ : std_logic;
SIGNAL \divisor|Add2~11\ : std_logic;
SIGNAL \divisor|Add2~12_combout\ : std_logic;
SIGNAL \divisor|s_counter~7_combout\ : std_logic;
SIGNAL \divisor|Add2~13\ : std_logic;
SIGNAL \divisor|Add2~14_combout\ : std_logic;
SIGNAL \divisor|Add2~15\ : std_logic;
SIGNAL \divisor|Add2~16_combout\ : std_logic;
SIGNAL \divisor|Add2~17\ : std_logic;
SIGNAL \divisor|Add2~18_combout\ : std_logic;
SIGNAL \divisor|Add2~19\ : std_logic;
SIGNAL \divisor|Add2~20_combout\ : std_logic;
SIGNAL \divisor|Add2~21\ : std_logic;
SIGNAL \divisor|Add2~22_combout\ : std_logic;
SIGNAL \divisor|s_counter~6_combout\ : std_logic;
SIGNAL \divisor|Add2~23\ : std_logic;
SIGNAL \divisor|Add2~24_combout\ : std_logic;
SIGNAL \divisor|s_counter~5_combout\ : std_logic;
SIGNAL \divisor|Add2~25\ : std_logic;
SIGNAL \divisor|Add2~26_combout\ : std_logic;
SIGNAL \divisor|s_counter~4_combout\ : std_logic;
SIGNAL \divisor|Add2~27\ : std_logic;
SIGNAL \divisor|Add2~28_combout\ : std_logic;
SIGNAL \divisor|s_counter~11_combout\ : std_logic;
SIGNAL \divisor|Add2~29\ : std_logic;
SIGNAL \divisor|Add2~30_combout\ : std_logic;
SIGNAL \divisor|Add2~31\ : std_logic;
SIGNAL \divisor|Add2~32_combout\ : std_logic;
SIGNAL \divisor|s_counter~10_combout\ : std_logic;
SIGNAL \divisor|Add2~33\ : std_logic;
SIGNAL \divisor|Add2~34_combout\ : std_logic;
SIGNAL \divisor|Add2~35\ : std_logic;
SIGNAL \divisor|Add2~36_combout\ : std_logic;
SIGNAL \divisor|s_counter~3_combout\ : std_logic;
SIGNAL \divisor|Add2~37\ : std_logic;
SIGNAL \divisor|Add2~38_combout\ : std_logic;
SIGNAL \divisor|s_counter~2_combout\ : std_logic;
SIGNAL \divisor|Add2~39\ : std_logic;
SIGNAL \divisor|Add2~40_combout\ : std_logic;
SIGNAL \divisor|s_counter~1_combout\ : std_logic;
SIGNAL \divisor|Add2~41\ : std_logic;
SIGNAL \divisor|Add2~42_combout\ : std_logic;
SIGNAL \divisor|s_counter~0_combout\ : std_logic;
SIGNAL \divisor|Add2~43\ : std_logic;
SIGNAL \divisor|Add2~44_combout\ : std_logic;
SIGNAL \divisor|s_counter~9_combout\ : std_logic;
SIGNAL \divisor|Add2~45\ : std_logic;
SIGNAL \divisor|Add2~46_combout\ : std_logic;
SIGNAL \divisor|Add2~47\ : std_logic;
SIGNAL \divisor|Add2~48_combout\ : std_logic;
SIGNAL \divisor|s_counter~8_combout\ : std_logic;
SIGNAL \divisor|Equal0~7_combout\ : std_logic;
SIGNAL \divisor|Equal0~8_combout\ : std_logic;
SIGNAL \divisor|Add2~49\ : std_logic;
SIGNAL \divisor|Add2~50_combout\ : std_logic;
SIGNAL \divisor|Add2~51\ : std_logic;
SIGNAL \divisor|Add2~52_combout\ : std_logic;
SIGNAL \divisor|Equal0~1_combout\ : std_logic;
SIGNAL \divisor|Equal0~2_combout\ : std_logic;
SIGNAL \divisor|Add2~53\ : std_logic;
SIGNAL \divisor|Add2~54_combout\ : std_logic;
SIGNAL \divisor|Add2~55\ : std_logic;
SIGNAL \divisor|Add2~56_combout\ : std_logic;
SIGNAL \divisor|Add2~57\ : std_logic;
SIGNAL \divisor|Add2~58_combout\ : std_logic;
SIGNAL \divisor|Add2~59\ : std_logic;
SIGNAL \divisor|Add2~60_combout\ : std_logic;
SIGNAL \divisor|Equal0~0_combout\ : std_logic;
SIGNAL \divisor|Equal0~3_combout\ : std_logic;
SIGNAL \divisor|Equal0~4_combout\ : std_logic;
SIGNAL \divisor|Equal0~5_combout\ : std_logic;
SIGNAL \divisor|Equal0~6_combout\ : std_logic;
SIGNAL \divisor|Equal0~9_combout\ : std_logic;
SIGNAL \divisor|clkOut~0_combout\ : std_logic;
SIGNAL \divisor|clkOut~1_combout\ : std_logic;
SIGNAL \divisor|clkOut~2_combout\ : std_logic;
SIGNAL \divisor|clkOut~3_combout\ : std_logic;
SIGNAL \divisor|clkOut~q\ : std_logic;
SIGNAL \divisor|s_counter\ : std_logic_vector(30 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divisor|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X74_Y69_N2
\divisor|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~0_combout\ = \divisor|s_counter\(0) $ (VCC)
-- \divisor|Add2~1\ = CARRY(\divisor|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(0),
	datad => VCC,
	combout => \divisor|Add2~0_combout\,
	cout => \divisor|Add2~1\);

-- Location: FF_X74_Y69_N3
\divisor|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(0));

-- Location: LCCOMB_X74_Y69_N4
\divisor|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~2_combout\ = (\divisor|s_counter\(1) & (!\divisor|Add2~1\)) # (!\divisor|s_counter\(1) & ((\divisor|Add2~1\) # (GND)))
-- \divisor|Add2~3\ = CARRY((!\divisor|Add2~1\) # (!\divisor|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(1),
	datad => VCC,
	cin => \divisor|Add2~1\,
	combout => \divisor|Add2~2_combout\,
	cout => \divisor|Add2~3\);

-- Location: FF_X74_Y69_N5
\divisor|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(1));

-- Location: LCCOMB_X74_Y69_N6
\divisor|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~4_combout\ = (\divisor|s_counter\(2) & (\divisor|Add2~3\ $ (GND))) # (!\divisor|s_counter\(2) & (!\divisor|Add2~3\ & VCC))
-- \divisor|Add2~5\ = CARRY((\divisor|s_counter\(2) & !\divisor|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(2),
	datad => VCC,
	cin => \divisor|Add2~3\,
	combout => \divisor|Add2~4_combout\,
	cout => \divisor|Add2~5\);

-- Location: FF_X74_Y69_N7
\divisor|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(2));

-- Location: LCCOMB_X74_Y69_N8
\divisor|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~6_combout\ = (\divisor|s_counter\(3) & (!\divisor|Add2~5\)) # (!\divisor|s_counter\(3) & ((\divisor|Add2~5\) # (GND)))
-- \divisor|Add2~7\ = CARRY((!\divisor|Add2~5\) # (!\divisor|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(3),
	datad => VCC,
	cin => \divisor|Add2~5\,
	combout => \divisor|Add2~6_combout\,
	cout => \divisor|Add2~7\);

-- Location: FF_X74_Y69_N9
\divisor|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(3));

-- Location: LCCOMB_X74_Y69_N10
\divisor|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~8_combout\ = (\divisor|s_counter\(4) & (\divisor|Add2~7\ $ (GND))) # (!\divisor|s_counter\(4) & (!\divisor|Add2~7\ & VCC))
-- \divisor|Add2~9\ = CARRY((\divisor|s_counter\(4) & !\divisor|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(4),
	datad => VCC,
	cin => \divisor|Add2~7\,
	combout => \divisor|Add2~8_combout\,
	cout => \divisor|Add2~9\);

-- Location: FF_X74_Y69_N11
\divisor|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(4));

-- Location: LCCOMB_X74_Y69_N12
\divisor|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~10_combout\ = (\divisor|s_counter\(5) & (!\divisor|Add2~9\)) # (!\divisor|s_counter\(5) & ((\divisor|Add2~9\) # (GND)))
-- \divisor|Add2~11\ = CARRY((!\divisor|Add2~9\) # (!\divisor|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(5),
	datad => VCC,
	cin => \divisor|Add2~9\,
	combout => \divisor|Add2~10_combout\,
	cout => \divisor|Add2~11\);

-- Location: FF_X74_Y69_N13
\divisor|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(5));

-- Location: LCCOMB_X74_Y69_N14
\divisor|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~12_combout\ = (\divisor|s_counter\(6) & (\divisor|Add2~11\ $ (GND))) # (!\divisor|s_counter\(6) & (!\divisor|Add2~11\ & VCC))
-- \divisor|Add2~13\ = CARRY((\divisor|s_counter\(6) & !\divisor|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(6),
	datad => VCC,
	cin => \divisor|Add2~11\,
	combout => \divisor|Add2~12_combout\,
	cout => \divisor|Add2~13\);

-- Location: LCCOMB_X74_Y69_N0
\divisor|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_counter~7_combout\ = (\divisor|Add2~12_combout\ & !\divisor|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|Add2~12_combout\,
	datad => \divisor|Equal0~9_combout\,
	combout => \divisor|s_counter~7_combout\);

-- Location: FF_X74_Y69_N1
\divisor|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(6));

-- Location: LCCOMB_X74_Y69_N16
\divisor|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~14_combout\ = (\divisor|s_counter\(7) & (!\divisor|Add2~13\)) # (!\divisor|s_counter\(7) & ((\divisor|Add2~13\) # (GND)))
-- \divisor|Add2~15\ = CARRY((!\divisor|Add2~13\) # (!\divisor|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(7),
	datad => VCC,
	cin => \divisor|Add2~13\,
	combout => \divisor|Add2~14_combout\,
	cout => \divisor|Add2~15\);

-- Location: FF_X74_Y69_N17
\divisor|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(7));

-- Location: LCCOMB_X74_Y69_N18
\divisor|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~16_combout\ = (\divisor|s_counter\(8) & (\divisor|Add2~15\ $ (GND))) # (!\divisor|s_counter\(8) & (!\divisor|Add2~15\ & VCC))
-- \divisor|Add2~17\ = CARRY((\divisor|s_counter\(8) & !\divisor|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(8),
	datad => VCC,
	cin => \divisor|Add2~15\,
	combout => \divisor|Add2~16_combout\,
	cout => \divisor|Add2~17\);

-- Location: FF_X74_Y69_N19
\divisor|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(8));

-- Location: LCCOMB_X74_Y69_N20
\divisor|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~18_combout\ = (\divisor|s_counter\(9) & (!\divisor|Add2~17\)) # (!\divisor|s_counter\(9) & ((\divisor|Add2~17\) # (GND)))
-- \divisor|Add2~19\ = CARRY((!\divisor|Add2~17\) # (!\divisor|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(9),
	datad => VCC,
	cin => \divisor|Add2~17\,
	combout => \divisor|Add2~18_combout\,
	cout => \divisor|Add2~19\);

-- Location: FF_X74_Y69_N21
\divisor|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(9));

-- Location: LCCOMB_X74_Y69_N22
\divisor|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~20_combout\ = (\divisor|s_counter\(10) & (\divisor|Add2~19\ $ (GND))) # (!\divisor|s_counter\(10) & (!\divisor|Add2~19\ & VCC))
-- \divisor|Add2~21\ = CARRY((\divisor|s_counter\(10) & !\divisor|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(10),
	datad => VCC,
	cin => \divisor|Add2~19\,
	combout => \divisor|Add2~20_combout\,
	cout => \divisor|Add2~21\);

-- Location: FF_X74_Y69_N23
\divisor|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(10));

-- Location: LCCOMB_X74_Y69_N24
\divisor|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~22_combout\ = (\divisor|s_counter\(11) & (!\divisor|Add2~21\)) # (!\divisor|s_counter\(11) & ((\divisor|Add2~21\) # (GND)))
-- \divisor|Add2~23\ = CARRY((!\divisor|Add2~21\) # (!\divisor|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(11),
	datad => VCC,
	cin => \divisor|Add2~21\,
	combout => \divisor|Add2~22_combout\,
	cout => \divisor|Add2~23\);

-- Location: LCCOMB_X75_Y68_N6
\divisor|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_counter~6_combout\ = (\divisor|Add2~22_combout\ & !\divisor|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|Add2~22_combout\,
	datad => \divisor|Equal0~9_combout\,
	combout => \divisor|s_counter~6_combout\);

-- Location: FF_X75_Y68_N7
\divisor|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(11));

-- Location: LCCOMB_X74_Y69_N26
\divisor|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~24_combout\ = (\divisor|s_counter\(12) & (\divisor|Add2~23\ $ (GND))) # (!\divisor|s_counter\(12) & (!\divisor|Add2~23\ & VCC))
-- \divisor|Add2~25\ = CARRY((\divisor|s_counter\(12) & !\divisor|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(12),
	datad => VCC,
	cin => \divisor|Add2~23\,
	combout => \divisor|Add2~24_combout\,
	cout => \divisor|Add2~25\);

-- Location: LCCOMB_X75_Y68_N18
\divisor|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_counter~5_combout\ = (\divisor|Add2~24_combout\ & !\divisor|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|Add2~24_combout\,
	datad => \divisor|Equal0~9_combout\,
	combout => \divisor|s_counter~5_combout\);

-- Location: FF_X75_Y68_N19
\divisor|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(12));

-- Location: LCCOMB_X74_Y69_N28
\divisor|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~26_combout\ = (\divisor|s_counter\(13) & (!\divisor|Add2~25\)) # (!\divisor|s_counter\(13) & ((\divisor|Add2~25\) # (GND)))
-- \divisor|Add2~27\ = CARRY((!\divisor|Add2~25\) # (!\divisor|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(13),
	datad => VCC,
	cin => \divisor|Add2~25\,
	combout => \divisor|Add2~26_combout\,
	cout => \divisor|Add2~27\);

-- Location: LCCOMB_X75_Y68_N0
\divisor|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_counter~4_combout\ = (\divisor|Add2~26_combout\ & !\divisor|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|Add2~26_combout\,
	datad => \divisor|Equal0~9_combout\,
	combout => \divisor|s_counter~4_combout\);

-- Location: FF_X75_Y68_N1
\divisor|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(13));

-- Location: LCCOMB_X74_Y69_N30
\divisor|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~28_combout\ = (\divisor|s_counter\(14) & (\divisor|Add2~27\ $ (GND))) # (!\divisor|s_counter\(14) & (!\divisor|Add2~27\ & VCC))
-- \divisor|Add2~29\ = CARRY((\divisor|s_counter\(14) & !\divisor|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(14),
	datad => VCC,
	cin => \divisor|Add2~27\,
	combout => \divisor|Add2~28_combout\,
	cout => \divisor|Add2~29\);

-- Location: LCCOMB_X73_Y68_N14
\divisor|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_counter~11_combout\ = (\divisor|Add2~28_combout\ & !\divisor|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|Add2~28_combout\,
	datad => \divisor|Equal0~9_combout\,
	combout => \divisor|s_counter~11_combout\);

-- Location: FF_X73_Y68_N15
\divisor|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(14));

-- Location: LCCOMB_X74_Y68_N0
\divisor|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~30_combout\ = (\divisor|s_counter\(15) & (!\divisor|Add2~29\)) # (!\divisor|s_counter\(15) & ((\divisor|Add2~29\) # (GND)))
-- \divisor|Add2~31\ = CARRY((!\divisor|Add2~29\) # (!\divisor|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(15),
	datad => VCC,
	cin => \divisor|Add2~29\,
	combout => \divisor|Add2~30_combout\,
	cout => \divisor|Add2~31\);

-- Location: FF_X74_Y68_N1
\divisor|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(15));

-- Location: LCCOMB_X74_Y68_N2
\divisor|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~32_combout\ = (\divisor|s_counter\(16) & (\divisor|Add2~31\ $ (GND))) # (!\divisor|s_counter\(16) & (!\divisor|Add2~31\ & VCC))
-- \divisor|Add2~33\ = CARRY((\divisor|s_counter\(16) & !\divisor|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(16),
	datad => VCC,
	cin => \divisor|Add2~31\,
	combout => \divisor|Add2~32_combout\,
	cout => \divisor|Add2~33\);

-- Location: LCCOMB_X73_Y68_N24
\divisor|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_counter~10_combout\ = (\divisor|Add2~32_combout\ & !\divisor|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Add2~32_combout\,
	datad => \divisor|Equal0~9_combout\,
	combout => \divisor|s_counter~10_combout\);

-- Location: FF_X73_Y68_N25
\divisor|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(16));

-- Location: LCCOMB_X74_Y68_N4
\divisor|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~34_combout\ = (\divisor|s_counter\(17) & (!\divisor|Add2~33\)) # (!\divisor|s_counter\(17) & ((\divisor|Add2~33\) # (GND)))
-- \divisor|Add2~35\ = CARRY((!\divisor|Add2~33\) # (!\divisor|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(17),
	datad => VCC,
	cin => \divisor|Add2~33\,
	combout => \divisor|Add2~34_combout\,
	cout => \divisor|Add2~35\);

-- Location: FF_X74_Y68_N5
\divisor|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add2~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(17));

-- Location: LCCOMB_X74_Y68_N6
\divisor|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~36_combout\ = (\divisor|s_counter\(18) & (\divisor|Add2~35\ $ (GND))) # (!\divisor|s_counter\(18) & (!\divisor|Add2~35\ & VCC))
-- \divisor|Add2~37\ = CARRY((\divisor|s_counter\(18) & !\divisor|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(18),
	datad => VCC,
	cin => \divisor|Add2~35\,
	combout => \divisor|Add2~36_combout\,
	cout => \divisor|Add2~37\);

-- Location: LCCOMB_X75_Y68_N22
\divisor|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_counter~3_combout\ = (\divisor|Add2~36_combout\ & !\divisor|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|Add2~36_combout\,
	datad => \divisor|Equal0~9_combout\,
	combout => \divisor|s_counter~3_combout\);

-- Location: FF_X75_Y68_N23
\divisor|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(18));

-- Location: LCCOMB_X74_Y68_N8
\divisor|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~38_combout\ = (\divisor|s_counter\(19) & (!\divisor|Add2~37\)) # (!\divisor|s_counter\(19) & ((\divisor|Add2~37\) # (GND)))
-- \divisor|Add2~39\ = CARRY((!\divisor|Add2~37\) # (!\divisor|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(19),
	datad => VCC,
	cin => \divisor|Add2~37\,
	combout => \divisor|Add2~38_combout\,
	cout => \divisor|Add2~39\);

-- Location: LCCOMB_X75_Y68_N28
\divisor|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_counter~2_combout\ = (\divisor|Add2~38_combout\ & !\divisor|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|Add2~38_combout\,
	datad => \divisor|Equal0~9_combout\,
	combout => \divisor|s_counter~2_combout\);

-- Location: FF_X75_Y68_N29
\divisor|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(19));

-- Location: LCCOMB_X74_Y68_N10
\divisor|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~40_combout\ = (\divisor|s_counter\(20) & (\divisor|Add2~39\ $ (GND))) # (!\divisor|s_counter\(20) & (!\divisor|Add2~39\ & VCC))
-- \divisor|Add2~41\ = CARRY((\divisor|s_counter\(20) & !\divisor|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(20),
	datad => VCC,
	cin => \divisor|Add2~39\,
	combout => \divisor|Add2~40_combout\,
	cout => \divisor|Add2~41\);

-- Location: LCCOMB_X75_Y68_N12
\divisor|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_counter~1_combout\ = (\divisor|Add2~40_combout\ & !\divisor|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Add2~40_combout\,
	datad => \divisor|Equal0~9_combout\,
	combout => \divisor|s_counter~1_combout\);

-- Location: FF_X75_Y68_N13
\divisor|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(20));

-- Location: LCCOMB_X74_Y68_N12
\divisor|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~42_combout\ = (\divisor|s_counter\(21) & (!\divisor|Add2~41\)) # (!\divisor|s_counter\(21) & ((\divisor|Add2~41\) # (GND)))
-- \divisor|Add2~43\ = CARRY((!\divisor|Add2~41\) # (!\divisor|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(21),
	datad => VCC,
	cin => \divisor|Add2~41\,
	combout => \divisor|Add2~42_combout\,
	cout => \divisor|Add2~43\);

-- Location: LCCOMB_X75_Y68_N26
\divisor|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_counter~0_combout\ = (\divisor|Add2~42_combout\ & !\divisor|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|Add2~42_combout\,
	datad => \divisor|Equal0~9_combout\,
	combout => \divisor|s_counter~0_combout\);

-- Location: FF_X75_Y68_N27
\divisor|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(21));

-- Location: LCCOMB_X74_Y68_N14
\divisor|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~44_combout\ = (\divisor|s_counter\(22) & (\divisor|Add2~43\ $ (GND))) # (!\divisor|s_counter\(22) & (!\divisor|Add2~43\ & VCC))
-- \divisor|Add2~45\ = CARRY((\divisor|s_counter\(22) & !\divisor|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(22),
	datad => VCC,
	cin => \divisor|Add2~43\,
	combout => \divisor|Add2~44_combout\,
	cout => \divisor|Add2~45\);

-- Location: LCCOMB_X73_Y68_N8
\divisor|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_counter~9_combout\ = (\divisor|Add2~44_combout\ & !\divisor|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|Add2~44_combout\,
	datad => \divisor|Equal0~9_combout\,
	combout => \divisor|s_counter~9_combout\);

-- Location: FF_X73_Y68_N9
\divisor|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(22));

-- Location: LCCOMB_X74_Y68_N16
\divisor|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~46_combout\ = (\divisor|s_counter\(23) & (!\divisor|Add2~45\)) # (!\divisor|s_counter\(23) & ((\divisor|Add2~45\) # (GND)))
-- \divisor|Add2~47\ = CARRY((!\divisor|Add2~45\) # (!\divisor|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(23),
	datad => VCC,
	cin => \divisor|Add2~45\,
	combout => \divisor|Add2~46_combout\,
	cout => \divisor|Add2~47\);

-- Location: FF_X74_Y68_N17
\divisor|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add2~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(23));

-- Location: LCCOMB_X74_Y68_N18
\divisor|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~48_combout\ = (\divisor|s_counter\(24) & (\divisor|Add2~47\ $ (GND))) # (!\divisor|s_counter\(24) & (!\divisor|Add2~47\ & VCC))
-- \divisor|Add2~49\ = CARRY((\divisor|s_counter\(24) & !\divisor|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(24),
	datad => VCC,
	cin => \divisor|Add2~47\,
	combout => \divisor|Add2~48_combout\,
	cout => \divisor|Add2~49\);

-- Location: LCCOMB_X73_Y68_N10
\divisor|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_counter~8_combout\ = (!\divisor|Equal0~9_combout\ & \divisor|Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|Equal0~9_combout\,
	datad => \divisor|Add2~48_combout\,
	combout => \divisor|s_counter~8_combout\);

-- Location: FF_X73_Y68_N11
\divisor|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(24));

-- Location: LCCOMB_X73_Y68_N28
\divisor|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~7_combout\ = (!\divisor|s_counter\(17) & (\divisor|s_counter\(22) & (!\divisor|s_counter\(23) & \divisor|s_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(17),
	datab => \divisor|s_counter\(22),
	datac => \divisor|s_counter\(23),
	datad => \divisor|s_counter\(24),
	combout => \divisor|Equal0~7_combout\);

-- Location: LCCOMB_X73_Y68_N26
\divisor|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~8_combout\ = (\divisor|s_counter\(16) & (\divisor|s_counter\(14) & (!\divisor|s_counter\(15) & !\divisor|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(16),
	datab => \divisor|s_counter\(14),
	datac => \divisor|s_counter\(15),
	datad => \divisor|s_counter\(10),
	combout => \divisor|Equal0~8_combout\);

-- Location: LCCOMB_X74_Y68_N20
\divisor|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~50_combout\ = (\divisor|s_counter\(25) & (!\divisor|Add2~49\)) # (!\divisor|s_counter\(25) & ((\divisor|Add2~49\) # (GND)))
-- \divisor|Add2~51\ = CARRY((!\divisor|Add2~49\) # (!\divisor|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(25),
	datad => VCC,
	cin => \divisor|Add2~49\,
	combout => \divisor|Add2~50_combout\,
	cout => \divisor|Add2~51\);

-- Location: FF_X74_Y68_N21
\divisor|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add2~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(25));

-- Location: LCCOMB_X74_Y68_N22
\divisor|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~52_combout\ = (\divisor|s_counter\(26) & (\divisor|Add2~51\ $ (GND))) # (!\divisor|s_counter\(26) & (!\divisor|Add2~51\ & VCC))
-- \divisor|Add2~53\ = CARRY((\divisor|s_counter\(26) & !\divisor|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(26),
	datad => VCC,
	cin => \divisor|Add2~51\,
	combout => \divisor|Add2~52_combout\,
	cout => \divisor|Add2~53\);

-- Location: FF_X74_Y68_N23
\divisor|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add2~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(26));

-- Location: LCCOMB_X75_Y68_N30
\divisor|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~1_combout\ = (\divisor|s_counter\(20) & (!\divisor|s_counter\(25) & (\divisor|s_counter\(21) & !\divisor|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(20),
	datab => \divisor|s_counter\(25),
	datac => \divisor|s_counter\(21),
	datad => \divisor|s_counter\(26),
	combout => \divisor|Equal0~1_combout\);

-- Location: LCCOMB_X75_Y68_N20
\divisor|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~2_combout\ = (\divisor|s_counter\(18) & (\divisor|s_counter\(19) & (\divisor|s_counter\(12) & \divisor|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(18),
	datab => \divisor|s_counter\(19),
	datac => \divisor|s_counter\(12),
	datad => \divisor|s_counter\(13),
	combout => \divisor|Equal0~2_combout\);

-- Location: LCCOMB_X74_Y68_N24
\divisor|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~54_combout\ = (\divisor|s_counter\(27) & (!\divisor|Add2~53\)) # (!\divisor|s_counter\(27) & ((\divisor|Add2~53\) # (GND)))
-- \divisor|Add2~55\ = CARRY((!\divisor|Add2~53\) # (!\divisor|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(27),
	datad => VCC,
	cin => \divisor|Add2~53\,
	combout => \divisor|Add2~54_combout\,
	cout => \divisor|Add2~55\);

-- Location: FF_X74_Y68_N25
\divisor|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(27));

-- Location: LCCOMB_X74_Y68_N26
\divisor|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~56_combout\ = (\divisor|s_counter\(28) & (\divisor|Add2~55\ $ (GND))) # (!\divisor|s_counter\(28) & (!\divisor|Add2~55\ & VCC))
-- \divisor|Add2~57\ = CARRY((\divisor|s_counter\(28) & !\divisor|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(28),
	datad => VCC,
	cin => \divisor|Add2~55\,
	combout => \divisor|Add2~56_combout\,
	cout => \divisor|Add2~57\);

-- Location: FF_X74_Y68_N27
\divisor|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(28));

-- Location: LCCOMB_X74_Y68_N28
\divisor|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~58_combout\ = (\divisor|s_counter\(29) & (!\divisor|Add2~57\)) # (!\divisor|s_counter\(29) & ((\divisor|Add2~57\) # (GND)))
-- \divisor|Add2~59\ = CARRY((!\divisor|Add2~57\) # (!\divisor|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_counter\(29),
	datad => VCC,
	cin => \divisor|Add2~57\,
	combout => \divisor|Add2~58_combout\,
	cout => \divisor|Add2~59\);

-- Location: FF_X74_Y68_N29
\divisor|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add2~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(29));

-- Location: LCCOMB_X74_Y68_N30
\divisor|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add2~60_combout\ = \divisor|s_counter\(30) $ (!\divisor|Add2~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(30),
	cin => \divisor|Add2~59\,
	combout => \divisor|Add2~60_combout\);

-- Location: FF_X74_Y68_N31
\divisor|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_counter\(30));

-- Location: LCCOMB_X75_Y68_N8
\divisor|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~0_combout\ = (!\divisor|s_counter\(30) & (!\divisor|s_counter\(27) & (!\divisor|s_counter\(28) & !\divisor|s_counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(30),
	datab => \divisor|s_counter\(27),
	datac => \divisor|s_counter\(28),
	datad => \divisor|s_counter\(29),
	combout => \divisor|Equal0~0_combout\);

-- Location: LCCOMB_X75_Y68_N24
\divisor|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~3_combout\ = (\divisor|s_counter\(11) & (!\divisor|s_counter\(7) & (!\divisor|s_counter\(8) & !\divisor|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(11),
	datab => \divisor|s_counter\(7),
	datac => \divisor|s_counter\(8),
	datad => \divisor|s_counter\(9),
	combout => \divisor|Equal0~3_combout\);

-- Location: LCCOMB_X75_Y68_N14
\divisor|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~4_combout\ = (\divisor|Equal0~1_combout\ & (\divisor|Equal0~2_combout\ & (\divisor|Equal0~0_combout\ & \divisor|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Equal0~1_combout\,
	datab => \divisor|Equal0~2_combout\,
	datac => \divisor|Equal0~0_combout\,
	datad => \divisor|Equal0~3_combout\,
	combout => \divisor|Equal0~4_combout\);

-- Location: LCCOMB_X75_Y68_N16
\divisor|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~5_combout\ = (\divisor|s_counter\(4) & (\divisor|s_counter\(3) & (!\divisor|s_counter\(6) & \divisor|s_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(4),
	datab => \divisor|s_counter\(3),
	datac => \divisor|s_counter\(6),
	datad => \divisor|s_counter\(2),
	combout => \divisor|Equal0~5_combout\);

-- Location: LCCOMB_X75_Y68_N10
\divisor|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~6_combout\ = (\divisor|s_counter\(0) & (\divisor|s_counter\(1) & (\divisor|Equal0~4_combout\ & \divisor|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(0),
	datab => \divisor|s_counter\(1),
	datac => \divisor|Equal0~4_combout\,
	datad => \divisor|Equal0~5_combout\,
	combout => \divisor|Equal0~6_combout\);

-- Location: LCCOMB_X73_Y68_N16
\divisor|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~9_combout\ = (\divisor|s_counter\(5) & (\divisor|Equal0~7_combout\ & (\divisor|Equal0~8_combout\ & \divisor|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(5),
	datab => \divisor|Equal0~7_combout\,
	datac => \divisor|Equal0~8_combout\,
	datad => \divisor|Equal0~6_combout\,
	combout => \divisor|Equal0~9_combout\);

-- Location: LCCOMB_X73_Y68_N22
\divisor|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~0_combout\ = (\divisor|s_counter\(17) & (!\divisor|s_counter\(22) & (\divisor|s_counter\(23) & !\divisor|s_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(17),
	datab => \divisor|s_counter\(22),
	datac => \divisor|s_counter\(23),
	datad => \divisor|s_counter\(24),
	combout => \divisor|clkOut~0_combout\);

-- Location: LCCOMB_X73_Y68_N4
\divisor|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~1_combout\ = (!\divisor|s_counter\(16) & (!\divisor|s_counter\(14) & (\divisor|s_counter\(15) & \divisor|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(16),
	datab => \divisor|s_counter\(14),
	datac => \divisor|s_counter\(15),
	datad => \divisor|s_counter\(10),
	combout => \divisor|clkOut~1_combout\);

-- Location: LCCOMB_X73_Y68_N2
\divisor|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~2_combout\ = (!\divisor|s_counter\(5) & (\divisor|clkOut~0_combout\ & (\divisor|clkOut~1_combout\ & \divisor|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_counter\(5),
	datab => \divisor|clkOut~0_combout\,
	datac => \divisor|clkOut~1_combout\,
	datad => \divisor|Equal0~6_combout\,
	combout => \divisor|clkOut~2_combout\);

-- Location: LCCOMB_X73_Y68_N20
\divisor|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~3_combout\ = (!\divisor|Equal0~9_combout\ & ((\divisor|clkOut~q\) # (\divisor|clkOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|Equal0~9_combout\,
	datac => \divisor|clkOut~q\,
	datad => \divisor|clkOut~2_combout\,
	combout => \divisor|clkOut~3_combout\);

-- Location: FF_X73_Y68_N21
\divisor|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|clkOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|clkOut~q\);

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

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


