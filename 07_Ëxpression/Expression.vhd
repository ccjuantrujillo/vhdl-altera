library ieee;

use ieee.std_logic_1164.all;

entity Expression is
	port(
		A,B,C: in std_logic;
		F: out std_logic
	);
end Expression;

architecture exp1 of Expression is
begin
	F<= (not A AND not B) OR (not B and C) or (A and not C);
end exp1;