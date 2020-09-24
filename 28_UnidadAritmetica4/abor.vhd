library ieee;

use ieee.std_logic_1164.all;

entity abor is
	port(
	a,b: in std_logic_vector(3 downto 0);
	f: out std_logic_vector(3 downto 0)
	);
end abor;

architecture compuerta_xor of abor is
begin
	f(0)<=a(0) or b(0);
	f(1)<=a(1) or b(1);
	f(2)<=a(2) or b(2);
	f(3)<=a(3) or b(3);
end compuerta_xor;