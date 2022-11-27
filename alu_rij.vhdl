library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
	port (
	inp: in std_logic_vector(15 downto 0);
	
	rfA1,rfA2,rfA3: out std_logic_vector(2 downto 0);
	rfD1,rfD2: in std_logic_vector(15 downto 0);
	rfD3: out std_logic_vector(15 downto 0);
	
	mA_write: out std_logic_vector(15 downto 0); 
	mD_write: out std_logic_vector(15 downto 0);
	
	mA_read: out std_logic_vector(15 downto 0); 
	mD_read: in std_logic_vector(15 downto 0);
	
	clock: in std_logic;
	Cout,Zout : out std_logic
	
	);
end ALU;

architecture struct of ALU is
	component addSub16 is
		port (
			A,B:in std_logic_vector(15 downto 0);
			C,Z:out std_logic;
			Sum:out std_logic_vector(15 downto 0)
		);
	end component addSub16;
	
	signal adderA,adderB,adderS:std_logic_vector(15 downto 0);
	signal adderC, adderZ :std_logic;
	
	shared variable C_store,Z_store:std_logic:='0';
	shared variable opcode:std_logic_vector(3 downto 0);
	shared variable rA:std_logic_vector(2 downto 0);
	shared variable rB:std_logic_vector(2 downto 0);
	shared variable rC:std_logic_vector(2 downto 0);
	constant varC:std_logic:=inp(1);
	constant varZ:std_logic:=inp(0);
	shared variable nand16 : std_logic_vector(15 downto 0);
	shared variable nor_for_Z: std_logic;

	shared variable Imm:std_logic_vector(5 downto 0);
	shared variable padd,padd2:std_logic_vector(15 downto 0);
	shared variable bin:std_logic_vector(1 downto 0);
	shared variable var1:std_logic_vector(15 downto 0);
	shared variable var2:std_logic_vector(15 downto 0);

	shared variable immj: std_logic_vector(8 downto 0);
	shared variable imm2j: std_logic_vector(15 downto 0);
	shared variable memAdd : std_logic_vector(15 downto 0);
	shared variable loadData : std_logic_vector(15 downto 0);
	shared variable storeData : std_logic_vector(15 downto 0);
begin
	Cout<=C_store;
	Zout<=Z_store;
	r_process:process(clock,inp)

	begin
		if(clock='1' and clock'event) then
			opcode:=inp(15 downto 12);
			rA:=inp(11 downto 9);
			rB:=inp(8 downto 6);
			rC:=inp(5 downto 3);
			rfA1<=rA;
			rfA2<=rB;
			rfA3<=rC;
			C_store:=varC;
			Z_store:=varZ;
			
			Imm:=inp(5 downto 0);
			padd(15 downto 6):=(others=>Imm(5));
			padd(5 downto 0):=Imm;
			padd2(15 downto 9):=(others=>Inp(8));
			padd2(8 downto 0):=Inp(8 downto 0);
			
			immj:=inp(8 downto 0);
			
			if(opcode="0000") then
				if ((varC and varZ)/='1') then
					adderA<=rfD1;
					adderB<=rfD2;
					rfD3<=adderS;
					C_store:=adderC;
					Z_store:=adderZ;
					
--					C_ch<='1';
--					Z_ch<='1';
				end if;
			elsif(opcode="0010") then
				if ((varC and varZ)/='1') then
					
					for i in 0 to 15 loop
						nand16(i):=rfD1(i) nand rfD2(i);
					end loop;
					
					rfD3<=nand16;
					
					nor_for_Z:=nand16(0);
					for i in 1 to 15 loop
						nor_for_Z := nor_for_Z nor nand16(i);
					end loop;
					
					Z_store:=nor_for_Z;
					
--					C_ch<='0';
--					Z_ch<='1';
				end if;
			
			elsif(opcode="0001") then ---adi
				rfA1<=ra;
				rfA3<=rb;
--				C_ch<='1';
--				Z_ch<='1';
				adderA<=rfD1;
				adderB<=padd;
				rfD3<=adderS;
				C_store:=adderC;
				Z_store:=adderZ;
				

			elsif(opcode="0101") then ---sw
--				C_ch<='0';
--				Z_ch<='0';

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
--				 C_ch<='0';
--				 Z_ch<='1';
				 rfA2<=rb;
				 var1:=rfD2;
				 adderA<=var1;
				 adderB<=padd;
				 var2:=adderS;
				 bin(1):=adderC;
				 Z_store:=adderZ;
				 mA_read<=var2;
				 rfA3<=ra;
				 rfD3<=mD_read;

			elsif(opcode="1100") then ---beq
--				C_ch<='0';
--				Z_ch<='0';
				
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
			
--				C_ch<='0';
--				Z_ch<='0';
				
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
--				C_ch<='0';
--				Z_ch<='0';
				
				rfA1<="111";
				rfA3<=ra;
				var1:=rfD1;
				rfD3<=var1;
				rfA1<=rb;
				rfA3<="111";
				var2:=rfD1;
				rfD3<=var2;
					
			elsif(opcode="0011") then--lhi
				imm2j(15 downto 7):=immj;
				imm2j(6 downto 0):="0000000";

				rfA3<=rA;
				rfD3<=imm2j;
				
			elsif(opcode="0110") then--lm
				rfA1<=rA;
				memAdd:=rfD1;
				
				for i in 0 to 7 loop
					case immj(i) is
						when '1'=>
							mA_read<=memAdd;
							loadData:=mD_read;
							rfA3<=std_logic_vector(to_unsigned(i, rfA3'length));
							rfD3<=loadData;
							
							var1:=memAdd;
							adderA<=var1;
							adderB<="0000000000000001";
							var2:=adderS;
							
							memAdd:=var2;
						when '0'=>
							rfA1<=std_logic_vector(to_unsigned(i, rfA3'length));
							rfA3<=std_logic_vector(to_unsigned(i, rfA3'length));
							rfD3<=rfD1;
							
						when others=> null;
						
					end case;
				end loop;
				
			elsif(opcode="0111") then
				rfA1<=rA;
				memAdd := rfD1;
				
				for i in 0 to 7 loop
					case immj(i) is
						when '1' =>
							rfA2<=std_logic_vector(to_unsigned(i, rfA2'length));
							storeData:=rfD2;
							mA_write <= memAdd;
							mD_write <= storeData;
							
							var1:=memAdd;
							adderA<=var1;
							adderB<="0000000000000001";
							var2:=adderS;
							
							memAdd:=var2;	
						when '0'=>
							mA_read<=memAdd;
							mA_write<=memAdd;
							mD_write<=mD_read;
						when others=>null;
					end case;
				end loop;
			end if;				
		end if;
	end process;
end struct;