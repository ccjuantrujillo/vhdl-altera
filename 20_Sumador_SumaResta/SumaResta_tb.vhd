LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY SumaResta_tb  IS 
END ; 
 
ARCHITECTURE SumaResta_tb_arch OF SumaResta_tb IS
  SIGNAL SoR   :  STD_LOGIC  ; 
  SIGNAL a   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL b   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL resultado   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL cout   :  STD_LOGIC  ; 
  COMPONENT SumaResta  
    PORT ( 
      SoR  : in STD_LOGIC ; 
      a  : in std_logic_vector (3 downto 0) ; 
      b  : in std_logic_vector (3 downto 0) ; 
      resultado  : out std_logic_vector (3 downto 0) ; 
      cout  : out STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : SumaResta  
    PORT MAP ( 
      SoR   => SoR  ,
      a   => a  ,
      b   => b  ,
      resultado   => resultado  ,
      cout   => cout   ) ; 



-- "Counter Pattern"(Range-Up) : step = 1 Range(0000-1111)
-- Start Time = 0 ps, End Time = 2 us, Period = 50 ps
  Process
	variable VARa  : std_logic_vector (3 downto 0);
	Begin
	for Z in 1 to 2
	loop
	VARa  := "0000" ;
	for repeatLength in 1 to 16
	loop
	    a  <= VARa  ;
	   wait for 50 ps ;
	   VARa  := VARa  + 1 ;
	end loop;
-- 1600 ps, repeat pattern in loop.
	end  loop;
	VARa  := "0000" ;
	for repeatLength in 1 to 8
	loop
	    a  <= VARa  ;
	   wait for 50 ps ;
	   VARa  := VARa  + 1 ;
	end loop;
-- 2 ns, periods remaining till edit start time.
	 a  <= "1000"  ;
	wait for 50 ps ;
	 a  <= "1001"  ;
	wait for 50 ps ;
	 a  <= "1010"  ;
	wait for 50 ps ;
	 a  <= "1011"  ;
	wait for 50 ps ;
	 a  <= "1100"  ;
	wait for 50 ps ;
	 a  <= "1101"  ;
	wait for 50 ps ;
	 a  <= "1110"  ;
	wait for 50 ps ;
	 a  <= "1111"  ;
	wait for 50 ps ;
	 a  <= "0000"  ;
	wait for 50 ps ;
	 a  <= "0001"  ;
	wait for 50 ps ;
	 a  <= "0010"  ;
	wait for 50 ps ;
	 a  <= "0011"  ;
	wait for 50 ps ;
	 a  <= "0100"  ;
	wait for 50 ps ;
	 a  <= "0101"  ;
	wait for 50 ps ;
	 a  <= "0110"  ;
	wait for 50 ps ;
	 a  <= "0111"  ;
	wait for 50 ps ;
	 a  <= "1000"  ;
	wait for 50 ps ;
	 a  <= "1001"  ;
	wait for 50 ps ;
	 a  <= "1010"  ;
	wait for 50 ps ;
	 a  <= "1011"  ;
	wait for 50 ps ;
	 a  <= "1100"  ;
	wait for 50 ps ;
	 a  <= "1101"  ;
	wait for 50 ps ;
	 a  <= "1110"  ;
	wait for 50 ps ;
	 a  <= "1111"  ;
	wait for 50 ps ;
	 a  <= "0000"  ;
	wait for 50 ps ;
	 a  <= "0001"  ;
	wait for 50 ps ;
	 a  <= "0010"  ;
	wait for 50 ps ;
	 a  <= "0011"  ;
	wait for 50 ps ;
	 a  <= "0100"  ;
	wait for 50 ps ;
	 a  <= "0101"  ;
	wait for 50 ps ;
	 a  <= "0110"  ;
	wait for 50 ps ;
	 a  <= "0111"  ;
	wait for 50 ps ;
	 a  <= "1000"  ;
	wait for 50 ps ;
	 a  <= "1001"  ;
	wait for 50 ps ;
	 a  <= "1010"  ;
	wait for 50 ps ;
	 a  <= "1011"  ;
	wait for 50 ps ;
	 a  <= "1100"  ;
	wait for 50 ps ;
	 a  <= "1101"  ;
	wait for 50 ps ;
	 a  <= "1110"  ;
	wait for 50 ps ;
	 a  <= "1111"  ;
	wait for 50 ps ;
	 a  <= "0000"  ;
	wait for 50 ps ;
	 a  <= "0001"  ;
	wait for 50 ps ;
	 a  <= "0010"  ;
	wait for 50 ps ;
	 a  <= "0011"  ;
	wait for 50 ps ;
	 a  <= "0100"  ;
	wait for 50 ps ;
	 a  <= "0101"  ;
	wait for 50 ps ;
	 a  <= "0110"  ;
	wait for 50 ps ;
	 a  <= "0111"  ;
	wait for 50 ps ;
	 a  <= "1000"  ;
	wait for 50 ps ;
	 a  <= "1001"  ;
	wait for 50 ps ;
	 a  <= "1010"  ;
	wait for 50 ps ;
	 a  <= "1011"  ;
	wait for 50 ps ;
	 a  <= "1100"  ;
	wait for 50 ps ;
	 a  <= "1101"  ;
	wait for 50 ps ;
	 a  <= "1110"  ;
	wait for 50 ps ;
	 a  <= "1111"  ;
	wait for 50 ps ;
	 a  <= "0000"  ;
	wait for 50 ps ;
	 a  <= "0001"  ;
	wait for 50 ps ;
	 a  <= "0010"  ;
	wait for 50 ps ;
	 a  <= "0011"  ;
	wait for 50 ps ;
-- dumped values till 5 ns
	wait;
 End Process;


-- "Counter Pattern"(Range-Up) : step = 1 Range(0000-1111)
-- Start Time = 0 ps, End Time = 5 ns, Period = 800 ps
  Process
	variable VARb  : std_logic_vector (3 downto 0);
	Begin
	VARb  := "0000" ;
	for repeatLength in 1 to 6
	loop
	    b  <= VARb  ;
	   wait for 800 ps ;
	   VARb  := VARb  + 1 ;
	end loop;
-- 4800 ps, periods remaining till edit start time.
	 b  <= "0110"  ;
	wait for 200 ps ;
-- dumped values till 5 ns
	wait;
 End Process;
END;
