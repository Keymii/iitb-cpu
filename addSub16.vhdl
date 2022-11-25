library ieee;
use ieee.std_logic_1164.all;

entity addSub16 is
	port (
		A,B:in std_logic_vector(15 downto 0);
		C,Z:out std_logic;
		Sum:out std_logic_vector(15 downto 0)
	);
end addSub16;
architecture struct of addSub16 is
	signal carry: std_logic_vector(16 downto 0);
	signal sumSig: std_logic_vector(15 downto 0);
begin
	carry(0)<='0';
	add_proc:process(A,B)
	begin
		for i in 0 to 15 loop
			sumSig(i) <= A(i) xor B(i) xor carry(i);
			carry(i+1)<= (A(i) and  B(i)) or (carry(i) and  B(i)) or (A(i) and  carry(i));
		end loop;
	end process;
	C<=carry(16);
	Z<=not(sumSig(0) or sumSig(1) or sumSig(2) or sumSig(3) or sumSig(4) or sumSig(5) or sumSig(6) or sumSig(7) or sumSig(8) or sumSig(9) or sumSig(10) or sumSig(11) or sumSig(12) or sumSig(13) or sumSig(14) or sumSig(15));
	Sum<=sumSig;
end struct;