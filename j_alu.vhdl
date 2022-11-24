library ieee;
use ieee.std_logic_1164.all;

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
		
		Cout,Zout : out std_logic;
		clock: in std_logic;
				
	);
end J_ALU;
architecture struct of J_ALU is
	
begin

	j_process:process(clock)
		variable opcode: std_logic_vector(3 downto 0):=inp(15 downto 12);
		variable rA: std_logic_vector(2 downto 0):= inp(11 downto 9);
		variable imm: std_logic_vector(8 downto 0):=inp(8 downto 0);
		variable imm2: std_logic_vector(15 downto 0);
		variable memAdd : std_logic_vector(15 downto 0);
		variable loadData : std_logic_vector(15 downto 0);
		variable storeData : std_logic_vector(15 downto 0);
	begin
		if(clock ='1' and clock'event) then
			case opcode is
				when "0011" => --lhi
				
					imm2(15 downto 7):=imm;
					imm2(6 downto 0):="0000000";

					rfA3<=rA;
					rfD3<=imm2;
				
				
				when "0110" => --lm
				
					rfA1<=rA;
					memAdd:=rfD1;
					
					for i in 0 downto 7 loop
						case imm(i) is
							when '1'=>
								mA_read<=memAdd;
								loadData:=mD_read;
								rfA3<=to_unsigned(i, rfA3'length);
								rfD3<=loadData;
								
								memAdd = to_unsigned(to_integer(memAdd) + 1, mA_read'length);
								
							when '0'=>
								rfA1<=to_unsigned(i, rfA3'length);
								rfA3<=to_unsigned(i, rfA3'length);
								rfD3<=rfD1;
							
						end case;
					end loop;
				
				when "0111" => --sm
					
					rfA1<=rA;
					memAdd := rfD1;
					
					for i in 0 to 7 loop
						case imm(i) is
							when '1' =>
								rfA2<=to_unsigned(i, rfA2'length);
								storeData<=rfD2;
								mA_write <= memAdd;
								mD_write <= storeData;
								
								memAdd = to_unsigned(to_integer(memAdd) + 1, mA_write'length);
								
						end case;
					end loop;
				
				others=> null;
					
			end case;
		end if;
	end process;

end struct;