library ieee;
use ieee.std_logic_1164.all;

entity ALU is
	port (
	inp: in std_logic_vector(15 downto 0);
	pc_in: in std_logic_vector(15 downto 0);
	pc_out:out std_logic_vector(15 downto 0);
	
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
end ALU;

architecture struct of ALU is
	-- component R_ALU
	component R_ALU is
		port (
			inp: in std_logic_vector(15 downto 0);
			
			rfA1,rfA2,rfA3: out std_logic_vector(2 downto 0);
			rfD1,rfD2: in std_logic_vector(15 downto 0);
			rfD3: out std_logic_vector(15 downto 0);
			
			Cout,Zout : out std_logic;
			clock: in std_logic;
			
		);
	end component R_ALU;
	
	-- component I_ALU
	-- component J_ALU
	
	-- signals
	type rf_address_lines is array (0 to 3 ) of std_logic_vector (2 downto 0);
	type rf_data_lines is array (0 to 3 ) of std_logic_vector (15 downto 0);

	signal A1,A2,A3 : rf_address_lines;--0-R,1-I,2-J
	signal D1,D2,D3 : rf_data_lines;
	signal C_flag,D_flag : std_logic_vector(2 downto 0);
begin
	-- take inp
	-- divide in r,i,j alu
	
	R : R_ALU port map (inp=>inp,rfA1=>A1(0),rfA2=>A2(0),rfA3=>A3(0),rfD1=>D1(0),rfD2=>D2(0),rfD3=>D3(0),Cout=>C_flag(0),Zout=>Z_flag(0),clock=>clock);

	-- take their outputs and input lines, use if/else to join with rf/memory ports
	
	-- pc modification
	op_proc:process(clock)
	begin
		if ((opcode="0000")or(opcode="0010")) then
			rfA1<=A1(0);
			rfA2<=A2(0);
			rfA3<=A3(0);
			D1(0)<=rfD1;
			D2(0)<=rfD2;
			rfD3<=D3(0);
			Cout<=C_flag(0);
			Zout<=Z_flag(0);
		end if;
	end process;
end struct;