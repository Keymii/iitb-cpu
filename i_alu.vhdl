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
		
		clock:in std_logic
			
	);
end entity i_alu;

architecture tan of i_alu is

component addSub16 is
	port (
		A,B:in std_logic_vector(15 downto 0);
		C,Z:out std_logic;
		Sum:out std_logic_vector(15 downto 0);
	);
end component;
	
begin

	i_process:process(clock)
		variable ra,rb:std_logic_vector(2 downto 0);
		variable opcode:std_logic_vector(3 downto 0);
		variable Imm:std_logic_vector(5 downto 0);
		variable padd,padd2:std_logic_vector(15 downto 0);
		variable bin:std_logic_vector(1 downto 0);

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
			addsub16_1:addsub16 port map(A=>rfD1,B=>padd,Sum=>rfD3,C=>cout,Z=>zout);

		elsif(opcode="0101") then ---sw
		   sw_process:process
			  variable var1:std_logic_vector(15 downto 0);
			  variable var2:std_logic_vector(15 downto 0);
			begin
			  rfA2<=rb
			  var1:=rfD2;
			  addsub16_2:addsub16 port map(A=>var1,B=>padd,Sum=>var2,C=>bin(1),Z=>bin(0));
			  mA_write<=var2;
			  rfA1<=ra;
			  mD_write<=rfD1;
			  rfA2<=rb;
			  
			end process;

			
			
		elsif(opcode="0100") then ---lw
		  lw_process:process
		    variable var1:std_logic_vector(15 downto 0);
			 variable var2:std_logic_vector(15 downto 0);
		  begin
		    rfA2<=rb;
		    var1:=rfD2;
			 addsub16_2:addsub16 port map(A=>var1,B=>padd,Sum=>var2,C=>bin(1),Z=>zout);
		    mA_read<=var2;
		    rfA3<=ra;
		    rfD3<=mD_read;
			 
		  end process;

		elsif(opcode="1100") then ---beq
			rfA1<=ra;
			rfA2<=rb;
			
			BEQ_process: process(Inp)
			begin
			
				rfA3<="111";
				if(rfD1=rfD2) then 
					rfA2<="111";
					addsub16_2:addsub16 port map(A=>rfD2,B=>padd,Sum=>rfD3,C=>bin(1),Z=>bin(0));
					
			end process BEQ_process;

		elsif(opcode="1000") then ---jal
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
     
			JAL_process: process
				variable var1:std_logic_vector(15 downto 0);
			begin
			
				rfA1<="111";
				rfA3<=ra;
				var1:=rfD1;
				rfD3<=var1;
				rfA1<=ra;
				rfA3<="111";
				addsub16_2:addsub16 port map(A=>rfD1,B=>padd2,Sum=>rfD3,C=>bin(1),Z=>bin(0));
				
			end process;
		elsif(opcode="1001") then ---jlr
			JLR_process: process
				variable var3:std_logic_vector(15 downto 0);
				variable var2:std_logic_vector(15 downto 0);
			begin
			
				rfA1<="111";
				rfA3<=ra;
				var3:=rfD1;
				rfD3<=var3;
				rfA1<=rb;
				rfA3<="111";
				var2:=rfD1;
				rfD3<=var2;
				
				
			end process;
		end if;	
	  
	end process;
end tan;
	