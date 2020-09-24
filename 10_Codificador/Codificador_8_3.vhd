library ieee;

use ieee.std_logic_1164.all;

entity Codificador_8_3 is
port(
	dentro: in bit_vector(3 downto 0);
	fuera: out bit_vector(1 downto 0);
	error: out bit
);
end Codificador_8_3;

architecture rte1 of Codificador_8_3 is
begin
process(dentro)
begin	
fuera<="00";
error<='1';
	case dentro is
		when "0001"=>fuera<="00";
		when "0010"=>fuera<="01";
		when "0100"=>fuera<="10";
		when "1000"=>fuera<="11";
		when others=>error<='1';
	end case;
end process;
end rte1;