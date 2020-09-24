library ieee;

use ieee.std_logic_1164.all;

entity Altera3 is
port(
	a,b: in std_logic;
	f: out std_logic
);
end Altera3;

architecture rte1 of Altera3 is
begin
	f<=a xor b;
end rte1;