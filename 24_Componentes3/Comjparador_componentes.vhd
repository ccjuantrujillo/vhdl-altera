library ieee;

use ieee.std_logic_1164.all;

entity Comparador_componentes is
port(
	a,b: in std_logic_vector(3 downto 0);
	c_in: in std_logic_vector(2 downto 0);
	s: out std_logic_vector(2 downto 0)
);
end Comparador_componentes;

architecture rt1 of Comparador_componentes is
begin
	s<="100" when ((a>b and c_in(0)='1') or c_in(2)='1')
else
	"010" when ((b>a and c_in(0)='1') or c_in(1)='1')
else
	"001";
end rt1;