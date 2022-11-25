LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity cpu_tb is
end entity cpu_tb;

architecture behav of cpu_tb is
	component cpu is
		port (
			C,Z:out std_logic;
			
			clock:in std_logic;
			reset:in std_logic
		);
	end component cpu;
	signal reset,C,Z:std_logic;
	signal clock:std_logic:='1';
	constant clk_period : time := 20 ns;
begin
		reset<='0';
	dut_instance: cpu port map (C=>C,Z=>Z,clock=>clock,reset=>reset);

	clock <= not clock after clk_period/2 ;

end behav;