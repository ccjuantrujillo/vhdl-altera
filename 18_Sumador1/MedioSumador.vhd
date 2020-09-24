library ieee;

use ieee.std_logic_1164.all;

entity MedioSumador is
	port(
	a,b: in std_logic;
	cout,f: out std_logic
	);
end MedioSumador;

architecture rt1 of MedioSumador is
begin
	f<=a xor b;
	cout<=a and b;
end rt1;