library ieee;

use ieee.std_logic_1164.all;

entity abxor is
	port(
	a,b: in std_logic_vector(3 downto 0);
	f: out std_logic_vector(3 downto 0)
	);
end abxor;

architecture compuerta_xor of abxor is
begin
	f(0)<=a(0) xor b(0);
	f(1)<=a(1) xor b(1);
	f(2)<=a(2) xor b(2);
	f(3)<=a(3) xor b(3);
end compuerta_xor;