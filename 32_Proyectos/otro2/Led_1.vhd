library IEEE;
use IEEE.std_logic_1164.all;

Entity Led_1 is
		port(
			clk: in std_logic;
			led: out  std_logic
			
			);
end Led_1;
	
Architecture Behavioral of Led_1 is 
signal Reloj: natural range 0 to 50_000_000 :=0;
signal Parpadeo :std_logic := '0';


begin

	process(clk)
	begin
	if rising_edge(clk) then
		Reloj <= Reloj+1;
		if Reloj >= 50_000_000 then
		 parpadeo <= not parpadeo;
		 Reloj <= 0;
		end if;
	end if;
	end process;
	
led <= Parpadeo;

end Behavioral;