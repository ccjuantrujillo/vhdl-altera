library ieee;

use ieee.std_logic_1164.all;

entity and_or is
	port(
		aa,bb: in std_logic_vector(7 downto 0);
		operacio0,operacio1: in std_logic;
		sor_and_or: out std_logic_vector(7 downto 0);
		--Probar
		reg1,reg2,reg3: out std_logic_vector(7 downto 0)
	);
end and_or;

architecture andor of and_or is
signal inter_op_0:std_logic;
signal inter_op_1:std_logic;
signal funcio:std_logic;
begin
	inter_op_0<=not operacio0;
	inter_op_1<=not operacio1;
	funcio<=inter_op_0 and inter_op_1;
	--
	reg1(0)<=aa(0) and bb(0);
	reg2(0)<=aa(0) and funcio;
	reg3(0)<=bb(0) and funcio;

end andor;
