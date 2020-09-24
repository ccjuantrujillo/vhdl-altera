library ieee;

use ieee.std_logic_1164.all;

entity alu is
	port(
		a: in std_logic_vector(7 downto 0);
		b: in std_logic_vector(7 downto 0);
		resultat: out std_logic_vector(7 downto 0);
		
		op0: in std_logic;
		op1: in std_logic;
		op2: in std_logic;
		cout: out std_logic
	);
end alu;

architecture estructura of alu is
	component and_or
		port(
			aa,bb: in std_logic_vector(7 downto 0);
			operacio0,operacio1: in std_logic;
			sor_and_or: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component suma_resta
		port(
			aa,bb: in std_logic_vector(7 downto 0);
			operacio0: in std_logic;
			operacio1: in std_logic;
			operacio2: in std_logic;
			cout: out std_logic;
			sor_sum_res: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component multiplexor
		port(
			entr_a: in std_logic_vector(7 downto 0);
			entr_b: in std_logic_vector(7 downto 0);
			operacio0: in std_logic;
			operacio1: in std_logic;
			operacio2: in std_logic;
			sortida: out std_logic_vector(7 downto 0)
		);
	end component;
	
	signal x,y:std_logic_vector(7 downto 0);
begin
U2: suma_resta port map(a,b,op0,op1,op2,cout,x);
U3: multiplexor port map(x,y,op0,op1,op2,resultat);	
end estructura;