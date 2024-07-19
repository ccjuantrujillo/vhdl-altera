library ieee;

use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity compuertaXor is
	port(
		aa: in unsigned(3 downto 0);
		bb: in unsigned(3 downto 0);
		ss: out unsigned(3 downto 0)
	);
end compuertaXor;

architecture rte1 of compuertaXor is
begin
	ss<=aa xor bb;
end rte1;