library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity abminus is
	port(
		a,b: in std_logic_vector(3 downto 0);
		rest: out std_logic_vector(3 downto 0)
	);
end abminus;

architecture resta of abminus is
signal resultado:std_logic_vector(4 downto 0);
begin
	resultado<=('0'&a) - b;
	rest<=resultado(3 downto 0);
end resta;