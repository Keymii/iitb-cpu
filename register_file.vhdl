library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_file is
	port (A1,A2,A3: in std_logic_vector(2 downto 0);
			D1,D2: out std_logic_vector(15 downto 0);
			D3: in std_logic_vector(15 downto 0);
			Write_en,rst,clock: in std_logic);
end register_file;
architecture Struct of register_file is
	component reg is
		port (signal d_write :in  std_logic_vector(15 downto 0) ;
				signal write_en: in std_logic;                     --Write Enable Line: directly define in CPU entity using opCode
				signal reset: in std_logic;
				signal clk: in std_logic;
				signal d_read: out std_logic_vector(15 downto 0) 
				);
	end component reg;
	type dataLine is array (0 to 7 ) of std_logic_vector (15 downto 0);
	signal dw,dr : dataLine;
begin
	dw(to_integer(unsigned(A3)))<=D3;
	
	R0 : reg port map (d_write=>dw(0) , write_en=>Write_en , reset=>rst , clk=>clock ,d_read=>dr(0) );
	R1 : reg port map (d_write=>dw(1) , write_en=>Write_en , reset=>rst , clk=>clock ,d_read=>dr(1) );
	R2 : reg port map (d_write=>dw(2) , write_en=>Write_en , reset=>rst , clk=>clock ,d_read=>dr(2) );
	R3 : reg port map (d_write=>dw(3) , write_en=>Write_en , reset=>rst , clk=>clock ,d_read=>dr(3) );
	R4 : reg port map (d_write=>dw(4) , write_en=>Write_en , reset=>rst , clk=>clock ,d_read=>dr(4) );
	R5 : reg port map (d_write=>dw(5) , write_en=>Write_en , reset=>rst , clk=>clock ,d_read=>dr(5) );
	R6 : reg port map (d_write=>dw(6) , write_en=>Write_en , reset=>rst , clk=>clock ,d_read=>dr(6) );
	R7 : reg port map (d_write=>dw(7) , write_en=>Write_en , reset=>rst , clk=>clock ,d_read=>dr(7) );
	
	D1<=dr(to_integer(unsigned(A1)));
	D2<=dr(to_integer(unsigned(A2)));

end Struct;