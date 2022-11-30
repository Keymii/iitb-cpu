library ieee;
use ieee.std_logic_1164.all;

entity fsm is
  port (cs: IN STD_LOGIC_VECTOR(4 downto 0);
        op_code: IN STD_LOGIC_VECTOR(3 downto 0);
        
        C, Z: IN STD_LOGIC;
        nxt_state: OUT STD_LOGIC_VECTOR(4 downto 0));
end fsm;

architecture behave of fsm is
  constant S0: std_logic_vector(4 downto 0) := "00000";
  constant S1: std_logic_vector(4 downto 0) := "00001";
  constant S2: std_logic_vector(4 downto 0) := "00010";
  constant S3: std_logic_vector(4 downto 0) := "00011";
  constant S4: std_logic_vector(4 downto 0) := "00100";
  constant S6: std_logic_vector(4 downto 0) := "00101";
  constant S5: std_logic_vector(4 downto 0) := "00110";
  constant S7: std_logic_vector(4 downto 0) := "00111";
  constant S8: std_logic_vector(4 downto 0) := "01000";
  constant S9: std_logic_vector(4 downto 0) := "01001";
  constant S10: std_logic_vector(4 downto 0) := "01010";
  constant S11: std_logic_vector(4 downto 0) := "01011";
  constant S12: std_logic_vector(4 downto 0) := "01100";
  constant S13: std_logic_vector(4 downto 0) := "01101";
  constant S14: std_logic_vector(4 downto 0) := "01110";
  constant S15: std_logic_vector(4 downto 0) := "01111";
  constant S16: std_logic_vector(4 downto 0) := "10000";
  constant S17: std_logic_vector(4 downto 0) := "10001";
  constant S18: std_logic_vector(4 downto 0) := "10010";
  constant S19: std_logic_vector(4 downto 0) := "10011";
  constant S20: std_logic_vector(4 downto 0) := "10100";
  constant S21: std_logic_vector(4 downto 0) := "10101";
  constant S22: std_logic_vector(4 downto 0) := "10110";
  constant S23: std_logic_vector(4 downto 0) := "10111";
  constant S24: std_logic_vector(4 downto 0) := "11000";
  constant S25: std_logic_vector(4 downto 0) := "11001";
   begin
    
end behave ;		 
		 
	    
						