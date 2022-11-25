library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity J_ALU is
	port (
		inp: in std_logic_vector(15 downto 0);
		
		rfA1,rfA2,rfA3: out std_logic_vector(2 downto 0);
		rfD1,rfD2: in std_logic_vector(15 downto 0);
		rfD3: out std_logic_vector(15 downto 0);
		
		mA_write: out std_logic_vector(15 downto 0); 
		mD_write: out std_logic_vector(15 downto 0);
		
		mA_read: out std_logic_vector(15 downto 0); 
		mD_read: in std_logic_vector(15 downto 0);
		
		clock: in std_logic
				
	);
end entity J_ALU;
architecture struct of J_ALU is
	component addSub16 is
		port (
			A,B:in std_logic_vector(15 downto 0);
			C,Z:out std_logic;
			Sum:out std_logic_vector(15 downto 0)
		);
	end component addSub16;
	
	signal adderA,adderB,adderS:std_logic_vector(15 downto 0);
	signal adderC, adderZ :std_logic;
begin

	adder : addSub16 port map (A=>adderA, B=>adderB, C=>adderC, Z=>adderZ, Sum=>adderS);

	j_process:process(clock)
		variable opcode: std_logic_vector(3 downto 0);
		variable rA: std_logic_vector(2 downto 0);
		variable imm: std_logic_vector(8 downto 0);
		variable imm2: std_logic_vector(15 downto 0);
		variable var1 : std_logic_vector(15 downto 0);
		variable var2 : std_logic_vector(15 downto 0);
		variable memAdd : std_logic_vector(15 downto 0);
		variable loadData : std_logic_vector(15 downto 0);
		variable storeData : std_logic_vector(15 downto 0);
		
	begin
		if(clock ='1' and clock'event) then
			opcode:=inp(15 downto 12);
			rA:= inp(11 downto 9);
			imm:=inp(8 downto 0);
			case opcode is
				when "0011" => --lhi
				
					imm2(15 downto 7):=imm;
					imm2(6 downto 0):="0000000";

					rfA3<=rA;
					rfD3<=imm2;
				
				
				when "0110" => --lm
				
					rfA1<=rA;
					memAdd:=rfD1;
					
					for i in 0 to 7 loop
						case imm(i) is
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
				
				when "0111" => --sm
					
					rfA1<=rA;
					memAdd := rfD1;
					
					for i in 0 to 7 loop
						case imm(i) is
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
				
				when others=> null;
					
			end case;
		end if;
	end process;

end struct;