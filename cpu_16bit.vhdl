library ieee;
use ieee.std_logic_1164.all;

entity cpu is
	port (
		inp:in std_logic_vector(15 downto 0);
		
		mA_write: out std_logic_vector(15 downto 0); 
		mD_write: out std_logic_vector(15 downto 0);
		
		mA_read: out std_logic_vector(15 downto 0); 
		mD_read: in std_logic_vector(15 downto 0);
		
		C,Z:out std_logic;
		
		clock:in std_logic;
		reset:in std_logic;
	);
end cpu;

architecture construct of cpu is
	component ALU is
		port (
		inp: in std_logic_vector(15 downto 0);
		
		rfA1,rfA2,rfA3: out std_logic_vector(2 downto 0);
		rfD1,rfD2: in std_logic_vector(15 downto 0);
		rfD3: out std_logic_vector(15 downto 0);
		
		mA_write: out std_logic_vector(15 downto 0); 
		mD_write: out std_logic_vector(15 downto 0);
		
		mA_read: out std_logic_vector(15 downto 0); 
		mD_read: in std_logic_vector(15 downto 0)
		
		clock: in std_logic;
		Cout,Zout : out std_logic;
		
		);
	end component ALU;

	component register_file is
		port (A1,A2,A3: in std_logic_vector(2 downto 0);
				D1,D2: out std_logic_vector(15 downto 0);
				D3: in std_logic_vector(15 downto 0);
				Write_en,rst,clock: in std_logic);
	end component register_file;
		
	signal sigA1, sigA2, sigA3 : std_logic_vector(2 downto 0);
	signal sigD1, sigD2, sigD3, sigmAw, sigmAr, sigmDw, sigmDr : std_logic_vector(15 downto 0);
	signal rf_write_en:std_logic:='0';
begin
	A : ALU port map(
		inp=>inp,

		rfA1=>sigA1,
		rfA2=>sigA2,
		rfA3=>sigA3, 
		rfD1=>sigD1,
		rfD2=>sigD2, 
		rfD3=>sigD3,
		
		mA_write=>sigmAw, 
		mD_write=>sigmDw,
		
		mA_read=>sigmAr,
		mD_read=>sigmDr,
		
		clock=>clock, 
		Cout=>C,
		Zout=>Z
	);
	
	rf : register_file port map(
				A1=>sigA1,
				A2=>sigA2,
				A3=>sigA3,
				D1=>sigD1,
				D2=>sigD2,
				D3=>sigD3,
				Write_en=>rf_write_en,
				rst=>reset,
				clock=>clock
			);
				
	rf_write_process:process(clock):
		variable opcode:std_logic_vector(3 downto 0):=inp(15 downto 12);
	begin
		if (clock='1' and clock'event) then
		
			if ((opcode="0101")or(opcode="0111")) then
				rf_write_en='0';
			else
				rf_write_en='1';
			end if;
		
		end if;
	end process;
	

end architecture construct;