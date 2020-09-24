library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Componente1 is
	port(
		A,B: in std_logic;
		Y: out std_logic
	);
end Componente1;

architecture Estructura of Componente1 is
	component G 
		port(
			Ag,Bg: in std_logic;
			Yg: out std_logic
		);
	end component;
	component H 
		port(
			Ah,Bh: in std_logic;
			Yh: out std_logic
		);
	end component;
	component I 
		port(
			Ai,Bi: in std_logic;
			Yi: out std_logic
		);
	end component;
	signal YA,YB,Yout: std_logic;
begin
	mod_G:G port map(A,B,YA);
	mod_H:H port map(A,B,YB);
	mod_I:I port map(YA,YB,Yout);
	Y<=Yout;
end Estructura;