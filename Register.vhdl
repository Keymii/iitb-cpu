Library IEEE;
use IEEE.std_logic_1164.all;

entity reg is

port ( d_write :in  std_logic_vector(15 downto 0) ;
 write_en: in std_logic;
 reset: in std_logic;
 clk: in std_logic;
 d_read: out std_logic_vector(15 downto 0) 
 );
end reg;
architecture sim of reg is

 begin

process(clk) is
	variable store:std_logic_vector(15 downto 0):="0000000000000000";
begin

	if rising_edge(clk) then
		if(write_en='1') then  
			store:=d_write;
		elsif(reset='1') then
			d_read<="0000000000000000"; 
		else
			d_read<=store;
		end if;
	end if;
end process;

end sim; 