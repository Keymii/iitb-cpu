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
begin

end struct;