library ieee;

use ieee.std_logic_1164.all;

entity unidad is
	port(
		aa: in std_logic_vector(3 downto 0);
		bb: in std_logic_vector(3 downto 0);
		operacio0: in std_logic;
		operacio1: in std_logic;
		operacio2: in std_logic;
		sortida: out std_logic_vector(3 downto 0);
		ccout: out std_logic		
	);
end unidad;

architecture uni of unidad is
component abminus
	port(
		a,b: in std_logic_vector(3 downto 0);
		rest: out std_logic_vector(3 downto 0)
	);
end component;
component abor
	port(
	a,b: in std_logic_vector(3 downto 0);
	f: out std_logic_vector(3 downto 0)
	);
end component;
component anot
	port(
		a:in std_logic_vector(3 downto 0);
		s:out std_logic_vector(3 downto 0)
	);
end component;
component add
	port(
		aa,bb: in std_logic_vector(3 downto 0);
		suma: out std_logic_vector(3 downto 0);
		acarreo: out std_logic
	);
end component;
component abxor
	port(
	a,b: in std_logic_vector(3 downto 0);
	f: out std_logic_vector(3 downto 0)
	);
end component;
component multiplexor
	port(
		entr_0: in std_logic_vector(3 downto 0);
		entr_1: in std_logic_vector(3 downto 0);
		entr_2: in std_logic_vector(3 downto 0);
		entr_3: in std_logic_vector(3 downto 0);
		entr_4: in std_logic_vector(3 downto 0);
		entr_5: in std_logic_vector(3 downto 0);
		entr_6: in std_logic_vector(3 downto 0);
		entr_7: in std_logic_vector(3 downto 0);		
		operacion0: in std_logic;
		operacion1: in std_logic;
		operacion2: in std_logic;
		salida: out std_logic_vector(3 downto 0)
	);
end component;
signal E0,E1,E2,E3,E4,E5,E6,E7:std_logic_vector(3 downto 0);
signal cout2:std_logic;
signal numero1:std_logic_vector(3 downto 0);
begin
numero1<="0001";
SUBSTRACT1:abminus port map(aa,bb,E0);
XOR1: abxor port map(aa,bb,E1);
INCREMENT1:add port map(aa,numero1,E2,cout2);
COMPLEMENT1:anot port map(aa,E3);
DECREMENT1: abminus port map(aa,numero1,E4);
OR1: abor port map(aa,bb,E5);
ADD1:add port map(aa,bb,E6,ccout);
MUX1: multiplexor port map(E0,E1,E2,E3,E4,E5,E6,E7,operacio0,operacio1,operacio2,sortida);
end uni;