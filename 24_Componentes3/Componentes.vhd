library ieee;

use ieee.std_logic_1164.all;

entity Componentes is
	port(
		a,b:in std_logic_vector(7 downto 0);
		c_in:in std_logic_vector(2 downto 0);
		s:out std_logic_vector(2 downto 0)
	);
end Componentes;

architecture rt1 of Componentes is
	signal sc:std_logic_vector(2 downto 0);
	component Comparador_componentes is
		port(
			a,b:in std_logic_vector(3 downto 0);
			c_in:in std_logic_vector(2 downto 0);
			s:out std_logic_vector(2 downto 0)
		);
	end component;
begin
	comparador1: Comparador_componentes 
		port map (
			a=>a(7 downto 4),
			b=>b(7 downto 4),
			c_in=>c_in,
			s=>sc
		); 
	comparador2: Comparador_componentes 
		port map (
			a=>a(3 downto 0),
			b=>b(3 downto 0),
			c_in=>sc,
			s=>s
		);
end rt1;