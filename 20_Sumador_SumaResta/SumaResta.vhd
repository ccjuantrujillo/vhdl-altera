library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity SumaResta is
	port(
		a: in std_logic_vector(3 downto 0);
		b: in std_logic_vector(3 downto 0);
		SoR: in std_logic;
		cout: out std_logic;
		resultado: out std_logic_vector(3 downto 0)
	);
end SumaResta;

architecture rte1 of SumaResta is
signal result: std_logic_vector(4 downto 0);
begin
	process (a,b,SoR)
	begin
		if SoR='1' then
			result<=("0"&A)-B;
		else
			result<=("0"&A)+B;
		end if;
		resultado<=result(3 downto 0);
		cout<=result(4);
	end process;
end rte1;