library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;


function Add(A: in std_logic_vector(15 downto 0);
	B: in std_logic_vector(15 downto 0))
			return std_logic_vector is
				-- Declare "sum" and "carry" variable
				variable sum: std_logic_vector (16 downto 0) := (others => '0');
				variable carry: std_logic := '0';
				variable : std_logic_vector(3 downto 0) := (others => '0');
				
				begin
				 for i in 0 to 3 loop
				   sum (i) := A(i) xor  B(i) xor carry ;
					carry := (A(i) and B(i)) or (B(i) and carry) or (carry and A(i));
					
				end loop ;
				  sum (16) = carry;
				
			 
			return sum;
		end Add;