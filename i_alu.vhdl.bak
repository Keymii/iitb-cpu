Library IEEE;
use IEEE.std_logic_1164.all;

entity i_alu is
port( Inp: in std_logic_vector(15 downto 0);
		cout: out std_logic_vector(15 downto 0);
		zout: in std_logic_vector(15 downto 0);
		
		rfA1,rfA2,rfA3: out std_logic_vector(2 downto 0);
		rfD1,rfD2: in std_logic_vector(15 downto 0);
		rfD3: out std_logic_vector(15 downto 0);
		
		mA_write: out std_logic_vector(15 downto 0); 
		mD_write: out std_logic_vector(15 downto 0);
		
		mA_read: out std_logic_vector(15 downto 0); 
		mD_read: in std_logic_vector(15 downto 0)
			
	);
end component i_alu;
variable ra,rb:std_logic_vector(2 downto 0);
variable opcode:std_logic_vector(3 downto 0);
variable imm:std_logic_vector(5 down to 0);
begin
opcode<=Inp(15 downto 12);
ra<=Inp(11 downto 9);
rb<=Inp(8 downto 6);
Imm<=Inp(5 downto 0);
if(opcode="0001") then
  rfA1<=ra;
  rfA3<=rb;
  --rfd3<=rfd1 add/sub "imm "
  
	
	
	