library ieee;

use ieee.std_logic_1164.all;

entity Decoder3_6 is
	port(
		entrada: in std_logic_vector(2 downto 0);
		salida: out std_logic_vector(5 downto 0)
	);
end Decoder3_6;

architecture rte1 of Decoder3_6 is
begin
	with entrada select
	salida<= "001100" when "000",
				"10110-" when "001",
				"000000" when "010",
				"10000-" when "011",
				"011111" when "100",
				"11110-" when "101",
				"000011" when "110",
				"------" when others;
end rte1;