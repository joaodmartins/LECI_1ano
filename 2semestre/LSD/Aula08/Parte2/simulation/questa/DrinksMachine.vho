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

-- DATE "05/07/2024 11:35:59"

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

ENTITY 	DrinksMachine IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(4 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(0 DOWNTO 0)
	);
END DrinksMachine;

-- Design Ports Information
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DrinksMachine IS
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
SIGNAL ww_SW : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sw_debounce|s_pulsedOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \drink_core|pState.S5~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \sw_debounce|s_dirtyIn~feeder_combout\ : std_logic;
SIGNAL \sw_debounce|s_dirtyIn~q\ : std_logic;
SIGNAL \sw_debounce|s_pulsedOut~feeder_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[0]~31_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[0]~32\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[1]~33_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[1]~34\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[2]~35_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[2]~36\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[3]~37_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[3]~38\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[4]~39_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[4]~40\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[5]~41_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[5]~42\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[6]~43_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[6]~44\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[7]~45_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[7]~46\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[8]~47_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[8]~48\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[9]~49_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[9]~50\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[10]~51_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[10]~52\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[11]~53_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[11]~54\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[12]~55_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[12]~56\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[13]~57_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[13]~58\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[14]~59_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[14]~60\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[15]~61_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[15]~62\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[16]~63_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[16]~64\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[17]~65_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[17]~66\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[18]~67_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[18]~68\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[19]~69_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[19]~70\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[20]~71_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[20]~72\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[21]~73_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[21]~74\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[22]~75_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[22]~76\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[23]~77_combout\ : std_logic;
SIGNAL \sw_debounce|Equal0~6_combout\ : std_logic;
SIGNAL \sw_debounce|Equal0~5_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[23]~78\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[24]~79_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[24]~80\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[25]~81_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[25]~82\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[26]~83_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[26]~84\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[27]~85_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[27]~86\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[28]~87_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[28]~88\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[29]~89_combout\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[29]~90\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt[30]~91_combout\ : std_logic;
SIGNAL \sw_debounce|Equal0~7_combout\ : std_logic;
SIGNAL \sw_debounce|Equal0~8_combout\ : std_logic;
SIGNAL \sw_debounce|Equal0~3_combout\ : std_logic;
SIGNAL \sw_debounce|Equal0~2_combout\ : std_logic;
SIGNAL \sw_debounce|Equal0~0_combout\ : std_logic;
SIGNAL \sw_debounce|Equal0~1_combout\ : std_logic;
SIGNAL \sw_debounce|Equal0~4_combout\ : std_logic;
SIGNAL \sw_debounce|Equal0~9_combout\ : std_logic;
SIGNAL \sw_debounce|s_resetPulse~0_combout\ : std_logic;
SIGNAL \sw_debounce|s_resetPulse~q\ : std_logic;
SIGNAL \sw_debounce|out_proc~0_combout\ : std_logic;
SIGNAL \sw_debounce|s_pulsedOut~q\ : std_logic;
SIGNAL \sw_debounce|s_pulsedOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \drink_core|pState.S5~clkctrl_outclk\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \drink_core|Selector10~0_combout\ : std_logic;
SIGNAL \drink_core|nState.S0_138~combout\ : std_logic;
SIGNAL \drink_core|pState.S0~0_combout\ : std_logic;
SIGNAL \drink_core|pState.S0~q\ : std_logic;
SIGNAL \drink_core|Selector8~0_combout\ : std_logic;
SIGNAL \drink_core|nState.S1_130~combout\ : std_logic;
SIGNAL \drink_core|pState.S1~q\ : std_logic;
SIGNAL \drink_core|Selector6~0_combout\ : std_logic;
SIGNAL \drink_core|nState.S2_122~combout\ : std_logic;
SIGNAL \drink_core|pState.S2~q\ : std_logic;
SIGNAL \drink_core|Selector4~0_combout\ : std_logic;
SIGNAL \drink_core|Selector4~1_combout\ : std_logic;
SIGNAL \drink_core|nState.S3_114~combout\ : std_logic;
SIGNAL \drink_core|pState.S3~q\ : std_logic;
SIGNAL \drink_core|Selector2~0_combout\ : std_logic;
SIGNAL \drink_core|Selector2~1_combout\ : std_logic;
SIGNAL \drink_core|nState.S4_106~combout\ : std_logic;
SIGNAL \drink_core|pState.S4~q\ : std_logic;
SIGNAL \drink_core|Selector1~0_combout\ : std_logic;
SIGNAL \drink_core|Selector1~1_combout\ : std_logic;
SIGNAL \drink_core|nState.S5_98~combout\ : std_logic;
SIGNAL \drink_core|pState.S5~q\ : std_logic;
SIGNAL \sw_debounce|s_debounceCnt\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \sw_debounce|ALT_INV_out_proc~0_combout\ : std_logic;
SIGNAL \sw_debounce|ALT_INV_s_dirtyIn~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\sw_debounce|s_pulsedOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sw_debounce|s_pulsedOut~q\);

\drink_core|pState.S5~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \drink_core|pState.S5~q\);
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\sw_debounce|ALT_INV_out_proc~0_combout\ <= NOT \sw_debounce|out_proc~0_combout\;
\sw_debounce|ALT_INV_s_dirtyIn~q\ <= NOT \sw_debounce|s_dirtyIn~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drink_core|pState.S5~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

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

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X95_Y38_N2
\sw_debounce|s_dirtyIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_dirtyIn~feeder_combout\ = \KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \sw_debounce|s_dirtyIn~feeder_combout\);

-- Location: FF_X95_Y38_N3
\sw_debounce|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_dirtyIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_dirtyIn~q\);

-- Location: LCCOMB_X94_Y38_N30
\sw_debounce|s_pulsedOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_pulsedOut~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \sw_debounce|s_pulsedOut~feeder_combout\);

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

-- Location: LCCOMB_X92_Y40_N2
\sw_debounce|s_debounceCnt[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[0]~31_combout\ = \sw_debounce|s_debounceCnt\(0) $ (VCC)
-- \sw_debounce|s_debounceCnt[0]~32\ = CARRY(\sw_debounce|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw_debounce|s_debounceCnt\(0),
	datad => VCC,
	combout => \sw_debounce|s_debounceCnt[0]~31_combout\,
	cout => \sw_debounce|s_debounceCnt[0]~32\);

-- Location: LCCOMB_X91_Y39_N18
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X92_Y40_N3
\sw_debounce|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[0]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(0));

-- Location: LCCOMB_X92_Y40_N4
\sw_debounce|s_debounceCnt[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[1]~33_combout\ = (\sw_debounce|s_debounceCnt\(1) & (\sw_debounce|s_debounceCnt[0]~32\ & VCC)) # (!\sw_debounce|s_debounceCnt\(1) & (!\sw_debounce|s_debounceCnt[0]~32\))
-- \sw_debounce|s_debounceCnt[1]~34\ = CARRY((!\sw_debounce|s_debounceCnt\(1) & !\sw_debounce|s_debounceCnt[0]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw_debounce|s_debounceCnt\(1),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[0]~32\,
	combout => \sw_debounce|s_debounceCnt[1]~33_combout\,
	cout => \sw_debounce|s_debounceCnt[1]~34\);

-- Location: FF_X92_Y40_N5
\sw_debounce|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[1]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(1));

-- Location: LCCOMB_X92_Y40_N6
\sw_debounce|s_debounceCnt[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[2]~35_combout\ = (\sw_debounce|s_debounceCnt\(2) & ((GND) # (!\sw_debounce|s_debounceCnt[1]~34\))) # (!\sw_debounce|s_debounceCnt\(2) & (\sw_debounce|s_debounceCnt[1]~34\ $ (GND)))
-- \sw_debounce|s_debounceCnt[2]~36\ = CARRY((\sw_debounce|s_debounceCnt\(2)) # (!\sw_debounce|s_debounceCnt[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(2),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[1]~34\,
	combout => \sw_debounce|s_debounceCnt[2]~35_combout\,
	cout => \sw_debounce|s_debounceCnt[2]~36\);

-- Location: FF_X92_Y40_N7
\sw_debounce|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[2]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(2));

-- Location: LCCOMB_X92_Y40_N8
\sw_debounce|s_debounceCnt[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[3]~37_combout\ = (\sw_debounce|s_debounceCnt\(3) & (\sw_debounce|s_debounceCnt[2]~36\ & VCC)) # (!\sw_debounce|s_debounceCnt\(3) & (!\sw_debounce|s_debounceCnt[2]~36\))
-- \sw_debounce|s_debounceCnt[3]~38\ = CARRY((!\sw_debounce|s_debounceCnt\(3) & !\sw_debounce|s_debounceCnt[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw_debounce|s_debounceCnt\(3),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[2]~36\,
	combout => \sw_debounce|s_debounceCnt[3]~37_combout\,
	cout => \sw_debounce|s_debounceCnt[3]~38\);

-- Location: FF_X92_Y40_N9
\sw_debounce|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[3]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(3));

-- Location: LCCOMB_X92_Y40_N10
\sw_debounce|s_debounceCnt[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[4]~39_combout\ = (\sw_debounce|s_debounceCnt\(4) & ((GND) # (!\sw_debounce|s_debounceCnt[3]~38\))) # (!\sw_debounce|s_debounceCnt\(4) & (\sw_debounce|s_debounceCnt[3]~38\ $ (GND)))
-- \sw_debounce|s_debounceCnt[4]~40\ = CARRY((\sw_debounce|s_debounceCnt\(4)) # (!\sw_debounce|s_debounceCnt[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(4),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[3]~38\,
	combout => \sw_debounce|s_debounceCnt[4]~39_combout\,
	cout => \sw_debounce|s_debounceCnt[4]~40\);

-- Location: FF_X92_Y40_N11
\sw_debounce|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[4]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(4));

-- Location: LCCOMB_X92_Y40_N12
\sw_debounce|s_debounceCnt[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[5]~41_combout\ = (\sw_debounce|s_debounceCnt\(5) & (\sw_debounce|s_debounceCnt[4]~40\ & VCC)) # (!\sw_debounce|s_debounceCnt\(5) & (!\sw_debounce|s_debounceCnt[4]~40\))
-- \sw_debounce|s_debounceCnt[5]~42\ = CARRY((!\sw_debounce|s_debounceCnt\(5) & !\sw_debounce|s_debounceCnt[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(5),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[4]~40\,
	combout => \sw_debounce|s_debounceCnt[5]~41_combout\,
	cout => \sw_debounce|s_debounceCnt[5]~42\);

-- Location: FF_X92_Y40_N13
\sw_debounce|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[5]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(5));

-- Location: LCCOMB_X92_Y40_N14
\sw_debounce|s_debounceCnt[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[6]~43_combout\ = (\sw_debounce|s_debounceCnt\(6) & ((GND) # (!\sw_debounce|s_debounceCnt[5]~42\))) # (!\sw_debounce|s_debounceCnt\(6) & (\sw_debounce|s_debounceCnt[5]~42\ $ (GND)))
-- \sw_debounce|s_debounceCnt[6]~44\ = CARRY((\sw_debounce|s_debounceCnt\(6)) # (!\sw_debounce|s_debounceCnt[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw_debounce|s_debounceCnt\(6),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[5]~42\,
	combout => \sw_debounce|s_debounceCnt[6]~43_combout\,
	cout => \sw_debounce|s_debounceCnt[6]~44\);

-- Location: FF_X92_Y40_N15
\sw_debounce|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[6]~43_combout\,
	asdata => \sw_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(6));

-- Location: LCCOMB_X92_Y40_N16
\sw_debounce|s_debounceCnt[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[7]~45_combout\ = (\sw_debounce|s_debounceCnt\(7) & (\sw_debounce|s_debounceCnt[6]~44\ & VCC)) # (!\sw_debounce|s_debounceCnt\(7) & (!\sw_debounce|s_debounceCnt[6]~44\))
-- \sw_debounce|s_debounceCnt[7]~46\ = CARRY((!\sw_debounce|s_debounceCnt\(7) & !\sw_debounce|s_debounceCnt[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw_debounce|s_debounceCnt\(7),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[6]~44\,
	combout => \sw_debounce|s_debounceCnt[7]~45_combout\,
	cout => \sw_debounce|s_debounceCnt[7]~46\);

-- Location: FF_X92_Y40_N17
\sw_debounce|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[7]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(7));

-- Location: LCCOMB_X92_Y40_N18
\sw_debounce|s_debounceCnt[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[8]~47_combout\ = (\sw_debounce|s_debounceCnt\(8) & ((GND) # (!\sw_debounce|s_debounceCnt[7]~46\))) # (!\sw_debounce|s_debounceCnt\(8) & (\sw_debounce|s_debounceCnt[7]~46\ $ (GND)))
-- \sw_debounce|s_debounceCnt[8]~48\ = CARRY((\sw_debounce|s_debounceCnt\(8)) # (!\sw_debounce|s_debounceCnt[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw_debounce|s_debounceCnt\(8),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[7]~46\,
	combout => \sw_debounce|s_debounceCnt[8]~47_combout\,
	cout => \sw_debounce|s_debounceCnt[8]~48\);

-- Location: FF_X92_Y40_N19
\sw_debounce|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[8]~47_combout\,
	asdata => \sw_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(8));

-- Location: LCCOMB_X92_Y40_N20
\sw_debounce|s_debounceCnt[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[9]~49_combout\ = (\sw_debounce|s_debounceCnt\(9) & (\sw_debounce|s_debounceCnt[8]~48\ & VCC)) # (!\sw_debounce|s_debounceCnt\(9) & (!\sw_debounce|s_debounceCnt[8]~48\))
-- \sw_debounce|s_debounceCnt[9]~50\ = CARRY((!\sw_debounce|s_debounceCnt\(9) & !\sw_debounce|s_debounceCnt[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw_debounce|s_debounceCnt\(9),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[8]~48\,
	combout => \sw_debounce|s_debounceCnt[9]~49_combout\,
	cout => \sw_debounce|s_debounceCnt[9]~50\);

-- Location: FF_X92_Y40_N21
\sw_debounce|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[9]~49_combout\,
	asdata => \sw_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(9));

-- Location: LCCOMB_X92_Y40_N22
\sw_debounce|s_debounceCnt[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[10]~51_combout\ = (\sw_debounce|s_debounceCnt\(10) & ((GND) # (!\sw_debounce|s_debounceCnt[9]~50\))) # (!\sw_debounce|s_debounceCnt\(10) & (\sw_debounce|s_debounceCnt[9]~50\ $ (GND)))
-- \sw_debounce|s_debounceCnt[10]~52\ = CARRY((\sw_debounce|s_debounceCnt\(10)) # (!\sw_debounce|s_debounceCnt[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(10),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[9]~50\,
	combout => \sw_debounce|s_debounceCnt[10]~51_combout\,
	cout => \sw_debounce|s_debounceCnt[10]~52\);

-- Location: FF_X92_Y40_N23
\sw_debounce|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[10]~51_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(10));

-- Location: LCCOMB_X92_Y40_N24
\sw_debounce|s_debounceCnt[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[11]~53_combout\ = (\sw_debounce|s_debounceCnt\(11) & (\sw_debounce|s_debounceCnt[10]~52\ & VCC)) # (!\sw_debounce|s_debounceCnt\(11) & (!\sw_debounce|s_debounceCnt[10]~52\))
-- \sw_debounce|s_debounceCnt[11]~54\ = CARRY((!\sw_debounce|s_debounceCnt\(11) & !\sw_debounce|s_debounceCnt[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw_debounce|s_debounceCnt\(11),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[10]~52\,
	combout => \sw_debounce|s_debounceCnt[11]~53_combout\,
	cout => \sw_debounce|s_debounceCnt[11]~54\);

-- Location: FF_X92_Y40_N25
\sw_debounce|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[11]~53_combout\,
	asdata => \sw_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(11));

-- Location: LCCOMB_X92_Y40_N26
\sw_debounce|s_debounceCnt[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[12]~55_combout\ = (\sw_debounce|s_debounceCnt\(12) & ((GND) # (!\sw_debounce|s_debounceCnt[11]~54\))) # (!\sw_debounce|s_debounceCnt\(12) & (\sw_debounce|s_debounceCnt[11]~54\ $ (GND)))
-- \sw_debounce|s_debounceCnt[12]~56\ = CARRY((\sw_debounce|s_debounceCnt\(12)) # (!\sw_debounce|s_debounceCnt[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(12),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[11]~54\,
	combout => \sw_debounce|s_debounceCnt[12]~55_combout\,
	cout => \sw_debounce|s_debounceCnt[12]~56\);

-- Location: FF_X92_Y40_N27
\sw_debounce|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[12]~55_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(12));

-- Location: LCCOMB_X92_Y40_N28
\sw_debounce|s_debounceCnt[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[13]~57_combout\ = (\sw_debounce|s_debounceCnt\(13) & (\sw_debounce|s_debounceCnt[12]~56\ & VCC)) # (!\sw_debounce|s_debounceCnt\(13) & (!\sw_debounce|s_debounceCnt[12]~56\))
-- \sw_debounce|s_debounceCnt[13]~58\ = CARRY((!\sw_debounce|s_debounceCnt\(13) & !\sw_debounce|s_debounceCnt[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw_debounce|s_debounceCnt\(13),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[12]~56\,
	combout => \sw_debounce|s_debounceCnt[13]~57_combout\,
	cout => \sw_debounce|s_debounceCnt[13]~58\);

-- Location: FF_X92_Y40_N29
\sw_debounce|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[13]~57_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(13));

-- Location: LCCOMB_X92_Y40_N30
\sw_debounce|s_debounceCnt[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[14]~59_combout\ = (\sw_debounce|s_debounceCnt\(14) & ((GND) # (!\sw_debounce|s_debounceCnt[13]~58\))) # (!\sw_debounce|s_debounceCnt\(14) & (\sw_debounce|s_debounceCnt[13]~58\ $ (GND)))
-- \sw_debounce|s_debounceCnt[14]~60\ = CARRY((\sw_debounce|s_debounceCnt\(14)) # (!\sw_debounce|s_debounceCnt[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(14),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[13]~58\,
	combout => \sw_debounce|s_debounceCnt[14]~59_combout\,
	cout => \sw_debounce|s_debounceCnt[14]~60\);

-- Location: FF_X92_Y40_N31
\sw_debounce|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[14]~59_combout\,
	asdata => \sw_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(14));

-- Location: LCCOMB_X92_Y39_N0
\sw_debounce|s_debounceCnt[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[15]~61_combout\ = (\sw_debounce|s_debounceCnt\(15) & (\sw_debounce|s_debounceCnt[14]~60\ & VCC)) # (!\sw_debounce|s_debounceCnt\(15) & (!\sw_debounce|s_debounceCnt[14]~60\))
-- \sw_debounce|s_debounceCnt[15]~62\ = CARRY((!\sw_debounce|s_debounceCnt\(15) & !\sw_debounce|s_debounceCnt[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw_debounce|s_debounceCnt\(15),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[14]~60\,
	combout => \sw_debounce|s_debounceCnt[15]~61_combout\,
	cout => \sw_debounce|s_debounceCnt[15]~62\);

-- Location: FF_X92_Y39_N1
\sw_debounce|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[15]~61_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(15));

-- Location: LCCOMB_X92_Y39_N2
\sw_debounce|s_debounceCnt[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[16]~63_combout\ = (\sw_debounce|s_debounceCnt\(16) & ((GND) # (!\sw_debounce|s_debounceCnt[15]~62\))) # (!\sw_debounce|s_debounceCnt\(16) & (\sw_debounce|s_debounceCnt[15]~62\ $ (GND)))
-- \sw_debounce|s_debounceCnt[16]~64\ = CARRY((\sw_debounce|s_debounceCnt\(16)) # (!\sw_debounce|s_debounceCnt[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw_debounce|s_debounceCnt\(16),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[15]~62\,
	combout => \sw_debounce|s_debounceCnt[16]~63_combout\,
	cout => \sw_debounce|s_debounceCnt[16]~64\);

-- Location: FF_X92_Y39_N3
\sw_debounce|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[16]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(16));

-- Location: LCCOMB_X92_Y39_N4
\sw_debounce|s_debounceCnt[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[17]~65_combout\ = (\sw_debounce|s_debounceCnt\(17) & (\sw_debounce|s_debounceCnt[16]~64\ & VCC)) # (!\sw_debounce|s_debounceCnt\(17) & (!\sw_debounce|s_debounceCnt[16]~64\))
-- \sw_debounce|s_debounceCnt[17]~66\ = CARRY((!\sw_debounce|s_debounceCnt\(17) & !\sw_debounce|s_debounceCnt[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw_debounce|s_debounceCnt\(17),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[16]~64\,
	combout => \sw_debounce|s_debounceCnt[17]~65_combout\,
	cout => \sw_debounce|s_debounceCnt[17]~66\);

-- Location: FF_X92_Y39_N5
\sw_debounce|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[17]~65_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(17));

-- Location: LCCOMB_X92_Y39_N6
\sw_debounce|s_debounceCnt[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[18]~67_combout\ = (\sw_debounce|s_debounceCnt\(18) & ((GND) # (!\sw_debounce|s_debounceCnt[17]~66\))) # (!\sw_debounce|s_debounceCnt\(18) & (\sw_debounce|s_debounceCnt[17]~66\ $ (GND)))
-- \sw_debounce|s_debounceCnt[18]~68\ = CARRY((\sw_debounce|s_debounceCnt\(18)) # (!\sw_debounce|s_debounceCnt[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(18),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[17]~66\,
	combout => \sw_debounce|s_debounceCnt[18]~67_combout\,
	cout => \sw_debounce|s_debounceCnt[18]~68\);

-- Location: FF_X92_Y39_N7
\sw_debounce|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[18]~67_combout\,
	asdata => \sw_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(18));

-- Location: LCCOMB_X92_Y39_N8
\sw_debounce|s_debounceCnt[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[19]~69_combout\ = (\sw_debounce|s_debounceCnt\(19) & (\sw_debounce|s_debounceCnt[18]~68\ & VCC)) # (!\sw_debounce|s_debounceCnt\(19) & (!\sw_debounce|s_debounceCnt[18]~68\))
-- \sw_debounce|s_debounceCnt[19]~70\ = CARRY((!\sw_debounce|s_debounceCnt\(19) & !\sw_debounce|s_debounceCnt[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw_debounce|s_debounceCnt\(19),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[18]~68\,
	combout => \sw_debounce|s_debounceCnt[19]~69_combout\,
	cout => \sw_debounce|s_debounceCnt[19]~70\);

-- Location: FF_X92_Y39_N9
\sw_debounce|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[19]~69_combout\,
	asdata => \sw_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(19));

-- Location: LCCOMB_X92_Y39_N10
\sw_debounce|s_debounceCnt[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[20]~71_combout\ = (\sw_debounce|s_debounceCnt\(20) & ((GND) # (!\sw_debounce|s_debounceCnt[19]~70\))) # (!\sw_debounce|s_debounceCnt\(20) & (\sw_debounce|s_debounceCnt[19]~70\ $ (GND)))
-- \sw_debounce|s_debounceCnt[20]~72\ = CARRY((\sw_debounce|s_debounceCnt\(20)) # (!\sw_debounce|s_debounceCnt[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(20),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[19]~70\,
	combout => \sw_debounce|s_debounceCnt[20]~71_combout\,
	cout => \sw_debounce|s_debounceCnt[20]~72\);

-- Location: FF_X92_Y39_N11
\sw_debounce|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[20]~71_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(20));

-- Location: LCCOMB_X92_Y39_N12
\sw_debounce|s_debounceCnt[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[21]~73_combout\ = (\sw_debounce|s_debounceCnt\(21) & (\sw_debounce|s_debounceCnt[20]~72\ & VCC)) # (!\sw_debounce|s_debounceCnt\(21) & (!\sw_debounce|s_debounceCnt[20]~72\))
-- \sw_debounce|s_debounceCnt[21]~74\ = CARRY((!\sw_debounce|s_debounceCnt\(21) & !\sw_debounce|s_debounceCnt[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(21),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[20]~72\,
	combout => \sw_debounce|s_debounceCnt[21]~73_combout\,
	cout => \sw_debounce|s_debounceCnt[21]~74\);

-- Location: FF_X92_Y39_N13
\sw_debounce|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[21]~73_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(21));

-- Location: LCCOMB_X92_Y39_N14
\sw_debounce|s_debounceCnt[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[22]~75_combout\ = (\sw_debounce|s_debounceCnt\(22) & ((GND) # (!\sw_debounce|s_debounceCnt[21]~74\))) # (!\sw_debounce|s_debounceCnt\(22) & (\sw_debounce|s_debounceCnt[21]~74\ $ (GND)))
-- \sw_debounce|s_debounceCnt[22]~76\ = CARRY((\sw_debounce|s_debounceCnt\(22)) # (!\sw_debounce|s_debounceCnt[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw_debounce|s_debounceCnt\(22),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[21]~74\,
	combout => \sw_debounce|s_debounceCnt[22]~75_combout\,
	cout => \sw_debounce|s_debounceCnt[22]~76\);

-- Location: FF_X92_Y39_N15
\sw_debounce|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[22]~75_combout\,
	asdata => \sw_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(22));

-- Location: LCCOMB_X92_Y39_N16
\sw_debounce|s_debounceCnt[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[23]~77_combout\ = (\sw_debounce|s_debounceCnt\(23) & (\sw_debounce|s_debounceCnt[22]~76\ & VCC)) # (!\sw_debounce|s_debounceCnt\(23) & (!\sw_debounce|s_debounceCnt[22]~76\))
-- \sw_debounce|s_debounceCnt[23]~78\ = CARRY((!\sw_debounce|s_debounceCnt\(23) & !\sw_debounce|s_debounceCnt[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw_debounce|s_debounceCnt\(23),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[22]~76\,
	combout => \sw_debounce|s_debounceCnt[23]~77_combout\,
	cout => \sw_debounce|s_debounceCnt[23]~78\);

-- Location: FF_X92_Y39_N17
\sw_debounce|s_debounceCnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[23]~77_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(23));

-- Location: LCCOMB_X91_Y39_N22
\sw_debounce|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|Equal0~6_combout\ = (!\sw_debounce|s_debounceCnt\(20) & (!\sw_debounce|s_debounceCnt\(22) & (!\sw_debounce|s_debounceCnt\(21) & !\sw_debounce|s_debounceCnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(20),
	datab => \sw_debounce|s_debounceCnt\(22),
	datac => \sw_debounce|s_debounceCnt\(21),
	datad => \sw_debounce|s_debounceCnt\(23),
	combout => \sw_debounce|Equal0~6_combout\);

-- Location: LCCOMB_X91_Y39_N28
\sw_debounce|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|Equal0~5_combout\ = (!\sw_debounce|s_debounceCnt\(18) & (!\sw_debounce|s_debounceCnt\(19) & (!\sw_debounce|s_debounceCnt\(17) & !\sw_debounce|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(18),
	datab => \sw_debounce|s_debounceCnt\(19),
	datac => \sw_debounce|s_debounceCnt\(17),
	datad => \sw_debounce|s_debounceCnt\(16),
	combout => \sw_debounce|Equal0~5_combout\);

-- Location: LCCOMB_X92_Y39_N18
\sw_debounce|s_debounceCnt[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[24]~79_combout\ = (\sw_debounce|s_debounceCnt\(24) & ((GND) # (!\sw_debounce|s_debounceCnt[23]~78\))) # (!\sw_debounce|s_debounceCnt\(24) & (\sw_debounce|s_debounceCnt[23]~78\ $ (GND)))
-- \sw_debounce|s_debounceCnt[24]~80\ = CARRY((\sw_debounce|s_debounceCnt\(24)) # (!\sw_debounce|s_debounceCnt[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw_debounce|s_debounceCnt\(24),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[23]~78\,
	combout => \sw_debounce|s_debounceCnt[24]~79_combout\,
	cout => \sw_debounce|s_debounceCnt[24]~80\);

-- Location: FF_X92_Y39_N19
\sw_debounce|s_debounceCnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[24]~79_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(24));

-- Location: LCCOMB_X92_Y39_N20
\sw_debounce|s_debounceCnt[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[25]~81_combout\ = (\sw_debounce|s_debounceCnt\(25) & (\sw_debounce|s_debounceCnt[24]~80\ & VCC)) # (!\sw_debounce|s_debounceCnt\(25) & (!\sw_debounce|s_debounceCnt[24]~80\))
-- \sw_debounce|s_debounceCnt[25]~82\ = CARRY((!\sw_debounce|s_debounceCnt\(25) & !\sw_debounce|s_debounceCnt[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw_debounce|s_debounceCnt\(25),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[24]~80\,
	combout => \sw_debounce|s_debounceCnt[25]~81_combout\,
	cout => \sw_debounce|s_debounceCnt[25]~82\);

-- Location: FF_X92_Y39_N21
\sw_debounce|s_debounceCnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[25]~81_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(25));

-- Location: LCCOMB_X92_Y39_N22
\sw_debounce|s_debounceCnt[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[26]~83_combout\ = (\sw_debounce|s_debounceCnt\(26) & ((GND) # (!\sw_debounce|s_debounceCnt[25]~82\))) # (!\sw_debounce|s_debounceCnt\(26) & (\sw_debounce|s_debounceCnt[25]~82\ $ (GND)))
-- \sw_debounce|s_debounceCnt[26]~84\ = CARRY((\sw_debounce|s_debounceCnt\(26)) # (!\sw_debounce|s_debounceCnt[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(26),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[25]~82\,
	combout => \sw_debounce|s_debounceCnt[26]~83_combout\,
	cout => \sw_debounce|s_debounceCnt[26]~84\);

-- Location: FF_X92_Y39_N23
\sw_debounce|s_debounceCnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[26]~83_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(26));

-- Location: LCCOMB_X92_Y39_N24
\sw_debounce|s_debounceCnt[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[27]~85_combout\ = (\sw_debounce|s_debounceCnt\(27) & (\sw_debounce|s_debounceCnt[26]~84\ & VCC)) # (!\sw_debounce|s_debounceCnt\(27) & (!\sw_debounce|s_debounceCnt[26]~84\))
-- \sw_debounce|s_debounceCnt[27]~86\ = CARRY((!\sw_debounce|s_debounceCnt\(27) & !\sw_debounce|s_debounceCnt[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw_debounce|s_debounceCnt\(27),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[26]~84\,
	combout => \sw_debounce|s_debounceCnt[27]~85_combout\,
	cout => \sw_debounce|s_debounceCnt[27]~86\);

-- Location: FF_X92_Y39_N25
\sw_debounce|s_debounceCnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[27]~85_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(27));

-- Location: LCCOMB_X92_Y39_N26
\sw_debounce|s_debounceCnt[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[28]~87_combout\ = (\sw_debounce|s_debounceCnt\(28) & ((GND) # (!\sw_debounce|s_debounceCnt[27]~86\))) # (!\sw_debounce|s_debounceCnt\(28) & (\sw_debounce|s_debounceCnt[27]~86\ $ (GND)))
-- \sw_debounce|s_debounceCnt[28]~88\ = CARRY((\sw_debounce|s_debounceCnt\(28)) # (!\sw_debounce|s_debounceCnt[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(28),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[27]~86\,
	combout => \sw_debounce|s_debounceCnt[28]~87_combout\,
	cout => \sw_debounce|s_debounceCnt[28]~88\);

-- Location: FF_X92_Y39_N27
\sw_debounce|s_debounceCnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[28]~87_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(28));

-- Location: LCCOMB_X92_Y39_N28
\sw_debounce|s_debounceCnt[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[29]~89_combout\ = (\sw_debounce|s_debounceCnt\(29) & (\sw_debounce|s_debounceCnt[28]~88\ & VCC)) # (!\sw_debounce|s_debounceCnt\(29) & (!\sw_debounce|s_debounceCnt[28]~88\))
-- \sw_debounce|s_debounceCnt[29]~90\ = CARRY((!\sw_debounce|s_debounceCnt\(29) & !\sw_debounce|s_debounceCnt[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw_debounce|s_debounceCnt\(29),
	datad => VCC,
	cin => \sw_debounce|s_debounceCnt[28]~88\,
	combout => \sw_debounce|s_debounceCnt[29]~89_combout\,
	cout => \sw_debounce|s_debounceCnt[29]~90\);

-- Location: FF_X92_Y39_N29
\sw_debounce|s_debounceCnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[29]~89_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(29));

-- Location: LCCOMB_X92_Y39_N30
\sw_debounce|s_debounceCnt[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_debounceCnt[30]~91_combout\ = \sw_debounce|s_debounceCnt\(30) $ (\sw_debounce|s_debounceCnt[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(30),
	cin => \sw_debounce|s_debounceCnt[29]~90\,
	combout => \sw_debounce|s_debounceCnt[30]~91_combout\);

-- Location: FF_X92_Y39_N31
\sw_debounce|s_debounceCnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_debounceCnt[30]~91_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \sw_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_debounceCnt\(30));

-- Location: LCCOMB_X91_Y39_N4
\sw_debounce|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|Equal0~7_combout\ = (!\sw_debounce|s_debounceCnt\(25) & (!\sw_debounce|s_debounceCnt\(26) & (!\sw_debounce|s_debounceCnt\(27) & !\sw_debounce|s_debounceCnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(25),
	datab => \sw_debounce|s_debounceCnt\(26),
	datac => \sw_debounce|s_debounceCnt\(27),
	datad => \sw_debounce|s_debounceCnt\(24),
	combout => \sw_debounce|Equal0~7_combout\);

-- Location: LCCOMB_X91_Y39_N14
\sw_debounce|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|Equal0~8_combout\ = (!\sw_debounce|s_debounceCnt\(30) & (!\sw_debounce|s_debounceCnt\(29) & (\sw_debounce|Equal0~7_combout\ & !\sw_debounce|s_debounceCnt\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(30),
	datab => \sw_debounce|s_debounceCnt\(29),
	datac => \sw_debounce|Equal0~7_combout\,
	datad => \sw_debounce|s_debounceCnt\(28),
	combout => \sw_debounce|Equal0~8_combout\);

-- Location: LCCOMB_X91_Y39_N12
\sw_debounce|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|Equal0~3_combout\ = (!\sw_debounce|s_debounceCnt\(14) & (!\sw_debounce|s_debounceCnt\(15) & (!\sw_debounce|s_debounceCnt\(13) & !\sw_debounce|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(14),
	datab => \sw_debounce|s_debounceCnt\(15),
	datac => \sw_debounce|s_debounceCnt\(13),
	datad => \sw_debounce|s_debounceCnt\(12),
	combout => \sw_debounce|Equal0~3_combout\);

-- Location: LCCOMB_X92_Y40_N0
\sw_debounce|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|Equal0~2_combout\ = (!\sw_debounce|s_debounceCnt\(10) & (!\sw_debounce|s_debounceCnt\(11) & (!\sw_debounce|s_debounceCnt\(8) & !\sw_debounce|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(10),
	datab => \sw_debounce|s_debounceCnt\(11),
	datac => \sw_debounce|s_debounceCnt\(8),
	datad => \sw_debounce|s_debounceCnt\(9),
	combout => \sw_debounce|Equal0~2_combout\);

-- Location: LCCOMB_X91_Y39_N8
\sw_debounce|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|Equal0~0_combout\ = (!\sw_debounce|s_debounceCnt\(1) & (!\sw_debounce|s_debounceCnt\(0) & (!\sw_debounce|s_debounceCnt\(3) & !\sw_debounce|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(1),
	datab => \sw_debounce|s_debounceCnt\(0),
	datac => \sw_debounce|s_debounceCnt\(3),
	datad => \sw_debounce|s_debounceCnt\(2),
	combout => \sw_debounce|Equal0~0_combout\);

-- Location: LCCOMB_X91_Y39_N2
\sw_debounce|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|Equal0~1_combout\ = (!\sw_debounce|s_debounceCnt\(7) & (!\sw_debounce|s_debounceCnt\(5) & (!\sw_debounce|s_debounceCnt\(4) & !\sw_debounce|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_debounceCnt\(7),
	datab => \sw_debounce|s_debounceCnt\(5),
	datac => \sw_debounce|s_debounceCnt\(4),
	datad => \sw_debounce|s_debounceCnt\(6),
	combout => \sw_debounce|Equal0~1_combout\);

-- Location: LCCOMB_X91_Y39_N10
\sw_debounce|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|Equal0~4_combout\ = (\sw_debounce|Equal0~3_combout\ & (\sw_debounce|Equal0~2_combout\ & (\sw_debounce|Equal0~0_combout\ & \sw_debounce|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|Equal0~3_combout\,
	datab => \sw_debounce|Equal0~2_combout\,
	datac => \sw_debounce|Equal0~0_combout\,
	datad => \sw_debounce|Equal0~1_combout\,
	combout => \sw_debounce|Equal0~4_combout\);

-- Location: LCCOMB_X91_Y39_N0
\sw_debounce|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|Equal0~9_combout\ = (\sw_debounce|Equal0~6_combout\ & (\sw_debounce|Equal0~5_combout\ & (\sw_debounce|Equal0~8_combout\ & \sw_debounce|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|Equal0~6_combout\,
	datab => \sw_debounce|Equal0~5_combout\,
	datac => \sw_debounce|Equal0~8_combout\,
	datad => \sw_debounce|Equal0~4_combout\,
	combout => \sw_debounce|Equal0~9_combout\);

-- Location: LCCOMB_X94_Y38_N18
\sw_debounce|s_resetPulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|s_resetPulse~0_combout\ = (\sw_debounce|s_pulsedOut~q\) # (!\sw_debounce|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_debounce|s_pulsedOut~q\,
	datad => \sw_debounce|Equal0~9_combout\,
	combout => \sw_debounce|s_resetPulse~0_combout\);

-- Location: FF_X94_Y38_N19
\sw_debounce|s_resetPulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sw_debounce|s_resetPulse~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_resetPulse~q\);

-- Location: LCCOMB_X94_Y38_N20
\sw_debounce|out_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_debounce|out_proc~0_combout\ = (\SW[0]~input_o\) # (\sw_debounce|s_resetPulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \sw_debounce|s_resetPulse~q\,
	combout => \sw_debounce|out_proc~0_combout\);

-- Location: FF_X94_Y38_N31
\sw_debounce|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sw_debounce|ALT_INV_s_dirtyIn~q\,
	d => \sw_debounce|s_pulsedOut~feeder_combout\,
	clrn => \sw_debounce|ALT_INV_out_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_debounce|s_pulsedOut~q\);

-- Location: CLKCTRL_G5
\sw_debounce|s_pulsedOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sw_debounce|s_pulsedOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sw_debounce|s_pulsedOut~clkctrl_outclk\);

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

-- Location: CLKCTRL_G7
\drink_core|pState.S5~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \drink_core|pState.S5~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \drink_core|pState.S5~clkctrl_outclk\);

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

-- Location: LCCOMB_X114_Y18_N24
\drink_core|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|Selector10~0_combout\ = (\drink_core|pState.S0~q\) # ((\SW[2]~input_o\) # (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drink_core|pState.S0~q\,
	datab => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \drink_core|Selector10~0_combout\);

-- Location: LCCOMB_X114_Y18_N12
\drink_core|nState.S0_138\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|nState.S0_138~combout\ = (GLOBAL(\drink_core|pState.S5~clkctrl_outclk\) & ((\drink_core|nState.S0_138~combout\))) # (!GLOBAL(\drink_core|pState.S5~clkctrl_outclk\) & (!\drink_core|Selector10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drink_core|Selector10~0_combout\,
	datab => \drink_core|nState.S0_138~combout\,
	datad => \drink_core|pState.S5~clkctrl_outclk\,
	combout => \drink_core|nState.S0_138~combout\);

-- Location: LCCOMB_X114_Y18_N20
\drink_core|pState.S0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|pState.S0~0_combout\ = !\drink_core|nState.S0_138~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \drink_core|nState.S0_138~combout\,
	combout => \drink_core|pState.S0~0_combout\);

-- Location: FF_X114_Y18_N21
\drink_core|pState.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sw_debounce|s_pulsedOut~clkctrl_outclk\,
	d => \drink_core|pState.S0~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink_core|pState.S0~q\);

-- Location: LCCOMB_X114_Y18_N0
\drink_core|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|Selector8~0_combout\ = (!\SW[2]~input_o\ & ((\SW[1]~input_o\ & ((!\drink_core|pState.S0~q\))) # (!\SW[1]~input_o\ & (\drink_core|pState.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \drink_core|pState.S1~q\,
	datad => \drink_core|pState.S0~q\,
	combout => \drink_core|Selector8~0_combout\);

-- Location: LCCOMB_X114_Y18_N8
\drink_core|nState.S1_130\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|nState.S1_130~combout\ = (GLOBAL(\drink_core|pState.S5~clkctrl_outclk\) & (\drink_core|nState.S1_130~combout\)) # (!GLOBAL(\drink_core|pState.S5~clkctrl_outclk\) & ((\drink_core|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drink_core|nState.S1_130~combout\,
	datac => \drink_core|pState.S5~clkctrl_outclk\,
	datad => \drink_core|Selector8~0_combout\,
	combout => \drink_core|nState.S1_130~combout\);

-- Location: FF_X114_Y18_N1
\drink_core|pState.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sw_debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \drink_core|nState.S1_130~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink_core|pState.S1~q\);

-- Location: LCCOMB_X114_Y18_N10
\drink_core|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|Selector6~0_combout\ = (!\SW[2]~input_o\ & ((\SW[1]~input_o\ & (\drink_core|pState.S1~q\)) # (!\SW[1]~input_o\ & ((\drink_core|pState.S2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \drink_core|pState.S1~q\,
	datac => \drink_core|pState.S2~q\,
	datad => \SW[2]~input_o\,
	combout => \drink_core|Selector6~0_combout\);

-- Location: LCCOMB_X114_Y18_N22
\drink_core|nState.S2_122\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|nState.S2_122~combout\ = (GLOBAL(\drink_core|pState.S5~clkctrl_outclk\) & ((\drink_core|nState.S2_122~combout\))) # (!GLOBAL(\drink_core|pState.S5~clkctrl_outclk\) & (\drink_core|Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drink_core|Selector6~0_combout\,
	datac => \drink_core|nState.S2_122~combout\,
	datad => \drink_core|pState.S5~clkctrl_outclk\,
	combout => \drink_core|nState.S2_122~combout\);

-- Location: FF_X114_Y18_N11
\drink_core|pState.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sw_debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \drink_core|nState.S2_122~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink_core|pState.S2~q\);

-- Location: LCCOMB_X114_Y18_N14
\drink_core|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|Selector4~0_combout\ = (!\SW[2]~input_o\ & ((\SW[1]~input_o\ & (\drink_core|pState.S2~q\)) # (!\SW[1]~input_o\ & ((\drink_core|pState.S3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drink_core|pState.S2~q\,
	datab => \SW[2]~input_o\,
	datac => \drink_core|pState.S3~q\,
	datad => \SW[1]~input_o\,
	combout => \drink_core|Selector4~0_combout\);

-- Location: LCCOMB_X114_Y18_N18
\drink_core|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|Selector4~1_combout\ = (\drink_core|Selector4~0_combout\) # ((!\drink_core|pState.S0~q\ & \SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drink_core|pState.S0~q\,
	datab => \drink_core|Selector4~0_combout\,
	datad => \SW[2]~input_o\,
	combout => \drink_core|Selector4~1_combout\);

-- Location: LCCOMB_X114_Y18_N4
\drink_core|nState.S3_114\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|nState.S3_114~combout\ = (GLOBAL(\drink_core|pState.S5~clkctrl_outclk\) & ((\drink_core|nState.S3_114~combout\))) # (!GLOBAL(\drink_core|pState.S5~clkctrl_outclk\) & (\drink_core|Selector4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drink_core|Selector4~1_combout\,
	datac => \drink_core|nState.S3_114~combout\,
	datad => \drink_core|pState.S5~clkctrl_outclk\,
	combout => \drink_core|nState.S3_114~combout\);

-- Location: FF_X114_Y18_N15
\drink_core|pState.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sw_debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \drink_core|nState.S3_114~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink_core|pState.S3~q\);

-- Location: LCCOMB_X114_Y18_N28
\drink_core|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|Selector2~0_combout\ = (!\SW[2]~input_o\ & ((\SW[1]~input_o\ & ((\drink_core|pState.S3~q\))) # (!\SW[1]~input_o\ & (\drink_core|pState.S4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \drink_core|pState.S4~q\,
	datac => \SW[1]~input_o\,
	datad => \drink_core|pState.S3~q\,
	combout => \drink_core|Selector2~0_combout\);

-- Location: LCCOMB_X114_Y18_N16
\drink_core|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|Selector2~1_combout\ = (\drink_core|Selector2~0_combout\) # ((\SW[2]~input_o\ & \drink_core|pState.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \drink_core|pState.S1~q\,
	datad => \drink_core|Selector2~0_combout\,
	combout => \drink_core|Selector2~1_combout\);

-- Location: LCCOMB_X114_Y18_N26
\drink_core|nState.S4_106\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|nState.S4_106~combout\ = (GLOBAL(\drink_core|pState.S5~clkctrl_outclk\) & ((\drink_core|nState.S4_106~combout\))) # (!GLOBAL(\drink_core|pState.S5~clkctrl_outclk\) & (\drink_core|Selector2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drink_core|Selector2~1_combout\,
	datac => \drink_core|nState.S4_106~combout\,
	datad => \drink_core|pState.S5~clkctrl_outclk\,
	combout => \drink_core|nState.S4_106~combout\);

-- Location: FF_X114_Y18_N25
\drink_core|pState.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sw_debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \drink_core|nState.S4_106~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink_core|pState.S4~q\);

-- Location: LCCOMB_X114_Y18_N2
\drink_core|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|Selector1~0_combout\ = (\SW[2]~input_o\ & ((\drink_core|pState.S2~q\) # ((\drink_core|pState.S4~q\) # (\drink_core|pState.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drink_core|pState.S2~q\,
	datab => \drink_core|pState.S4~q\,
	datac => \SW[2]~input_o\,
	datad => \drink_core|pState.S3~q\,
	combout => \drink_core|Selector1~0_combout\);

-- Location: LCCOMB_X114_Y18_N6
\drink_core|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|Selector1~1_combout\ = (\drink_core|Selector1~0_combout\) # ((\SW[1]~input_o\ & \drink_core|pState.S4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \drink_core|Selector1~0_combout\,
	datac => \drink_core|pState.S4~q\,
	combout => \drink_core|Selector1~1_combout\);

-- Location: LCCOMB_X114_Y18_N30
\drink_core|nState.S5_98\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|nState.S5_98~combout\ = (GLOBAL(\drink_core|pState.S5~clkctrl_outclk\) & ((\drink_core|nState.S5_98~combout\))) # (!GLOBAL(\drink_core|pState.S5~clkctrl_outclk\) & (\drink_core|Selector1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drink_core|Selector1~1_combout\,
	datac => \drink_core|nState.S5_98~combout\,
	datad => \drink_core|pState.S5~clkctrl_outclk\,
	combout => \drink_core|nState.S5_98~combout\);

-- Location: FF_X114_Y18_N13
\drink_core|pState.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sw_debounce|s_pulsedOut~clkctrl_outclk\,
	asdata => \drink_core|nState.S5_98~combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink_core|pState.S5~q\);

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

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


