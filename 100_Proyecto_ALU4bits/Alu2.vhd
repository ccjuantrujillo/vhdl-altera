library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Alu2 is
	port(
		A: in unsigned(3 downto 0);
		B: in unsigned(3 downto 0);
		sel: in unsigned(2 downto 0);
		S:buffer unsigned(3 downto 0);
		acarreo:out std_ulogic
	);
end Alu2;

architecture rte1 of Alu2 is
component resta
	port(
		aa: in unsigned(3 downto 0);
		bb: in unsigned(3 downto 0);
		ss: buffer unsigned(3 downto 0);
		ac: out std_ulogic
	);
end component;
component complemento
	port(
		aa: in unsigned(3 downto 0);
		ss: out unsigned(3 downto 0)
	);
end component;
component compuertaXor
	port(
		aa: in unsigned(3 downto 0);
		bb: in unsigned(3 downto 0);
		ss: out unsigned(3 downto 0)
	);
end component;
component compuertaOr
	port(
		aa: in unsigned(3 downto 0);
		bb: in unsigned(3 downto 0);
		ss: out unsigned(3 downto 0)
	);
end component;
component sumador
	port(
		aa: in unsigned(3 downto 0);
		bb: in unsigned(3 downto 0);
		ss: buffer unsigned(3 downto 0);
		ac: out std_ulogic
	);
end component;
component multiplexor
	port(
		ent0: in unsigned(3 downto 0);
		ent1: in unsigned(3 downto 0);
		ent2: in unsigned(3 downto 0);
		ent3: in unsigned(3 downto 0);
		ent4: in unsigned(3 downto 0);
		ent5: in unsigned(3 downto 0);
		ent6: in unsigned(3 downto 0);
		selMux: in unsigned(2 downto 0);		
		salida: buffer unsigned(3 downto 0)
	);
end component;
signal E0,E1,E2,E3,E4,E5,E6:unsigned(3 downto 0);
signal ac0,ac2,ac4,ac6:std_ulogic;
begin
	SUBTRACT1:resta port map(A,B,E0,ac0);
	XOR1:compuertaXor port map(A,B,E1);
	INCREMENT1:sumador port map(A,"0001",E2,ac2);
	COMPLEMENT1:complemento port map(A,E3);
	DECREMENT1:resta port map(A,"0001",E4,ac4);
	OR1:compuertaOr port map(A,B,E5);
	ADD1:sumador port map(A,B,E6,ac6);
	MUX1:multiplexor port map(E0,E1,E2,E3,E4,E5,E6,sel,S);
	with sel select
		acarreo<= ac0 when "000",--Substract(A-B)
					ac2 when "010",--Increment(A + 1)
					ac4 when "100",--Decrement(A - 1)
					ac6 when "110",--Add(A + B)
					'0' when others;
end rte1;