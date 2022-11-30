library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
  port (c_out,z_out : OUT STD_LOGIC; 
        clk: in STD_LOGIC;
        rfA1,rfA2,rfA3: out std_logic_vector(2 downto 0);
        rfD1,rfD2: in std_logic_vector(15 downto 0);
		    rfD3: out std_logic_vector(15 downto 0);
        rf_en,m_en:out std_logic;

        mD_read:in std_logic_vector(15 downto 0);
		    mA_read,mA_write,mD_write:out std_logic_vector(15 downto 0)

        );
end ALU;

architecture behave of ALU is
  function Add(A: in std_logic_vector(15 downto 0);
	            B: in std_logic_vector(15 downto 0))
			return std_logic_vector is
				-- Declare "sum" and "carry" variable
				variable sum: std_logic_vector (16 downto 0) := (others => '0');
				variable carry: std_logic := '0';
								
				begin
				 for i in 0 to 15 loop
				   sum (i) := A(i) xor  B(i) xor carry ;
					carry := (A(i) and B(i)) or (B(i) and carry) or (carry and A(i));
					
				end loop ;
				  sum (16) := carry;
			return sum;
  end Add; 

  type state is (S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15, S16, S17, S18, S19, S20, S21, S22, S23);

  signal cs,nxt_state: state :=S1;

  signal t1, t2, t3, PC: STD_LOGIC_VECTOR(15 downto 0):=(others=>'0');

  shared variable inst: STD_LOGIC_VECTOR(15 downto 0):=(others=>'0');
  shared variable op_code:std_logic_vector(3 downto 0);
  shared variable rA,rB,rC: std_logic_vector(3 downto 0);
  shared variable cFlag, zFlag : std_logic;
  shared variable imm_6 : std_logic_vector(5 downto 0);
  shared variable imm_9 : std_logic_vector(8 downto 0);

  signal loopFlag:std_logic:='0';

  begin
    alu_proc:process (clk)   
    variable t:STD_LOGIC_VECTOR(15 downto 0); 

    variable i:integer:=0; -- for iterations
    begin
      case cs is
		
        when S1 =>
                mA_read<=PC;   --fetch instruction
                inst:=mD_read;

                PC <= add(PC,"0000000000000001"); --update PC
                rfA3<="111";
                rf_en<='1';
                rfD3<=PC;
                rf_en<='0';
                m_en<='0';
                loopFlag<='0';
                i:=0;
                
        when S2=>
                op_code:=inst(15 downto 12);
                rA := inst (12 downto 9);
                rB := inst (8 downto 6);
                rC := inst (5 downto 3);
                imm_6 := inst (5 downto 0);
                imm_9 := inst (8 downto 0);
                cFlag:=inst(1);
                zFlag:=inst(0);
                rfA1<=rA;
                t1<=rfD1; --read instruction
                rfA2<=rB;
                t2<=rfD2; --read instruction
                

        when S3 =>
                t:=add(t1,t2)(15 downto 0);
                t3 <= t;
                if (t = "0000000000000000") then
                  zFlag := '1';
					      else
                  zFlag := '0';
                end if;
                cFlag:=add(t1,t2)(16);
                
        when S4=>
                rf_en<='1';
                rfA3 <= rC ;
                rfD3 <= t3 ;
                rf_en<='0';
        when S5=>
                c_out<=cFlag;
                z_out<=zFlag;

        when S6 =>
                t := t1 nand t2;
                t3 <= t;
                if (t = "0000000000000000") then
                  zFlag := '1';
                else
                  zFlag := '0';
                end if;
        when S7=>
                z_out<=zFlag;
        when S8 =>
                t3(15 downto 7) <= imm_9;
                t3 (6 downto 0) <= "0000000";
                rfA3<=rA;
                rf_en<='1';
                rfD3<=t3;
                rf_en<='0';

        when S9=>
                rfA1<=rA;
                t1<=rfD1;
                i:=7;
                loopFlag<='1';
        when S10=>
                mA_read<=t1;
                t2<=mD_read;
        when S11=>
                if (imm_9(i)='1') then
                  rfA3<=std_logic_vector(to_unsigned(7-i,3));
                  rf_en<='1';
                  rfD3<=t2;
                  rf_en<='0';
                end if;  
                if(i=0)then
                  loopFlag<='0';
                end if;       
        when S12=>
                if (imm_9(i)='1')then
                  t1<=add(t1,"0000000000000001");
                end if;
                i:=i-1;
        when S13=>
                if (imm_9(i)='1') then
                  mA_write<=t1;
                  m_en<='1';
                  rfA2<=std_logic_vector(to_unsigned(7-i,3));
                  mD_write<=rfD2;
                end if;  
                if(i=0)then
                  loopFlag<='0';
                end if; 

        when S14 =>
                t2(15 downto 6)<=imm_6(5);
                t2(5 downto 0)<=imm_6;
                t:= add (t1, t2)(15 downto 0);
                t3<=t;
                if (t = "0000000000000000") then
                  zFlag <= '1';
                else
                  zFlag <= '0';
                end if;
                cFlag<=add(t1,t2)(16);

        when S15=>
                rfA3<=rA;
                rf_en<='1';
                rfD3<=t3;
                rf_en<='0';
        when S16 =>
                t:=add(t2,std_logic_vector(to_unsigned(imm_6,16)))(15 downto 0);
                t3<=t;
                if (t = "0000000000000000") then
                  zFlag <= '1';
                else
                  zFlag <= '0';
                end if;
        when S17=>
                mA_read<=t3;
                t1<=mD_read;
        when S18=>
                rfA3<=rA;
                rf_en<='1';
                rfD3<=t1;
                rf_en<='0';
        when S19=>
                m_en<='1';
                mA_write<=t3;
                mD_write<=t1;
                m_en<='0';

        when S20 =>
                if(t1=t2)then
                  PC<=add(PC,unsigned(imm_6));
                end if;


        when S21=>
                rf_A3<=rA;
                rf_en<='1'; 
                rf_D3<=PC;
                rf_en<='0';

        when S22 =>
                PC<=STD_LOGIC_VECTOR(unsigned(PC) + unsigned(imm_6));

        when S23 =>
                PC<=t2;
        
        when others=> null;
          
      end case;
      cs<=nxt_state;
    end process;

    state_trans_proc: process (clk) is --many more
    begin
      case cs is
        --when S0 =>
        --    nxt_state <= S1;
        when S1 =>
                nxt_state <= S2;
        when S2 =>
                if ((op_code = "0000") and (cFlag and zFlag /='1')) then
                  nxt_state <= S3;
                elsif ((op_code = "0010") and (cFlag and zFlag /='1') ) then
                  nxt_state <= S6;
                elsif (op_code = "0011") then
                  nxt_state <= S8;
					 elsif (op_code = "0110" or op_code = "0111")then
                  nxt_state <= S9;
                elsif (op_code = "0001") then
                  nxt_state <= S14;
					 elsif (op_code = "0100" or op_code = "0101") then
                  nxt_state <= S16;
					 elsif (op_code = "1100") then
                  nxt_state <= S20;
					 elsif (op_code = "1000" or op_code = "1001") then
                  nxt_state <= S21;
					 else
					   nxt_state <= S1;
				    
					 end if;
        when S3 =>
        nxt_state <= S4;
        when S6 =>
        nxt_state <= S4;
        
        
        when S4 =>
        
          if (op_code = "0000")  then
          nxt_state <= S5;
          elsif (op_code = "0010") then
          nxt_state <= S7 ;
          else
          nxt_state <= S1;
          
          end if ;
          
          
        when S5 =>
          nxt_state <= S1;
        when S7 =>
          nxt_state <= S1;
          
        when S8 =>
          nxt_state <= S1;
        
        when S9 =>
        
          if (op_code = "0110") then
            nxt_state <= S10;
          elsif (op_code ="0111") then
            nxt_state <= S13;
          else 
            nxt_state <= S1;
        
        end if; 
        
        when S10 =>
          nxt_state <= S11;
        
        when S11 =>
          nxt_state <= S12;
        when S13 =>
          nxt_state <= S12;
        
        when S12 =>
        if(loopFlag='1')then
          if (op_code = "0110")then
            nxt_state <= S10;
          elsif (op_code = "0111")then
            nxt_state <= S13;
          end if;
        else 
          nxt_state <= S1;
          
        end if ;
        
        when S14 =>
          nxt_state <= S15;
        
        when S15 =>
          nxt_state <= S5;
        
        when S16 =>
          if (op_code = "0100") then
          nxt_state <= S17;
        elsif (op_code = "0101") then
          nxt_state <= S19;
        else
          nxt_state <= S1;
        
        end if;
        
        when S17 =>
          nxt_state <= S18;
      
        when S19 =>
          nxt_state <= S1;
        
        when S18 =>
          nxt_state <= S7;
        
        when S20 =>
          nxt_state <= S1;
        
        when S21 =>
          if (op_code="1000") then
            nxt_state <= S22;
          elsif (op_code="1001") then
            nxt_state <=S23;
          else
            nxt_state<=S1;
          end if;
        
        when S22 =>
        nxt_state <= S1;
        
        when S23 =>
        nxt_state <= S1;

        when others=> null;

      end case;
   end process;
end behave;			
			