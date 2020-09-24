library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity add is
	port(
		aa,bb: in std_logic_vector(3 downto 0);
		suma: out std_logic_vector(3 downto 0);
		acarreo: out std_logic
	);
end add;

architecture suma of add is
signal ss: std_logic_vector(4 downto 0);
begin
	ss<=('0'&aa) + bb;
	suma<=ss(3 downto 0);
	acarreo<=ss(4);
end suma;