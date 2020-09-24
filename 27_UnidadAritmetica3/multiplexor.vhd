library ieee;

use ieee.std_logic_1164.all;

entity multiplexor is
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
end multiplexor;

architecture multi of multiplexor is
signal reg1,reg2: std_logic;
signal mux,nmux: std_logic;
signal producto0,producto1,producto2,producto3,producto4,producto5,producto6,producto7: std_logic_vector(3 downto 0);
begin
	reg1<=operacion0 and operacion1 and operacion2;
	reg2<= not operacion0 and not operacion1 and not operacion2;
	mux<=reg1 or reg2;
	nmux<= not mux;
	--Para cada salida
	producto0(0)<=not operacion0 and not operacion1 and not operacion2 and entr_0(0);
	producto0(1)<=not operacion0 and not operacion1 and not operacion2 and entr_0(1);
	producto0(2)<=not operacion0 and not operacion1 and not operacion2 and entr_0(2);
	producto0(3)<=not operacion0 and not operacion1 and not operacion2 and entr_0(3);
	
	producto1(0)<=not operacion0 and not operacion1 and operacion2 and entr_1(0);
	producto1(1)<=not operacion0 and not operacion1 and operacion2 and entr_1(1);
	producto1(2)<=not operacion0 and not operacion1 and operacion2 and entr_1(2);
	producto1(3)<=not operacion0 and not operacion1 and operacion2 and entr_1(3);
	
	producto2(0)<=not operacion0 and operacion1 and not operacion2 and entr_2(0);
	producto2(1)<=not operacion0 and operacion1 and not operacion2 and entr_2(1);
	producto2(2)<=not operacion0 and operacion1 and not operacion2 and entr_2(2);
	producto2(3)<=not operacion0 and operacion1 and not operacion2 and entr_2(3);

	producto3(0)<=not operacion0 and operacion1 and operacion2 and entr_3(0);
	producto3(1)<=not operacion0 and operacion1 and operacion2 and entr_3(1);
	producto3(2)<=not operacion0 and operacion1 and operacion2 and entr_3(2);
	producto3(3)<=not operacion0 and operacion1 and operacion2 and entr_3(3);

	producto4(0)<=operacion0 and not operacion1 and not operacion2 and entr_4(0);
	producto4(1)<=operacion0 and not operacion1 and not operacion2 and entr_4(1);
	producto4(2)<=operacion0 and not operacion1 and not operacion2 and entr_4(2);
	producto4(3)<=operacion0 and not operacion1 and not operacion2 and entr_4(3);

	producto5(0)<=operacion0 and not operacion1 and operacion2 and entr_5(0);
	producto5(1)<=operacion0 and not operacion1 and operacion2 and entr_5(1);
	producto5(2)<=operacion0 and not operacion1 and operacion2 and entr_5(2);
	producto5(3)<=operacion0 and not operacion1 and operacion2 and entr_5(3);

	producto6(0)<=operacion0 and operacion1 and not operacion2 and entr_6(0);
	producto6(1)<=operacion0 and operacion1 and not operacion2 and entr_6(1);
	producto6(2)<=operacion0 and operacion1 and not operacion2 and entr_6(2);
	producto6(3)<=operacion0 and operacion1 and not operacion2 and entr_6(3);	
	
	producto7(0)<=operacion0 and operacion1 and operacion2 and entr_7(0);
	producto7(1)<=operacion0 and operacion1 and operacion2 and entr_7(1);
	producto7(2)<=operacion0 and operacion1 and operacion2 and entr_7(2);
	producto7(3)<=operacion0 and operacion1 and operacion2 and entr_7(3);
	
	salida(0)<=producto0(0) or producto1(0) or producto2(0) or producto3(0) or producto4(0) or producto5(0) or producto6(0) or producto7(0);
	salida(1)<=producto0(1) or producto1(1) or producto2(1) or producto3(1) or producto4(1) or producto5(1) or producto6(1) or producto7(1);
	salida(2)<=producto0(2) or producto1(2) or producto2(2) or producto3(2) or producto4(2) or producto5(2) or producto6(2) or producto7(2);
	salida(3)<=producto0(3) or producto1(3) or producto2(3) or producto3(3) or producto4(3) or producto5(3) or producto6(3) or producto7(3);
	
end multi;