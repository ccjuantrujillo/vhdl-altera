library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Alu2 is
	port(
		A: in unsigned(3 downto 0);
		B: in unsigned(3 downto 0);
		S: in unsigned(3 downto 0);
		Q: buffer unsigned(3 downto 0);
		Aca_pres: out std_ulogic
	);
end Alu2;

architecture flujoAlu of Alu2 is
signal A1:unsigned(4 downto 0);
signal B1:unsigned(4 downto 0);
signal R:unsigned(4 downto 0);
begin
	with S select
		Q<=(A+B) when "0000",
			(A-B) when "0001",
			(not A) when "0010",
			(not A) + "0001" when "0011",
			"0000" when others;
	A1<='0'&A;
	B1<='0'&B;
	R<=(A1+B1) when (S="0000") else
		(A1-B1) when (S="0001") else
		"00000";
	Aca_pres<=R(4) when (S="0000") or (S="0001") else '0';
end flujoAlu;