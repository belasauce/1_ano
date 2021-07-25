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

-- DATE "06/14/2021 22:23:43"

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

ENTITY 	TimerN_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(2 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END TimerN_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TimerN_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst2|count[0]~32_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst2|count[3]~41\ : std_logic;
SIGNAL \inst2|count[4]~42_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst2|count[0]~35_combout\ : std_logic;
SIGNAL \inst2|count[4]~43\ : std_logic;
SIGNAL \inst2|count[5]~44_combout\ : std_logic;
SIGNAL \inst2|count[5]~45\ : std_logic;
SIGNAL \inst2|count[6]~46_combout\ : std_logic;
SIGNAL \inst2|count[6]~47\ : std_logic;
SIGNAL \inst2|count[7]~48_combout\ : std_logic;
SIGNAL \inst2|count[7]~49\ : std_logic;
SIGNAL \inst2|count[8]~50_combout\ : std_logic;
SIGNAL \inst2|count[8]~51\ : std_logic;
SIGNAL \inst2|count[9]~52_combout\ : std_logic;
SIGNAL \inst2|count[9]~53\ : std_logic;
SIGNAL \inst2|count[10]~54_combout\ : std_logic;
SIGNAL \inst2|count[10]~55\ : std_logic;
SIGNAL \inst2|count[11]~56_combout\ : std_logic;
SIGNAL \inst2|count[11]~57\ : std_logic;
SIGNAL \inst2|count[12]~58_combout\ : std_logic;
SIGNAL \inst2|count[12]~59\ : std_logic;
SIGNAL \inst2|count[13]~60_combout\ : std_logic;
SIGNAL \inst2|count[13]~61\ : std_logic;
SIGNAL \inst2|count[14]~62_combout\ : std_logic;
SIGNAL \inst2|count[14]~63\ : std_logic;
SIGNAL \inst2|count[15]~64_combout\ : std_logic;
SIGNAL \inst2|count[15]~65\ : std_logic;
SIGNAL \inst2|count[16]~66_combout\ : std_logic;
SIGNAL \inst2|count[16]~67\ : std_logic;
SIGNAL \inst2|count[17]~68_combout\ : std_logic;
SIGNAL \inst2|count[17]~69\ : std_logic;
SIGNAL \inst2|count[18]~70_combout\ : std_logic;
SIGNAL \inst2|count[18]~71\ : std_logic;
SIGNAL \inst2|count[19]~72_combout\ : std_logic;
SIGNAL \inst2|count[19]~73\ : std_logic;
SIGNAL \inst2|count[20]~74_combout\ : std_logic;
SIGNAL \inst2|count[20]~75\ : std_logic;
SIGNAL \inst2|count[21]~76_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|count[21]~77\ : std_logic;
SIGNAL \inst2|count[22]~78_combout\ : std_logic;
SIGNAL \inst2|count[22]~79\ : std_logic;
SIGNAL \inst2|count[23]~80_combout\ : std_logic;
SIGNAL \inst2|count[23]~81\ : std_logic;
SIGNAL \inst2|count[24]~82_combout\ : std_logic;
SIGNAL \inst2|count[24]~83\ : std_logic;
SIGNAL \inst2|count[25]~84_combout\ : std_logic;
SIGNAL \inst2|Equal0~6_combout\ : std_logic;
SIGNAL \inst2|count[25]~85\ : std_logic;
SIGNAL \inst2|count[26]~86_combout\ : std_logic;
SIGNAL \inst2|count[26]~87\ : std_logic;
SIGNAL \inst2|count[27]~88_combout\ : std_logic;
SIGNAL \inst2|count[27]~89\ : std_logic;
SIGNAL \inst2|count[28]~90_combout\ : std_logic;
SIGNAL \inst2|count[28]~91\ : std_logic;
SIGNAL \inst2|count[29]~92_combout\ : std_logic;
SIGNAL \inst2|count[29]~93\ : std_logic;
SIGNAL \inst2|count[30]~94_combout\ : std_logic;
SIGNAL \inst2|count[30]~95\ : std_logic;
SIGNAL \inst2|count[31]~96_combout\ : std_logic;
SIGNAL \inst2|Equal0~7_combout\ : std_logic;
SIGNAL \inst2|Equal0~8_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Equal0~9_combout\ : std_logic;
SIGNAL \inst2|Equal0~10_combout\ : std_logic;
SIGNAL \inst2|count[0]~34_combout\ : std_logic;
SIGNAL \inst2|count[0]~33\ : std_logic;
SIGNAL \inst2|count[1]~36_combout\ : std_logic;
SIGNAL \inst2|count[1]~37\ : std_logic;
SIGNAL \inst2|count[2]~38_combout\ : std_logic;
SIGNAL \inst2|count[2]~39\ : std_logic;
SIGNAL \inst2|count[3]~40_combout\ : std_logic;
SIGNAL \inst2|timerout~0_combout\ : std_logic;
SIGNAL \inst2|timerout~1_combout\ : std_logic;
SIGNAL \inst2|timerout~2_combout\ : std_logic;
SIGNAL \inst2|timerout~q\ : std_logic;
SIGNAL \inst2|count\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
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
	i => \inst2|timerout~q\,
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

-- Location: LCCOMB_X76_Y64_N0
\inst2|count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[0]~32_combout\ = \inst2|count\(0) $ (VCC)
-- \inst2|count[0]~33\ = CARRY(\inst2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(0),
	datad => VCC,
	combout => \inst2|count[0]~32_combout\,
	cout => \inst2|count[0]~33\);

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

-- Location: LCCOMB_X76_Y64_N6
\inst2|count[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[3]~40_combout\ = (\inst2|count\(3) & (!\inst2|count[2]~39\)) # (!\inst2|count\(3) & ((\inst2|count[2]~39\) # (GND)))
-- \inst2|count[3]~41\ = CARRY((!\inst2|count[2]~39\) # (!\inst2|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(3),
	datad => VCC,
	cin => \inst2|count[2]~39\,
	combout => \inst2|count[3]~40_combout\,
	cout => \inst2|count[3]~41\);

-- Location: LCCOMB_X76_Y64_N8
\inst2|count[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[4]~42_combout\ = (\inst2|count\(4) & (\inst2|count[3]~41\ $ (GND))) # (!\inst2|count\(4) & (!\inst2|count[3]~41\ & VCC))
-- \inst2|count[4]~43\ = CARRY((\inst2|count\(4) & !\inst2|count[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(4),
	datad => VCC,
	cin => \inst2|count[3]~41\,
	combout => \inst2|count[4]~42_combout\,
	cout => \inst2|count[4]~43\);

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

-- Location: LCCOMB_X77_Y63_N10
\inst2|count[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[0]~35_combout\ = (\SW[1]~input_o\) # ((\SW[2]~input_o\ & ((\SW[0]~input_o\) # (!\inst2|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \inst2|Equal0~10_combout\,
	combout => \inst2|count[0]~35_combout\);

-- Location: FF_X76_Y64_N9
\inst2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[4]~42_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(4));

-- Location: LCCOMB_X76_Y64_N10
\inst2|count[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[5]~44_combout\ = (\inst2|count\(5) & (!\inst2|count[4]~43\)) # (!\inst2|count\(5) & ((\inst2|count[4]~43\) # (GND)))
-- \inst2|count[5]~45\ = CARRY((!\inst2|count[4]~43\) # (!\inst2|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(5),
	datad => VCC,
	cin => \inst2|count[4]~43\,
	combout => \inst2|count[5]~44_combout\,
	cout => \inst2|count[5]~45\);

-- Location: FF_X76_Y64_N11
\inst2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[5]~44_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(5));

-- Location: LCCOMB_X76_Y64_N12
\inst2|count[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[6]~46_combout\ = (\inst2|count\(6) & (\inst2|count[5]~45\ $ (GND))) # (!\inst2|count\(6) & (!\inst2|count[5]~45\ & VCC))
-- \inst2|count[6]~47\ = CARRY((\inst2|count\(6) & !\inst2|count[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(6),
	datad => VCC,
	cin => \inst2|count[5]~45\,
	combout => \inst2|count[6]~46_combout\,
	cout => \inst2|count[6]~47\);

-- Location: FF_X76_Y64_N13
\inst2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[6]~46_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(6));

-- Location: LCCOMB_X76_Y64_N14
\inst2|count[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[7]~48_combout\ = (\inst2|count\(7) & (!\inst2|count[6]~47\)) # (!\inst2|count\(7) & ((\inst2|count[6]~47\) # (GND)))
-- \inst2|count[7]~49\ = CARRY((!\inst2|count[6]~47\) # (!\inst2|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(7),
	datad => VCC,
	cin => \inst2|count[6]~47\,
	combout => \inst2|count[7]~48_combout\,
	cout => \inst2|count[7]~49\);

-- Location: FF_X76_Y64_N15
\inst2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[7]~48_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(7));

-- Location: LCCOMB_X76_Y64_N16
\inst2|count[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[8]~50_combout\ = (\inst2|count\(8) & (\inst2|count[7]~49\ $ (GND))) # (!\inst2|count\(8) & (!\inst2|count[7]~49\ & VCC))
-- \inst2|count[8]~51\ = CARRY((\inst2|count\(8) & !\inst2|count[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(8),
	datad => VCC,
	cin => \inst2|count[7]~49\,
	combout => \inst2|count[8]~50_combout\,
	cout => \inst2|count[8]~51\);

-- Location: FF_X76_Y64_N17
\inst2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[8]~50_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(8));

-- Location: LCCOMB_X76_Y64_N18
\inst2|count[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[9]~52_combout\ = (\inst2|count\(9) & (!\inst2|count[8]~51\)) # (!\inst2|count\(9) & ((\inst2|count[8]~51\) # (GND)))
-- \inst2|count[9]~53\ = CARRY((!\inst2|count[8]~51\) # (!\inst2|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(9),
	datad => VCC,
	cin => \inst2|count[8]~51\,
	combout => \inst2|count[9]~52_combout\,
	cout => \inst2|count[9]~53\);

-- Location: FF_X76_Y64_N19
\inst2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[9]~52_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(9));

-- Location: LCCOMB_X76_Y64_N20
\inst2|count[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[10]~54_combout\ = (\inst2|count\(10) & (\inst2|count[9]~53\ $ (GND))) # (!\inst2|count\(10) & (!\inst2|count[9]~53\ & VCC))
-- \inst2|count[10]~55\ = CARRY((\inst2|count\(10) & !\inst2|count[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(10),
	datad => VCC,
	cin => \inst2|count[9]~53\,
	combout => \inst2|count[10]~54_combout\,
	cout => \inst2|count[10]~55\);

-- Location: FF_X76_Y64_N21
\inst2|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[10]~54_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(10));

-- Location: LCCOMB_X76_Y64_N22
\inst2|count[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[11]~56_combout\ = (\inst2|count\(11) & (!\inst2|count[10]~55\)) # (!\inst2|count\(11) & ((\inst2|count[10]~55\) # (GND)))
-- \inst2|count[11]~57\ = CARRY((!\inst2|count[10]~55\) # (!\inst2|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(11),
	datad => VCC,
	cin => \inst2|count[10]~55\,
	combout => \inst2|count[11]~56_combout\,
	cout => \inst2|count[11]~57\);

-- Location: FF_X77_Y63_N21
\inst2|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|count[11]~56_combout\,
	sclr => \inst2|count[0]~34_combout\,
	sload => VCC,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(11));

-- Location: LCCOMB_X76_Y64_N24
\inst2|count[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[12]~58_combout\ = (\inst2|count\(12) & (\inst2|count[11]~57\ $ (GND))) # (!\inst2|count\(12) & (!\inst2|count[11]~57\ & VCC))
-- \inst2|count[12]~59\ = CARRY((\inst2|count\(12) & !\inst2|count[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(12),
	datad => VCC,
	cin => \inst2|count[11]~57\,
	combout => \inst2|count[12]~58_combout\,
	cout => \inst2|count[12]~59\);

-- Location: FF_X76_Y64_N25
\inst2|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[12]~58_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(12));

-- Location: LCCOMB_X76_Y64_N26
\inst2|count[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[13]~60_combout\ = (\inst2|count\(13) & (!\inst2|count[12]~59\)) # (!\inst2|count\(13) & ((\inst2|count[12]~59\) # (GND)))
-- \inst2|count[13]~61\ = CARRY((!\inst2|count[12]~59\) # (!\inst2|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(13),
	datad => VCC,
	cin => \inst2|count[12]~59\,
	combout => \inst2|count[13]~60_combout\,
	cout => \inst2|count[13]~61\);

-- Location: FF_X76_Y64_N27
\inst2|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[13]~60_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(13));

-- Location: LCCOMB_X76_Y64_N28
\inst2|count[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[14]~62_combout\ = (\inst2|count\(14) & (\inst2|count[13]~61\ $ (GND))) # (!\inst2|count\(14) & (!\inst2|count[13]~61\ & VCC))
-- \inst2|count[14]~63\ = CARRY((\inst2|count\(14) & !\inst2|count[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(14),
	datad => VCC,
	cin => \inst2|count[13]~61\,
	combout => \inst2|count[14]~62_combout\,
	cout => \inst2|count[14]~63\);

-- Location: FF_X77_Y63_N31
\inst2|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|count[14]~62_combout\,
	sclr => \inst2|count[0]~34_combout\,
	sload => VCC,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(14));

-- Location: LCCOMB_X76_Y64_N30
\inst2|count[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[15]~64_combout\ = (\inst2|count\(15) & (!\inst2|count[14]~63\)) # (!\inst2|count\(15) & ((\inst2|count[14]~63\) # (GND)))
-- \inst2|count[15]~65\ = CARRY((!\inst2|count[14]~63\) # (!\inst2|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(15),
	datad => VCC,
	cin => \inst2|count[14]~63\,
	combout => \inst2|count[15]~64_combout\,
	cout => \inst2|count[15]~65\);

-- Location: FF_X77_Y63_N9
\inst2|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|count[15]~64_combout\,
	sclr => \inst2|count[0]~34_combout\,
	sload => VCC,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(15));

-- Location: LCCOMB_X76_Y63_N0
\inst2|count[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[16]~66_combout\ = (\inst2|count\(16) & (\inst2|count[15]~65\ $ (GND))) # (!\inst2|count\(16) & (!\inst2|count[15]~65\ & VCC))
-- \inst2|count[16]~67\ = CARRY((\inst2|count\(16) & !\inst2|count[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(16),
	datad => VCC,
	cin => \inst2|count[15]~65\,
	combout => \inst2|count[16]~66_combout\,
	cout => \inst2|count[16]~67\);

-- Location: FF_X76_Y63_N1
\inst2|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[16]~66_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(16));

-- Location: LCCOMB_X76_Y63_N2
\inst2|count[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[17]~68_combout\ = (\inst2|count\(17) & (!\inst2|count[16]~67\)) # (!\inst2|count\(17) & ((\inst2|count[16]~67\) # (GND)))
-- \inst2|count[17]~69\ = CARRY((!\inst2|count[16]~67\) # (!\inst2|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(17),
	datad => VCC,
	cin => \inst2|count[16]~67\,
	combout => \inst2|count[17]~68_combout\,
	cout => \inst2|count[17]~69\);

-- Location: FF_X76_Y63_N3
\inst2|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[17]~68_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(17));

-- Location: LCCOMB_X76_Y63_N4
\inst2|count[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[18]~70_combout\ = (\inst2|count\(18) & (\inst2|count[17]~69\ $ (GND))) # (!\inst2|count\(18) & (!\inst2|count[17]~69\ & VCC))
-- \inst2|count[18]~71\ = CARRY((\inst2|count\(18) & !\inst2|count[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(18),
	datad => VCC,
	cin => \inst2|count[17]~69\,
	combout => \inst2|count[18]~70_combout\,
	cout => \inst2|count[18]~71\);

-- Location: FF_X76_Y63_N5
\inst2|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[18]~70_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(18));

-- Location: LCCOMB_X76_Y63_N6
\inst2|count[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[19]~72_combout\ = (\inst2|count\(19) & (!\inst2|count[18]~71\)) # (!\inst2|count\(19) & ((\inst2|count[18]~71\) # (GND)))
-- \inst2|count[19]~73\ = CARRY((!\inst2|count[18]~71\) # (!\inst2|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(19),
	datad => VCC,
	cin => \inst2|count[18]~71\,
	combout => \inst2|count[19]~72_combout\,
	cout => \inst2|count[19]~73\);

-- Location: FF_X76_Y63_N7
\inst2|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[19]~72_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(19));

-- Location: LCCOMB_X76_Y63_N8
\inst2|count[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[20]~74_combout\ = (\inst2|count\(20) & (\inst2|count[19]~73\ $ (GND))) # (!\inst2|count\(20) & (!\inst2|count[19]~73\ & VCC))
-- \inst2|count[20]~75\ = CARRY((\inst2|count\(20) & !\inst2|count[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(20),
	datad => VCC,
	cin => \inst2|count[19]~73\,
	combout => \inst2|count[20]~74_combout\,
	cout => \inst2|count[20]~75\);

-- Location: FF_X76_Y63_N9
\inst2|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[20]~74_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(20));

-- Location: LCCOMB_X76_Y63_N10
\inst2|count[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[21]~76_combout\ = (\inst2|count\(21) & (!\inst2|count[20]~75\)) # (!\inst2|count\(21) & ((\inst2|count[20]~75\) # (GND)))
-- \inst2|count[21]~77\ = CARRY((!\inst2|count[20]~75\) # (!\inst2|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(21),
	datad => VCC,
	cin => \inst2|count[20]~75\,
	combout => \inst2|count[21]~76_combout\,
	cout => \inst2|count[21]~77\);

-- Location: FF_X76_Y63_N11
\inst2|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[21]~76_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(21));

-- Location: LCCOMB_X77_Y63_N26
\inst2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (!\inst2|count\(20) & (!\inst2|count\(18) & (!\inst2|count\(19) & !\inst2|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(20),
	datab => \inst2|count\(18),
	datac => \inst2|count\(19),
	datad => \inst2|count\(21),
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X76_Y63_N12
\inst2|count[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[22]~78_combout\ = (\inst2|count\(22) & (\inst2|count[21]~77\ $ (GND))) # (!\inst2|count\(22) & (!\inst2|count[21]~77\ & VCC))
-- \inst2|count[22]~79\ = CARRY((\inst2|count\(22) & !\inst2|count[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(22),
	datad => VCC,
	cin => \inst2|count[21]~77\,
	combout => \inst2|count[22]~78_combout\,
	cout => \inst2|count[22]~79\);

-- Location: FF_X76_Y63_N13
\inst2|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[22]~78_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(22));

-- Location: LCCOMB_X76_Y63_N14
\inst2|count[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[23]~80_combout\ = (\inst2|count\(23) & (!\inst2|count[22]~79\)) # (!\inst2|count\(23) & ((\inst2|count[22]~79\) # (GND)))
-- \inst2|count[23]~81\ = CARRY((!\inst2|count[22]~79\) # (!\inst2|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(23),
	datad => VCC,
	cin => \inst2|count[22]~79\,
	combout => \inst2|count[23]~80_combout\,
	cout => \inst2|count[23]~81\);

-- Location: FF_X76_Y63_N15
\inst2|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[23]~80_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(23));

-- Location: LCCOMB_X76_Y63_N16
\inst2|count[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[24]~82_combout\ = (\inst2|count\(24) & (\inst2|count[23]~81\ $ (GND))) # (!\inst2|count\(24) & (!\inst2|count[23]~81\ & VCC))
-- \inst2|count[24]~83\ = CARRY((\inst2|count\(24) & !\inst2|count[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(24),
	datad => VCC,
	cin => \inst2|count[23]~81\,
	combout => \inst2|count[24]~82_combout\,
	cout => \inst2|count[24]~83\);

-- Location: FF_X76_Y63_N17
\inst2|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[24]~82_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(24));

-- Location: LCCOMB_X76_Y63_N18
\inst2|count[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[25]~84_combout\ = (\inst2|count\(25) & (!\inst2|count[24]~83\)) # (!\inst2|count\(25) & ((\inst2|count[24]~83\) # (GND)))
-- \inst2|count[25]~85\ = CARRY((!\inst2|count[24]~83\) # (!\inst2|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(25),
	datad => VCC,
	cin => \inst2|count[24]~83\,
	combout => \inst2|count[25]~84_combout\,
	cout => \inst2|count[25]~85\);

-- Location: FF_X76_Y63_N19
\inst2|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[25]~84_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(25));

-- Location: LCCOMB_X77_Y63_N24
\inst2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~6_combout\ = (!\inst2|count\(23) & (!\inst2|count\(25) & (!\inst2|count\(24) & !\inst2|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(23),
	datab => \inst2|count\(25),
	datac => \inst2|count\(24),
	datad => \inst2|count\(22),
	combout => \inst2|Equal0~6_combout\);

-- Location: LCCOMB_X76_Y63_N20
\inst2|count[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[26]~86_combout\ = (\inst2|count\(26) & (\inst2|count[25]~85\ $ (GND))) # (!\inst2|count\(26) & (!\inst2|count[25]~85\ & VCC))
-- \inst2|count[26]~87\ = CARRY((\inst2|count\(26) & !\inst2|count[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(26),
	datad => VCC,
	cin => \inst2|count[25]~85\,
	combout => \inst2|count[26]~86_combout\,
	cout => \inst2|count[26]~87\);

-- Location: FF_X76_Y63_N21
\inst2|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[26]~86_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(26));

-- Location: LCCOMB_X76_Y63_N22
\inst2|count[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[27]~88_combout\ = (\inst2|count\(27) & (!\inst2|count[26]~87\)) # (!\inst2|count\(27) & ((\inst2|count[26]~87\) # (GND)))
-- \inst2|count[27]~89\ = CARRY((!\inst2|count[26]~87\) # (!\inst2|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(27),
	datad => VCC,
	cin => \inst2|count[26]~87\,
	combout => \inst2|count[27]~88_combout\,
	cout => \inst2|count[27]~89\);

-- Location: FF_X76_Y63_N23
\inst2|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[27]~88_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(27));

-- Location: LCCOMB_X76_Y63_N24
\inst2|count[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[28]~90_combout\ = (\inst2|count\(28) & (\inst2|count[27]~89\ $ (GND))) # (!\inst2|count\(28) & (!\inst2|count[27]~89\ & VCC))
-- \inst2|count[28]~91\ = CARRY((\inst2|count\(28) & !\inst2|count[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(28),
	datad => VCC,
	cin => \inst2|count[27]~89\,
	combout => \inst2|count[28]~90_combout\,
	cout => \inst2|count[28]~91\);

-- Location: FF_X76_Y63_N25
\inst2|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[28]~90_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(28));

-- Location: LCCOMB_X76_Y63_N26
\inst2|count[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[29]~92_combout\ = (\inst2|count\(29) & (!\inst2|count[28]~91\)) # (!\inst2|count\(29) & ((\inst2|count[28]~91\) # (GND)))
-- \inst2|count[29]~93\ = CARRY((!\inst2|count[28]~91\) # (!\inst2|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(29),
	datad => VCC,
	cin => \inst2|count[28]~91\,
	combout => \inst2|count[29]~92_combout\,
	cout => \inst2|count[29]~93\);

-- Location: FF_X76_Y63_N27
\inst2|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[29]~92_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(29));

-- Location: LCCOMB_X76_Y63_N28
\inst2|count[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[30]~94_combout\ = (\inst2|count\(30) & (\inst2|count[29]~93\ $ (GND))) # (!\inst2|count\(30) & (!\inst2|count[29]~93\ & VCC))
-- \inst2|count[30]~95\ = CARRY((\inst2|count\(30) & !\inst2|count[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(30),
	datad => VCC,
	cin => \inst2|count[29]~93\,
	combout => \inst2|count[30]~94_combout\,
	cout => \inst2|count[30]~95\);

-- Location: FF_X76_Y63_N29
\inst2|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[30]~94_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(30));

-- Location: LCCOMB_X76_Y63_N30
\inst2|count[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[31]~96_combout\ = \inst2|count\(31) $ (\inst2|count[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(31),
	cin => \inst2|count[30]~95\,
	combout => \inst2|count[31]~96_combout\);

-- Location: FF_X76_Y63_N31
\inst2|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[31]~96_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(31));

-- Location: LCCOMB_X77_Y63_N6
\inst2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~7_combout\ = (!\inst2|count\(29) & (!\inst2|count\(28) & (!\inst2|count\(27) & !\inst2|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(29),
	datab => \inst2|count\(28),
	datac => \inst2|count\(27),
	datad => \inst2|count\(26),
	combout => \inst2|Equal0~7_combout\);

-- Location: LCCOMB_X77_Y63_N4
\inst2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~8_combout\ = (!\inst2|count\(31) & (!\inst2|count\(30) & \inst2|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(31),
	datac => \inst2|count\(30),
	datad => \inst2|Equal0~7_combout\,
	combout => \inst2|Equal0~8_combout\);

-- Location: LCCOMB_X77_Y63_N30
\inst2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (!\inst2|count\(15) & (!\inst2|count\(17) & (!\inst2|count\(14) & !\inst2|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(15),
	datab => \inst2|count\(17),
	datac => \inst2|count\(14),
	datad => \inst2|count\(16),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X77_Y63_N20
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (!\inst2|count\(10) & (!\inst2|count\(12) & (!\inst2|count\(11) & !\inst2|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(10),
	datab => \inst2|count\(12),
	datac => \inst2|count\(11),
	datad => \inst2|count\(13),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X77_Y63_N14
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (!\inst2|count\(9) & (!\inst2|count\(8) & (!\inst2|count\(7) & !\inst2|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(9),
	datab => \inst2|count\(8),
	datac => \inst2|count\(7),
	datad => \inst2|count\(6),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X77_Y63_N28
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|count\(2) & (!\inst2|count\(4) & (!\inst2|count\(5) & !\inst2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(2),
	datab => \inst2|count\(4),
	datac => \inst2|count\(5),
	datad => \inst2|count\(1),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X77_Y63_N12
\inst2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~3_combout\ & (\inst2|Equal0~2_combout\ & (\inst2|Equal0~1_combout\ & \inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~3_combout\,
	datab => \inst2|Equal0~2_combout\,
	datac => \inst2|Equal0~1_combout\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X77_Y63_N2
\inst2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~9_combout\ = (\inst2|Equal0~5_combout\ & (\inst2|Equal0~6_combout\ & (\inst2|Equal0~8_combout\ & \inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~5_combout\,
	datab => \inst2|Equal0~6_combout\,
	datac => \inst2|Equal0~8_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Equal0~9_combout\);

-- Location: LCCOMB_X77_Y63_N16
\inst2|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~10_combout\ = (!\inst2|count\(0) & (!\inst2|count\(3) & \inst2|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(0),
	datac => \inst2|count\(3),
	datad => \inst2|Equal0~9_combout\,
	combout => \inst2|Equal0~10_combout\);

-- Location: LCCOMB_X77_Y63_N0
\inst2|count[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[0]~34_combout\ = (\SW[1]~input_o\) # ((!\inst2|timerout~0_combout\ & ((!\inst2|Equal0~10_combout\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst2|timerout~0_combout\,
	datad => \inst2|Equal0~10_combout\,
	combout => \inst2|count[0]~34_combout\);

-- Location: FF_X76_Y64_N1
\inst2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[0]~32_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(0));

-- Location: LCCOMB_X76_Y64_N2
\inst2|count[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[1]~36_combout\ = (\inst2|count\(1) & (!\inst2|count[0]~33\)) # (!\inst2|count\(1) & ((\inst2|count[0]~33\) # (GND)))
-- \inst2|count[1]~37\ = CARRY((!\inst2|count[0]~33\) # (!\inst2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(1),
	datad => VCC,
	cin => \inst2|count[0]~33\,
	combout => \inst2|count[1]~36_combout\,
	cout => \inst2|count[1]~37\);

-- Location: FF_X76_Y64_N3
\inst2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[1]~36_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(1));

-- Location: LCCOMB_X76_Y64_N4
\inst2|count[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[2]~38_combout\ = (\inst2|count\(2) & (\inst2|count[1]~37\ $ (GND))) # (!\inst2|count\(2) & (!\inst2|count[1]~37\ & VCC))
-- \inst2|count[2]~39\ = CARRY((\inst2|count\(2) & !\inst2|count[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(2),
	datad => VCC,
	cin => \inst2|count[1]~37\,
	combout => \inst2|count[2]~38_combout\,
	cout => \inst2|count[2]~39\);

-- Location: FF_X76_Y64_N5
\inst2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[2]~38_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(2));

-- Location: FF_X76_Y64_N7
\inst2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|count[3]~40_combout\,
	sclr => \inst2|count[0]~34_combout\,
	ena => \inst2|count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(3));

-- Location: LCCOMB_X77_Y63_N8
\inst2|timerout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|timerout~0_combout\ = (\inst2|count\(3) $ (\inst2|count\(0))) # (!\inst2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(3),
	datab => \inst2|count\(0),
	datad => \inst2|Equal0~9_combout\,
	combout => \inst2|timerout~0_combout\);

-- Location: LCCOMB_X77_Y63_N18
\inst2|timerout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|timerout~1_combout\ = (\SW[2]~input_o\ & ((\SW[0]~input_o\) # ((\inst2|timerout~0_combout\) # (!\inst2|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \inst2|timerout~0_combout\,
	datad => \inst2|Equal0~10_combout\,
	combout => \inst2|timerout~1_combout\);

-- Location: LCCOMB_X77_Y63_N22
\inst2|timerout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|timerout~2_combout\ = (!\SW[1]~input_o\ & ((\inst2|timerout~1_combout\ & (\inst2|timerout~0_combout\)) # (!\inst2|timerout~1_combout\ & ((\inst2|timerout~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst2|timerout~0_combout\,
	datac => \inst2|timerout~q\,
	datad => \inst2|timerout~1_combout\,
	combout => \inst2|timerout~2_combout\);

-- Location: FF_X77_Y63_N23
\inst2|timerout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|timerout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|timerout~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


