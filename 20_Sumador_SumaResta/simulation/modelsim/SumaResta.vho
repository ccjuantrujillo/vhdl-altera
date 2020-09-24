-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/15/2019 15:59:39"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SumaResta IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	SoR : IN std_logic;
	cout : OUT std_logic;
	resultado : OUT std_logic_vector(3 DOWNTO 0)
	);
END SumaResta;

-- Design Ports Information
-- cout	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SoR	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SumaResta IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SoR : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_resultado : std_logic_vector(3 DOWNTO 0);
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \resultado[0]~output_o\ : std_logic;
SIGNAL \resultado[1]~output_o\ : std_logic;
SIGNAL \resultado[2]~output_o\ : std_logic;
SIGNAL \resultado[3]~output_o\ : std_logic;
SIGNAL \SoR~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \Add1|auto_generated|_~2_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \Add1|auto_generated|_~3_combout\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \Add1|auto_generated|_~1_combout\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \Add1|auto_generated|_~0_combout\ : std_logic;
SIGNAL \Add1|auto_generated|result_int[4]~8_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_SoR <= SoR;
cout <= ww_cout;
resultado <= ww_resultado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N9
\cout~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1|auto_generated|result_int[5]~10_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\resultado[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1|auto_generated|result_int[1]~2_combout\,
	devoe => ww_devoe,
	o => \resultado[0]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\resultado[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1|auto_generated|result_int[2]~4_combout\,
	devoe => ww_devoe,
	o => \resultado[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\resultado[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1|auto_generated|result_int[3]~6_combout\,
	devoe => ww_devoe,
	o => \resultado[2]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\resultado[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1|auto_generated|result_int[4]~8_combout\,
	devoe => ww_devoe,
	o => \resultado[3]~output_o\);

-- Location: IOIBUF_X20_Y0_N1
\SoR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SoR,
	o => \SoR~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X17_Y1_N24
\Add1|auto_generated|_~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|_~2_combout\ = \b[1]~input_o\ $ (\SoR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datad => \SoR~input_o\,
	combout => \Add1|auto_generated|_~2_combout\);

-- Location: IOIBUF_X8_Y0_N1
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X17_Y1_N0
\Add1|auto_generated|result_int[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|result_int[0]~1_cout\ = CARRY(\SoR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SoR~input_o\,
	datad => VCC,
	cout => \Add1|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X17_Y1_N2
\Add1|auto_generated|result_int[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|result_int[1]~2_combout\ = (\Add1|auto_generated|_~3_combout\ & ((\a[0]~input_o\ & (\Add1|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\a[0]~input_o\ & (!\Add1|auto_generated|result_int[0]~1_cout\)))) # 
-- (!\Add1|auto_generated|_~3_combout\ & ((\a[0]~input_o\ & (!\Add1|auto_generated|result_int[0]~1_cout\)) # (!\a[0]~input_o\ & ((\Add1|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \Add1|auto_generated|result_int[1]~3\ = CARRY((\Add1|auto_generated|_~3_combout\ & (!\a[0]~input_o\ & !\Add1|auto_generated|result_int[0]~1_cout\)) # (!\Add1|auto_generated|_~3_combout\ & ((!\Add1|auto_generated|result_int[0]~1_cout\) # 
-- (!\a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1|auto_generated|_~3_combout\,
	datab => \a[0]~input_o\,
	datad => VCC,
	cin => \Add1|auto_generated|result_int[0]~1_cout\,
	combout => \Add1|auto_generated|result_int[1]~2_combout\,
	cout => \Add1|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X17_Y1_N4
\Add1|auto_generated|result_int[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|result_int[2]~4_combout\ = ((\a[1]~input_o\ $ (\Add1|auto_generated|_~2_combout\ $ (!\Add1|auto_generated|result_int[1]~3\)))) # (GND)
-- \Add1|auto_generated|result_int[2]~5\ = CARRY((\a[1]~input_o\ & ((\Add1|auto_generated|_~2_combout\) # (!\Add1|auto_generated|result_int[1]~3\))) # (!\a[1]~input_o\ & (\Add1|auto_generated|_~2_combout\ & !\Add1|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \Add1|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \Add1|auto_generated|result_int[1]~3\,
	combout => \Add1|auto_generated|result_int[2]~4_combout\,
	cout => \Add1|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X17_Y1_N6
\Add1|auto_generated|result_int[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|result_int[3]~6_combout\ = (\Add1|auto_generated|_~1_combout\ & ((\a[2]~input_o\ & (\Add1|auto_generated|result_int[2]~5\ & VCC)) # (!\a[2]~input_o\ & (!\Add1|auto_generated|result_int[2]~5\)))) # (!\Add1|auto_generated|_~1_combout\ & 
-- ((\a[2]~input_o\ & (!\Add1|auto_generated|result_int[2]~5\)) # (!\a[2]~input_o\ & ((\Add1|auto_generated|result_int[2]~5\) # (GND)))))
-- \Add1|auto_generated|result_int[3]~7\ = CARRY((\Add1|auto_generated|_~1_combout\ & (!\a[2]~input_o\ & !\Add1|auto_generated|result_int[2]~5\)) # (!\Add1|auto_generated|_~1_combout\ & ((!\Add1|auto_generated|result_int[2]~5\) # (!\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1|auto_generated|_~1_combout\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \Add1|auto_generated|result_int[2]~5\,
	combout => \Add1|auto_generated|result_int[3]~6_combout\,
	cout => \Add1|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X17_Y1_N8
\Add1|auto_generated|result_int[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|result_int[4]~8_combout\ = ((\Add1|auto_generated|_~0_combout\ $ (\a[3]~input_o\ $ (!\Add1|auto_generated|result_int[3]~7\)))) # (GND)
-- \Add1|auto_generated|result_int[4]~9\ = CARRY((\Add1|auto_generated|_~0_combout\ & ((\a[3]~input_o\) # (!\Add1|auto_generated|result_int[3]~7\))) # (!\Add1|auto_generated|_~0_combout\ & (\a[3]~input_o\ & !\Add1|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1|auto_generated|_~0_combout\,
	datab => \a[3]~input_o\,
	datad => VCC,
	cin => \Add1|auto_generated|result_int[3]~7\,
	combout => \Add1|auto_generated|result_int[4]~8_combout\,
	cout => \Add1|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X17_Y1_N10
\Add1|auto_generated|result_int[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|result_int[5]~10_combout\ = \Add1|auto_generated|result_int[4]~9\ $ (\SoR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SoR~input_o\,
	cin => \Add1|auto_generated|result_int[4]~9\,
	combout => \Add1|auto_generated|result_int[5]~10_combout\);

-- Location: IOIBUF_X22_Y0_N8
\b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X17_Y1_N26
\Add1|auto_generated|_~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|_~3_combout\ = \b[0]~input_o\ $ (\SoR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[0]~input_o\,
	datad => \SoR~input_o\,
	combout => \Add1|auto_generated|_~3_combout\);

-- Location: IOIBUF_X20_Y0_N8
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X17_Y1_N30
\Add1|auto_generated|_~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|_~1_combout\ = \SoR~input_o\ $ (\b[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SoR~input_o\,
	datad => \b[2]~input_o\,
	combout => \Add1|auto_generated|_~1_combout\);

-- Location: IOIBUF_X12_Y0_N1
\b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X17_Y1_N12
\Add1|auto_generated|_~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1|auto_generated|_~0_combout\ = \b[3]~input_o\ $ (\SoR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[3]~input_o\,
	datad => \SoR~input_o\,
	combout => \Add1|auto_generated|_~0_combout\);

ww_cout <= \cout~output_o\;

ww_resultado(0) <= \resultado[0]~output_o\;

ww_resultado(1) <= \resultado[1]~output_o\;

ww_resultado(2) <= \resultado[2]~output_o\;

ww_resultado(3) <= \resultado[3]~output_o\;
END structure;


