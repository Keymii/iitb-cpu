Library IEEE;
use IEEE.std_logic_1164.all;

entity reg is

port ( signal d_write :in  std_logic_vector(15 downto 0) ;
signal write_en: in std_logic;
signal reset: in std_logic;
signal clk: in std_logic;
signal d_read: out std_logic_vector(15 downto 0) 
 );
end reg;
architecture sim of reg is

 begin

process(clk) is

   begin

 if rising_edge(clk) then
if(write_en='1') then  
d_read<=d_write;
  elsif(reset='1') then
  d_read<="0000000000000000";          
end if;
      end if;
        end process;

end sim; 