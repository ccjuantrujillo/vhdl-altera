library ieee;

use ieee.std_logic_1164.all;

entity DecoderBCD is
	port(
		bcd: in bit_vector(3 downto 0);
		led: out bit_vector(6 downto 0)
	);
end DecoderBCD;

architecture rte1 of DecoderBCD is
begin
conv:process(bcd)
	begin
	case bcd is
		when "0000" => led<="1111110";
		when "0001" => led<="1100000";
		when "0010" => led<="1011011";
		when "0011" => led<="1110011";
		when "0100" => led<="1100101";
		when "0101" => led<="0110111";
		when "0110" => led<="0111111";
		when "0111" => led<="1100010";
		when "1000" => led<="1111111";
		when "1001" => led<="1110111";
		when others => led<="0000000";
	end case;
end process conv;
end rte1;