Library IEEE;
use IEEE.std_logic_1164.all;

entity i_alu is
port( Inp: in std_logic_vector(15 downto 0);
		cout, zout: out std_logic;
		
		rfA1,rfA2,rfA3: out std_logic_vector(2 downto 0);
		rfD1,rfD2: in std_logic_vector(15 downto 0);
		rfD3: out std_logic_vector(15 downto 0);
		
		mA_write: out std_logic_vector(15 downto 0); 
		mD_write: out std_logic_vector(15 downto 0);
		
		mA_read: out std_logic_vector(15 downto 0); 
		mD_read: in std_logic_vector(15 downto 0);
		
		C_ch,Z_ch : out std_logic; --C_changed and Z_changed
		
		clock:in std_logic
			
	);
end entity i_alu;

architecture tan of i_alu is

	component addSub16 is
		port (
			A,B:in std_logic_vector(15 downto 0);
			C,Z:out std_logic;
			Sum:out std_logic_vector(15 downto 0)
		);
	end component;

	signal adderA,adderB,adderS:std_logic_vector(15 downto 0);
	signal adderC, adderZ :std_logic;
	
begin

 adder : addSub16 port map (A=>adderA, B=>adderB, C=>adderC, Z=>adderZ, Sum=>adderS);

	i_process:process(clock)
		variable ra,rb:std_logic_vector(2 downto 0);
		variable opcode:std_logic_vector(3 downto 0);
		variable Imm:std_logic_vector(5 downto 0);
		variable padd,padd2:std_logic_vector(15 downto 0);
		variable bin:std_logic_vector(1 downto 0);
	   variable var1:std_logic_vector(15 downto 0);
		variable var2:std_logic_vector(15 downto 0);

	begin
	
		opcode:=Inp(15 downto 12);
		ra:=Inp(11 downto 9);
		rb:=Inp(8 downto 6);
		Imm:=Inp(5 downto 0);
		padd(15 downto 6):="0000000000";
		padd(5 downto 0):=Imm;
		padd2(15 downto 9):="0000000";
		padd2(8 downto 0):=Inp(8 downto 0);
		
		if(opcode="0001") then ---adi
			rfA1<=ra;
			rfA3<=rb;
			C_ch<='1';
			Z_ch<='1';
			adderA<=rfD1;
			adderB<=padd;
			rfD3<=adderS;
			cout<=adderC;
			zout<=adderZ;
			

		elsif(opcode="0101") then ---sw
			C_ch<='0';
			Z_ch<='0';

			rfA2<=rb;
			var1:=rfD2;
			adderA<=var1;
			adderB<=padd;
			var2:=adderS;
			bin(1):=adderC;
			bin(0):=adderZ;
			mA_write<=var2;
			rfA1<=ra;
			mD_write<=rfD1;
			rfA2<=rb;

		elsif(opcode="0100") then ---lw
			 C_ch<='0';
			 Z_ch<='1';
		    rfA2<=rb;
		    var1:=rfD2;
			 adderA<=var1;
			 adderB<=padd;
			 var2:=adderS;
			 bin(1):=adderC;
			 zout<=adderZ;
		    mA_read<=var2;
		    rfA3<=ra;
		    rfD3<=mD_read;

		elsif(opcode="1100") then ---beq
			C_ch<='0';
			Z_ch<='0';
			
			rfA1<=ra;
			rfA2<=rb;
			
			rfA3<="111";
			if(rfD1=rfD2) then 
				rfA2<="111";
				adderA<=rfD2;
				adderB<=padd;
				rfD3<=adderS;
				bin(1):=adderc;
				bin(0):=adderZ;
			end if;

		elsif(opcode="1000") then ---jal
		
			C_ch<='0';
			Z_ch<='0';
			
--			rfA1<=ra;
--			JAL_process: process
--			begin
--				rfA3<=pc;
--				rfA2<=pc;
--				addsub16_2:addsub16 port map(A=>rfD2,B=>padd2,Sum=>rfD3,C=>bin(1),Z=>bin(0));
--				rfA2<=rfA3;
--				rfA3<=ra;
--				rfD3<=rfD2
--			end process JAL_process;
			
				rfA1<="111";
				rfA3<=ra;
				var1:=rfD1;
				rfD3<=var1;
				rfA1<=ra;
				rfA3<="111";
				adderA<=rfD1;
				adderB<=padd2;
				rfD3<=adderS;
				bin(1):=adderC;
				bin(0):=adderZ;

		elsif(opcode="1001") then ---jlr
			C_ch<='0';
			Z_ch<='0';
			
			rfA1<="111";
			rfA3<=ra;
			var1:=rfD1;
			rfD3<=var1;
			rfA1<=rb;
			rfA3<="111";
			var2:=rfD1;
			rfD3<=var2;
				
				
		end if;	
		
	end process;
end tan;
	