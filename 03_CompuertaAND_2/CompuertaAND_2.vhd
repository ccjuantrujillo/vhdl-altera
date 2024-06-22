library ieee;

use ieee.std_logic_1164.all;

entity CompuertaAND_2 is
	port(
		a,b: in std_logic;
		f: out std_logic
	);
end CompuertaAND_2;	

architecture comportamiento of CompuertaAND_2 is
begin
	f<=a and b;
end comportamiento;