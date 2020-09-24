library ieee;

use ieee.std_logic_1164.all;

entity Puerta_Norex is
	port (
		A,B: in std_logic;
		F: out std_logic
	);
end Puerta_Norex;

architecture Compuerta of Puerta_Norex is
begin
	F<=A xnor B;
end Compuerta;