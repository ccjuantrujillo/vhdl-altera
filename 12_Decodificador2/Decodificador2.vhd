library ieee;

use ieee.std_logic_1164.all;

entity Decodificador2 is
	port(
		I:in std_logic_vector(3 downto 0);
		S:out std_logic_vector(7 downto 0);
		ENABLE: in std_logic
	);
end Decodificador2;