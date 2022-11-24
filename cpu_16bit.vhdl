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
	);
end cpu;

architecture construct of cpu is
	component ALU is
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
	end component ALU;

	entity register_file is
		port (A1,A2,A3: in std_logic_vector(2 downto 0);
				D1,D2: out std_logic_vector(15 downto 0);
				D3: in std_logic_vector(15 downto 0);
				Write_en,rst,clock: in std_logic);
		end register_file;
begin


		-----------------------------------------------


end architecture construct;