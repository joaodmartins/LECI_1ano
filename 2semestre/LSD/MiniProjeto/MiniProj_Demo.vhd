library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MiniProj_Demo is
	port(
		CLOCK_50 : in  std_logic;
		SW   : in  std_logic_vector(1 downto 0);
		LEDR : out std_logic_vector(3 downto 0);
		LEDG : out std_logic_vector(3 downto 0);
		HEX0 : out std_logic_vector(6 downto 0)
	);
end MiniProj_Demo;

architecture Shell of MiniProj_Demo is
begin
	selectprog : entity work.SelectProgram(Behavioral)
	port map(
		binInput => SW(1 downto 0),
		decOut_n => HEX0(6 downto 0)
	);
	progexe : entity work.ProgramExecution(Behavioral)
	port map(
		clk => CLOCK_50,
		binInput => SW(1 downto 0),
		red_leds => LEDR(3 downto 0),
		green_leds => LEDG(3 downto 0)
	); 
end Shell;