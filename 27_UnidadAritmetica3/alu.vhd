library ieee;

use ieee.std_logic_1164.all;

entity alu is
	port(
		a: in std_logic_vector(3 downto 0);
		b: in std_logic_vector(3 downto 0);
		resultat: out std_logic_vector(3 downto 0);
		op0: in std_logic;
		op1: in std_logic;
		op2: in std_logic;
		cout: out std_logic
	);
end alu;

architecture estructura of alu is
	component unidad
		port(
			aa: in std_logic_vector(3 downto 0);
			bb: in std_logic_vector(3 downto 0);
			operacio0: in std_logic;
			operacio1: in std_logic;
			operacio2: in std_logic;
			sortida: out std_logic_vector(3 downto 0);
			ccout: out std_logic
		);
	end component;
begin
U1: unidad port map(a,b,op0,op1,op2,resultat,cout);
end estructura;