library ieee;
use ieee.std_logic_1164.all;

entity nsFSMLogic is
  port (cs: IN STD_LOGIC_VECTOR(4 downto 0);
        op_code: IN STD_LOGIC_VECTOR(3 downto 0);
        condition: IN STD_LOGIC_VECTOR(1 downto 0);
        C, Z: IN STD_LOGIC;
        

        ns: OUT STD_LOGIC_VECTOR(4 downto 0));
end NextStateFSMLogic;

architecture behave of NextStateFSMLogic is
  constant S0: std_logic_vector(4 downto 0) := "00000";
  constant S1: std_logic_vector(4 downto 0) := "00001";
  constant S2: std_logic_vector(4 downto 0) := "00010";
  constant S3: std_logic_vector(4 downto 0) := "00011";
  constant S4: std_logic_vector(4 downto 0) := "00100";
  constant S6: std_logic_vector(4 downto 0) := "00101";
  constant S5: std_logic_vector(4 downto 0) := "00110";
  constant S7: std_logic_vector(4 downto 0) := "00111";
  constant S8: std_logic_vector(4 downto 0) := "01000";
  constant S9: std_logic_vector(4 downto 0) := "01001";
  constant S10: std_logic_vector(4 downto 0) := "01010";
  constant S11: std_logic_vector(4 downto 0) := "01011";
  constant S12: std_logic_vector(4 downto 0) := "01100";
  constant S13: std_logic_vector(4 downto 0) := "01101";
  constant S14: std_logic_vector(4 downto 0) := "01110";
  constant S15: std_logic_vector(4 downto 0) := "01111";
  constant S16: std_logic_vector(4 downto 0) := "10000";
  constant S17: std_logic_vector(4 downto 0) := "10001";
  constant S18: std_logic_vector(4 downto 0) := "10010";
  constant S19: std_logic_vector(4 downto 0) := "10010";
  constant S20: std_logic_vector(4 downto 0) := "10010";
  constant S21: std_logic_vector(4 downto 0) := "10010";
  constant S22: std_logic_vector(4 downto 0) := "10010";
   begin
    process (cs, op_code, C, Z) --many more
    begin
      case cs is
        when S0 =>
                ns <= S1;
        when S1 =>
                ns <= S2;
        when S2 =>
                if op_code = "0000" then
                  ns <= S3;
                elsif op_code = "0010" then
                  ns <= S6;
                elsif op_code = "0011" then
                  ns <= S8;
					 elsif op_code = "0110" or "0111"then
                  ns <= S9;
                elsif op_code = "0001" then
                  ns <= S14;
					 elsif op_code = "0100" or "0101" then
                  ns <= S16;
					 elsif op_code = "1100" then
                  ns <= S20;
					 elsif op_code = "1000" then
                  ns <= S22;
					 elsif op_code = "1001" then
                  ns <= S24;
					 else
					   ns <= S1
				    
					 end if;
		when S3 =>
		 ns <= S4;
		when S6 =>
		 ns <= S4;
		 
		
		when S4 =>
		
		  if op_code = "0000"  then
		   ns <= S5;
		  elsif op_code = "0010" then
		   ns <= S7 ;
		  else
		   ns <= S1;
			
		  end if ;
		  
		  
		when S5 =>
		  ns <= S1;
		when S7 =>
		  ns <= S1;
		 
		when S9 =>
		 
		 if op_code = "0110" then
	     ns <= S10;
		 elsif op_code ="0111" then
		  ns <= S13;
		 else 
		  ns <= S1;
		 
		end if; 
		
	  when S10 =>
	    ns <= S11;
		
	  when S11 =>
	    ns <= S12;
	  when S13 =>
	    ns <= S12;
		
	  when S12 =>
	    ns <= S1;
		
	  when S14 =>
	    ns <= S15;
		
	  when S15 =>
	    ns <= S5;
		
	  when S16 =>
	    if op_code = "0100" then
		   ns <= S17;
		 elsif op_code = "0101" then
		   ns <= S19;
		 else
		   ns <= S1;
		 
		 end if;
	 
	  when 
						