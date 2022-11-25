-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(1 downto 0);
       	output_vector: out std_logic_vector(33 downto 0));
end entity;

architecture DutWrap of DUT is
   component cpu is
		port (
					pc_o:out std_logic_vector(15 downto 0);

			C,Z:out std_logic;
			inp1:out std_logic_vector(15 downto 0);
			clock:in std_logic;
			reset:in std_logic
		);
	end component cpu;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: cpu 
			port map (
					pc_o=> output_vector(33 downto 18),
					inp1 => output_vector(17 downto 2),
					C => output_vector(1),
					Z => output_vector(0),
					clock => input_vector(1),
					
					reset => input_vector(0));
end DutWrap;