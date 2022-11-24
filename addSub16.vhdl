library ieee;
use ieee.std_logic_1164.all;

entity addSub16 is
	port (
		A,B:in std_logic_vector(15 downto 0);
		C,Z:out std_logic;
		Sum:out std_logic_vector(15 downto 0);
	);
end addSub16;
architecture struct of addSub16 is
	signal carry: std_logic_vector(16 downto 0);
begin
	carry(0):='0';
	for i in 0 to 15 loop
		Sum(i) <= A(i) xor B(i) xor C(i);
		carry(i+1)<= (A(i) and  B(i)) or (C(i) and  B(i)) or (A(i) and  C(i));
	end loop;
	C<=carry(16);
	Z<=not(Sum(0) or Sum(1) or Sum(2) or Sum(3) or Sum(4) or Sum(5) or Sum(6) or Sum(7) or Sum(8) or Sum(9) or Sum(10) or Sum(11) or Sum(12) or Sum(13) or Sum(14) or Sum(15));
end struct;