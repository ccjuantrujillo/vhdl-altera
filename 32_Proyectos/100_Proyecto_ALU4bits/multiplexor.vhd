library ieee;

use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity multiplexor is
	port(
		ent0: in unsigned(3 downto 0);
		ent1: in unsigned(3 downto 0);
		ent2: in unsigned(3 downto 0);
		ent3: in unsigned(3 downto 0);
		ent4: in unsigned(3 downto 0);
		ent5: in unsigned(3 downto 0);
		ent6: in unsigned(3 downto 0);
		selMux: in unsigned(2 downto 0);		
		salida: out unsigned(3 downto 0)
	);
end multiplexor;

architecture rte1 of multiplexor is
begin
	with selMux select
		salida<= ent0 when "000",--Substract(A-B)
					ent1 when "001",--XOR(A XOR B)
					ent2 when "010",--Increment(A + 1)
					ent3 when "011",--Complement(A')
					ent4 when "100",--Decrement(A - 1)
					ent5 when "101",--OR(A OR B)
					ent6 when "110",--Add(A + B)
					"0000" when others;
end rte1;