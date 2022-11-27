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
signal store:std_logic_vector(15 downto 0):="0000000000000000";
 begin

process(clk) is
	
begin
	if(clk='1' and clk'event)then
		if(write_en='1') then  
			store<=d_write;
		elsif(reset='1') then
			store<="0000000000000000"; 
		end if;
	end if;
end process;
	d_read<=store;

end sim; 