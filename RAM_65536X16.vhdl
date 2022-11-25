library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

entity RAM_65536X16 is
port(
	A_write: in std_logic_vector(15 downto 0); 
	D_write: in std_logic_vector(15 downto 0);
	write_en: in std_logic; 
	clock: in std_logic; 
	A_read: in std_logic_vector(15 downto 0); 
	D_read: out std_logic_vector(15 downto 0)
);

end RAM_65536X16;

architecture Behavioral of RAM_65536X16 is
type ram_array is array (0 to 65535 ) of std_logic_vector (15 downto 0);
signal ram_data: ram_array :=(
	
	others => "0000000000000000"
   
	); 

begin
	clk_process:process(clock)
	begin
		if(clock='1' and clock'event) then
			if(write_en='1') then 
			ram_data(to_integer(unsigned(A_write))) <= D_write;
			end if;
		end if;
	end process;
	D_read <= ram_data(to_integer(unsigned(A_read)));
end Behavioral;

