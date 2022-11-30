library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cpu is
    port(c_out,z_out:out std_logic; clk: in std_logic);
end entity cpu;

architecture struct of cpu is
    component ALU is
        port(   c_out,z_out : OUT STD_LOGIC; 
                clk: in STD_LOGIC;
                rfA1,rfA2,rfA3: out std_logic_vector(2 downto 0);
                rfD1,rfD2: in std_logic_vector(15 downto 0);
                rfD3: out std_logic_vector(15 downto 0);
                rf_en,m_en:out std_logic;
        
                mD_read:in std_logic_vector(15 downto 0);
                mA_read,mA_write,mD_write:out std_logic_vector(15 downto 0)
      
              );
      end component ALU;
      component RAM is
        port(
            D_read:out std_logic_vector(15 downto 0);
            A_read,A_write,D_write:in std_logic_vector(15 downto 0);
            enable,clk:in std_logic
        );
    end component RAM;
    component register_file is
        port(
            A1,A2,A3: in std_logic_vector(2 downto 0);
            D1,D2: out std_logic_vector(15 downto 0);
            D3: in std_logic_vector(15 downto 0);
            enable,clk: in std_logic
            );
    end component register_file;
    signal A1,A2,A3:std_logic_vector(2 downto 0);
    signal D1,D2,D3, mA_r,mA_w,mD_r,mD_w:std_logic_vector(15 downto 0);
    signal rf_en,m_en:std_logic;
begin
    alu1 : ALU port map (clk=>clk, c_out=>c_out, z_out=>z_out, rfA1=>A1, rfA2=>A2, rfA3=>A3, rfD1=>D1, rfD2=>D2, rfD3=>D3,
                        rf_en=>rf_en, m_en=>m_en, mD_read=>mD_r, mA_read=>mA_r, mA_write=>mA_w, mD_write=>mD_w);
    mem  : RAM port map (D_read=>mD_r, A_read=> mA_r, A_write=>mA_w, D_write=>mD_w, enable=>m_en, clk=>clk);
    rf   : register_file port map (
                        A1=>A1,A2=>A2,A3=>A3,D1=>D1,D2=>D2,D3=>D3,enable=>rf_en,clk=>clk
    );
end architecture struct;