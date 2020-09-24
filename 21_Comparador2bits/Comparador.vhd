library ieee;

use ieee.std_logic_1164.all;

entity Comparador is
	port(
		a,b:in std_logic_vector(1 downto 0);
		mayor,menor,igual: out std_logic
	);
end Comparador;

architecture rte1 of Comparador is
begin
process(a,b)
begin
	if a>b then 
		mayor<='1';
		menor<='0';
		igual<='0';
	elsif a<b then 
		mayor<='0';
		menor<='1';
		igual<='0';
	elsif a=b then
		mayor<='0';
		menor<='0';
		igual<='1';
	end if;
end process;
end rte1;
