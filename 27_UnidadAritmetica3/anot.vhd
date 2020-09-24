library ieee;

use ieee.std_logic_1164.all;

entity anot is
port(
	a:in std_logic_vector(3 downto 0);
	s:out std_logic_vector(3 downto 0)
);
end anot;

architecture negacion of anot is
begin
s(0)<= not a(0);
s(1)<= not a(1);
s(2)<= not a(2);
s(3)<= not a(3);
end negacion;