library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity ProgramExecution is
    port(
		  clk        : in  std_logic;
        binInput : in std_logic_vector(1 downto 0);
        red_leds : out std_logic_vector(3 downto 0);
		  green_leds : out std_logic_vector(3 downto 0)
    );
end entity ProgramExecution;

architecture Behavioral of ProgramExecution is
	 signal counter : integer range 0 to 12499999 := 0;
    signal blink_state_red : std_logic := '0';  
    signal blink_state_green : std_logic := '0'; 
begin
	 process (clk)
    begin
        if rising_edge(clk) then
            if counter = 12499999 then
                counter <= 0;
                blink_state_red <= not blink_state_red; 
                blink_state_green <= not blink_state_green; 
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

		
    red_leds <= "1111" when (binInput = "00") else 
				  blink_state_red & blink_state_red & blink_state_red & blink_state_red when (binInput = "01") else
				  "0000" when (binInput = "10") else
				  blink_state_red & blink_state_red & blink_state_red & blink_state_red when (binInput = "01");
	 green_leds <= "1111" when (binInput = "00") else 
				  "0000" when (binInput = "01") else
				  blink_state_green & blink_state_green & blink_state_green & blink_state_green when (binInput = "10") else
				  blink_state_green & blink_state_green & blink_state_green & blink_state_green when (binInput = "10");
end architecture Behavioral;