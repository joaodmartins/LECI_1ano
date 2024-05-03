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

-- DATE "04/16/2024 09:35:30"

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

ENTITY 	SelectProgram IS
    PORT (
	binInput : IN std_logic_vector(1 DOWNTO 0);
	decOut_n : OUT std_logic_vector(6 DOWNTO 0)
	);
END SelectProgram;

ARCHITECTURE structure OF SelectProgram IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_binInput : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_decOut_n : std_logic_vector(6 DOWNTO 0);
SIGNAL \decOut_n[0]~output_o\ : std_logic;
SIGNAL \decOut_n[1]~output_o\ : std_logic;
SIGNAL \decOut_n[2]~output_o\ : std_logic;
SIGNAL \decOut_n[3]~output_o\ : std_logic;
SIGNAL \decOut_n[4]~output_o\ : std_logic;
SIGNAL \decOut_n[5]~output_o\ : std_logic;
SIGNAL \decOut_n[6]~output_o\ : std_logic;
SIGNAL \binInput[0]~input_o\ : std_logic;
SIGNAL \binInput[1]~input_o\ : std_logic;
SIGNAL \decOut_n~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_decOut_n~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;

BEGIN

ww_binInput <= binInput;
decOut_n <= ww_decOut_n;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_decOut_n~0_combout\ <= NOT \decOut_n~0_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;

\decOut_n[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \decOut_n[0]~output_o\);

\decOut_n[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \decOut_n[1]~output_o\);

\decOut_n[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \decOut_n[2]~output_o\);

\decOut_n[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \decOut_n[3]~output_o\);

\decOut_n[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => \decOut_n[4]~output_o\);

\decOut_n[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal1~1_combout\,
	devoe => ww_devoe,
	o => \decOut_n[5]~output_o\);

\decOut_n[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal3~0_combout\,
	devoe => ww_devoe,
	o => \decOut_n[6]~output_o\);

\binInput[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binInput(0),
	o => \binInput[0]~input_o\);

\binInput[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binInput(1),
	o => \binInput[1]~input_o\);

\decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decOut_n~0_combout\ = \binInput[0]~input_o\ $ (\binInput[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \binInput[0]~input_o\,
	datad => \binInput[1]~input_o\,
	combout => \decOut_n~0_combout\);

\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\binInput[0]~input_o\ & !\binInput[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[0]~input_o\,
	datad => \binInput[1]~input_o\,
	combout => \Equal1~0_combout\);

\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\binInput[0]~input_o\ & \binInput[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[0]~input_o\,
	datab => \binInput[1]~input_o\,
	combout => \Equal1~1_combout\);

\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\binInput[0]~input_o\) # (\binInput[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[0]~input_o\,
	datab => \binInput[1]~input_o\,
	combout => \Equal3~0_combout\);

ww_decOut_n(0) <= \decOut_n[0]~output_o\;

ww_decOut_n(1) <= \decOut_n[1]~output_o\;

ww_decOut_n(2) <= \decOut_n[2]~output_o\;

ww_decOut_n(3) <= \decOut_n[3]~output_o\;

ww_decOut_n(4) <= \decOut_n[4]~output_o\;

ww_decOut_n(5) <= \decOut_n[5]~output_o\;

ww_decOut_n(6) <= \decOut_n[6]~output_o\;
END structure;


