library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity cpu is
	port (
		pc_o:out std_logic_vector(15 downto 0);
		C,Z:out std_logic;
		inp1:out std_logic_vector(15 downto 0);
		clock:in std_logic;
		reset:in std_logic
	);
end cpu;

architecture construct of cpu is
	shared variable pc:std_logic_vector(15 downto 0):="0000000000000000";
	component ALU is
		port (
		inp: in std_logic_vector(15 downto 0);
		rfA1,rfA2,rfA3: out std_logic_vector(2 downto 0);
		rfD1,rfD2: in std_logic_vector(15 downto 0);
		rfD3: out std_logic_vector(15 downto 0);
		mA_write: out std_logic_vector(15 downto 0); 
		mD_write: out std_logic_vector(15 downto 0);
		mA_read: out std_logic_vector(15 downto 0); 
		mD_read: in std_logic_vector(15 downto 0);
		clock: in std_logic;
		Cout,Zout : out std_logic
		);
	end component ALU;

	component register_file is
		port (A1,A2,A3: in std_logic_vector(2 downto 0);
				D1,D2: out std_logic_vector(15 downto 0);
				D3: in std_logic_vector(15 downto 0);
				Write_en,rst,clock: in std_logic;
				pc_write:in std_logic_vector(15 downto 0);
				pc_read:out std_logic_vector(15 downto 0);
				pc_write_en:std_logic);
	end component register_file;
	
	component RAM_65536X16 is
		port(
			A_write: in std_logic_vector(15 downto 0); 
			D_write: in std_logic_vector(15 downto 0);
			write_en: in std_logic; 
			clock: in std_logic; 
			A_read: in std_logic_vector(15 downto 0); 
			D_read: out std_logic_vector(15 downto 0);
			pc: in std_logic_vector(15 downto 0); 
			instruction: out std_logic_vector(15 downto 0)
		);

	end component RAM_65536X16;
	
	component addSub16 is
		port (
			A,B:in std_logic_vector(15 downto 0);
			C,Z:out std_logic;
			Sum:out std_logic_vector(15 downto 0)
		);
	end component addSub16;
	
	signal adderA,adderB,adderS:std_logic_vector(15 downto 0);
	signal adderC, adderZ :std_logic;
		
	signal sigA1, sigA2, sigA3 : std_logic_vector(2 downto 0);
	signal sigD1, sigD2, sigD3, sigmAw, sigmAr, sigmDw, sigmDr, pc_r, pc_w, sigPC, inp_t, inp: std_logic_vector(15 downto 0);
	signal rf_write_en,pc_write_en,m_write_en:std_logic:='0';
begin
	adder : addSub16 port map (A=>adderA, B=>adderB, C=>adderC, Z=>adderZ, Sum=>adderS);


	ram : RAM_65536X16 port map(
		A_write=>sigmAw,
		D_write=>sigmDw,
		write_en=>m_write_en,
		clock=>clock,
		A_read=>sigmAr,
		D_read=>sigmDr,
		pc=>sigPC,
		instruction=>inp_t
	);
	
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
				clock=>clock,
				pc_write=>pc_w ,
				pc_read=>pc_r ,
				pc_write_en=> pc_write_en
			);
				
	
	
	
	write_process:process(clock)
		variable opcode:std_logic_vector(3 downto 0);
	begin
		if (clock='1' and clock'event) then
			opcode:=inp(15 downto 12);

			if ((opcode="0101")or(opcode="0111")) then
				rf_write_en<='0';
				m_write_en<='1';
			else
				rf_write_en<='1';
				m_write_en<='0';
			end if;
		
		end if;
	end process;

	pc_process:process(clock)
		
	begin
		if (clock='1' and clock'event) then
			pc := pc_r;
			sigPC<=pc;
			inp<=inp_t;
			pc:=std_logic_vector(to_unsigned(to_integer(unsigned(pc))+1,16));
			pc_write_en<='1';
			pc_w<=pc;
			
			
		end if;
		
	end process;
	pc_o<=pc;
	inp1<=inp;

end architecture construct;