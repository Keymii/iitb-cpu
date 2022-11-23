library ieee;
use ieee.std_logic_1164.all;

entity R_ALU is
	port (
		inp: in std_logic_vector(15 downto 0);
		
		rfA1,rfA2,rfA3: out std_logic_vector(2 downto 0);
		rfD1,rfD2: in std_logic_vector(15 downto 0);
		rfD3: out std_logic_vector(15 downto 0);		
		
	);
end R_ALU;

architecture struct of R_ALU is

begin

end struct;
