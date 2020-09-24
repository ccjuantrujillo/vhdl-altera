library ieee;

use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity complemento is
	port(
		aa: in unsigned(3 downto 0);
		ss: out unsigned(3 downto 0)
	);
end complemento;

architecture rte1 of complemento is
begin
	ss<=not aa;
end rte1;