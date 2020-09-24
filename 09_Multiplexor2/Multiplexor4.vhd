library ieee;

use ieee.std_logic_1164.all;

entity Multiplexor4 is
	port(
		E: in std_logic_vector(3 DOWNTO 0);
		F: out std_logic;
		S: in std_logic_vector(1 downto 0)
	);
end Multiplexor4;

architecture rt1 of Multiplexor4 is
begin
	with S select
	F<=E(0) when "00",
		E(1) when "01",
		E(2) when "10",
		E(3) when "11";
end rt1;