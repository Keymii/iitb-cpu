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
	
	component i_alu is
		port( Inp: in std_logic_vector(15 downto 0);
				cout, zout: out std_logic;
				
				rfA1,rfA2,rfA3: out std_logic_vector(2 downto 0);
				rfD1,rfD2: in std_logic_vector(15 downto 0);
				rfD3: out std_logic_vector(15 downto 0);
				
				mA_write: out std_logic_vector(15 downto 0); 
				mD_write: out std_logic_vector(15 downto 0);
				
				mA_read: out std_logic_vector(15 downto 0); 
				mD_read: in std_logic_vector(15 downto 0);
				
				clock:in std_logic
					
			);
	end component i_alu;

	component J_ALU is
		port (
			inp: in std_logic_vector(15 downto 0);
			
			rfA1,rfA2,rfA3: out std_logic_vector(2 downto 0);
			rfD1,rfD2: in std_logic_vector(15 downto 0);
			rfD3: out std_logic_vector(15 downto 0);
			
			mA_write: out std_logic_vector(15 downto 0); 
			mD_write: out std_logic_vector(15 downto 0);
			
			mA_read: out std_logic_vector(15 downto 0); 
			mD_read: in std_logic_vector(15 downto 0);
			
			Cout,Zout : out std_logic;
			clock: in std_logic;
					
		);
	end component J_ALU;
	
	-- signals
	type rf_address_lines is array (0 to 2 ) of std_logic_vector (2 downto 0);
	type rf_data_lines is array (0 to 2 ) of std_logic_vector (15 downto 0);

	signal A1,A2,A3 : rf_address_lines;--0-R,1-I,2-J
	signal D1,D2,D3 : rf_data_lines;
	signal C_flag,D_flag : std_logic_vector(2 downto 0);
	signal Awrite,Dwrite,Aread,Dread : rf_data_lines;
begin
	-- take inp
	-- divide in r,i,j alu
	
	R : R_ALU port map (inp=>inp,rfA1=>A1(0),rfA2=>A2(0),rfA3=>A3(0),rfD1=>D1(0),rfD2=>D2(0),rfD3=>D3(0),Cout=>C_flag(0),Zout=>Z_flag(0),clock=>clock);
	I : i_alu port map (inp=>inp,rfA1=>A1(1),rfA2=>A2(1),rfA3=>A3(1),rfD1=>D1(1),rfD2=>D2(1),rfD3=>D3(1),mA_read=>Aread(1),mA_write=>Awrite(1),mD_read=>Dread(1),mD_write=>Dwrite(1),Cout=>C_flag(1),Zout=>Z_flag(1),clock=>clock);
	J : J_ALU port map (inp=>inp,rfA1=>A1(2),rfA2=>A2(2),rfA3=>A3(2),rfD1=>D1(2),rfD2=>D2(2),rfD3=>D3(2),mA_read=>Aread(2),mA_write=>Awrite(2),mD_read=>Dread(2),mD_write=>Dwrite(2),Cout=>C_flag(2),Zout=>Z_flag(2),clock=>clock);
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
		elsif ((opcode="0001")or(opcode="0100")or(opcode="0101")or(opcode="1100")or(opcode="1000")or(opcode="1001")) then
		   rfA1<=A1(1);
			rfA2<=A2(1);
			rfA3<=A3(1);
			D1(1)<=rfD1;
			D2(1)<=rfD2;
			rfD3<=D3(1);
			mA_write<=Awrite(1);
			mA_read<=Aread(1);
			Dwrite(1)<=mD_write;
			Dread(1)<=mD_read;
			Cout<=C_flag(1);
			Zout<=Z_flag(1);
		elsif ((opcode="0011")or(opcode="0110")or(opcode="0111")) then
		   rfA1<=A1(2);
			rfA2<=A2(2);
			rfA3<=A3(2);
			D1(2)<=rfD1;
			D2(2)<=rfD2;
			rfD3<=D3(2);
			mA_write<=Awrite(2);
			mA_read<=Aread(2);
			Dwrite(2)<=mD_write;
			Dread(2)<=mD_read;
			Cout<=C_flag(2);
			Zout<=Z_flag(2);
		
		end if;
	end process;
end struct;