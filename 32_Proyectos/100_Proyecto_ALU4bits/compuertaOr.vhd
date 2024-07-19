library ieee;

use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity compuertaOr is
	port(
		aa: in unsigned(3 downto 0);
		bb: in unsigned(3 downto 0);
		ss: out unsigned(3 downto 0)
	);
end compuertaOr;

architecture rte1 of compuertaOr is
begin
	ss<=aa or bb;
end rte1;