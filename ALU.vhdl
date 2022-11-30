library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
  port (cs: IN STD_LOGIC_VECTOR(4 downto 0);
        op_code: IN STD_LOGIC_VECTOR(3 downto 0);
        
        t1: IN STD_LOGIC_VECTOR(15 downto 0);
        t2: IN STD_LOGIC_VECTOR(15 downto 0);
        
        PC: IN STD_LOGIC_VECTOR(15 downto 0);
        t3: OUT STD_LOGIC_VECTOR(15 downto 0);
        c_out: OUT STD_LOGIC; 
        z_out: OUT STD_LOGIC; 
        ALU_temp_z : OUT STD_LOGIC);
end ALU;

architecture behave of ALU is
  constant S1: STD_LOGIC_VECTOR(4 downto 0) := "00001";
  constant S3: STD_LOGIC_VECTOR(4 downto 0) := "00011";
  constant S31: STD_LOGIC_VECTOR(4 downto 0) := "00100";
  constant S4: STD_LOGIC_VECTOR(4 downto 0) := "00101";
  constant S9: STD_LOGIC_VECTOR(4 downto 0) := "01100";
  constant S12: STD_LOGIC_VECTOR(4 downto 0) := "01110";
  constant S14: STD_LOGIC_VECTOR(4 downto 0) := "10000";
  constant S15: STD_LOGIC_VECTOR(4 downto 0) := "10001";
  constant SZ: STD_LOGIC_VECTOR(4 downto 0) := "10010";
  
  begin
    process (cs, op_code, PC, t1, t2)
	 variable temp_answer: STD_LOGIC_VECTOR(15 downto 0);
    begin
      case current_state is
		
        when S1 =>
                t3 <= STD_LOGIC_VECTOR(unsigned(PC) + unsigned(one));
                c_out <= '0'; --dont care
                c_en <= '0';
                Z_out <= '0'; --dont care
                z_en <= '0';
                ALU_temp_z <= '0';
        
       
               

      
        when S3 =>
              
                T3 <= add(t1,t2);
                t:= add(t1,t2);
                Z_en <= '1';
                if t = zero then
                  Z_out <= '1';
					 else
                  Z_out <= '0';
                end if;
			
                C_en <= '1';
                C_out <=
                ALU_temp_z <= '0';
  
        when S6 =>
		  
                t3 <= t1 nand t2;
               
                t := t1 nand t2;
					 
					
                Z_en<= '1';
                if t = zero then
                  Z_out <= '1';
                else
                  Z_out <= '0';
                end if;
					  C_en <=  '0' ;
					  C_out <= '0';
                
                ALU_temp_z <= '0';
             
				 
		  when S8 =>
				 
				 t3 [] <=
				 t3 [] <=
				 C_en <= '0' ;
				 Z_en <= '0' ;
				 
				 
		
		 when S14 =>
		   
			  t3 <= Add (t1, t2);
			  C_en <= '1' ;
			  Z_en <= '1' ;
			  
			  t <= Add(t1,t2);
			  
			  if t = zero then
                  Z_out <= '1';
                else
                  Z_out <= '0';
                end if;
			  
				 C_out <= 
				
			
	   when S16 =>
		   
			  t3 <= Add (t1, t2);
			  C_en <= '0' ;
			  
			  
			if (op_code = "0100") then
			  Z_en <= '1' ;
			  
			  t <= Add(t1,t2);
			  
			  if t = zero then
                  Z_out <= '1';
                else
                  Z_out <= '0';
                end if;
			else 
			  Z_en <= '0' ;
			  
				 	
		when S20 =>
          if (t1=t2) then
			   t3  <= Add (PC +imm) ;
			 else 
			   t3 <= PC;
				
			 end if ;
			  C_en <= '0' ;
			  Z_en <= '0' ;
			  
			  
		when S22 =>
		  t3 <= Pc +imm ;
		  
		   C_en <= '0' ;
		   Z_en <= '0' ;
		  
		 when S24 =>
		  t3 <= t2 ;
			
	 	   C_en <= '0' ;
			Z_en <= '0' ;
				
			 
				 
    end process;
end behave;			
			