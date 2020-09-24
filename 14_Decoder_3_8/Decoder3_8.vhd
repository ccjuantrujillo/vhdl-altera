library ieee;

use ieee.std_logic_1164.all;

entity Decoder3_8 is
	port(
		entrada: in std_logic_vector(2 downto 0);
		g1,g2: in bit;
		salida: out std_logic_vector(7 downto 0)
	);
end Decoder3_8;

architecture rte1 of Decoder3_8 is
begin
salida<=(others=>'1') when g2='1'
	else(others=>'1') when g2='0' and g1='0'
	else "01111111" when entrada="000" 
	else "10111111" when entrada="001"
	else "11011111" when entrada="010"
	else "11101111" when entrada="011"
	else "11110111" when entrada="100"
	else "11111011" when entrada="101"
	else "11111110" when entrada="111"
	else "11111111" when entrada="111";
end rte1;