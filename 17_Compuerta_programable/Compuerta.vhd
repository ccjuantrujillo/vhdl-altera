library ieee;

use ieee.std_logic_1164.all;

entity Compuerta is
	port(
		Dato1,Dato2: in bit;
		Modo: in bit_vector(2 downto 0);
		Salida:out bit
	);
end Compuerta;

architecture Gate_Prog of Compuerta is
begin
	process(Modo,Dato1,Dato2)
	begin
		case Modo is
			when "000" => Salida <= Dato1 and Dato2;
			when "001" => Salida <= Dato1 or Dato2;
			when "010" => Salida <= Dato1 nand Dato2;
			when "011" => Salida <= Dato1 nor Dato2;
			when "100" => Salida <= not Dato1;
			when "101" => Salida <= not Dato2;
			when others => Salida <= '0';
		end case;
	end process;
end Gate_Prog;