-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(0 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
   component cpu is
		port(c_out,z_out:out std_logic; clk: in std_logic);
	end component cpu;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: cpu 
			port map (
					-- order of inputs B A
				
					clk => input_vector(0),
               -- order of output OUTPUT
					
					c_out => output_vector(1),
					z_out => output_vector(0));
end DutWrap;