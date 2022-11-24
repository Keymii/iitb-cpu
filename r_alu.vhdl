library ieee;
use ieee.std_logic_1164.all;

entity R_ALU is
	port (
		inp: in std_logic_vector(15 downto 0);
		
		rfA1,rfA2,rfA3: out std_logic_vector(2 downto 0);
		rfD1,rfD2: in std_logic_vector(15 downto 0);
		rfD3: out std_logic_vector(15 downto 0);
		
		Cout,Zout : out std_logic;
		clock: in std_logic;
		
	);
end R_ALU;

architecture struct of R_ALU is
	component addSub16 is
		port (
			A,B:in std_logic_vector(15 downto 0);
			C,Z:out std_logic;
			Sum:out std_logic_vector(15 downto 0);
		);
	end component addSub16;
	
	variable opcode:std_logic_vector(3 downto 0):=inp(15 downto 12);
	variable rA:std_logic_vector(2 downto 0):=inp(11 downto 9);
	variable rB:std_logic_vector(2 downto 0):=inp(8 downto 6);
	variable rC:std_logic_vector(2 downto 0):=inp(5 downto 3);
	variable varC:std_logic:=inp(1);
	variable varZ:std_logic:=inp(0);
	
begin
	r_process:process(clock)
	begin
		rfA1<=rA;
		rfA2<=rB;
		rfA3<=rC;
		Cout<=varC;
		Zout<=varZ;
		if(opcode="0000") then
			if ((varC and varZ)/='1') then
				adder : addSub16 port map (A=>rfD1, B=>rfD2, C=>Cout, Z=>Zout, Sum=>rfD3);
			end if;
		elsif(opcode="0010") then
			if ((varC and varZ)/='1') then
				variable nand16 : std_logic_vector(15 downto 0);
				for i in 0 to 15 loop
					nand16(i):=rfD1(i) nand rfD2(i);
				end loop;
				
				rfD3<=nand16;
				
				variable nor_for_Z: std_logic:=nand16(0);
				for i in 1 to 15 loop
					nor_for_Z := nor_for_Z nor nand16(i);
				end loop;
				
				Z<=nor_for_Z;
			end if;
		
		end if;
	end process;
	
end struct;
