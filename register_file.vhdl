library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_file is
	port(
		A1,A2,A3: in std_logic_vector(2 downto 0);
		D1,D2: out std_logic_vector(15 downto 0);
		D3: in std_logic_vector(15 downto 0);
		enable,clk: in std_logic
		);
end register_file;

architecture struct of register_file is
	type regFile is array(0 to 7) of std_logic_vector(15 downto 0);
	signal R : regFile:=(others=>(others=>'0')) ;
begin
	reg_file:process(clk) is
	begin
		if rising_edge(clk) then
			D1<=R(to_integer(unsigned(A1)));
			D2<=R(to_integer(unsigned(A2)));
			if(enable='1') then
				R(to_integer(unsigned(A3)))<=D3;
			end if;
		end if;
	end process;
end architecture struct;