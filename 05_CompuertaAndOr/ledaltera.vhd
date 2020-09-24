--A, B son entradas Yand, Ynot, Yor salidas
library ieee;
use ieee.std_logic_1164.all;
entity Tutorial2 is
	port
	(
		-- Pines entrada
		A,B	: in  std_logic;
		
		-- Pines de salida
		Yand,Yor,Ynot	: out std_logic
	);
end Tutorial2;
architecture dataflow of Tutorial2 is
begin
	Yand <= A and b;
	Yor <= A or B;
	Ynot <= not A;
end dataflow;
