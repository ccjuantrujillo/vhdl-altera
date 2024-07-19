library ieee;

use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity resta is
	port(
		aa: in unsigned(3 downto 0);
		bb: in unsigned(3 downto 0);
		ss: buffer unsigned(3 downto 0);
		ac: out std_ulogic
	);
end resta;

architecture rte1 of resta is
signal temp: unsigned(4 downto 0);
begin
	temp<=('0'&aa) - bb;
	ss<=temp(3 downto 0);
	ac<=temp(4);
end rte1;
