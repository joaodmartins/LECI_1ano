-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "04/16/2024 11:59:34"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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

ENTITY 	MiniProj_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(3 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(3 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END MiniProj_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MiniProj_Demo IS
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
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \progexe|Add0~13\ : std_logic;
SIGNAL \progexe|Add0~14_combout\ : std_logic;
SIGNAL \progexe|Add0~15\ : std_logic;
SIGNAL \progexe|Add0~16_combout\ : std_logic;
SIGNAL \progexe|Add0~17\ : std_logic;
SIGNAL \progexe|Add0~18_combout\ : std_logic;
SIGNAL \progexe|Add0~19\ : std_logic;
SIGNAL \progexe|Add0~20_combout\ : std_logic;
SIGNAL \progexe|counter~7_combout\ : std_logic;
SIGNAL \progexe|Add0~21\ : std_logic;
SIGNAL \progexe|Add0~22_combout\ : std_logic;
SIGNAL \progexe|counter~8_combout\ : std_logic;
SIGNAL \progexe|Add0~23\ : std_logic;
SIGNAL \progexe|Add0~24_combout\ : std_logic;
SIGNAL \progexe|counter~9_combout\ : std_logic;
SIGNAL \progexe|Add0~25\ : std_logic;
SIGNAL \progexe|Add0~26_combout\ : std_logic;
SIGNAL \progexe|counter~10_combout\ : std_logic;
SIGNAL \progexe|Add0~27\ : std_logic;
SIGNAL \progexe|Add0~28_combout\ : std_logic;
SIGNAL \progexe|Add0~29\ : std_logic;
SIGNAL \progexe|Add0~30_combout\ : std_logic;
SIGNAL \progexe|counter~11_combout\ : std_logic;
SIGNAL \progexe|Add0~31\ : std_logic;
SIGNAL \progexe|Add0~32_combout\ : std_logic;
SIGNAL \progexe|Add0~33\ : std_logic;
SIGNAL \progexe|Add0~34_combout\ : std_logic;
SIGNAL \progexe|counter~12_combout\ : std_logic;
SIGNAL \progexe|Add0~35\ : std_logic;
SIGNAL \progexe|Add0~36_combout\ : std_logic;
SIGNAL \progexe|counter~13_combout\ : std_logic;
SIGNAL \progexe|Add0~37\ : std_logic;
SIGNAL \progexe|Add0~39\ : std_logic;
SIGNAL \progexe|Add0~40_combout\ : std_logic;
SIGNAL \progexe|counter~15_combout\ : std_logic;
SIGNAL \progexe|Add0~41\ : std_logic;
SIGNAL \progexe|Add0~42_combout\ : std_logic;
SIGNAL \progexe|counter~16_combout\ : std_logic;
SIGNAL \progexe|Add0~43\ : std_logic;
SIGNAL \progexe|Add0~44_combout\ : std_logic;
SIGNAL \progexe|Add0~45\ : std_logic;
SIGNAL \progexe|Add0~46_combout\ : std_logic;
SIGNAL \progexe|counter~17_combout\ : std_logic;
SIGNAL \progexe|Equal0~6_combout\ : std_logic;
SIGNAL \progexe|Add0~0_combout\ : std_logic;
SIGNAL \progexe|Add0~1\ : std_logic;
SIGNAL \progexe|Add0~2_combout\ : std_logic;
SIGNAL \progexe|Add0~3\ : std_logic;
SIGNAL \progexe|Add0~4_combout\ : std_logic;
SIGNAL \progexe|Add0~5\ : std_logic;
SIGNAL \progexe|Add0~6_combout\ : std_logic;
SIGNAL \progexe|Add0~7\ : std_logic;
SIGNAL \progexe|Add0~8_combout\ : std_logic;
SIGNAL \progexe|Add0~9\ : std_logic;
SIGNAL \progexe|Add0~10_combout\ : std_logic;
SIGNAL \progexe|counter~6_combout\ : std_logic;
SIGNAL \progexe|Add0~11\ : std_logic;
SIGNAL \progexe|Add0~12_combout\ : std_logic;
SIGNAL \progexe|Equal0~1_combout\ : std_logic;
SIGNAL \progexe|Equal0~3_combout\ : std_logic;
SIGNAL \progexe|Equal0~0_combout\ : std_logic;
SIGNAL \progexe|Equal0~2_combout\ : std_logic;
SIGNAL \progexe|Equal0~4_combout\ : std_logic;
SIGNAL \progexe|Add0~38_combout\ : std_logic;
SIGNAL \progexe|counter~14_combout\ : std_logic;
SIGNAL \progexe|Equal0~5_combout\ : std_logic;
SIGNAL \progexe|blink_state_green~0_combout\ : std_logic;
SIGNAL \progexe|blink_state_green~q\ : std_logic;
SIGNAL \progexe|red_leds[3]~0_combout\ : std_logic;
SIGNAL \progexe|Equal3~0_combout\ : std_logic;
SIGNAL \selectprog|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \selectprog|decOut_n[2]~1_combout\ : std_logic;
SIGNAL \progexe|Equal1~1_combout\ : std_logic;
SIGNAL \progexe|green_leds[0]~0_combout\ : std_logic;
SIGNAL \progexe|Equal1~0_combout\ : std_logic;
SIGNAL \progexe|counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \progexe|red_leds\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \progexe|green_leds\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \progexe|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \progexe|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \selectprog|ALT_INV_decOut_n[2]~1_combout\ : std_logic;
SIGNAL \selectprog|ALT_INV_decOut_n[0]~0_combout\ : std_logic;

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
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\progexe|ALT_INV_Equal3~0_combout\ <= NOT \progexe|Equal3~0_combout\;
\progexe|ALT_INV_Equal1~0_combout\ <= NOT \progexe|Equal1~0_combout\;
\selectprog|ALT_INV_decOut_n[2]~1_combout\ <= NOT \selectprog|decOut_n[2]~1_combout\;
\selectprog|ALT_INV_decOut_n[0]~0_combout\ <= NOT \selectprog|decOut_n[0]~0_combout\;
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
	i => \progexe|red_leds\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \progexe|red_leds\(0),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \progexe|red_leds\(0),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \progexe|red_leds\(0),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \progexe|green_leds\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \progexe|green_leds\(0),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \progexe|green_leds\(0),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \progexe|green_leds\(0),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \selectprog|ALT_INV_decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \selectprog|decOut_n[2]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \selectprog|ALT_INV_decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \selectprog|ALT_INV_decOut_n[2]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \progexe|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \progexe|ALT_INV_Equal3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

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

-- Location: LCCOMB_X106_Y43_N20
\progexe|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~12_combout\ = (\progexe|counter\(6) & (\progexe|Add0~11\ $ (GND))) # (!\progexe|counter\(6) & (!\progexe|Add0~11\ & VCC))
-- \progexe|Add0~13\ = CARRY((\progexe|counter\(6) & !\progexe|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progexe|counter\(6),
	datad => VCC,
	cin => \progexe|Add0~11\,
	combout => \progexe|Add0~12_combout\,
	cout => \progexe|Add0~13\);

-- Location: LCCOMB_X106_Y43_N22
\progexe|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~14_combout\ = (\progexe|counter\(7) & (!\progexe|Add0~13\)) # (!\progexe|counter\(7) & ((\progexe|Add0~13\) # (GND)))
-- \progexe|Add0~15\ = CARRY((!\progexe|Add0~13\) # (!\progexe|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|counter\(7),
	datad => VCC,
	cin => \progexe|Add0~13\,
	combout => \progexe|Add0~14_combout\,
	cout => \progexe|Add0~15\);

-- Location: FF_X106_Y43_N23
\progexe|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(7));

-- Location: LCCOMB_X106_Y43_N24
\progexe|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~16_combout\ = (\progexe|counter\(8) & (\progexe|Add0~15\ $ (GND))) # (!\progexe|counter\(8) & (!\progexe|Add0~15\ & VCC))
-- \progexe|Add0~17\ = CARRY((\progexe|counter\(8) & !\progexe|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progexe|counter\(8),
	datad => VCC,
	cin => \progexe|Add0~15\,
	combout => \progexe|Add0~16_combout\,
	cout => \progexe|Add0~17\);

-- Location: FF_X106_Y43_N25
\progexe|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(8));

-- Location: LCCOMB_X106_Y43_N26
\progexe|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~18_combout\ = (\progexe|counter\(9) & (!\progexe|Add0~17\)) # (!\progexe|counter\(9) & ((\progexe|Add0~17\) # (GND)))
-- \progexe|Add0~19\ = CARRY((!\progexe|Add0~17\) # (!\progexe|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|counter\(9),
	datad => VCC,
	cin => \progexe|Add0~17\,
	combout => \progexe|Add0~18_combout\,
	cout => \progexe|Add0~19\);

-- Location: FF_X106_Y43_N27
\progexe|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(9));

-- Location: LCCOMB_X106_Y43_N28
\progexe|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~20_combout\ = (\progexe|counter\(10) & (\progexe|Add0~19\ $ (GND))) # (!\progexe|counter\(10) & (!\progexe|Add0~19\ & VCC))
-- \progexe|Add0~21\ = CARRY((\progexe|counter\(10) & !\progexe|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progexe|counter\(10),
	datad => VCC,
	cin => \progexe|Add0~19\,
	combout => \progexe|Add0~20_combout\,
	cout => \progexe|Add0~21\);

-- Location: LCCOMB_X106_Y43_N2
\progexe|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|counter~7_combout\ = (\progexe|Add0~20_combout\ & (((!\progexe|Equal0~4_combout\) # (!\progexe|Equal0~5_combout\)) # (!\progexe|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|Equal0~6_combout\,
	datab => \progexe|Equal0~5_combout\,
	datac => \progexe|Equal0~4_combout\,
	datad => \progexe|Add0~20_combout\,
	combout => \progexe|counter~7_combout\);

-- Location: FF_X106_Y43_N3
\progexe|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(10));

-- Location: LCCOMB_X106_Y43_N30
\progexe|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~22_combout\ = (\progexe|counter\(11) & (!\progexe|Add0~21\)) # (!\progexe|counter\(11) & ((\progexe|Add0~21\) # (GND)))
-- \progexe|Add0~23\ = CARRY((!\progexe|Add0~21\) # (!\progexe|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progexe|counter\(11),
	datad => VCC,
	cin => \progexe|Add0~21\,
	combout => \progexe|Add0~22_combout\,
	cout => \progexe|Add0~23\);

-- Location: LCCOMB_X106_Y43_N4
\progexe|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|counter~8_combout\ = (\progexe|Add0~22_combout\ & (((!\progexe|Equal0~4_combout\) # (!\progexe|Equal0~5_combout\)) # (!\progexe|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|Equal0~6_combout\,
	datab => \progexe|Equal0~5_combout\,
	datac => \progexe|Add0~22_combout\,
	datad => \progexe|Equal0~4_combout\,
	combout => \progexe|counter~8_combout\);

-- Location: FF_X106_Y43_N5
\progexe|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(11));

-- Location: LCCOMB_X106_Y42_N0
\progexe|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~24_combout\ = (\progexe|counter\(12) & (\progexe|Add0~23\ $ (GND))) # (!\progexe|counter\(12) & (!\progexe|Add0~23\ & VCC))
-- \progexe|Add0~25\ = CARRY((\progexe|counter\(12) & !\progexe|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progexe|counter\(12),
	datad => VCC,
	cin => \progexe|Add0~23\,
	combout => \progexe|Add0~24_combout\,
	cout => \progexe|Add0~25\);

-- Location: LCCOMB_X105_Y42_N24
\progexe|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|counter~9_combout\ = (\progexe|Add0~24_combout\ & (((!\progexe|Equal0~4_combout\) # (!\progexe|Equal0~5_combout\)) # (!\progexe|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|Equal0~6_combout\,
	datab => \progexe|Equal0~5_combout\,
	datac => \progexe|Add0~24_combout\,
	datad => \progexe|Equal0~4_combout\,
	combout => \progexe|counter~9_combout\);

-- Location: FF_X105_Y42_N25
\progexe|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(12));

-- Location: LCCOMB_X106_Y42_N2
\progexe|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~26_combout\ = (\progexe|counter\(13) & (!\progexe|Add0~25\)) # (!\progexe|counter\(13) & ((\progexe|Add0~25\) # (GND)))
-- \progexe|Add0~27\ = CARRY((!\progexe|Add0~25\) # (!\progexe|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progexe|counter\(13),
	datad => VCC,
	cin => \progexe|Add0~25\,
	combout => \progexe|Add0~26_combout\,
	cout => \progexe|Add0~27\);

-- Location: LCCOMB_X105_Y42_N30
\progexe|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|counter~10_combout\ = (\progexe|Add0~26_combout\ & (((!\progexe|Equal0~5_combout\) # (!\progexe|Equal0~4_combout\)) # (!\progexe|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|Equal0~6_combout\,
	datab => \progexe|Equal0~4_combout\,
	datac => \progexe|Equal0~5_combout\,
	datad => \progexe|Add0~26_combout\,
	combout => \progexe|counter~10_combout\);

-- Location: FF_X105_Y42_N31
\progexe|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(13));

-- Location: LCCOMB_X106_Y42_N4
\progexe|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~28_combout\ = (\progexe|counter\(14) & (\progexe|Add0~27\ $ (GND))) # (!\progexe|counter\(14) & (!\progexe|Add0~27\ & VCC))
-- \progexe|Add0~29\ = CARRY((\progexe|counter\(14) & !\progexe|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progexe|counter\(14),
	datad => VCC,
	cin => \progexe|Add0~27\,
	combout => \progexe|Add0~28_combout\,
	cout => \progexe|Add0~29\);

-- Location: FF_X106_Y42_N5
\progexe|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(14));

-- Location: LCCOMB_X106_Y42_N6
\progexe|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~30_combout\ = (\progexe|counter\(15) & (!\progexe|Add0~29\)) # (!\progexe|counter\(15) & ((\progexe|Add0~29\) # (GND)))
-- \progexe|Add0~31\ = CARRY((!\progexe|Add0~29\) # (!\progexe|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|counter\(15),
	datad => VCC,
	cin => \progexe|Add0~29\,
	combout => \progexe|Add0~30_combout\,
	cout => \progexe|Add0~31\);

-- Location: LCCOMB_X105_Y42_N16
\progexe|counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|counter~11_combout\ = (\progexe|Add0~30_combout\ & (((!\progexe|Equal0~5_combout\) # (!\progexe|Equal0~4_combout\)) # (!\progexe|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|Equal0~6_combout\,
	datab => \progexe|Equal0~4_combout\,
	datac => \progexe|Equal0~5_combout\,
	datad => \progexe|Add0~30_combout\,
	combout => \progexe|counter~11_combout\);

-- Location: FF_X105_Y42_N17
\progexe|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(15));

-- Location: LCCOMB_X106_Y42_N8
\progexe|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~32_combout\ = (\progexe|counter\(16) & (\progexe|Add0~31\ $ (GND))) # (!\progexe|counter\(16) & (!\progexe|Add0~31\ & VCC))
-- \progexe|Add0~33\ = CARRY((\progexe|counter\(16) & !\progexe|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progexe|counter\(16),
	datad => VCC,
	cin => \progexe|Add0~31\,
	combout => \progexe|Add0~32_combout\,
	cout => \progexe|Add0~33\);

-- Location: FF_X106_Y42_N9
\progexe|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(16));

-- Location: LCCOMB_X106_Y42_N10
\progexe|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~34_combout\ = (\progexe|counter\(17) & (!\progexe|Add0~33\)) # (!\progexe|counter\(17) & ((\progexe|Add0~33\) # (GND)))
-- \progexe|Add0~35\ = CARRY((!\progexe|Add0~33\) # (!\progexe|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progexe|counter\(17),
	datad => VCC,
	cin => \progexe|Add0~33\,
	combout => \progexe|Add0~34_combout\,
	cout => \progexe|Add0~35\);

-- Location: LCCOMB_X106_Y42_N28
\progexe|counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|counter~12_combout\ = (\progexe|Add0~34_combout\ & (((!\progexe|Equal0~4_combout\) # (!\progexe|Equal0~5_combout\)) # (!\progexe|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|Equal0~6_combout\,
	datab => \progexe|Equal0~5_combout\,
	datac => \progexe|Equal0~4_combout\,
	datad => \progexe|Add0~34_combout\,
	combout => \progexe|counter~12_combout\);

-- Location: FF_X106_Y42_N29
\progexe|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(17));

-- Location: LCCOMB_X106_Y42_N12
\progexe|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~36_combout\ = (\progexe|counter\(18) & (\progexe|Add0~35\ $ (GND))) # (!\progexe|counter\(18) & (!\progexe|Add0~35\ & VCC))
-- \progexe|Add0~37\ = CARRY((\progexe|counter\(18) & !\progexe|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progexe|counter\(18),
	datad => VCC,
	cin => \progexe|Add0~35\,
	combout => \progexe|Add0~36_combout\,
	cout => \progexe|Add0~37\);

-- Location: LCCOMB_X105_Y42_N22
\progexe|counter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|counter~13_combout\ = (\progexe|Add0~36_combout\ & (((!\progexe|Equal0~4_combout\) # (!\progexe|Equal0~5_combout\)) # (!\progexe|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|Equal0~6_combout\,
	datab => \progexe|Equal0~5_combout\,
	datac => \progexe|Add0~36_combout\,
	datad => \progexe|Equal0~4_combout\,
	combout => \progexe|counter~13_combout\);

-- Location: FF_X105_Y42_N23
\progexe|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|counter~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(18));

-- Location: LCCOMB_X106_Y42_N14
\progexe|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~38_combout\ = (\progexe|counter\(19) & (!\progexe|Add0~37\)) # (!\progexe|counter\(19) & ((\progexe|Add0~37\) # (GND)))
-- \progexe|Add0~39\ = CARRY((!\progexe|Add0~37\) # (!\progexe|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|counter\(19),
	datad => VCC,
	cin => \progexe|Add0~37\,
	combout => \progexe|Add0~38_combout\,
	cout => \progexe|Add0~39\);

-- Location: LCCOMB_X106_Y42_N16
\progexe|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~40_combout\ = (\progexe|counter\(20) & (\progexe|Add0~39\ $ (GND))) # (!\progexe|counter\(20) & (!\progexe|Add0~39\ & VCC))
-- \progexe|Add0~41\ = CARRY((\progexe|counter\(20) & !\progexe|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|counter\(20),
	datad => VCC,
	cin => \progexe|Add0~39\,
	combout => \progexe|Add0~40_combout\,
	cout => \progexe|Add0~41\);

-- Location: LCCOMB_X105_Y42_N26
\progexe|counter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|counter~15_combout\ = (\progexe|Add0~40_combout\ & (((!\progexe|Equal0~5_combout\) # (!\progexe|Equal0~4_combout\)) # (!\progexe|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|Equal0~6_combout\,
	datab => \progexe|Equal0~4_combout\,
	datac => \progexe|Equal0~5_combout\,
	datad => \progexe|Add0~40_combout\,
	combout => \progexe|counter~15_combout\);

-- Location: FF_X105_Y42_N27
\progexe|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|counter~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(20));

-- Location: LCCOMB_X106_Y42_N18
\progexe|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~42_combout\ = (\progexe|counter\(21) & (!\progexe|Add0~41\)) # (!\progexe|counter\(21) & ((\progexe|Add0~41\) # (GND)))
-- \progexe|Add0~43\ = CARRY((!\progexe|Add0~41\) # (!\progexe|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progexe|counter\(21),
	datad => VCC,
	cin => \progexe|Add0~41\,
	combout => \progexe|Add0~42_combout\,
	cout => \progexe|Add0~43\);

-- Location: LCCOMB_X106_Y42_N24
\progexe|counter~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|counter~16_combout\ = (\progexe|Add0~42_combout\ & (((!\progexe|Equal0~4_combout\) # (!\progexe|Equal0~5_combout\)) # (!\progexe|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|Equal0~6_combout\,
	datab => \progexe|Equal0~5_combout\,
	datac => \progexe|Equal0~4_combout\,
	datad => \progexe|Add0~42_combout\,
	combout => \progexe|counter~16_combout\);

-- Location: FF_X106_Y42_N25
\progexe|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|counter~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(21));

-- Location: LCCOMB_X106_Y42_N20
\progexe|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~44_combout\ = (\progexe|counter\(22) & (\progexe|Add0~43\ $ (GND))) # (!\progexe|counter\(22) & (!\progexe|Add0~43\ & VCC))
-- \progexe|Add0~45\ = CARRY((\progexe|counter\(22) & !\progexe|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progexe|counter\(22),
	datad => VCC,
	cin => \progexe|Add0~43\,
	combout => \progexe|Add0~44_combout\,
	cout => \progexe|Add0~45\);

-- Location: FF_X106_Y42_N21
\progexe|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(22));

-- Location: LCCOMB_X106_Y42_N22
\progexe|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~46_combout\ = \progexe|counter\(23) $ (\progexe|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|counter\(23),
	cin => \progexe|Add0~45\,
	combout => \progexe|Add0~46_combout\);

-- Location: LCCOMB_X106_Y42_N26
\progexe|counter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|counter~17_combout\ = (\progexe|Add0~46_combout\ & (((!\progexe|Equal0~5_combout\) # (!\progexe|Equal0~6_combout\)) # (!\progexe|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|Equal0~4_combout\,
	datab => \progexe|Equal0~6_combout\,
	datac => \progexe|Add0~46_combout\,
	datad => \progexe|Equal0~5_combout\,
	combout => \progexe|counter~17_combout\);

-- Location: FF_X106_Y42_N27
\progexe|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(23));

-- Location: LCCOMB_X105_Y42_N12
\progexe|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Equal0~6_combout\ = (!\progexe|counter\(22) & (\progexe|counter\(21) & (\progexe|counter\(23) & \progexe|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|counter\(22),
	datab => \progexe|counter\(21),
	datac => \progexe|counter\(23),
	datad => \progexe|counter\(20),
	combout => \progexe|Equal0~6_combout\);

-- Location: LCCOMB_X106_Y43_N8
\progexe|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~0_combout\ = \progexe|counter\(0) $ (VCC)
-- \progexe|Add0~1\ = CARRY(\progexe|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \progexe|counter\(0),
	datad => VCC,
	combout => \progexe|Add0~0_combout\,
	cout => \progexe|Add0~1\);

-- Location: FF_X106_Y43_N9
\progexe|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(0));

-- Location: LCCOMB_X106_Y43_N10
\progexe|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~2_combout\ = (\progexe|counter\(1) & (!\progexe|Add0~1\)) # (!\progexe|counter\(1) & ((\progexe|Add0~1\) # (GND)))
-- \progexe|Add0~3\ = CARRY((!\progexe|Add0~1\) # (!\progexe|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|counter\(1),
	datad => VCC,
	cin => \progexe|Add0~1\,
	combout => \progexe|Add0~2_combout\,
	cout => \progexe|Add0~3\);

-- Location: FF_X106_Y43_N11
\progexe|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(1));

-- Location: LCCOMB_X106_Y43_N12
\progexe|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~4_combout\ = (\progexe|counter\(2) & (\progexe|Add0~3\ $ (GND))) # (!\progexe|counter\(2) & (!\progexe|Add0~3\ & VCC))
-- \progexe|Add0~5\ = CARRY((\progexe|counter\(2) & !\progexe|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|counter\(2),
	datad => VCC,
	cin => \progexe|Add0~3\,
	combout => \progexe|Add0~4_combout\,
	cout => \progexe|Add0~5\);

-- Location: FF_X106_Y43_N13
\progexe|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(2));

-- Location: LCCOMB_X106_Y43_N14
\progexe|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~6_combout\ = (\progexe|counter\(3) & (!\progexe|Add0~5\)) # (!\progexe|counter\(3) & ((\progexe|Add0~5\) # (GND)))
-- \progexe|Add0~7\ = CARRY((!\progexe|Add0~5\) # (!\progexe|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progexe|counter\(3),
	datad => VCC,
	cin => \progexe|Add0~5\,
	combout => \progexe|Add0~6_combout\,
	cout => \progexe|Add0~7\);

-- Location: FF_X106_Y43_N15
\progexe|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(3));

-- Location: LCCOMB_X106_Y43_N16
\progexe|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~8_combout\ = (\progexe|counter\(4) & (\progexe|Add0~7\ $ (GND))) # (!\progexe|counter\(4) & (!\progexe|Add0~7\ & VCC))
-- \progexe|Add0~9\ = CARRY((\progexe|counter\(4) & !\progexe|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progexe|counter\(4),
	datad => VCC,
	cin => \progexe|Add0~7\,
	combout => \progexe|Add0~8_combout\,
	cout => \progexe|Add0~9\);

-- Location: FF_X106_Y43_N17
\progexe|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(4));

-- Location: LCCOMB_X106_Y43_N18
\progexe|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Add0~10_combout\ = (\progexe|counter\(5) & (!\progexe|Add0~9\)) # (!\progexe|counter\(5) & ((\progexe|Add0~9\) # (GND)))
-- \progexe|Add0~11\ = CARRY((!\progexe|Add0~9\) # (!\progexe|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progexe|counter\(5),
	datad => VCC,
	cin => \progexe|Add0~9\,
	combout => \progexe|Add0~10_combout\,
	cout => \progexe|Add0~11\);

-- Location: LCCOMB_X106_Y43_N0
\progexe|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|counter~6_combout\ = (\progexe|Add0~10_combout\ & (((!\progexe|Equal0~4_combout\) # (!\progexe|Equal0~5_combout\)) # (!\progexe|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|Equal0~6_combout\,
	datab => \progexe|Equal0~5_combout\,
	datac => \progexe|Equal0~4_combout\,
	datad => \progexe|Add0~10_combout\,
	combout => \progexe|counter~6_combout\);

-- Location: FF_X106_Y43_N1
\progexe|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(5));

-- Location: FF_X106_Y43_N21
\progexe|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(6));

-- Location: LCCOMB_X105_Y43_N30
\progexe|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Equal0~1_combout\ = (!\progexe|counter\(6) & (\progexe|counter\(4) & (!\progexe|counter\(5) & !\progexe|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|counter\(6),
	datab => \progexe|counter\(4),
	datac => \progexe|counter\(5),
	datad => \progexe|counter\(7),
	combout => \progexe|Equal0~1_combout\);

-- Location: LCCOMB_X105_Y42_N2
\progexe|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Equal0~3_combout\ = (!\progexe|counter\(14) & (\progexe|counter\(15) & (\progexe|counter\(13) & \progexe|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|counter\(14),
	datab => \progexe|counter\(15),
	datac => \progexe|counter\(13),
	datad => \progexe|counter\(12),
	combout => \progexe|Equal0~3_combout\);

-- Location: LCCOMB_X105_Y43_N12
\progexe|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Equal0~0_combout\ = (\progexe|counter\(0) & (\progexe|counter\(1) & (\progexe|counter\(2) & \progexe|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|counter\(0),
	datab => \progexe|counter\(1),
	datac => \progexe|counter\(2),
	datad => \progexe|counter\(3),
	combout => \progexe|Equal0~0_combout\);

-- Location: LCCOMB_X106_Y43_N6
\progexe|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Equal0~2_combout\ = (!\progexe|counter\(9) & (!\progexe|counter\(8) & (\progexe|counter\(11) & \progexe|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|counter\(9),
	datab => \progexe|counter\(8),
	datac => \progexe|counter\(11),
	datad => \progexe|counter\(10),
	combout => \progexe|Equal0~2_combout\);

-- Location: LCCOMB_X105_Y42_N0
\progexe|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Equal0~4_combout\ = (\progexe|Equal0~1_combout\ & (\progexe|Equal0~3_combout\ & (\progexe|Equal0~0_combout\ & \progexe|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|Equal0~1_combout\,
	datab => \progexe|Equal0~3_combout\,
	datac => \progexe|Equal0~0_combout\,
	datad => \progexe|Equal0~2_combout\,
	combout => \progexe|Equal0~4_combout\);

-- Location: LCCOMB_X106_Y42_N30
\progexe|counter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|counter~14_combout\ = (\progexe|Add0~38_combout\ & (((!\progexe|Equal0~6_combout\) # (!\progexe|Equal0~5_combout\)) # (!\progexe|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|Equal0~4_combout\,
	datab => \progexe|Equal0~5_combout\,
	datac => \progexe|Add0~38_combout\,
	datad => \progexe|Equal0~6_combout\,
	combout => \progexe|counter~14_combout\);

-- Location: FF_X106_Y42_N31
\progexe|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|counter~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|counter\(19));

-- Location: LCCOMB_X105_Y42_N28
\progexe|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Equal0~5_combout\ = (\progexe|counter\(19) & (!\progexe|counter\(16) & (\progexe|counter\(18) & \progexe|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|counter\(19),
	datab => \progexe|counter\(16),
	datac => \progexe|counter\(18),
	datad => \progexe|counter\(17),
	combout => \progexe|Equal0~5_combout\);

-- Location: LCCOMB_X107_Y42_N18
\progexe|blink_state_green~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|blink_state_green~0_combout\ = \progexe|blink_state_green~q\ $ (((\progexe|Equal0~5_combout\ & (\progexe|Equal0~6_combout\ & \progexe|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|Equal0~5_combout\,
	datab => \progexe|Equal0~6_combout\,
	datac => \progexe|blink_state_green~q\,
	datad => \progexe|Equal0~4_combout\,
	combout => \progexe|blink_state_green~0_combout\);

-- Location: FF_X107_Y42_N19
\progexe|blink_state_green\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progexe|blink_state_green~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progexe|blink_state_green~q\);

-- Location: LCCOMB_X107_Y42_N16
\progexe|red_leds[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|red_leds[3]~0_combout\ = (\progexe|blink_state_green~q\ & ((\SW[0]~input_o\) # (!\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \progexe|blink_state_green~q\,
	combout => \progexe|red_leds[3]~0_combout\);

-- Location: LCCOMB_X107_Y42_N4
\progexe|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Equal3~0_combout\ = (\SW[0]~input_o\) # (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \progexe|Equal3~0_combout\);

-- Location: LCCOMB_X107_Y42_N2
\selectprog|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \selectprog|decOut_n[0]~0_combout\ = \SW[1]~input_o\ $ (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \selectprog|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X107_Y42_N26
\progexe|red_leds[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|red_leds\(0) = ((\selectprog|decOut_n[0]~0_combout\ & (\progexe|red_leds[3]~0_combout\)) # (!\selectprog|decOut_n[0]~0_combout\ & ((\progexe|red_leds\(0))))) # (!\progexe|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progexe|red_leds[3]~0_combout\,
	datab => \progexe|red_leds\(0),
	datac => \progexe|Equal3~0_combout\,
	datad => \selectprog|decOut_n[0]~0_combout\,
	combout => \progexe|red_leds\(0));

-- Location: LCCOMB_X107_Y42_N24
\selectprog|decOut_n[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \selectprog|decOut_n[2]~1_combout\ = (\SW[0]~input_o\ & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \selectprog|decOut_n[2]~1_combout\);

-- Location: LCCOMB_X107_Y42_N22
\progexe|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Equal1~1_combout\ = (!\SW[0]~input_o\ & \SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \progexe|Equal1~1_combout\);

-- Location: LCCOMB_X107_Y42_N28
\progexe|green_leds[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|green_leds[0]~0_combout\ = (\progexe|Equal1~1_combout\ & (\progexe|blink_state_green~q\)) # (!\progexe|Equal1~1_combout\ & ((\progexe|green_leds\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \progexe|blink_state_green~q\,
	datac => \progexe|Equal1~1_combout\,
	datad => \progexe|green_leds\(0),
	combout => \progexe|green_leds[0]~0_combout\);

-- Location: LCCOMB_X107_Y42_N20
\progexe|green_leds[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|green_leds\(0) = (!\selectprog|decOut_n[2]~1_combout\ & ((\progexe|green_leds[0]~0_combout\) # (!\progexe|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selectprog|decOut_n[2]~1_combout\,
	datac => \progexe|Equal3~0_combout\,
	datad => \progexe|green_leds[0]~0_combout\,
	combout => \progexe|green_leds\(0));

-- Location: LCCOMB_X107_Y42_N30
\progexe|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \progexe|Equal1~0_combout\ = (\SW[0]~input_o\ & \SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \progexe|Equal1~0_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;
END structure;


