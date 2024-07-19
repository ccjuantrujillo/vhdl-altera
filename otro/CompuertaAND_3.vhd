library ieee;

use ieee.std_logic_1164.all;

entity CompuertaAND_3 is
	port(
		a,b: in std_logic;
		f: out std_logic
	);
end CompuertaAND_3;	

architecture rte1 of CompuertaAND_3 is
begin
	f<=a and b;
end rte1;