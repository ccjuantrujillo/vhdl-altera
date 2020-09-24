library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexor is 
Port(
	A : in std_logic_vector (3 downto 0);
	B : in std_logic_vector (3 downto 0);
	Sel : in std_logic;
	s : out std_logic_vector (3 downto 0)
);
end Multiplexor;

architecture Mux2_1 of Multiplexor is
begin
	with Sel select
	s <= A when '0',
		  B when others;
end Mux2_1;