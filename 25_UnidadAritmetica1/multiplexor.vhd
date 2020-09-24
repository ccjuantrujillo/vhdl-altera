library ieee;

use ieee.std_logic_1164.all;

entity multiplexor is
	port(
		entr_a: in std_logic_vector(7 downto 0);
		entr_b: in std_logic_vector(7 downto 0);
		operacio0: in std_logic;
		operacio1: in std_logic;
		operacio2: in std_logic;
		sortida: out std_logic_vector(7 downto 0)
	);
end multiplexor;

architecture multi of multiplexor is
signal regi1,regi2: std_logic;
signal mux,nmux: std_logic;
signal sor0,sor1: std_logic_vector(7 downto 0);
signal opera0,opera1,opera2: std_logic;
begin
	opera0<=not operacio0;
	opera1<=not operacio1;
	opera2<=not operacio2;
	regi1<=operacio0 and operacio1 and opera2;
	regi2<=opera0 and opera1 and operacio2;
	mux<=regi1 or regi2;
	nmux<=not mux;
	--En un bucle for
	sor0(0)<=nmux and entr_a(0);
	sor1(0)<=mux and entr_b(0);
	sortida(0)<=sor0(0) or sor1(0);
	
	sor0(1)<=nmux and entr_a(1);
	sor1(1)<=mux and entr_b(1);
	sortida(1)<=sor0(1) or sor1(1);

	sor0(2)<=nmux and entr_a(2);
	sor1(2)<=mux and entr_b(2);
	sortida(2)<=sor0(2) or sor1(2);
	
	sor0(3)<=nmux and entr_a(3);
	sor1(3)<=mux and entr_b(3);
	sortida(3)<=sor0(3) or sor1(3);
	
	sor0(4)<=nmux and entr_a(4);
	sor1(4)<=mux and entr_b(4);
	sortida(4)<=sor0(4) or sor1(4);
	
	sor0(5)<=nmux and entr_a(5);
	sor1(5)<=mux and entr_b(5);
	sortida(5)<=sor0(5) or sor1(5);
	
	sor0(6)<=nmux and entr_a(6);
	sor1(6)<=mux and entr_b(6);
	sortida(6)<=sor0(6) or sor1(6);
	
	sor0(7)<=nmux and entr_a(7);
	sor1(7)<=mux and entr_b(7);
	sortida(7)<=sor0(7) or sor1(7);
end multi;