library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM is
	port(
		D_read:out std_logic_vector(15 downto 0);
		A_read,A_write,D_write:in std_logic_vector(15 downto 0);
		enable,clk:in std_logic
	);
end RAM;

architecture struct of RAM is
	type memory is array(0 to 65535) of std_logic_vector(15 downto 0);
	signal storage:memory:=(others=>(others=>'0'));
begin
	D_read<=storage(to_integer(unsigned(A_read)));
	ram_process:process(clk) is
	begin
		if rising_edge(clk) then
			if(enable='1')then
				storage(to_integer(unsigned(A_write)))<=D_write;
			end if;
		end if;
	end process;
end architecture struct;