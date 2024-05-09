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

-- DATE "05/07/2024 10:36:15"

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

ENTITY 	ControlUnit IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	statop : IN std_logic;
	laprst : IN std_logic;
	cntRst : OUT std_logic;
	cntEnb : OUT std_logic;
	regEnb : OUT std_logic
	);
END ControlUnit;

-- Design Ports Information
-- cntRst	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntEnb	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnb	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- laprst	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- statop	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ControlUnit IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_statop : std_logic;
SIGNAL ww_laprst : std_logic;
SIGNAL ww_cntRst : std_logic;
SIGNAL ww_cntEnb : std_logic;
SIGNAL ww_regEnb : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cntRst~output_o\ : std_logic;
SIGNAL \cntEnb~output_o\ : std_logic;
SIGNAL \regEnb~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \statop~input_o\ : std_logic;
SIGNAL \laprst~input_o\ : std_logic;
SIGNAL \reg_fstate.STOPPED~0_combout\ : std_logic;
SIGNAL \reg_fstate.LAPVIEW~0_combout\ : std_logic;
SIGNAL \fstate.LAPVIEW~q\ : std_logic;
SIGNAL \reg_fstate.STARTED~1_combout\ : std_logic;
SIGNAL \reg_fstate.STARTED~2_combout\ : std_logic;
SIGNAL \fstate.STARTED~q\ : std_logic;
SIGNAL \reg_fstate.STOPPED~1_combout\ : std_logic;
SIGNAL \fstate.STOPPED~q\ : std_logic;
SIGNAL \reg_fstate.CLEARED~0_combout\ : std_logic;
SIGNAL \reg_fstate.CLEARED~1_combout\ : std_logic;
SIGNAL \fstate.CLEARED~q\ : std_logic;
SIGNAL \cntRst~0_combout\ : std_logic;
SIGNAL \cntEnb~0_combout\ : std_logic;
SIGNAL \reg_fstate.STARTED~0_combout\ : std_logic;
SIGNAL \ALT_INV_cntEnb~0_combout\ : std_logic;
SIGNAL \ALT_INV_cntRst~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_statop <= statop;
ww_laprst <= laprst;
cntRst <= ww_cntRst;
cntEnb <= ww_cntEnb;
regEnb <= ww_regEnb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_cntEnb~0_combout\ <= NOT \cntEnb~0_combout\;
\ALT_INV_cntRst~0_combout\ <= NOT \cntRst~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y34_N2
\cntRst~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_cntRst~0_combout\,
	devoe => ww_devoe,
	o => \cntRst~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\cntEnb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_cntEnb~0_combout\,
	devoe => ww_devoe,
	o => \cntEnb~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\regEnb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_fstate.STARTED~0_combout\,
	devoe => ww_devoe,
	o => \regEnb~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y34_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\statop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_statop,
	o => \statop~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\laprst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_laprst,
	o => \laprst~input_o\);

-- Location: LCCOMB_X1_Y34_N20
\reg_fstate.STOPPED~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.STOPPED~0_combout\ = (!\laprst~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \laprst~input_o\,
	datad => \reset~input_o\,
	combout => \reg_fstate.STOPPED~0_combout\);

-- Location: LCCOMB_X1_Y34_N28
\reg_fstate.LAPVIEW~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.LAPVIEW~0_combout\ = (!\reset~input_o\ & ((\laprst~input_o\ & ((\fstate.STARTED~q\))) # (!\laprst~input_o\ & (\fstate.LAPVIEW~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst~input_o\,
	datab => \reset~input_o\,
	datac => \fstate.LAPVIEW~q\,
	datad => \fstate.STARTED~q\,
	combout => \reg_fstate.LAPVIEW~0_combout\);

-- Location: FF_X1_Y34_N29
\fstate.LAPVIEW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_fstate.LAPVIEW~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.LAPVIEW~q\);

-- Location: LCCOMB_X1_Y34_N2
\reg_fstate.STARTED~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.STARTED~1_combout\ = (\statop~input_o\ & ((!\fstate.STARTED~q\))) # (!\statop~input_o\ & (!\laprst~input_o\ & \fstate.STARTED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop~input_o\,
	datac => \laprst~input_o\,
	datad => \fstate.STARTED~q\,
	combout => \reg_fstate.STARTED~1_combout\);

-- Location: LCCOMB_X1_Y34_N10
\reg_fstate.STARTED~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.STARTED~2_combout\ = (!\reset~input_o\ & ((\fstate.LAPVIEW~q\ & (\laprst~input_o\)) # (!\fstate.LAPVIEW~q\ & ((\reg_fstate.STARTED~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \laprst~input_o\,
	datab => \fstate.LAPVIEW~q\,
	datac => \reset~input_o\,
	datad => \reg_fstate.STARTED~1_combout\,
	combout => \reg_fstate.STARTED~2_combout\);

-- Location: FF_X1_Y34_N11
\fstate.STARTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_fstate.STARTED~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.STARTED~q\);

-- Location: LCCOMB_X1_Y34_N8
\reg_fstate.STOPPED~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.STOPPED~1_combout\ = (\reg_fstate.STOPPED~0_combout\ & ((\statop~input_o\ & ((\fstate.STARTED~q\))) # (!\statop~input_o\ & (\fstate.STOPPED~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop~input_o\,
	datab => \reg_fstate.STOPPED~0_combout\,
	datac => \fstate.STOPPED~q\,
	datad => \fstate.STARTED~q\,
	combout => \reg_fstate.STOPPED~1_combout\);

-- Location: FF_X1_Y34_N9
\fstate.STOPPED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_fstate.STOPPED~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.STOPPED~q\);

-- Location: LCCOMB_X1_Y34_N12
\reg_fstate.CLEARED~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.CLEARED~0_combout\ = (!\statop~input_o\ & (((\laprst~input_o\ & \fstate.STOPPED~q\)) # (!\fstate.CLEARED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statop~input_o\,
	datab => \laprst~input_o\,
	datac => \fstate.STOPPED~q\,
	datad => \fstate.CLEARED~q\,
	combout => \reg_fstate.CLEARED~0_combout\);

-- Location: LCCOMB_X1_Y34_N24
\reg_fstate.CLEARED~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.CLEARED~1_combout\ = (!\reset~input_o\ & !\reg_fstate.CLEARED~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \reg_fstate.CLEARED~0_combout\,
	combout => \reg_fstate.CLEARED~1_combout\);

-- Location: FF_X1_Y34_N25
\fstate.CLEARED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_fstate.CLEARED~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.CLEARED~q\);

-- Location: LCCOMB_X1_Y34_N30
\cntRst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntRst~0_combout\ = (\fstate.CLEARED~q\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fstate.CLEARED~q\,
	datad => \reset~input_o\,
	combout => \cntRst~0_combout\);

-- Location: LCCOMB_X1_Y34_N6
\cntEnb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cntEnb~0_combout\ = (\fstate.STOPPED~q\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.STOPPED~q\,
	datad => \reset~input_o\,
	combout => \cntEnb~0_combout\);

-- Location: LCCOMB_X1_Y34_N22
\reg_fstate.STARTED~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.STARTED~0_combout\ = (!\reset~input_o\ & !\fstate.LAPVIEW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \fstate.LAPVIEW~q\,
	combout => \reg_fstate.STARTED~0_combout\);

ww_cntRst <= \cntRst~output_o\;

ww_cntEnb <= \cntEnb~output_o\;

ww_regEnb <= \regEnb~output_o\;
END structure;


