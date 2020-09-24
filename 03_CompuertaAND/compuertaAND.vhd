library ieee;

use ieee.std_logic_1164.all;

entity compuertaAND is
	port(
		a,b: in std_logic;
		f: out std_logic
	);
end compuertaAND;	

architecture rte1 of compuertaAND is
begin
	f<=a and b;
end rte1;