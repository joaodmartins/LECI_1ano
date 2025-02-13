library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity SelectProgram is
    port(
        binInput : in std_logic_vector(1 downto 0);
        decOut_n : out std_logic_vector(6 downto 0)
    );
end entity SelectProgram;

architecture Behavioral of SelectProgram is
begin
    decOut_n <= "1111001" when (binInput = "00") else --1
				    "0100100" when (binInput = "01") else --2
				    "0110000" when (binInput = "10") else --3
				    "0011001" when (binInput = "11") else --4
				    "0111111";
end architecture Behavioral;