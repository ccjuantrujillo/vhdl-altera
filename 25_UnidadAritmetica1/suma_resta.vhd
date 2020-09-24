library ieee;

use ieee.std_logic_1164.all;

entity suma_resta is
	port(
		aa,bb: in std_logic_vector(7 downto 0);
		operacio0,operacio1,operacio2: in std_logic;
		cout: out std_logic;
		sor_sum_res: out std_logic_vector(7 downto 0)
	);
end suma_resta;

architecture sum_rest of suma_resta is
	signal opera0,opera1,opera2: std_logic;
	signal invb: std_logic;
	signal clra,clranot: std_logic;
	signal cin: std_logic_vector(7 downto 0);
	signal a_entr_sum,b_entr_sum:std_logic_vector(7 downto 0);
	signal bit0,bit1,bit2: std_logic_vector(7 downto 0);
begin
	opera0<=not operacio0;
	opera1<=not operacio1;
	opera2<=not operacio2;
	clra<=opera0 and opera1;
	clranot<=not clra;
	invb<=opera0 and opera2;
	cin(0)<=opera2 and operacio1;
	--
	a_entr_sum(0)<=clranot and aa(0);
	b_entr_sum(0)<=invb xor bb(0);
	
	a_entr_sum(1)<=clranot and aa(1);
	b_entr_sum(1)<=invb xor bb(1);
	
	a_entr_sum(2)<=clranot and aa(2);
	b_entr_sum(2)<=invb xor bb(2);
	
	a_entr_sum(3)<=clranot and aa(3);
	b_entr_sum(3)<=invb xor bb(3);
	
	a_entr_sum(4)<=clranot and aa(4);
	b_entr_sum(4)<=invb xor bb(4);
	
	a_entr_sum(5)<=clranot and aa(5);
	b_entr_sum(5)<=invb xor bb(5);
	
	a_entr_sum(6)<=clranot and aa(6);
	b_entr_sum(6)<=invb xor bb(6);
	
	a_entr_sum(7)<=clranot and aa(7);
	b_entr_sum(7)<=invb xor bb(7);
	--
	sor_sum_res(0)<=cin(0) xor (a_entr_sum(0) xor b_entr_sum(0));
	bit0(0)<=a_entr_sum(0) nand b_entr_sum(0);
	bit1(0)<=b_entr_sum(0) nand cin(0);
	bit2(0)<=a_entr_sum(0) nand cin(0);
	cin(1)<=not(bit0(0) and bit1(0) and bit2(0));
	
	sor_sum_res(1)<=cin(1) xor (a_entr_sum(1) xor b_entr_sum(1));
	bit0(1)<=a_entr_sum(1) nand b_entr_sum(1);
	bit1(1)<=b_entr_sum(1) nand cin(1);
	bit2(1)<=a_entr_sum(1) nand cin(1);
	cin(2)<=not(bit0(1) and bit1(1) and bit2(1));
	
	sor_sum_res(2)<=cin(2) xor (a_entr_sum(2) xor b_entr_sum(2));
	bit0(2)<=a_entr_sum(2) nand b_entr_sum(2);
	bit1(2)<=b_entr_sum(2) nand cin(2);
	bit2(2)<=a_entr_sum(2) nand cin(2);
	cin(3)<=not(bit0(2) and bit1(2) and bit2(2));
	
	sor_sum_res(3)<=cin(3) xor (a_entr_sum(3) xor b_entr_sum(3));
	bit0(3)<=a_entr_sum(3) nand b_entr_sum(3);
	bit1(3)<=b_entr_sum(3) nand cin(3);
	bit2(3)<=a_entr_sum(3) nand cin(3);
	cin(4)<=not(bit0(3) and bit1(3) and bit2(3));
	
	sor_sum_res(4)<=cin(4) xor (a_entr_sum(4) xor b_entr_sum(4));
	bit0(4)<=a_entr_sum(4) nand b_entr_sum(4);
	bit1(4)<=b_entr_sum(4) nand cin(4);
	bit2(4)<=a_entr_sum(4) nand cin(4);
	cin(5)<=not(bit0(4) and bit1(4) and bit2(4));
	
	sor_sum_res(5)<=cin(5) xor (a_entr_sum(5) xor b_entr_sum(5));
	bit0(5)<=a_entr_sum(5) nand b_entr_sum(5);
	bit1(5)<=b_entr_sum(5) nand cin(5);
	bit2(5)<=a_entr_sum(5) nand cin(5);
	cin(6)<=not(bit0(5) and bit1(5) and bit2(5));
	
	sor_sum_res(6)<=cin(6) xor (a_entr_sum(6) xor b_entr_sum(6));
	bit0(6)<=a_entr_sum(6) nand b_entr_sum(6);
	bit1(6)<=b_entr_sum(6) nand cin(6);
	bit2(6)<=a_entr_sum(6) nand cin(6);
	cin(7)<=not(bit0(6) and bit1(6) and bit2(6));
	
	sor_sum_res(7)<=cin(7) xor (a_entr_sum(7) xor b_entr_sum(7));
	bit0(7)<=a_entr_sum(7) nand b_entr_sum(7);
	bit1(7)<=b_entr_sum(7) nand cin(7);
	bit2(7)<=a_entr_sum(7) nand cin(7);
	cout<=not(bit0(7) and bit1(7) and bit2(7));
end sum_rest;