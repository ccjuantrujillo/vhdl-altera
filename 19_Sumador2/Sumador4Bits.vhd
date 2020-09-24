library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity Sumador4Bits is
	port(
		A,B : in signed (4 downto 0);
		S : out signed (4 downto 0)
	);
end Sumador4Bits;

architecture paralelo of Sumador4Bits is
begin
	S <= A + B;
end paralelo;