library ieee;

use ieee.std_logic_1164.all;

entity FlipFlop2 is
	port(
		D,RST,CLK: in bit;
		Q: out bit
	);
end FlipFlop2;

architecture rt1 of FlipFlop2 is
begin
	process(D,CLK)
	begin
		if RST='1' then
			Q <= '0';
		elsif CLK='0' and CLK' event then
			Q <= D;
		end if;
	end process;
end rt1;