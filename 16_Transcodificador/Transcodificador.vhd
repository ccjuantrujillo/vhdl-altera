library ieee;

use ieee.std_logic_1164.all;

entity Transcodificador is
	port(
		cod: in std_logic_vector(3 downto 0);
		Jhonson5bits: out std_logic_vector(4 downto 0)
	);
end Transcodificador;

architecture rt1 of Transcodificador is
begin
	process(cod)
	begin
		CASE cod is
			WHEN "0000" => Jhonson5bits <= "00000";
			WHEN "0111" => Jhonson5bits <= "00001";
			WHEN "0110" => Jhonson5bits <= "00011";
			WHEN "0101" => Jhonson5bits <= "00111";
			WHEN "0100" => Jhonson5bits <= "01111";
			WHEN "1011" => Jhonson5bits <= "11111";
			WHEN "1010" => Jhonson5bits <= "11110";
			WHEN "1001" => Jhonson5bits <= "11100";
			WHEN "1000" => Jhonson5bits <= "11000";
			WHEN "1111" => Jhonson5bits <= "10000";
			WHEN others => Jhonson5bits <= "00000";
		END CASE;
	end process;
end rt1;