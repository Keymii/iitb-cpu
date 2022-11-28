library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;

entity ALU is 
 port 	(T1, T2, SE9, SE6, R7_in, PC_in: in  STD_LOGIC_VECTOR(15 downto 0); 
         opcode: in  STD_LOGIC_VECTOR(3 downto 0);  -- 1 input 4-bit for selecting function
         CZ: in STD_LOGIC_VECTOR(1 downto 0);  -- condition check
         T3, R7_out, PC_out: out  STD_LOGIC_VECTOR(15 downto 0); -- 1 output 8-bit 
			
         flag_out: in std_logic_vector(1 downto 0);
         flag_in: out std_logic_vector(1 downto 0);
			
         State: in std_logic_vector(4 downto 0);
         clk: in std_logic);

architecture behave of ALU is

signal rA,rB,rC: std_logic_vector(3 downto 0);
signal cFlag, zFlag : std_logic;
signal imm_6 : std_logic_vector(5 downto 0);
signal imm_9 : std_logic_vector(8 downto 0);

begin
   process(T1, T2, PC_in, R7_in, opcode, CZ, flag_out, SE6, SE9, State)
      begin
         if(clk'event and(clk='1')) then
            case(State) is
               when "00001" =>
                  pc<=std_logic_vector(unsigned(pc)+unsigned("0000000000000001"),16);
               when "00010" =>      
                  case(opcode) is
                     when "0000" =>
					       		
	                
end ALU;			
			