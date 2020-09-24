--Flip flop tipo D sin RESET
library ieee;

use ieee.std_logic_1164.all;

entity FlipFlop is
	port(
		D: in bit;
		CLK: in bit;
		Q: out bit
	);
end FlipFlop;

architecture rt1 of FlipFlop is
begin
	process(D,CLK)
	begin
		if CLK='0' and CLK' event then
			Q<=D;
		end if;
	end process;
end rt1;