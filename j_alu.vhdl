library ieee;
use ieee.std_logic_1164.all;

entity J_ALU is
	port (
		inp: in std_logic_vector(15 downto 0);
		
		rfA1,rfA2,rfA3: out std_logic_vector(2 downto 0);
		rfD1,rfD2: in std_logic_vector(15 downto 0);
		rfD3: out std_logic_vector(15 downto 0);
		
		Cout,Zout : out std_logic;
		clock: in std_logic;
				
	);
end J_ALU;
architecture struct of J_ALU is
	variable opcode: std_logic_vector(3 downto 0):=inp(15 downto 12);
	variable rA: std_logic_vector(2 downto 0):= inp(11 downto 9);
	variable imm: std_logic_vector(8 downto 0):=inp(8 downto 0);
	variable imm2: std_logic_vector(15 downto 0)
	
	imm2(15 downto 7):=imm;
	imm2(6 downto 0):="0000000";
	
begin

	j_process:process(clock)
	begin
		if(clock ='1' and clock'event) then
			case opcode is
				when "0011" =>
				
				 variable imm2: std_logic_vector(15 downto 0)
				 
	           imm2(15 downto 7):=imm;
	           imm2(6 downto 0):="0000000";
				  
				  rfA3<=ra;
				  rfD3<=imm2;
				
				
				when "0110" =>
				
				
				when "0111" =>
				
				others=>
				
			end case;
		end if;
	end process;

end struct;