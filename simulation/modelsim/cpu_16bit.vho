-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/25/2022 05:40:46"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cpu IS
    PORT (
	inp : IN std_logic_vector(15 DOWNTO 0);
	mA_write : BUFFER std_logic_vector(15 DOWNTO 0);
	mD_write : BUFFER std_logic_vector(15 DOWNTO 0);
	mA_read : BUFFER std_logic_vector(15 DOWNTO 0);
	mD_read : IN std_logic_vector(15 DOWNTO 0);
	C : BUFFER std_logic;
	Z : BUFFER std_logic;
	clock : IN std_logic;
	reset : IN std_logic
	);
END cpu;

-- Design Ports Information
-- mA_write[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_write[1]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_write[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_write[3]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_write[4]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_write[5]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_write[6]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_write[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_write[8]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_write[9]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_write[10]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_write[11]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_write[12]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_write[13]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_write[14]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_write[15]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_write[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_write[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_write[2]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_write[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_write[4]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_write[5]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_write[6]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_write[7]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_write[8]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_write[9]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_write[10]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_write[11]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_write[12]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_write[13]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_write[14]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_write[15]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_read[0]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_read[1]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_read[2]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_read[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_read[4]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_read[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_read[6]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_read[7]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_read[8]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_read[9]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_read[10]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_read[11]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_read[12]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_read[13]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_read[14]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mA_read[15]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_read[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_read[1]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_read[2]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_read[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_read[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_read[5]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_read[6]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_read[7]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_read[8]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_read[9]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_read[10]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_read[11]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_read[12]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_read[13]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_read[14]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mD_read[15]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[12]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[14]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[15]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[0]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[13]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[8]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[2]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[3]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[4]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[5]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[6]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[7]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[9]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[10]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[11]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inp : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_mA_write : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_mD_write : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_mA_read : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_mD_read : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \A|I|adderB[0]~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A|R|Cout~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A|op_proc~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A|rfA1[2]~14clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A|I|rfD3[15]~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|Decoder0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A|R|rfD3[14]~13clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|Decoder0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|Decoder0~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mD_read[0]~input_o\ : std_logic;
SIGNAL \mD_read[1]~input_o\ : std_logic;
SIGNAL \mD_read[2]~input_o\ : std_logic;
SIGNAL \mD_read[3]~input_o\ : std_logic;
SIGNAL \mD_read[4]~input_o\ : std_logic;
SIGNAL \mD_read[5]~input_o\ : std_logic;
SIGNAL \mD_read[6]~input_o\ : std_logic;
SIGNAL \mD_read[7]~input_o\ : std_logic;
SIGNAL \mD_read[8]~input_o\ : std_logic;
SIGNAL \mD_read[9]~input_o\ : std_logic;
SIGNAL \mD_read[10]~input_o\ : std_logic;
SIGNAL \mD_read[11]~input_o\ : std_logic;
SIGNAL \mD_read[12]~input_o\ : std_logic;
SIGNAL \mD_read[13]~input_o\ : std_logic;
SIGNAL \mD_read[14]~input_o\ : std_logic;
SIGNAL \mD_read[15]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \mA_write[0]~output_o\ : std_logic;
SIGNAL \mA_write[1]~output_o\ : std_logic;
SIGNAL \mA_write[2]~output_o\ : std_logic;
SIGNAL \mA_write[3]~output_o\ : std_logic;
SIGNAL \mA_write[4]~output_o\ : std_logic;
SIGNAL \mA_write[5]~output_o\ : std_logic;
SIGNAL \mA_write[6]~output_o\ : std_logic;
SIGNAL \mA_write[7]~output_o\ : std_logic;
SIGNAL \mA_write[8]~output_o\ : std_logic;
SIGNAL \mA_write[9]~output_o\ : std_logic;
SIGNAL \mA_write[10]~output_o\ : std_logic;
SIGNAL \mA_write[11]~output_o\ : std_logic;
SIGNAL \mA_write[12]~output_o\ : std_logic;
SIGNAL \mA_write[13]~output_o\ : std_logic;
SIGNAL \mA_write[14]~output_o\ : std_logic;
SIGNAL \mA_write[15]~output_o\ : std_logic;
SIGNAL \mD_write[0]~output_o\ : std_logic;
SIGNAL \mD_write[1]~output_o\ : std_logic;
SIGNAL \mD_write[2]~output_o\ : std_logic;
SIGNAL \mD_write[3]~output_o\ : std_logic;
SIGNAL \mD_write[4]~output_o\ : std_logic;
SIGNAL \mD_write[5]~output_o\ : std_logic;
SIGNAL \mD_write[6]~output_o\ : std_logic;
SIGNAL \mD_write[7]~output_o\ : std_logic;
SIGNAL \mD_write[8]~output_o\ : std_logic;
SIGNAL \mD_write[9]~output_o\ : std_logic;
SIGNAL \mD_write[10]~output_o\ : std_logic;
SIGNAL \mD_write[11]~output_o\ : std_logic;
SIGNAL \mD_write[12]~output_o\ : std_logic;
SIGNAL \mD_write[13]~output_o\ : std_logic;
SIGNAL \mD_write[14]~output_o\ : std_logic;
SIGNAL \mD_write[15]~output_o\ : std_logic;
SIGNAL \mA_read[0]~output_o\ : std_logic;
SIGNAL \mA_read[1]~output_o\ : std_logic;
SIGNAL \mA_read[2]~output_o\ : std_logic;
SIGNAL \mA_read[3]~output_o\ : std_logic;
SIGNAL \mA_read[4]~output_o\ : std_logic;
SIGNAL \mA_read[5]~output_o\ : std_logic;
SIGNAL \mA_read[6]~output_o\ : std_logic;
SIGNAL \mA_read[7]~output_o\ : std_logic;
SIGNAL \mA_read[8]~output_o\ : std_logic;
SIGNAL \mA_read[9]~output_o\ : std_logic;
SIGNAL \mA_read[10]~output_o\ : std_logic;
SIGNAL \mA_read[11]~output_o\ : std_logic;
SIGNAL \mA_read[12]~output_o\ : std_logic;
SIGNAL \mA_read[13]~output_o\ : std_logic;
SIGNAL \mA_read[14]~output_o\ : std_logic;
SIGNAL \mA_read[15]~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \inp[1]~input_o\ : std_logic;
SIGNAL \inp[15]~input_o\ : std_logic;
SIGNAL \inp[14]~input_o\ : std_logic;
SIGNAL \inp[12]~input_o\ : std_logic;
SIGNAL \A|op_proc~0_combout\ : std_logic;
SIGNAL \inp[13]~input_o\ : std_logic;
SIGNAL \A|Equal0~1_combout\ : std_logic;
SIGNAL \A|op_proc~1_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inp[9]~input_o\ : std_logic;
SIGNAL \A|J|Mux19~0_combout\ : std_logic;
SIGNAL \A|I|comb~6_combout\ : std_logic;
SIGNAL \A|Equal0~2_combout\ : std_logic;
SIGNAL \A|Equal0~3_combout\ : std_logic;
SIGNAL \A|I|rfA1[2]~11_combout\ : std_logic;
SIGNAL \inp[6]~input_o\ : std_logic;
SIGNAL \A|I|rfA1[0]~12_combout\ : std_logic;
SIGNAL \A|I|rfA1[0]~8_combout\ : std_logic;
SIGNAL \A|rfA1[0]~8_combout\ : std_logic;
SIGNAL \A|rfA1[0]~9_combout\ : std_logic;
SIGNAL \A|rfA1[2]~14_combout\ : std_logic;
SIGNAL \A|rfA1[2]~14clkctrl_outclk\ : std_logic;
SIGNAL \rf_write_process~0_combout\ : std_logic;
SIGNAL \rf_write_en~q\ : std_logic;
SIGNAL \A|I|rfD3[15]~22_combout\ : std_logic;
SIGNAL \A|I|adderB[15]~4_combout\ : std_logic;
SIGNAL \inp[8]~input_o\ : std_logic;
SIGNAL \A|Equal0~4_combout\ : std_logic;
SIGNAL \A|I|adderB[8]~3_combout\ : std_logic;
SIGNAL \A|op_proc~0clkctrl_outclk\ : std_logic;
SIGNAL \A|D1[0][8]~combout\ : std_logic;
SIGNAL \inp[7]~input_o\ : std_logic;
SIGNAL \inp[5]~input_o\ : std_logic;
SIGNAL \inp[3]~input_o\ : std_logic;
SIGNAL \inp[2]~input_o\ : std_logic;
SIGNAL \inp[4]~input_o\ : std_logic;
SIGNAL \A|J|Mux23~0_combout\ : std_logic;
SIGNAL \A|J|Mux23~1_combout\ : std_logic;
SIGNAL \A|J|rfA2[1]~0_combout\ : std_logic;
SIGNAL \A|J|rfA2[1]~1_combout\ : std_logic;
SIGNAL \inp[0]~input_o\ : std_logic;
SIGNAL \A|J|rfA2[1]~2_combout\ : std_logic;
SIGNAL \A|J|rfA2[1]~3_combout\ : std_logic;
SIGNAL \A|I|rfA2[1]~1_combout\ : std_logic;
SIGNAL \A|I|adderA[0]~0_combout\ : std_logic;
SIGNAL \A|I|adderA[0]~17_combout\ : std_logic;
SIGNAL \A|rfA2[1]~2_combout\ : std_logic;
SIGNAL \A|rfA2[1]~3_combout\ : std_logic;
SIGNAL \inp[10]~input_o\ : std_logic;
SIGNAL \A|I|rfA3[1]~3_combout\ : std_logic;
SIGNAL \A|I|rfA3[2]~1_combout\ : std_logic;
SIGNAL \A|J|Mux3~0_combout\ : std_logic;
SIGNAL \A|rfA3[1]~4_combout\ : std_logic;
SIGNAL \A|rfA3[1]~5_combout\ : std_logic;
SIGNAL \A|I|rfA3[0]~2_combout\ : std_logic;
SIGNAL \A|rfA3[0]~2_combout\ : std_logic;
SIGNAL \A|rfA3[0]~3_combout\ : std_logic;
SIGNAL \inp[11]~input_o\ : std_logic;
SIGNAL \A|I|rfA3[2]~0_combout\ : std_logic;
SIGNAL \A|rfA3[2]~0_combout\ : std_logic;
SIGNAL \A|rfA3[2]~1_combout\ : std_logic;
SIGNAL \rf|Decoder0~2_combout\ : std_logic;
SIGNAL \rf|Decoder0~2clkctrl_outclk\ : std_logic;
SIGNAL \rf|dw[4][8]~combout\ : std_logic;
SIGNAL \rf|R4|d_read~12_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \rf|R7|d_read[15]~0_combout\ : std_logic;
SIGNAL \rf|Decoder0~1_combout\ : std_logic;
SIGNAL \rf|Decoder0~1clkctrl_outclk\ : std_logic;
SIGNAL \rf|dw[6][8]~combout\ : std_logic;
SIGNAL \rf|R6|d_read~12_combout\ : std_logic;
SIGNAL \A|J|Mux24~0_combout\ : std_logic;
SIGNAL \A|J|Mux24~1_combout\ : std_logic;
SIGNAL \A|I|rfA2[0]~0_combout\ : std_logic;
SIGNAL \A|rfA2[0]~0_combout\ : std_logic;
SIGNAL \A|rfA2[0]~1_combout\ : std_logic;
SIGNAL \rf|Mux23~0_combout\ : std_logic;
SIGNAL \rf|Decoder0~3_combout\ : std_logic;
SIGNAL \rf|dw[7][8]~combout\ : std_logic;
SIGNAL \rf|R7|d_read~13_combout\ : std_logic;
SIGNAL \rf|Mux23~1_combout\ : std_logic;
SIGNAL \rf|Decoder0~7_combout\ : std_logic;
SIGNAL \rf|dw[3][8]~combout\ : std_logic;
SIGNAL \rf|R3|d_read~12_combout\ : std_logic;
SIGNAL \rf|Decoder0~4_combout\ : std_logic;
SIGNAL \rf|dw[2][8]~combout\ : std_logic;
SIGNAL \rf|R2|d_read~12_combout\ : std_logic;
SIGNAL \rf|Decoder0~5_combout\ : std_logic;
SIGNAL \rf|dw[1][8]~combout\ : std_logic;
SIGNAL \rf|R1|d_read~12_combout\ : std_logic;
SIGNAL \rf|Decoder0~6_combout\ : std_logic;
SIGNAL \rf|dw[0][8]~combout\ : std_logic;
SIGNAL \rf|R0|d_read~12_combout\ : std_logic;
SIGNAL \rf|Mux23~2_combout\ : std_logic;
SIGNAL \rf|Mux23~3_combout\ : std_logic;
SIGNAL \A|I|rfA2[2]~2_combout\ : std_logic;
SIGNAL \A|rfA2[2]~4_combout\ : std_logic;
SIGNAL \A|rfA2[2]~5_combout\ : std_logic;
SIGNAL \rf|Mux23~4_combout\ : std_logic;
SIGNAL \A|D2[0][8]~combout\ : std_logic;
SIGNAL \A|Equal0~0_combout\ : std_logic;
SIGNAL \A|R|Cout~0_combout\ : std_logic;
SIGNAL \A|R|Cout~0clkctrl_outclk\ : std_logic;
SIGNAL \rf|dw[2][7]~combout\ : std_logic;
SIGNAL \rf|R2|d_read~4_combout\ : std_logic;
SIGNAL \rf|dw[0][7]~combout\ : std_logic;
SIGNAL \rf|R0|d_read~4_combout\ : std_logic;
SIGNAL \rf|dw[1][7]~combout\ : std_logic;
SIGNAL \rf|R1|d_read~4_combout\ : std_logic;
SIGNAL \rf|Mux24~2_combout\ : std_logic;
SIGNAL \rf|dw[3][7]~combout\ : std_logic;
SIGNAL \rf|R3|d_read~4_combout\ : std_logic;
SIGNAL \rf|Mux24~3_combout\ : std_logic;
SIGNAL \rf|dw[4][7]~combout\ : std_logic;
SIGNAL \rf|R4|d_read~4_combout\ : std_logic;
SIGNAL \rf|dw[6][7]~combout\ : std_logic;
SIGNAL \rf|R6|d_read~4_combout\ : std_logic;
SIGNAL \rf|Mux24~0_combout\ : std_logic;
SIGNAL \rf|Decoder0~0_combout\ : std_logic;
SIGNAL \rf|Decoder0~0clkctrl_outclk\ : std_logic;
SIGNAL \rf|dw[5][7]~combout\ : std_logic;
SIGNAL \rf|R5|d_read~4_combout\ : std_logic;
SIGNAL \rf|Mux24~1_combout\ : std_logic;
SIGNAL \rf|Mux24~4_combout\ : std_logic;
SIGNAL \A|D2[0][7]~combout\ : std_logic;
SIGNAL \A|D1[1][6]~combout\ : std_logic;
SIGNAL \rf|dw[7][6]~combout\ : std_logic;
SIGNAL \rf|R7|d_read~12_combout\ : std_logic;
SIGNAL \rf|dw[6][6]~combout\ : std_logic;
SIGNAL \rf|R6|d_read~11_combout\ : std_logic;
SIGNAL \rf|dw[4][6]~combout\ : std_logic;
SIGNAL \rf|R4|d_read~11_combout\ : std_logic;
SIGNAL \rf|Mux25~0_combout\ : std_logic;
SIGNAL \rf|dw[5][6]~combout\ : std_logic;
SIGNAL \rf|R5|d_read~11_combout\ : std_logic;
SIGNAL \rf|Mux25~1_combout\ : std_logic;
SIGNAL \rf|dw[1][6]~combout\ : std_logic;
SIGNAL \rf|R1|d_read~11_combout\ : std_logic;
SIGNAL \rf|dw[0][6]~combout\ : std_logic;
SIGNAL \rf|R0|d_read~11_combout\ : std_logic;
SIGNAL \rf|Mux25~2_combout\ : std_logic;
SIGNAL \rf|dw[3][6]~combout\ : std_logic;
SIGNAL \rf|R3|d_read~11_combout\ : std_logic;
SIGNAL \rf|Mux25~3_combout\ : std_logic;
SIGNAL \rf|Mux25~4_combout\ : std_logic;
SIGNAL \A|D2[1][6]~combout\ : std_logic;
SIGNAL \A|I|adderA[6]~9_combout\ : std_logic;
SIGNAL \A|I|adderB[6]~5_combout\ : std_logic;
SIGNAL \A|I|rfA1[1]~9_combout\ : std_logic;
SIGNAL \A|rfA1[1]~10_combout\ : std_logic;
SIGNAL \A|rfA1[1]~11_combout\ : std_logic;
SIGNAL \rf|dw[6][5]~combout\ : std_logic;
SIGNAL \rf|R6|d_read~5_combout\ : std_logic;
SIGNAL \rf|dw[4][5]~combout\ : std_logic;
SIGNAL \rf|R4|d_read~5_combout\ : std_logic;
SIGNAL \rf|Mux10~0_combout\ : std_logic;
SIGNAL \rf|dw[7][5]~combout\ : std_logic;
SIGNAL \rf|R7|d_read~6_combout\ : std_logic;
SIGNAL \rf|Mux10~1_combout\ : std_logic;
SIGNAL \A|I|rfA1[2]~10_combout\ : std_logic;
SIGNAL \A|rfA1[2]~12_combout\ : std_logic;
SIGNAL \A|rfA1[2]~13_combout\ : std_logic;
SIGNAL \rf|dw[3][5]~combout\ : std_logic;
SIGNAL \rf|R3|d_read~5_combout\ : std_logic;
SIGNAL \rf|dw[0][5]~combout\ : std_logic;
SIGNAL \rf|R0|d_read~5_combout\ : std_logic;
SIGNAL \rf|dw[1][5]~combout\ : std_logic;
SIGNAL \rf|R1|d_read~5_combout\ : std_logic;
SIGNAL \rf|Mux10~2_combout\ : std_logic;
SIGNAL \rf|dw[2][5]~combout\ : std_logic;
SIGNAL \rf|R2|d_read~5_combout\ : std_logic;
SIGNAL \rf|Mux10~3_combout\ : std_logic;
SIGNAL \rf|Mux10~4_combout\ : std_logic;
SIGNAL \A|D1[1][5]~combout\ : std_logic;
SIGNAL \rf|dw[3][4]~combout\ : std_logic;
SIGNAL \rf|R3|d_read~10_combout\ : std_logic;
SIGNAL \rf|dw[2][4]~combout\ : std_logic;
SIGNAL \rf|R2|d_read~10_combout\ : std_logic;
SIGNAL \rf|dw[1][4]~combout\ : std_logic;
SIGNAL \rf|R1|d_read~10_combout\ : std_logic;
SIGNAL \rf|dw[0][4]~combout\ : std_logic;
SIGNAL \rf|R0|d_read~10_combout\ : std_logic;
SIGNAL \rf|Mux11~2_combout\ : std_logic;
SIGNAL \rf|Mux11~3_combout\ : std_logic;
SIGNAL \rf|dw[6][4]~combout\ : std_logic;
SIGNAL \rf|R6|d_read~10_combout\ : std_logic;
SIGNAL \rf|dw[4][4]~combout\ : std_logic;
SIGNAL \rf|R4|d_read~10_combout\ : std_logic;
SIGNAL \rf|Mux11~0_combout\ : std_logic;
SIGNAL \rf|dw[5][4]~combout\ : std_logic;
SIGNAL \rf|R5|d_read~10_combout\ : std_logic;
SIGNAL \rf|Mux11~1_combout\ : std_logic;
SIGNAL \rf|Mux11~4_combout\ : std_logic;
SIGNAL \A|D1[1][4]~combout\ : std_logic;
SIGNAL \A|D2[0][3]~combout\ : std_logic;
SIGNAL \rf|dw[6][2]~combout\ : std_logic;
SIGNAL \rf|R6|d_read~9_combout\ : std_logic;
SIGNAL \rf|dw[4][2]~combout\ : std_logic;
SIGNAL \rf|R4|d_read~9_combout\ : std_logic;
SIGNAL \rf|Mux13~0_combout\ : std_logic;
SIGNAL \rf|dw[5][2]~combout\ : std_logic;
SIGNAL \rf|R5|d_read~9_combout\ : std_logic;
SIGNAL \rf|dw[7][2]~combout\ : std_logic;
SIGNAL \rf|R7|d_read~10_combout\ : std_logic;
SIGNAL \rf|Mux13~1_combout\ : std_logic;
SIGNAL \rf|dw[0][2]~combout\ : std_logic;
SIGNAL \rf|R0|d_read~9_combout\ : std_logic;
SIGNAL \rf|dw[1][2]~combout\ : std_logic;
SIGNAL \rf|R1|d_read~9_combout\ : std_logic;
SIGNAL \rf|Mux13~2_combout\ : std_logic;
SIGNAL \rf|dw[2][2]~combout\ : std_logic;
SIGNAL \rf|R2|d_read~9_combout\ : std_logic;
SIGNAL \rf|Mux13~3_combout\ : std_logic;
SIGNAL \rf|Mux13~4_combout\ : std_logic;
SIGNAL \A|D1[0][2]~combout\ : std_logic;
SIGNAL \rf|dw[5][0]~combout\ : std_logic;
SIGNAL \rf|R5|d_read~8_combout\ : std_logic;
SIGNAL \rf|dw[4][0]~combout\ : std_logic;
SIGNAL \rf|R4|d_read~8_combout\ : std_logic;
SIGNAL \rf|dw[6][0]~combout\ : std_logic;
SIGNAL \rf|R6|d_read~8_combout\ : std_logic;
SIGNAL \rf|Mux31~0_combout\ : std_logic;
SIGNAL \rf|Mux31~1_combout\ : std_logic;
SIGNAL \rf|dw[0][0]~combout\ : std_logic;
SIGNAL \rf|R0|d_read~8_combout\ : std_logic;
SIGNAL \rf|dw[1][0]~combout\ : std_logic;
SIGNAL \rf|R1|d_read~8_combout\ : std_logic;
SIGNAL \rf|Mux31~2_combout\ : std_logic;
SIGNAL \rf|dw[2][0]~combout\ : std_logic;
SIGNAL \rf|R2|d_read~8_combout\ : std_logic;
SIGNAL \rf|dw[3][0]~combout\ : std_logic;
SIGNAL \rf|R3|d_read~8_combout\ : std_logic;
SIGNAL \rf|Mux31~3_combout\ : std_logic;
SIGNAL \rf|Mux31~4_combout\ : std_logic;
SIGNAL \A|D2[0][0]~combout\ : std_logic;
SIGNAL \A|R|rfD3[0]~26_combout\ : std_logic;
SIGNAL \A|R|rfD3[14]~12_combout\ : std_logic;
SIGNAL \A|R|rfD3[14]~13_combout\ : std_logic;
SIGNAL \A|R|rfD3[14]~13clkctrl_outclk\ : std_logic;
SIGNAL \A|D2[1][0]~combout\ : std_logic;
SIGNAL \A|D1[1][0]~combout\ : std_logic;
SIGNAL \A|I|adderA[0]~12_combout\ : std_logic;
SIGNAL \A|I|rfD3[0]~13_combout\ : std_logic;
SIGNAL \A|I|rfA1[2]~7_combout\ : std_logic;
SIGNAL \A|I|rfD3[15]~3_combout\ : std_logic;
SIGNAL \A|I|rfD3[15]~4_combout\ : std_logic;
SIGNAL \A|I|rfD3[15]~4clkctrl_outclk\ : std_logic;
SIGNAL \A|rfD3[0]~13_combout\ : std_logic;
SIGNAL \rf|dw[7][0]~combout\ : std_logic;
SIGNAL \rf|R7|d_read~9_combout\ : std_logic;
SIGNAL \rf|Mux15~0_combout\ : std_logic;
SIGNAL \rf|Mux15~1_combout\ : std_logic;
SIGNAL \rf|Mux15~2_combout\ : std_logic;
SIGNAL \rf|Mux15~3_combout\ : std_logic;
SIGNAL \rf|Mux15~4_combout\ : std_logic;
SIGNAL \A|D1[0][0]~combout\ : std_logic;
SIGNAL \rf|dw[4][1]~combout\ : std_logic;
SIGNAL \rf|R4|d_read~7_combout\ : std_logic;
SIGNAL \rf|dw[6][1]~combout\ : std_logic;
SIGNAL \rf|R6|d_read~7_combout\ : std_logic;
SIGNAL \rf|Mux14~0_combout\ : std_logic;
SIGNAL \rf|dw[5][1]~combout\ : std_logic;
SIGNAL \rf|R5|d_read~7_combout\ : std_logic;
SIGNAL \rf|dw[7][1]~combout\ : std_logic;
SIGNAL \rf|R7|d_read~8_combout\ : std_logic;
SIGNAL \rf|Mux14~1_combout\ : std_logic;
SIGNAL \rf|dw[2][1]~combout\ : std_logic;
SIGNAL \rf|R2|d_read~7_combout\ : std_logic;
SIGNAL \rf|dw[0][1]~combout\ : std_logic;
SIGNAL \rf|R0|d_read~7_combout\ : std_logic;
SIGNAL \rf|Mux14~2_combout\ : std_logic;
SIGNAL \rf|dw[3][1]~combout\ : std_logic;
SIGNAL \rf|R3|d_read~7_combout\ : std_logic;
SIGNAL \rf|Mux14~3_combout\ : std_logic;
SIGNAL \rf|Mux14~4_combout\ : std_logic;
SIGNAL \A|D1[0][1]~combout\ : std_logic;
SIGNAL \A|R|adder|Sum[1]~5_combout\ : std_logic;
SIGNAL \A|R|rfD3[1]~25_combout\ : std_logic;
SIGNAL \A|D2[1][1]~combout\ : std_logic;
SIGNAL \A|D1[1][1]~combout\ : std_logic;
SIGNAL \A|I|adderA[1]~13_combout\ : std_logic;
SIGNAL \A|I|adder|Sum[1]~4_combout\ : std_logic;
SIGNAL \A|I|rfD3[1]~12_combout\ : std_logic;
SIGNAL \A|rfD3[1]~12_combout\ : std_logic;
SIGNAL \rf|dw[1][1]~combout\ : std_logic;
SIGNAL \rf|R1|d_read~7_combout\ : std_logic;
SIGNAL \rf|R1|d_read[1]~feeder_combout\ : std_logic;
SIGNAL \rf|Mux30~2_combout\ : std_logic;
SIGNAL \rf|Mux30~3_combout\ : std_logic;
SIGNAL \rf|Mux30~0_combout\ : std_logic;
SIGNAL \rf|Mux30~1_combout\ : std_logic;
SIGNAL \rf|Mux30~4_combout\ : std_logic;
SIGNAL \A|D2[0][1]~combout\ : std_logic;
SIGNAL \A|R|adder|carry[2]~0_combout\ : std_logic;
SIGNAL \A|R|rfD3[2]~27_combout\ : std_logic;
SIGNAL \A|R|rfD3[2]~30_combout\ : std_logic;
SIGNAL \A|D1[1][2]~combout\ : std_logic;
SIGNAL \A|D2[1][2]~combout\ : std_logic;
SIGNAL \A|I|adderA[2]~11_combout\ : std_logic;
SIGNAL \A|I|adder|carry[2]~0_combout\ : std_logic;
SIGNAL \A|I|adder|Sum[2]~0_combout\ : std_logic;
SIGNAL \A|I|rfD3[2]~14_combout\ : std_logic;
SIGNAL \A|rfD3[2]~14_combout\ : std_logic;
SIGNAL \rf|dw[3][2]~combout\ : std_logic;
SIGNAL \rf|R3|d_read~9_combout\ : std_logic;
SIGNAL \rf|Mux29~2_combout\ : std_logic;
SIGNAL \rf|Mux29~3_combout\ : std_logic;
SIGNAL \rf|Mux29~0_combout\ : std_logic;
SIGNAL \rf|Mux29~1_combout\ : std_logic;
SIGNAL \rf|Mux29~4_combout\ : std_logic;
SIGNAL \A|D2[0][2]~combout\ : std_logic;
SIGNAL \A|R|adder|carry[3]~2_combout\ : std_logic;
SIGNAL \rf|dw[4][3]~combout\ : std_logic;
SIGNAL \rf|R4|d_read~6_combout\ : std_logic;
SIGNAL \rf|Mux12~0_combout\ : std_logic;
SIGNAL \rf|dw[7][3]~combout\ : std_logic;
SIGNAL \rf|R7|d_read~7_combout\ : std_logic;
SIGNAL \rf|dw[5][3]~combout\ : std_logic;
SIGNAL \rf|R5|d_read~6_combout\ : std_logic;
SIGNAL \rf|Mux12~1_combout\ : std_logic;
SIGNAL \rf|dw[1][3]~combout\ : std_logic;
SIGNAL \rf|R1|d_read~6_combout\ : std_logic;
SIGNAL \rf|dw[0][3]~combout\ : std_logic;
SIGNAL \rf|R0|d_read~6_combout\ : std_logic;
SIGNAL \rf|Mux12~2_combout\ : std_logic;
SIGNAL \rf|dw[3][3]~combout\ : std_logic;
SIGNAL \rf|R3|d_read~6_combout\ : std_logic;
SIGNAL \rf|dw[2][3]~combout\ : std_logic;
SIGNAL \rf|R2|d_read~6_combout\ : std_logic;
SIGNAL \rf|Mux12~3_combout\ : std_logic;
SIGNAL \rf|Mux12~4_combout\ : std_logic;
SIGNAL \A|D1[0][3]~combout\ : std_logic;
SIGNAL \A|R|adder|carry[3]~1_combout\ : std_logic;
SIGNAL \A|R|rfD3[3]~24_combout\ : std_logic;
SIGNAL \A|I|adder|carry[3]~1_combout\ : std_logic;
SIGNAL \A|I|adder|carry[3]~2_combout\ : std_logic;
SIGNAL \A|D1[1][3]~combout\ : std_logic;
SIGNAL \A|I|rfD3[3]~11_combout\ : std_logic;
SIGNAL \A|rfD3[3]~11_combout\ : std_logic;
SIGNAL \rf|dw[6][3]~combout\ : std_logic;
SIGNAL \rf|R6|d_read~6_combout\ : std_logic;
SIGNAL \rf|Mux28~0_combout\ : std_logic;
SIGNAL \rf|Mux28~1_combout\ : std_logic;
SIGNAL \rf|Mux28~2_combout\ : std_logic;
SIGNAL \rf|Mux28~3_combout\ : std_logic;
SIGNAL \rf|Mux28~4_combout\ : std_logic;
SIGNAL \A|D2[1][3]~combout\ : std_logic;
SIGNAL \A|I|adderA[3]~14_combout\ : std_logic;
SIGNAL \A|I|adder|carry[4]~3_combout\ : std_logic;
SIGNAL \A|I|adder|Sum[4]~1_combout\ : std_logic;
SIGNAL \A|I|rfD3[4]~15_combout\ : std_logic;
SIGNAL \A|D2[0][4]~combout\ : std_logic;
SIGNAL \A|D1[0][4]~combout\ : std_logic;
SIGNAL \A|R|adder|carry[4]~3_combout\ : std_logic;
SIGNAL \A|R|adder|Sum[4]~0_combout\ : std_logic;
SIGNAL \A|R|rfD3[4]~31_combout\ : std_logic;
SIGNAL \A|rfD3[4]~15_combout\ : std_logic;
SIGNAL \rf|dw[7][4]~combout\ : std_logic;
SIGNAL \rf|R7|d_read~11_combout\ : std_logic;
SIGNAL \rf|Mux27~0_combout\ : std_logic;
SIGNAL \rf|Mux27~1_combout\ : std_logic;
SIGNAL \rf|Mux27~2_combout\ : std_logic;
SIGNAL \rf|Mux27~3_combout\ : std_logic;
SIGNAL \rf|Mux27~4_combout\ : std_logic;
SIGNAL \A|D2[1][4]~combout\ : std_logic;
SIGNAL \A|I|adderA[4]~10_combout\ : std_logic;
SIGNAL \A|I|adder|carry[5]~4_combout\ : std_logic;
SIGNAL \A|I|adder|carry[5]~5_combout\ : std_logic;
SIGNAL \A|I|rfD3[5]~10_combout\ : std_logic;
SIGNAL \A|D2[0][5]~combout\ : std_logic;
SIGNAL \A|D1[0][5]~combout\ : std_logic;
SIGNAL \A|R|adder|carry[5]~4_combout\ : std_logic;
SIGNAL \A|R|adder|carry[5]~5_combout\ : std_logic;
SIGNAL \A|R|rfD3[5]~23_combout\ : std_logic;
SIGNAL \A|rfD3[5]~10_combout\ : std_logic;
SIGNAL \rf|dw[5][5]~combout\ : std_logic;
SIGNAL \rf|R5|d_read~5_combout\ : std_logic;
SIGNAL \rf|Mux26~0_combout\ : std_logic;
SIGNAL \rf|Mux26~1_combout\ : std_logic;
SIGNAL \rf|Mux26~2_combout\ : std_logic;
SIGNAL \rf|Mux26~3_combout\ : std_logic;
SIGNAL \rf|Mux26~4_combout\ : std_logic;
SIGNAL \A|D2[1][5]~combout\ : std_logic;
SIGNAL \A|I|adderA[5]~15_combout\ : std_logic;
SIGNAL \A|I|adder|carry[6]~6_combout\ : std_logic;
SIGNAL \A|I|adder|Sum[6]~2_combout\ : std_logic;
SIGNAL \A|I|rfD3[6]~16_combout\ : std_logic;
SIGNAL \A|D2[0][6]~combout\ : std_logic;
SIGNAL \A|R|adder|carry[6]~6_combout\ : std_logic;
SIGNAL \A|R|adder|Sum[6]~1_combout\ : std_logic;
SIGNAL \A|R|rfD3[6]~32_combout\ : std_logic;
SIGNAL \A|rfD3[6]~16_combout\ : std_logic;
SIGNAL \rf|dw[2][6]~combout\ : std_logic;
SIGNAL \rf|R2|d_read~11_combout\ : std_logic;
SIGNAL \rf|Mux9~2_combout\ : std_logic;
SIGNAL \rf|Mux9~3_combout\ : std_logic;
SIGNAL \rf|Mux9~0_combout\ : std_logic;
SIGNAL \rf|Mux9~1_combout\ : std_logic;
SIGNAL \rf|Mux9~4_combout\ : std_logic;
SIGNAL \A|D1[0][6]~combout\ : std_logic;
SIGNAL \A|R|adder|carry[7]~7_combout\ : std_logic;
SIGNAL \A|R|adder|carry[7]~8_combout\ : std_logic;
SIGNAL \A|R|adder|carry[7]~9_combout\ : std_logic;
SIGNAL \A|R|rfD3[7]~22_combout\ : std_logic;
SIGNAL \A|D1[1][7]~combout\ : std_logic;
SIGNAL \A|D2[1][7]~combout\ : std_logic;
SIGNAL \A|I|adderA[7]~16_combout\ : std_logic;
SIGNAL \A|I|adderB[7]~6_combout\ : std_logic;
SIGNAL \A|I|adder|carry[7]~8_combout\ : std_logic;
SIGNAL \A|I|adder|carry[7]~7_combout\ : std_logic;
SIGNAL \A|I|rfD3[7]~9_combout\ : std_logic;
SIGNAL \A|rfD3[7]~8_combout\ : std_logic;
SIGNAL \A|rfD3[7]~9_combout\ : std_logic;
SIGNAL \rf|dw[7][7]~combout\ : std_logic;
SIGNAL \rf|R7|d_read~5_combout\ : std_logic;
SIGNAL \rf|Mux8~0_combout\ : std_logic;
SIGNAL \rf|Mux8~1_combout\ : std_logic;
SIGNAL \rf|Mux8~2_combout\ : std_logic;
SIGNAL \rf|Mux8~3_combout\ : std_logic;
SIGNAL \rf|Mux8~4_combout\ : std_logic;
SIGNAL \A|D1[0][7]~combout\ : std_logic;
SIGNAL \A|R|adder|carry[8]~10_combout\ : std_logic;
SIGNAL \A|R|adder|Sum[8]~2_combout\ : std_logic;
SIGNAL \A|R|rfD3[8]~33_combout\ : std_logic;
SIGNAL \A|I|adder|carry[8]~9_combout\ : std_logic;
SIGNAL \A|I|adder|Sum[8]~3_combout\ : std_logic;
SIGNAL \A|I|rfD3[8]~17_combout\ : std_logic;
SIGNAL \A|rfD3[8]~17_combout\ : std_logic;
SIGNAL \A|rfD3[8]~18_combout\ : std_logic;
SIGNAL \rf|dw[5][8]~combout\ : std_logic;
SIGNAL \rf|R5|d_read~12_combout\ : std_logic;
SIGNAL \rf|Mux7~0_combout\ : std_logic;
SIGNAL \rf|Mux7~1_combout\ : std_logic;
SIGNAL \rf|Mux7~2_combout\ : std_logic;
SIGNAL \rf|Mux7~3_combout\ : std_logic;
SIGNAL \rf|Mux7~4_combout\ : std_logic;
SIGNAL \A|D1[1][8]~combout\ : std_logic;
SIGNAL \A|D2[1][8]~combout\ : std_logic;
SIGNAL \A|I|adderA[8]~8_combout\ : std_logic;
SIGNAL \rf|dw[2][9]~combout\ : std_logic;
SIGNAL \rf|R2|d_read~3_combout\ : std_logic;
SIGNAL \rf|dw[1][9]~combout\ : std_logic;
SIGNAL \rf|R1|d_read~3_combout\ : std_logic;
SIGNAL \rf|dw[0][9]~combout\ : std_logic;
SIGNAL \rf|R0|d_read~3_combout\ : std_logic;
SIGNAL \rf|Mux22~2_combout\ : std_logic;
SIGNAL \rf|dw[3][9]~combout\ : std_logic;
SIGNAL \rf|R3|d_read~3_combout\ : std_logic;
SIGNAL \rf|Mux22~3_combout\ : std_logic;
SIGNAL \rf|dw[6][9]~combout\ : std_logic;
SIGNAL \rf|R6|d_read~3_combout\ : std_logic;
SIGNAL \rf|Mux22~0_combout\ : std_logic;
SIGNAL \rf|dw[5][9]~combout\ : std_logic;
SIGNAL \rf|R5|d_read~3_combout\ : std_logic;
SIGNAL \rf|dw[7][9]~combout\ : std_logic;
SIGNAL \rf|R7|d_read~4_combout\ : std_logic;
SIGNAL \rf|Mux22~1_combout\ : std_logic;
SIGNAL \rf|Mux22~4_combout\ : std_logic;
SIGNAL \A|D2[1][9]~combout\ : std_logic;
SIGNAL \A|I|adderA[9]~7_combout\ : std_logic;
SIGNAL \A|I|rfD3[9]~8_combout\ : std_logic;
SIGNAL \A|rfD3[9]~6_combout\ : std_logic;
SIGNAL \A|D1[0][9]~combout\ : std_logic;
SIGNAL \A|R|adder|carry[9]~12_combout\ : std_logic;
SIGNAL \A|R|adder|carry[9]~11_combout\ : std_logic;
SIGNAL \A|D2[0][9]~combout\ : std_logic;
SIGNAL \A|R|rfD3[9]~21_combout\ : std_logic;
SIGNAL \A|rfD3[9]~7_combout\ : std_logic;
SIGNAL \rf|dw[4][9]~combout\ : std_logic;
SIGNAL \rf|R4|d_read~3_combout\ : std_logic;
SIGNAL \rf|Mux6~0_combout\ : std_logic;
SIGNAL \rf|Mux6~1_combout\ : std_logic;
SIGNAL \rf|Mux6~2_combout\ : std_logic;
SIGNAL \rf|Mux6~3_combout\ : std_logic;
SIGNAL \rf|Mux6~4_combout\ : std_logic;
SIGNAL \A|D1[1][9]~combout\ : std_logic;
SIGNAL \A|I|Equal4~6_combout\ : std_logic;
SIGNAL \A|I|rfD3[10]~18_combout\ : std_logic;
SIGNAL \rf|dw[2][10]~combout\ : std_logic;
SIGNAL \rf|R2|d_read~13_combout\ : std_logic;
SIGNAL \rf|dw[1][10]~combout\ : std_logic;
SIGNAL \rf|R1|d_read~13_combout\ : std_logic;
SIGNAL \rf|dw[0][10]~combout\ : std_logic;
SIGNAL \rf|R0|d_read~13_combout\ : std_logic;
SIGNAL \rf|Mux21~2_combout\ : std_logic;
SIGNAL \rf|dw[3][10]~combout\ : std_logic;
SIGNAL \rf|R3|d_read~13_combout\ : std_logic;
SIGNAL \rf|Mux21~3_combout\ : std_logic;
SIGNAL \rf|dw[4][10]~combout\ : std_logic;
SIGNAL \rf|R4|d_read~13_combout\ : std_logic;
SIGNAL \rf|dw[6][10]~combout\ : std_logic;
SIGNAL \rf|R6|d_read~13_combout\ : std_logic;
SIGNAL \rf|Mux21~0_combout\ : std_logic;
SIGNAL \rf|dw[7][10]~combout\ : std_logic;
SIGNAL \rf|R7|d_read~14_combout\ : std_logic;
SIGNAL \rf|Mux21~1_combout\ : std_logic;
SIGNAL \rf|Mux21~4_combout\ : std_logic;
SIGNAL \A|D2[1][10]~combout\ : std_logic;
SIGNAL \A|I|adderA[10]~6_combout\ : std_logic;
SIGNAL \A|I|adder|carry~10_combout\ : std_logic;
SIGNAL \A|I|rfD3[10]~19_combout\ : std_logic;
SIGNAL \A|rfD3[10]~19_combout\ : std_logic;
SIGNAL \A|D1[0][10]~combout\ : std_logic;
SIGNAL \A|D2[0][10]~combout\ : std_logic;
SIGNAL \A|R|adder|carry[10]~13_combout\ : std_logic;
SIGNAL \A|R|rfD3[10]~28_combout\ : std_logic;
SIGNAL \A|R|rfD3[10]~34_combout\ : std_logic;
SIGNAL \A|rfD3[10]~20_combout\ : std_logic;
SIGNAL \rf|dw[5][10]~combout\ : std_logic;
SIGNAL \rf|R5|d_read~13_combout\ : std_logic;
SIGNAL \rf|Mux5~0_combout\ : std_logic;
SIGNAL \rf|Mux5~1_combout\ : std_logic;
SIGNAL \rf|Mux5~2_combout\ : std_logic;
SIGNAL \rf|Mux5~3_combout\ : std_logic;
SIGNAL \rf|Mux5~4_combout\ : std_logic;
SIGNAL \A|D1[1][10]~combout\ : std_logic;
SIGNAL \rf|dw[4][11]~combout\ : std_logic;
SIGNAL \rf|R4|d_read~2_combout\ : std_logic;
SIGNAL \rf|dw[6][11]~combout\ : std_logic;
SIGNAL \rf|R6|d_read~2_combout\ : std_logic;
SIGNAL \rf|Mux20~0_combout\ : std_logic;
SIGNAL \rf|dw[5][11]~combout\ : std_logic;
SIGNAL \rf|R5|d_read~2_combout\ : std_logic;
SIGNAL \rf|Mux20~1_combout\ : std_logic;
SIGNAL \rf|dw[3][11]~combout\ : std_logic;
SIGNAL \rf|R3|d_read~2_combout\ : std_logic;
SIGNAL \rf|dw[0][11]~combout\ : std_logic;
SIGNAL \rf|R0|d_read~2_combout\ : std_logic;
SIGNAL \rf|dw[1][11]~combout\ : std_logic;
SIGNAL \rf|R1|d_read~2_combout\ : std_logic;
SIGNAL \rf|Mux20~2_combout\ : std_logic;
SIGNAL \rf|dw[2][11]~combout\ : std_logic;
SIGNAL \rf|R2|d_read~2_combout\ : std_logic;
SIGNAL \rf|Mux20~3_combout\ : std_logic;
SIGNAL \rf|Mux20~4_combout\ : std_logic;
SIGNAL \A|D2[0][11]~combout\ : std_logic;
SIGNAL \A|D1[0][11]~combout\ : std_logic;
SIGNAL \A|R|adder|carry[11]~15_combout\ : std_logic;
SIGNAL \A|R|adder|carry[11]~14_combout\ : std_logic;
SIGNAL \A|R|rfD3[11]~20_combout\ : std_logic;
SIGNAL \A|D2[1][11]~combout\ : std_logic;
SIGNAL \A|I|adderA[11]~5_combout\ : std_logic;
SIGNAL \A|I|rfD3[11]~6_combout\ : std_logic;
SIGNAL \A|I|rfD3[11]~7_combout\ : std_logic;
SIGNAL \A|rfD3[11]~4_combout\ : std_logic;
SIGNAL \A|rfD3[11]~5_combout\ : std_logic;
SIGNAL \rf|dw[7][11]~combout\ : std_logic;
SIGNAL \rf|R7|d_read~3_combout\ : std_logic;
SIGNAL \rf|Mux4~0_combout\ : std_logic;
SIGNAL \rf|Mux4~1_combout\ : std_logic;
SIGNAL \rf|Mux4~2_combout\ : std_logic;
SIGNAL \rf|Mux4~3_combout\ : std_logic;
SIGNAL \rf|Mux4~4_combout\ : std_logic;
SIGNAL \A|D1[1][11]~combout\ : std_logic;
SIGNAL \A|I|Equal4~5_combout\ : std_logic;
SIGNAL \A|I|Equal4~7_combout\ : std_logic;
SIGNAL \rf|dw[7][14]~combout\ : std_logic;
SIGNAL \rf|R7|d_read~16_combout\ : std_logic;
SIGNAL \rf|dw[6][14]~combout\ : std_logic;
SIGNAL \rf|R6|d_read~15_combout\ : std_logic;
SIGNAL \rf|dw[4][14]~combout\ : std_logic;
SIGNAL \rf|R4|d_read~15_combout\ : std_logic;
SIGNAL \rf|Mux17~0_combout\ : std_logic;
SIGNAL \rf|dw[5][14]~combout\ : std_logic;
SIGNAL \rf|R5|d_read~15_combout\ : std_logic;
SIGNAL \rf|Mux17~1_combout\ : std_logic;
SIGNAL \rf|dw[1][14]~combout\ : std_logic;
SIGNAL \rf|R1|d_read~15_combout\ : std_logic;
SIGNAL \rf|dw[0][14]~combout\ : std_logic;
SIGNAL \rf|R0|d_read~15_combout\ : std_logic;
SIGNAL \rf|Mux17~2_combout\ : std_logic;
SIGNAL \rf|dw[2][14]~combout\ : std_logic;
SIGNAL \rf|R2|d_read~15_combout\ : std_logic;
SIGNAL \rf|Mux17~3_combout\ : std_logic;
SIGNAL \rf|Mux17~4_combout\ : std_logic;
SIGNAL \A|D2[0][14]~combout\ : std_logic;
SIGNAL \A|D1[0][14]~combout\ : std_logic;
SIGNAL \rf|dw[5][13]~combout\ : std_logic;
SIGNAL \rf|R5|d_read~1_combout\ : std_logic;
SIGNAL \rf|dw[4][13]~combout\ : std_logic;
SIGNAL \rf|R4|d_read~1_combout\ : std_logic;
SIGNAL \rf|Mux2~0_combout\ : std_logic;
SIGNAL \rf|dw[7][13]~combout\ : std_logic;
SIGNAL \rf|R7|d_read~2_combout\ : std_logic;
SIGNAL \rf|Mux2~1_combout\ : std_logic;
SIGNAL \rf|dw[1][13]~combout\ : std_logic;
SIGNAL \rf|R1|d_read~1_combout\ : std_logic;
SIGNAL \rf|dw[0][13]~combout\ : std_logic;
SIGNAL \rf|R0|d_read~1_combout\ : std_logic;
SIGNAL \rf|Mux2~2_combout\ : std_logic;
SIGNAL \rf|dw[2][13]~combout\ : std_logic;
SIGNAL \rf|R2|d_read~1_combout\ : std_logic;
SIGNAL \rf|dw[3][13]~combout\ : std_logic;
SIGNAL \rf|R3|d_read~1_combout\ : std_logic;
SIGNAL \rf|Mux2~3_combout\ : std_logic;
SIGNAL \rf|Mux2~4_combout\ : std_logic;
SIGNAL \A|D1[1][13]~combout\ : std_logic;
SIGNAL \A|I|rfD3[12]~20_combout\ : std_logic;
SIGNAL \A|rfD3[12]~21_combout\ : std_logic;
SIGNAL \A|D1[0][12]~combout\ : std_logic;
SIGNAL \rf|dw[1][12]~combout\ : std_logic;
SIGNAL \rf|R1|d_read~14_combout\ : std_logic;
SIGNAL \rf|dw[0][12]~combout\ : std_logic;
SIGNAL \rf|R0|d_read~14_combout\ : std_logic;
SIGNAL \rf|Mux19~2_combout\ : std_logic;
SIGNAL \rf|dw[2][12]~combout\ : std_logic;
SIGNAL \rf|R2|d_read~14_combout\ : std_logic;
SIGNAL \rf|dw[3][12]~combout\ : std_logic;
SIGNAL \rf|R3|d_read~14_combout\ : std_logic;
SIGNAL \rf|Mux19~3_combout\ : std_logic;
SIGNAL \rf|dw[5][12]~combout\ : std_logic;
SIGNAL \rf|R5|d_read~14_combout\ : std_logic;
SIGNAL \rf|dw[6][12]~combout\ : std_logic;
SIGNAL \rf|R6|d_read~14_combout\ : std_logic;
SIGNAL \rf|Mux19~0_combout\ : std_logic;
SIGNAL \rf|dw[7][12]~combout\ : std_logic;
SIGNAL \rf|R7|d_read~15_combout\ : std_logic;
SIGNAL \rf|Mux19~1_combout\ : std_logic;
SIGNAL \rf|Mux19~4_combout\ : std_logic;
SIGNAL \A|D2[0][12]~combout\ : std_logic;
SIGNAL \A|R|adder|carry[12]~16_combout\ : std_logic;
SIGNAL \A|R|adder|Sum[12]~3_combout\ : std_logic;
SIGNAL \A|R|rfD3[12]~35_combout\ : std_logic;
SIGNAL \A|rfD3[12]~22_combout\ : std_logic;
SIGNAL \rf|dw[4][12]~combout\ : std_logic;
SIGNAL \rf|R4|d_read~14_combout\ : std_logic;
SIGNAL \rf|Mux3~0_combout\ : std_logic;
SIGNAL \rf|Mux3~1_combout\ : std_logic;
SIGNAL \rf|Mux3~2_combout\ : std_logic;
SIGNAL \rf|Mux3~3_combout\ : std_logic;
SIGNAL \rf|Mux3~4_combout\ : std_logic;
SIGNAL \A|D1[1][12]~combout\ : std_logic;
SIGNAL \A|D2[1][12]~combout\ : std_logic;
SIGNAL \A|I|adderA[12]~4_combout\ : std_logic;
SIGNAL \A|I|adder|carry~11_combout\ : std_logic;
SIGNAL \A|I|rfD3[13]~5_combout\ : std_logic;
SIGNAL \A|rfD3[13]~2_combout\ : std_logic;
SIGNAL \A|D1[0][13]~combout\ : std_logic;
SIGNAL \A|R|adder|carry[13]~17_combout\ : std_logic;
SIGNAL \A|R|adder|carry[13]~18_combout\ : std_logic;
SIGNAL \A|R|rfD3[13]~19_combout\ : std_logic;
SIGNAL \A|rfD3[13]~3_combout\ : std_logic;
SIGNAL \rf|dw[6][13]~combout\ : std_logic;
SIGNAL \rf|R6|d_read~1_combout\ : std_logic;
SIGNAL \rf|Mux18~0_combout\ : std_logic;
SIGNAL \rf|Mux18~1_combout\ : std_logic;
SIGNAL \rf|Mux18~2_combout\ : std_logic;
SIGNAL \rf|Mux18~3_combout\ : std_logic;
SIGNAL \rf|Mux18~4_combout\ : std_logic;
SIGNAL \A|D2[0][13]~combout\ : std_logic;
SIGNAL \A|R|adder|carry[14]~19_combout\ : std_logic;
SIGNAL \A|R|adder|Sum[14]~4_combout\ : std_logic;
SIGNAL \A|R|rfD3[14]~29_combout\ : std_logic;
SIGNAL \A|D2[1][14]~combout\ : std_logic;
SIGNAL \A|I|adderA[14]~2_combout\ : std_logic;
SIGNAL \A|I|rfD3[14]~21_combout\ : std_logic;
SIGNAL \A|rfD3[14]~23_combout\ : std_logic;
SIGNAL \A|rfD3[14]~24_combout\ : std_logic;
SIGNAL \rf|dw[3][14]~combout\ : std_logic;
SIGNAL \rf|R3|d_read~15_combout\ : std_logic;
SIGNAL \rf|Mux1~2_combout\ : std_logic;
SIGNAL \rf|Mux1~3_combout\ : std_logic;
SIGNAL \rf|Mux1~0_combout\ : std_logic;
SIGNAL \rf|Mux1~1_combout\ : std_logic;
SIGNAL \rf|Mux1~4_combout\ : std_logic;
SIGNAL \A|D1[1][14]~combout\ : std_logic;
SIGNAL \rf|dw[2][15]~combout\ : std_logic;
SIGNAL \rf|R2|d_read~0_combout\ : std_logic;
SIGNAL \rf|dw[0][15]~combout\ : std_logic;
SIGNAL \rf|R0|d_read~0_combout\ : std_logic;
SIGNAL \rf|dw[1][15]~combout\ : std_logic;
SIGNAL \rf|R1|d_read~0_combout\ : std_logic;
SIGNAL \rf|Mux16~2_combout\ : std_logic;
SIGNAL \rf|dw[3][15]~combout\ : std_logic;
SIGNAL \rf|R3|d_read~0_combout\ : std_logic;
SIGNAL \rf|Mux16~3_combout\ : std_logic;
SIGNAL \rf|dw[5][15]~combout\ : std_logic;
SIGNAL \rf|R5|d_read~0_combout\ : std_logic;
SIGNAL \rf|dw[6][15]~combout\ : std_logic;
SIGNAL \rf|R6|d_read~0_combout\ : std_logic;
SIGNAL \rf|dw[4][15]~combout\ : std_logic;
SIGNAL \rf|R4|d_read~0_combout\ : std_logic;
SIGNAL \rf|Mux16~0_combout\ : std_logic;
SIGNAL \rf|Mux16~1_combout\ : std_logic;
SIGNAL \rf|Mux16~4_combout\ : std_logic;
SIGNAL \A|D2[0][15]~combout\ : std_logic;
SIGNAL \A|D1[0][15]~combout\ : std_logic;
SIGNAL \A|R|adder|carry[15]~20_combout\ : std_logic;
SIGNAL \A|R|adder|carry[15]~21_combout\ : std_logic;
SIGNAL \A|R|rfD3[15]~18_combout\ : std_logic;
SIGNAL \A|D2[1][15]~combout\ : std_logic;
SIGNAL \A|I|adderA[15]~1_combout\ : std_logic;
SIGNAL \A|I|rfD3[15]~2_combout\ : std_logic;
SIGNAL \A|rfD3[15]~0_combout\ : std_logic;
SIGNAL \A|rfD3[15]~1_combout\ : std_logic;
SIGNAL \rf|dw[7][15]~combout\ : std_logic;
SIGNAL \rf|R7|d_read~1_combout\ : std_logic;
SIGNAL \rf|Mux0~0_combout\ : std_logic;
SIGNAL \rf|Mux0~1_combout\ : std_logic;
SIGNAL \rf|Mux0~2_combout\ : std_logic;
SIGNAL \rf|Mux0~3_combout\ : std_logic;
SIGNAL \rf|Mux0~4_combout\ : std_logic;
SIGNAL \A|D1[1][15]~combout\ : std_logic;
SIGNAL \A|I|Equal4~9_combout\ : std_logic;
SIGNAL \A|D2[1][13]~combout\ : std_logic;
SIGNAL \A|I|Equal4~8_combout\ : std_logic;
SIGNAL \A|I|Equal4~3_combout\ : std_logic;
SIGNAL \A|I|Equal4~2_combout\ : std_logic;
SIGNAL \A|I|Equal4~1_combout\ : std_logic;
SIGNAL \A|I|Equal4~0_combout\ : std_logic;
SIGNAL \A|I|Equal4~4_combout\ : std_logic;
SIGNAL \A|I|Equal4~10_combout\ : std_logic;
SIGNAL \A|Equal0~5_combout\ : std_logic;
SIGNAL \A|I|adderB[15]~2_combout\ : std_logic;
SIGNAL \A|I|adderB[0]~7_combout\ : std_logic;
SIGNAL \A|I|adderB[0]~7clkctrl_outclk\ : std_logic;
SIGNAL \A|I|adderA[13]~3_combout\ : std_logic;
SIGNAL \A|I|adder|carry~12_combout\ : std_logic;
SIGNAL \A|I|cout~combout\ : std_logic;
SIGNAL \A|R|adder|C~0_combout\ : std_logic;
SIGNAL \A|C_flag[3]~0_combout\ : std_logic;
SIGNAL \A|C_flag[3]~1_combout\ : std_logic;
SIGNAL \A|I|comb~4_combout\ : std_logic;
SIGNAL \A|I|C_ch~combout\ : std_logic;
SIGNAL \A|R|C_ch~combout\ : std_logic;
SIGNAL \A|C_flag[3]~2_combout\ : std_logic;
SIGNAL \A|Z_flag[3]~0_combout\ : std_logic;
SIGNAL \A|R|nor_for_Z~7_combout\ : std_logic;
SIGNAL \A|R|nor_for_Z~5_combout\ : std_logic;
SIGNAL \A|R|rfD3[8]~17_combout\ : std_logic;
SIGNAL \A|R|rfD3[6]~16_combout\ : std_logic;
SIGNAL \A|R|rfD3[4]~15_combout\ : std_logic;
SIGNAL \A|R|nor_for_Z~0_combout\ : std_logic;
SIGNAL \A|R|rfD3[2]~14_combout\ : std_logic;
SIGNAL \A|R|nor_for_Z~1_combout\ : std_logic;
SIGNAL \A|R|nor_for_Z~2_combout\ : std_logic;
SIGNAL \A|R|nor_for_Z~3_combout\ : std_logic;
SIGNAL \A|R|nor_for_Z~4_combout\ : std_logic;
SIGNAL \A|R|nor_for_Z~6_combout\ : std_logic;
SIGNAL \A|Z_flag[3]~1_combout\ : std_logic;
SIGNAL \A|Z_flag[3]~2_combout\ : std_logic;
SIGNAL \A|Z_flag[3]~4_combout\ : std_logic;
SIGNAL \A|Z_flag[3]~5_combout\ : std_logic;
SIGNAL \A|Z_flag[3]~6_combout\ : std_logic;
SIGNAL \A|Z_flag[3]~10_combout\ : std_logic;
SIGNAL \A|Z_flag[3]~7_combout\ : std_logic;
SIGNAL \A|Z_flag[3]~8_combout\ : std_logic;
SIGNAL \A|Z_flag[3]~9_combout\ : std_logic;
SIGNAL \A|Z_flag[3]~11_combout\ : std_logic;
SIGNAL \A|I|zout~0_combout\ : std_logic;
SIGNAL \A|I|adder|Z~0_combout\ : std_logic;
SIGNAL \A|I|adder|Z~3_combout\ : std_logic;
SIGNAL \A|I|adder|Z~4_combout\ : std_logic;
SIGNAL \A|I|adder|Z~5_combout\ : std_logic;
SIGNAL \A|I|adder|Z~1_combout\ : std_logic;
SIGNAL \A|I|adder|Z~2_combout\ : std_logic;
SIGNAL \A|I|adder|Z~6_combout\ : std_logic;
SIGNAL \A|I|zout~combout\ : std_logic;
SIGNAL \A|Z_flag[3]~3_combout\ : std_logic;
SIGNAL \A|Z_flag[3]~12_combout\ : std_logic;
SIGNAL \A|I|comb~5_combout\ : std_logic;
SIGNAL \A|I|Z_ch~combout\ : std_logic;
SIGNAL \A|Z_flag[3]~13_combout\ : std_logic;
SIGNAL \A|I|adder|Sum\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A|R|adder|Sum\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|R7|d_read\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|R5|d_read\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|R6|d_read\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|R4|d_read\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A|C_flag\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|R2|d_read\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|R1|d_read\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A|I|rfA2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \rf|R3|d_read\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf|R0|d_read\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A|J|rfA2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \A|J|rfA1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \A|J|rfD3\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A|J|rfA3\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \A|Z_flag\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A|R|adderA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A|R|adderB\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A|I|adderA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A|I|adderB\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A|rfA2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \A|rfA1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \A|I|rfA1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \A|rfD3\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A|rfA3\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \A|I|rfD3\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A|R|rfD3\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \A|I|rfA3\ : std_logic_vector(2 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_inp <= inp;
mA_write <= ww_mA_write;
mD_write <= ww_mD_write;
mA_read <= ww_mA_read;
ww_mD_read <= mD_read;
C <= ww_C;
Z <= ww_Z;
ww_clock <= clock;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\A|I|adderB[0]~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \A|I|adderB[0]~7_combout\);

\A|R|Cout~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \A|R|Cout~0_combout\);

\A|op_proc~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \A|op_proc~0_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\A|rfA1[2]~14clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \A|rfA1[2]~14_combout\);

\A|I|rfD3[15]~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \A|I|rfD3[15]~4_combout\);

\rf|Decoder0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rf|Decoder0~0_combout\);

\A|R|rfD3[14]~13clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \A|R|rfD3[14]~13_combout\);

\rf|Decoder0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rf|Decoder0~1_combout\);

\rf|Decoder0~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rf|Decoder0~2_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y13_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X15_Y0_N9
\mA_write[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_write[0]~output_o\);

-- Location: IOOBUF_X31_Y21_N23
\mA_write[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_write[1]~output_o\);

-- Location: IOOBUF_X10_Y22_N2
\mA_write[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_write[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\mA_write[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_write[3]~output_o\);

-- Location: IOOBUF_X31_Y3_N23
\mA_write[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_write[4]~output_o\);

-- Location: IOOBUF_X17_Y0_N16
\mA_write[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_write[5]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\mA_write[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_write[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\mA_write[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_write[7]~output_o\);

-- Location: IOOBUF_X17_Y0_N9
\mA_write[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_write[8]~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\mA_write[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_write[9]~output_o\);

-- Location: IOOBUF_X3_Y10_N9
\mA_write[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_write[10]~output_o\);

-- Location: IOOBUF_X17_Y25_N23
\mA_write[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_write[11]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\mA_write[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_write[12]~output_o\);

-- Location: IOOBUF_X31_Y4_N2
\mA_write[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_write[13]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\mA_write[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_write[14]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\mA_write[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_write[15]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\mD_write[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mD_write[0]~output_o\);

-- Location: IOOBUF_X31_Y22_N9
\mD_write[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mD_write[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\mD_write[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mD_write[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\mD_write[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mD_write[3]~output_o\);

-- Location: IOOBUF_X31_Y17_N2
\mD_write[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mD_write[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\mD_write[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mD_write[5]~output_o\);

-- Location: IOOBUF_X31_Y11_N23
\mD_write[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mD_write[6]~output_o\);

-- Location: IOOBUF_X1_Y10_N16
\mD_write[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mD_write[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N2
\mD_write[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mD_write[8]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\mD_write[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mD_write[9]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\mD_write[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mD_write[10]~output_o\);

-- Location: IOOBUF_X31_Y13_N16
\mD_write[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mD_write[11]~output_o\);

-- Location: IOOBUF_X22_Y25_N9
\mD_write[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mD_write[12]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\mD_write[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mD_write[13]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\mD_write[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mD_write[14]~output_o\);

-- Location: IOOBUF_X31_Y3_N16
\mD_write[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mD_write[15]~output_o\);

-- Location: IOOBUF_X31_Y11_N9
\mA_read[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_read[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\mA_read[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_read[1]~output_o\);

-- Location: IOOBUF_X31_Y12_N9
\mA_read[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_read[2]~output_o\);

-- Location: IOOBUF_X19_Y25_N9
\mA_read[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_read[3]~output_o\);

-- Location: IOOBUF_X22_Y25_N16
\mA_read[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_read[4]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\mA_read[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_read[5]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\mA_read[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_read[6]~output_o\);

-- Location: IOOBUF_X19_Y25_N16
\mA_read[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_read[7]~output_o\);

-- Location: IOOBUF_X19_Y25_N30
\mA_read[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_read[8]~output_o\);

-- Location: IOOBUF_X22_Y25_N23
\mA_read[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_read[9]~output_o\);

-- Location: IOOBUF_X29_Y25_N9
\mA_read[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_read[10]~output_o\);

-- Location: IOOBUF_X13_Y25_N16
\mA_read[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_read[11]~output_o\);

-- Location: IOOBUF_X31_Y5_N2
\mA_read[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_read[12]~output_o\);

-- Location: IOOBUF_X31_Y17_N16
\mA_read[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_read[13]~output_o\);

-- Location: IOOBUF_X29_Y25_N16
\mA_read[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_read[14]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\mA_read[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mA_read[15]~output_o\);

-- Location: IOOBUF_X10_Y16_N2
\C~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|C_flag\(3),
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X17_Y25_N2
\Z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A|Z_flag\(3),
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOIBUF_X10_Y18_N1
\inp[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(1),
	o => \inp[1]~input_o\);

-- Location: IOIBUF_X10_Y18_N8
\inp[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(15),
	o => \inp[15]~input_o\);

-- Location: IOIBUF_X10_Y19_N22
\inp[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(14),
	o => \inp[14]~input_o\);

-- Location: IOIBUF_X10_Y17_N1
\inp[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(12),
	o => \inp[12]~input_o\);

-- Location: LCCOMB_X14_Y13_N4
\A|op_proc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|op_proc~0_combout\ = (!\inp[15]~input_o\ & (!\inp[14]~input_o\ & !\inp[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp[15]~input_o\,
	datac => \inp[14]~input_o\,
	datad => \inp[12]~input_o\,
	combout => \A|op_proc~0_combout\);

-- Location: IOIBUF_X10_Y17_N8
\inp[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(13),
	o => \inp[13]~input_o\);

-- Location: LCCOMB_X17_Y14_N14
\A|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Equal0~1_combout\ = (!\inp[15]~input_o\ & (!\inp[14]~input_o\ & (!\inp[13]~input_o\ & \inp[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[15]~input_o\,
	datab => \inp[14]~input_o\,
	datac => \inp[13]~input_o\,
	datad => \inp[12]~input_o\,
	combout => \A|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y14_N30
\A|op_proc~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|op_proc~1_combout\ = (!\inp[13]~input_o\ & ((\inp[14]~input_o\ & ((!\inp[12]~input_o\) # (!\inp[15]~input_o\))) # (!\inp[14]~input_o\ & ((\inp[15]~input_o\) # (\inp[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[13]~input_o\,
	datab => \inp[14]~input_o\,
	datac => \inp[15]~input_o\,
	datad => \inp[12]~input_o\,
	combout => \A|op_proc~1_combout\);

-- Location: IOIBUF_X0_Y6_N15
\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G3
\clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X10_Y15_N22
\inp[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(9),
	o => \inp[9]~input_o\);

-- Location: LCCOMB_X11_Y16_N28
\A|J|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|J|Mux19~0_combout\ = (\inp[13]~input_o\ & (!\inp[15]~input_o\ & \inp[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp[13]~input_o\,
	datac => \inp[15]~input_o\,
	datad => \inp[14]~input_o\,
	combout => \A|J|Mux19~0_combout\);

-- Location: FF_X11_Y14_N1
\A|J|rfA1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inp[9]~input_o\,
	sload => VCC,
	ena => \A|J|Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|J|rfA1\(0));

-- Location: LCCOMB_X17_Y14_N4
\A|I|comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|comb~6_combout\ = ((\inp[13]~input_o\) # ((\inp[14]~input_o\ & \inp[12]~input_o\))) # (!\inp[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[15]~input_o\,
	datab => \inp[14]~input_o\,
	datac => \inp[13]~input_o\,
	datad => \inp[12]~input_o\,
	combout => \A|I|comb~6_combout\);

-- Location: LCCOMB_X17_Y14_N28
\A|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Equal0~2_combout\ = (!\inp[15]~input_o\ & (\inp[14]~input_o\ & (!\inp[13]~input_o\ & !\inp[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[15]~input_o\,
	datab => \inp[14]~input_o\,
	datac => \inp[13]~input_o\,
	datad => \inp[12]~input_o\,
	combout => \A|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y14_N12
\A|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Equal0~3_combout\ = (!\inp[15]~input_o\ & (\inp[14]~input_o\ & (!\inp[13]~input_o\ & \inp[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[15]~input_o\,
	datab => \inp[14]~input_o\,
	datac => \inp[13]~input_o\,
	datad => \inp[12]~input_o\,
	combout => \A|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y14_N16
\A|I|rfA1[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA1[2]~11_combout\ = (\A|Equal0~1_combout\) # ((\A|Equal0~3_combout\) # ((!\A|I|comb~6_combout\ & !\A|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|comb~6_combout\,
	datab => \A|Equal0~2_combout\,
	datac => \A|Equal0~1_combout\,
	datad => \A|Equal0~3_combout\,
	combout => \A|I|rfA1[2]~11_combout\);

-- Location: IOIBUF_X10_Y19_N15
\inp[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(6),
	o => \inp[6]~input_o\);

-- Location: LCCOMB_X11_Y14_N14
\A|I|rfA1[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA1[0]~12_combout\ = (!\inp[13]~input_o\ & (\inp[12]~input_o\ $ (\inp[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[13]~input_o\,
	datab => \inp[12]~input_o\,
	datad => \inp[15]~input_o\,
	combout => \A|I|rfA1[0]~12_combout\);

-- Location: LCCOMB_X11_Y14_N20
\A|I|rfA1[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA1[0]~8_combout\ = (\A|I|rfA1[0]~12_combout\ & ((\inp[9]~input_o\))) # (!\A|I|rfA1[0]~12_combout\ & (\inp[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp[6]~input_o\,
	datac => \inp[9]~input_o\,
	datad => \A|I|rfA1[0]~12_combout\,
	combout => \A|I|rfA1[0]~8_combout\);

-- Location: LCCOMB_X11_Y14_N22
\A|I|rfA1[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA1\(0) = (\A|I|rfA1[2]~11_combout\ & ((\A|I|rfA1[0]~8_combout\))) # (!\A|I|rfA1[2]~11_combout\ & (\A|I|rfA1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfA1\(0),
	datac => \A|I|rfA1[2]~11_combout\,
	datad => \A|I|rfA1[0]~8_combout\,
	combout => \A|I|rfA1\(0));

-- Location: LCCOMB_X11_Y14_N2
\A|rfA1[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA1[0]~8_combout\ = (\A|op_proc~0_combout\ & ((\inp[9]~input_o\))) # (!\A|op_proc~0_combout\ & (\A|I|rfA1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfA1\(0),
	datac => \inp[9]~input_o\,
	datad => \A|op_proc~0_combout\,
	combout => \A|rfA1[0]~8_combout\);

-- Location: LCCOMB_X11_Y14_N0
\A|rfA1[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA1[0]~9_combout\ = (\A|op_proc~1_combout\ & (((\A|rfA1[0]~8_combout\)))) # (!\A|op_proc~1_combout\ & ((\A|op_proc~0_combout\ & ((\A|rfA1[0]~8_combout\))) # (!\A|op_proc~0_combout\ & (\A|J|rfA1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~1_combout\,
	datab => \A|op_proc~0_combout\,
	datac => \A|J|rfA1\(0),
	datad => \A|rfA1[0]~8_combout\,
	combout => \A|rfA1[0]~9_combout\);

-- Location: LCCOMB_X14_Y13_N8
\A|rfA1[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA1[2]~14_combout\ = ((!\inp[13]~input_o\ & ((!\inp[12]~input_o\) # (!\inp[14]~input_o\)))) # (!\inp[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[13]~input_o\,
	datab => \inp[15]~input_o\,
	datac => \inp[14]~input_o\,
	datad => \inp[12]~input_o\,
	combout => \A|rfA1[2]~14_combout\);

-- Location: CLKCTRL_G2
\A|rfA1[2]~14clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \A|rfA1[2]~14clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \A|rfA1[2]~14clkctrl_outclk\);

-- Location: LCCOMB_X11_Y14_N16
\A|rfA1[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA1\(0) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfA1[0]~9_combout\))) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfA1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfA1\(0),
	datac => \A|rfA1[0]~9_combout\,
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfA1\(0));

-- Location: LCCOMB_X16_Y13_N4
\rf_write_process~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf_write_process~0_combout\ = ((\inp[15]~input_o\) # (!\inp[14]~input_o\)) # (!\inp[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp[12]~input_o\,
	datac => \inp[14]~input_o\,
	datad => \inp[15]~input_o\,
	combout => \rf_write_process~0_combout\);

-- Location: FF_X16_Y13_N13
rf_write_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf_write_process~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf_write_en~q\);

-- Location: LCCOMB_X15_Y17_N26
\A|I|rfD3[15]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[15]~22_combout\ = (!\inp[13]~input_o\ & ((\inp[15]~input_o\ & (!\inp[12]~input_o\)) # (!\inp[15]~input_o\ & (\inp[12]~input_o\ & !\inp[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[13]~input_o\,
	datab => \inp[15]~input_o\,
	datac => \inp[12]~input_o\,
	datad => \inp[14]~input_o\,
	combout => \A|I|rfD3[15]~22_combout\);

-- Location: LCCOMB_X15_Y17_N0
\A|I|adderB[15]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderB[15]~4_combout\ = (!\inp[13]~input_o\ & (!\inp[15]~input_o\ & ((\inp[12]~input_o\) # (\inp[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[12]~input_o\,
	datab => \inp[14]~input_o\,
	datac => \inp[13]~input_o\,
	datad => \inp[15]~input_o\,
	combout => \A|I|adderB[15]~4_combout\);

-- Location: IOIBUF_X10_Y16_N8
\inp[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(8),
	o => \inp[8]~input_o\);

-- Location: LCCOMB_X15_Y17_N14
\A|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Equal0~4_combout\ = (!\inp[13]~input_o\ & (\inp[15]~input_o\ & (\inp[14]~input_o\ & !\inp[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[13]~input_o\,
	datab => \inp[15]~input_o\,
	datac => \inp[14]~input_o\,
	datad => \inp[12]~input_o\,
	combout => \A|Equal0~4_combout\);

-- Location: LCCOMB_X15_Y17_N10
\A|I|adderB[8]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderB[8]~3_combout\ = (\inp[8]~input_o\ & !\A|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[8]~input_o\,
	datad => \A|Equal0~4_combout\,
	combout => \A|I|adderB[8]~3_combout\);

-- Location: LCCOMB_X15_Y17_N12
\A|I|adderB[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderB\(8) = (!\A|I|adderB[15]~4_combout\ & ((\A|I|adderB[15]~2_combout\ & ((\A|I|adderB[8]~3_combout\))) # (!\A|I|adderB[15]~2_combout\ & (\A|I|adderB\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderB[15]~4_combout\,
	datab => \A|I|adderB\(8),
	datac => \A|I|adderB[15]~2_combout\,
	datad => \A|I|adderB[8]~3_combout\,
	combout => \A|I|adderB\(8));

-- Location: CLKCTRL_G9
\A|op_proc~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \A|op_proc~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \A|op_proc~0clkctrl_outclk\);

-- Location: LCCOMB_X17_Y12_N26
\A|D1[0][8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[0][8]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\rf|Mux7~4_combout\)) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\A|D1[0][8]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux7~4_combout\,
	datac => \A|D1[0][8]~combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D1[0][8]~combout\);

-- Location: IOIBUF_X10_Y18_N22
\inp[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(7),
	o => \inp[7]~input_o\);

-- Location: IOIBUF_X10_Y18_N15
\inp[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(5),
	o => \inp[5]~input_o\);

-- Location: IOIBUF_X10_Y15_N1
\inp[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(3),
	o => \inp[3]~input_o\);

-- Location: IOIBUF_X10_Y19_N1
\inp[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(2),
	o => \inp[2]~input_o\);

-- Location: IOIBUF_X17_Y25_N15
\inp[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(4),
	o => \inp[4]~input_o\);

-- Location: LCCOMB_X14_Y18_N28
\A|J|Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|J|Mux23~0_combout\ = (!\inp[5]~input_o\ & (!\inp[4]~input_o\ & ((\inp[3]~input_o\) # (\inp[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[5]~input_o\,
	datab => \inp[3]~input_o\,
	datac => \inp[2]~input_o\,
	datad => \inp[4]~input_o\,
	combout => \A|J|Mux23~0_combout\);

-- Location: LCCOMB_X14_Y18_N22
\A|J|Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|J|Mux23~1_combout\ = (\inp[6]~input_o\) # ((\inp[7]~input_o\) # (\A|J|Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp[6]~input_o\,
	datac => \inp[7]~input_o\,
	datad => \A|J|Mux23~0_combout\,
	combout => \A|J|Mux23~1_combout\);

-- Location: LCCOMB_X14_Y14_N22
\A|J|rfA2[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|J|rfA2[1]~0_combout\ = (((\inp[15]~input_o\) # (!\inp[14]~input_o\)) # (!\inp[13]~input_o\)) # (!\inp[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[12]~input_o\,
	datab => \inp[13]~input_o\,
	datac => \inp[15]~input_o\,
	datad => \inp[14]~input_o\,
	combout => \A|J|rfA2[1]~0_combout\);

-- Location: LCCOMB_X14_Y14_N6
\A|J|rfA2[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|J|rfA2[1]~1_combout\ = (\inp[6]~input_o\) # ((\inp[7]~input_o\) # ((\inp[5]~input_o\) # (\inp[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[6]~input_o\,
	datab => \inp[7]~input_o\,
	datac => \inp[5]~input_o\,
	datad => \inp[4]~input_o\,
	combout => \A|J|rfA2[1]~1_combout\);

-- Location: IOIBUF_X10_Y19_N8
\inp[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(0),
	o => \inp[0]~input_o\);

-- Location: LCCOMB_X14_Y14_N14
\A|J|rfA2[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|J|rfA2[1]~2_combout\ = (!\inp[2]~input_o\ & (!\inp[3]~input_o\ & (!\inp[0]~input_o\ & !\inp[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[2]~input_o\,
	datab => \inp[3]~input_o\,
	datac => \inp[0]~input_o\,
	datad => \inp[1]~input_o\,
	combout => \A|J|rfA2[1]~2_combout\);

-- Location: LCCOMB_X14_Y14_N12
\A|J|rfA2[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|J|rfA2[1]~3_combout\ = (!\A|J|rfA2[1]~0_combout\ & ((\A|J|rfA2[1]~1_combout\) # (!\A|J|rfA2[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|J|rfA2[1]~0_combout\,
	datab => \A|J|rfA2[1]~1_combout\,
	datac => \A|J|rfA2[1]~2_combout\,
	combout => \A|J|rfA2[1]~3_combout\);

-- Location: FF_X14_Y14_N27
\A|J|rfA2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \A|J|Mux23~1_combout\,
	sload => VCC,
	ena => \A|J|rfA2[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|J|rfA2\(1));

-- Location: LCCOMB_X17_Y14_N26
\A|I|rfA2[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA2[1]~1_combout\ = (\inp[7]~input_o\) # ((!\A|Equal0~3_combout\ & (!\A|Equal0~2_combout\ & \A|I|Equal4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Equal0~3_combout\,
	datab => \A|Equal0~2_combout\,
	datac => \A|I|Equal4~10_combout\,
	datad => \inp[7]~input_o\,
	combout => \A|I|rfA2[1]~1_combout\);

-- Location: LCCOMB_X15_Y17_N4
\A|I|adderA[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA[0]~0_combout\ = (!\inp[13]~input_o\ & (\inp[14]~input_o\ & ((!\inp[12]~input_o\) # (!\inp[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[13]~input_o\,
	datab => \inp[15]~input_o\,
	datac => \inp[14]~input_o\,
	datad => \inp[12]~input_o\,
	combout => \A|I|adderA[0]~0_combout\);

-- Location: LCCOMB_X16_Y17_N28
\A|I|adderA[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA[0]~17_combout\ = (!\A|Equal0~1_combout\ & \A|I|adderA[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|Equal0~1_combout\,
	datad => \A|I|adderA[0]~0_combout\,
	combout => \A|I|adderA[0]~17_combout\);

-- Location: LCCOMB_X16_Y17_N30
\A|I|rfA2[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA2\(1) = (\A|I|adderA[0]~17_combout\ & (\A|I|rfA2[1]~1_combout\)) # (!\A|I|adderA[0]~17_combout\ & ((\A|I|rfA2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfA2[1]~1_combout\,
	datac => \A|I|rfA2\(1),
	datad => \A|I|adderA[0]~17_combout\,
	combout => \A|I|rfA2\(1));

-- Location: LCCOMB_X14_Y14_N20
\A|rfA2[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA2[1]~2_combout\ = (\A|op_proc~0_combout\ & (\inp[7]~input_o\)) # (!\A|op_proc~0_combout\ & ((\A|I|rfA2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp[7]~input_o\,
	datac => \A|I|rfA2\(1),
	datad => \A|op_proc~0_combout\,
	combout => \A|rfA2[1]~2_combout\);

-- Location: LCCOMB_X14_Y14_N26
\A|rfA2[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA2[1]~3_combout\ = (\A|op_proc~0_combout\ & (((\A|rfA2[1]~2_combout\)))) # (!\A|op_proc~0_combout\ & ((\A|op_proc~1_combout\ & ((\A|rfA2[1]~2_combout\))) # (!\A|op_proc~1_combout\ & (\A|J|rfA2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~0_combout\,
	datab => \A|op_proc~1_combout\,
	datac => \A|J|rfA2\(1),
	datad => \A|rfA2[1]~2_combout\,
	combout => \A|rfA2[1]~3_combout\);

-- Location: LCCOMB_X14_Y14_N28
\A|rfA2[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA2\(1) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfA2[1]~3_combout\))) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfA2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfA2\(1),
	datac => \A|rfA2[1]~3_combout\,
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfA2\(1));

-- Location: IOIBUF_X10_Y15_N8
\inp[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(10),
	o => \inp[10]~input_o\);

-- Location: LCCOMB_X15_Y13_N6
\A|I|rfA3[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA3[1]~3_combout\ = (\A|Equal0~1_combout\ & (((\inp[7]~input_o\)))) # (!\A|Equal0~1_combout\ & ((\inp[10]~input_o\) # ((!\A|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[10]~input_o\,
	datab => \inp[7]~input_o\,
	datac => \A|Equal0~2_combout\,
	datad => \A|Equal0~1_combout\,
	combout => \A|I|rfA3[1]~3_combout\);

-- Location: LCCOMB_X17_Y14_N30
\A|I|rfA3[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA3[2]~1_combout\ = (\A|Equal0~1_combout\) # ((!\A|Equal0~3_combout\ & ((\A|Equal0~2_combout\) # (!\A|I|comb~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Equal0~2_combout\,
	datab => \A|Equal0~1_combout\,
	datac => \A|I|comb~6_combout\,
	datad => \A|Equal0~3_combout\,
	combout => \A|I|rfA3[2]~1_combout\);

-- Location: LCCOMB_X14_Y13_N10
\A|I|rfA3[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA3\(1) = (\A|I|rfA3[2]~1_combout\ & (\A|I|rfA3[1]~3_combout\)) # (!\A|I|rfA3[2]~1_combout\ & ((\A|I|rfA3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfA3[1]~3_combout\,
	datac => \A|I|rfA3[2]~1_combout\,
	datad => \A|I|rfA3\(1),
	combout => \A|I|rfA3\(1));

-- Location: LCCOMB_X14_Y13_N30
\A|J|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|J|Mux3~0_combout\ = (\inp[13]~input_o\ & (!\inp[15]~input_o\ & (!\inp[14]~input_o\ & \inp[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[13]~input_o\,
	datab => \inp[15]~input_o\,
	datac => \inp[14]~input_o\,
	datad => \inp[12]~input_o\,
	combout => \A|J|Mux3~0_combout\);

-- Location: FF_X14_Y13_N19
\A|J|rfA3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inp[10]~input_o\,
	sload => VCC,
	ena => \A|J|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|J|rfA3\(1));

-- Location: LCCOMB_X14_Y13_N18
\A|rfA3[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA3[1]~4_combout\ = (!\A|op_proc~0_combout\ & ((\A|op_proc~1_combout\ & (\A|I|rfA3\(1))) # (!\A|op_proc~1_combout\ & ((\A|J|rfA3\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfA3\(1),
	datab => \A|op_proc~0_combout\,
	datac => \A|J|rfA3\(1),
	datad => \A|op_proc~1_combout\,
	combout => \A|rfA3[1]~4_combout\);

-- Location: LCCOMB_X14_Y13_N22
\A|rfA3[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA3[1]~5_combout\ = (\A|rfA3[1]~4_combout\) # ((\A|op_proc~0_combout\ & \inp[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfA3[1]~4_combout\,
	datac => \A|op_proc~0_combout\,
	datad => \inp[4]~input_o\,
	combout => \A|rfA3[1]~5_combout\);

-- Location: LCCOMB_X14_Y13_N26
\A|rfA3[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA3\(1) = (\A|rfA1[2]~14_combout\ & (\A|rfA3[1]~5_combout\)) # (!\A|rfA1[2]~14_combout\ & ((\A|rfA3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA3[1]~5_combout\,
	datac => \A|rfA1[2]~14_combout\,
	datad => \A|rfA3\(1),
	combout => \A|rfA3\(1));

-- Location: FF_X17_Y13_N25
\A|J|rfA3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inp[9]~input_o\,
	sload => VCC,
	ena => \A|J|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|J|rfA3\(0));

-- Location: LCCOMB_X17_Y13_N4
\A|I|rfA3[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA3[0]~2_combout\ = (\A|Equal0~1_combout\ & (((\inp[6]~input_o\)))) # (!\A|Equal0~1_combout\ & ((\inp[9]~input_o\) # ((!\A|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[9]~input_o\,
	datab => \A|Equal0~2_combout\,
	datac => \A|Equal0~1_combout\,
	datad => \inp[6]~input_o\,
	combout => \A|I|rfA3[0]~2_combout\);

-- Location: LCCOMB_X17_Y13_N0
\A|I|rfA3[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA3\(0) = (\A|I|rfA3[2]~1_combout\ & (\A|I|rfA3[0]~2_combout\)) # (!\A|I|rfA3[2]~1_combout\ & ((\A|I|rfA3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfA3[2]~1_combout\,
	datab => \A|I|rfA3[0]~2_combout\,
	datad => \A|I|rfA3\(0),
	combout => \A|I|rfA3\(0));

-- Location: LCCOMB_X17_Y13_N24
\A|rfA3[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA3[0]~2_combout\ = (!\A|op_proc~0_combout\ & ((\A|op_proc~1_combout\ & ((\A|I|rfA3\(0)))) # (!\A|op_proc~1_combout\ & (\A|J|rfA3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~1_combout\,
	datab => \A|op_proc~0_combout\,
	datac => \A|J|rfA3\(0),
	datad => \A|I|rfA3\(0),
	combout => \A|rfA3[0]~2_combout\);

-- Location: LCCOMB_X17_Y13_N2
\A|rfA3[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA3[0]~3_combout\ = (\A|rfA3[0]~2_combout\) # ((\inp[3]~input_o\ & \A|op_proc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[3]~input_o\,
	datac => \A|op_proc~0_combout\,
	datad => \A|rfA3[0]~2_combout\,
	combout => \A|rfA3[0]~3_combout\);

-- Location: LCCOMB_X17_Y13_N28
\A|rfA3[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA3\(0) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfA3[0]~3_combout\)) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfA3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA3[0]~3_combout\,
	datab => \A|rfA3\(0),
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfA3\(0));

-- Location: IOIBUF_X10_Y15_N15
\inp[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(11),
	o => \inp[11]~input_o\);

-- Location: LCCOMB_X14_Y13_N16
\A|I|rfA3[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA3[2]~0_combout\ = (\A|Equal0~1_combout\ & (((\inp[8]~input_o\)))) # (!\A|Equal0~1_combout\ & ((\inp[11]~input_o\) # ((!\A|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[11]~input_o\,
	datab => \A|Equal0~1_combout\,
	datac => \inp[8]~input_o\,
	datad => \A|Equal0~2_combout\,
	combout => \A|I|rfA3[2]~0_combout\);

-- Location: LCCOMB_X14_Y13_N6
\A|I|rfA3[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA3\(2) = (\A|I|rfA3[2]~1_combout\ & (\A|I|rfA3[2]~0_combout\)) # (!\A|I|rfA3[2]~1_combout\ & ((\A|I|rfA3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|rfA3[2]~1_combout\,
	datac => \A|I|rfA3[2]~0_combout\,
	datad => \A|I|rfA3\(2),
	combout => \A|I|rfA3\(2));

-- Location: FF_X14_Y13_N3
\A|J|rfA3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inp[11]~input_o\,
	sload => VCC,
	ena => \A|J|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|J|rfA3\(2));

-- Location: LCCOMB_X14_Y13_N2
\A|rfA3[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA3[2]~0_combout\ = (!\A|op_proc~0_combout\ & ((\A|op_proc~1_combout\ & (\A|I|rfA3\(2))) # (!\A|op_proc~1_combout\ & ((\A|J|rfA3\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfA3\(2),
	datab => \A|op_proc~0_combout\,
	datac => \A|J|rfA3\(2),
	datad => \A|op_proc~1_combout\,
	combout => \A|rfA3[2]~0_combout\);

-- Location: LCCOMB_X14_Y13_N24
\A|rfA3[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA3[2]~1_combout\ = (\A|rfA3[2]~0_combout\) # ((\A|op_proc~0_combout\ & \inp[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfA3[2]~0_combout\,
	datac => \A|op_proc~0_combout\,
	datad => \inp[5]~input_o\,
	combout => \A|rfA3[2]~1_combout\);

-- Location: LCCOMB_X14_Y13_N20
\A|rfA3[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA3\(2) = (\A|rfA1[2]~14_combout\ & ((\A|rfA3[2]~1_combout\))) # (!\A|rfA1[2]~14_combout\ & (\A|rfA3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfA3\(2),
	datac => \A|rfA3[2]~1_combout\,
	datad => \A|rfA1[2]~14_combout\,
	combout => \A|rfA3\(2));

-- Location: LCCOMB_X15_Y13_N26
\rf|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Decoder0~2_combout\ = (!\A|rfA3\(1) & (!\A|rfA3\(0) & \A|rfA3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA3\(1),
	datac => \A|rfA3\(0),
	datad => \A|rfA3\(2),
	combout => \rf|Decoder0~2_combout\);

-- Location: CLKCTRL_G8
\rf|Decoder0~2clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rf|Decoder0~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rf|Decoder0~2clkctrl_outclk\);

-- Location: LCCOMB_X17_Y12_N28
\rf|dw[4][8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[4][8]~combout\ = (GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & (\A|rfD3\(8))) # (!GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & ((\rf|dw[4][8]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(8),
	datab => \rf|dw[4][8]~combout\,
	datad => \rf|Decoder0~2clkctrl_outclk\,
	combout => \rf|dw[4][8]~combout\);

-- Location: LCCOMB_X17_Y12_N4
\rf|R4|d_read~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R4|d_read~12_combout\ = (\rf_write_en~q\ & \rf|dw[4][8]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[4][8]~combout\,
	combout => \rf|R4|d_read~12_combout\);

-- Location: IOIBUF_X6_Y10_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X16_Y13_N20
\rf|R7|d_read[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R7|d_read[15]~0_combout\ = (\reset~input_o\) # (\rf_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \rf_write_en~q\,
	combout => \rf|R7|d_read[15]~0_combout\);

-- Location: FF_X17_Y12_N5
\rf|R4|d_read[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R4|d_read~12_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R4|d_read\(8));

-- Location: LCCOMB_X14_Y13_N12
\rf|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Decoder0~1_combout\ = (!\A|rfA3\(0) & (\A|rfA3\(1) & \A|rfA3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA3\(0),
	datac => \A|rfA3\(1),
	datad => \A|rfA3\(2),
	combout => \rf|Decoder0~1_combout\);

-- Location: CLKCTRL_G0
\rf|Decoder0~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rf|Decoder0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rf|Decoder0~1clkctrl_outclk\);

-- Location: LCCOMB_X17_Y12_N20
\rf|dw[6][8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[6][8]~combout\ = (GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & (\A|rfD3\(8))) # (!GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & ((\rf|dw[6][8]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(8),
	datac => \rf|Decoder0~1clkctrl_outclk\,
	datad => \rf|dw[6][8]~combout\,
	combout => \rf|dw[6][8]~combout\);

-- Location: LCCOMB_X17_Y12_N2
\rf|R6|d_read~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R6|d_read~12_combout\ = (\rf_write_en~q\ & \rf|dw[6][8]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[6][8]~combout\,
	combout => \rf|R6|d_read~12_combout\);

-- Location: FF_X17_Y12_N3
\rf|R6|d_read[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R6|d_read~12_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R6|d_read\(8));

-- Location: LCCOMB_X14_Y14_N0
\A|J|Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|J|Mux24~0_combout\ = (!\inp[4]~input_o\ & ((\inp[3]~input_o\) # ((!\inp[2]~input_o\ & \inp[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[4]~input_o\,
	datab => \inp[3]~input_o\,
	datac => \inp[2]~input_o\,
	datad => \inp[1]~input_o\,
	combout => \A|J|Mux24~0_combout\);

-- Location: LCCOMB_X14_Y14_N18
\A|J|Mux24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|J|Mux24~1_combout\ = (\inp[7]~input_o\) # ((!\inp[6]~input_o\ & ((\inp[5]~input_o\) # (\A|J|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[6]~input_o\,
	datab => \inp[7]~input_o\,
	datac => \inp[5]~input_o\,
	datad => \A|J|Mux24~0_combout\,
	combout => \A|J|Mux24~1_combout\);

-- Location: FF_X14_Y14_N5
\A|J|rfA2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \A|J|Mux24~1_combout\,
	sload => VCC,
	ena => \A|J|rfA2[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|J|rfA2\(0));

-- Location: LCCOMB_X17_Y14_N0
\A|I|rfA2[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA2[0]~0_combout\ = (\inp[6]~input_o\) # ((\A|I|Equal4~10_combout\ & (!\A|Equal0~2_combout\ & !\A|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|Equal4~10_combout\,
	datab => \inp[6]~input_o\,
	datac => \A|Equal0~2_combout\,
	datad => \A|Equal0~3_combout\,
	combout => \A|I|rfA2[0]~0_combout\);

-- Location: LCCOMB_X17_Y14_N10
\A|I|rfA2[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA2\(0) = (\A|I|adderA[0]~17_combout\ & ((\A|I|rfA2[0]~0_combout\))) # (!\A|I|adderA[0]~17_combout\ & (\A|I|rfA2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfA2\(0),
	datac => \A|I|rfA2[0]~0_combout\,
	datad => \A|I|adderA[0]~17_combout\,
	combout => \A|I|rfA2\(0));

-- Location: LCCOMB_X14_Y14_N2
\A|rfA2[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA2[0]~0_combout\ = (\A|op_proc~0_combout\ & (\inp[6]~input_o\)) # (!\A|op_proc~0_combout\ & ((\A|I|rfA2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[6]~input_o\,
	datab => \A|I|rfA2\(0),
	datad => \A|op_proc~0_combout\,
	combout => \A|rfA2[0]~0_combout\);

-- Location: LCCOMB_X14_Y14_N4
\A|rfA2[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA2[0]~1_combout\ = (\A|op_proc~0_combout\ & (((\A|rfA2[0]~0_combout\)))) # (!\A|op_proc~0_combout\ & ((\A|op_proc~1_combout\ & ((\A|rfA2[0]~0_combout\))) # (!\A|op_proc~1_combout\ & (\A|J|rfA2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~0_combout\,
	datab => \A|op_proc~1_combout\,
	datac => \A|J|rfA2\(0),
	datad => \A|rfA2[0]~0_combout\,
	combout => \A|rfA2[0]~1_combout\);

-- Location: LCCOMB_X14_Y14_N16
\A|rfA2[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA2\(0) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfA2[0]~1_combout\))) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfA2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfA2\(0),
	datac => \A|rfA2[0]~1_combout\,
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfA2\(0));

-- Location: LCCOMB_X17_Y12_N6
\rf|Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux23~0_combout\ = (\A|rfA2\(1) & (((\rf|R6|d_read\(8)) # (\A|rfA2\(0))))) # (!\A|rfA2\(1) & (\rf|R4|d_read\(8) & ((!\A|rfA2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(1),
	datab => \rf|R4|d_read\(8),
	datac => \rf|R6|d_read\(8),
	datad => \A|rfA2\(0),
	combout => \rf|Mux23~0_combout\);

-- Location: LCCOMB_X14_Y13_N0
\rf|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Decoder0~3_combout\ = (\A|rfA3\(0) & (\A|rfA3\(1) & \A|rfA3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfA3\(0),
	datac => \A|rfA3\(1),
	datad => \A|rfA3\(2),
	combout => \rf|Decoder0~3_combout\);

-- Location: LCCOMB_X18_Y13_N20
\rf|dw[7][8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[7][8]~combout\ = (\rf|Decoder0~3_combout\ & ((\A|rfD3\(8)))) # (!\rf|Decoder0~3_combout\ & (\rf|dw[7][8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Decoder0~3_combout\,
	datac => \rf|dw[7][8]~combout\,
	datad => \A|rfD3\(8),
	combout => \rf|dw[7][8]~combout\);

-- Location: LCCOMB_X17_Y12_N22
\rf|R7|d_read~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R7|d_read~13_combout\ = (\rf_write_en~q\ & \rf|dw[7][8]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[7][8]~combout\,
	combout => \rf|R7|d_read~13_combout\);

-- Location: FF_X17_Y12_N23
\rf|R7|d_read[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R7|d_read~13_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R7|d_read\(8));

-- Location: LCCOMB_X17_Y12_N14
\rf|Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux23~1_combout\ = (\rf|Mux23~0_combout\ & (((\rf|R7|d_read\(8)) # (!\A|rfA2\(0))))) # (!\rf|Mux23~0_combout\ & (\rf|R5|d_read\(8) & (\A|rfA2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R5|d_read\(8),
	datab => \rf|Mux23~0_combout\,
	datac => \A|rfA2\(0),
	datad => \rf|R7|d_read\(8),
	combout => \rf|Mux23~1_combout\);

-- Location: LCCOMB_X17_Y13_N14
\rf|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Decoder0~7_combout\ = (\A|rfA3\(0) & (!\A|rfA3\(2) & \A|rfA3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA3\(0),
	datac => \A|rfA3\(2),
	datad => \A|rfA3\(1),
	combout => \rf|Decoder0~7_combout\);

-- Location: LCCOMB_X18_Y13_N4
\rf|dw[3][8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[3][8]~combout\ = (\rf|Decoder0~7_combout\ & ((\A|rfD3\(8)))) # (!\rf|Decoder0~7_combout\ & (\rf|dw[3][8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Decoder0~7_combout\,
	datac => \rf|dw[3][8]~combout\,
	datad => \A|rfD3\(8),
	combout => \rf|dw[3][8]~combout\);

-- Location: LCCOMB_X18_Y13_N2
\rf|R3|d_read~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R3|d_read~12_combout\ = (\rf_write_en~q\ & \rf|dw[3][8]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datac => \rf|dw[3][8]~combout\,
	combout => \rf|R3|d_read~12_combout\);

-- Location: FF_X18_Y13_N3
\rf|R3|d_read[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R3|d_read~12_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R3|d_read\(8));

-- Location: LCCOMB_X17_Y13_N20
\rf|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Decoder0~4_combout\ = (!\A|rfA3\(0) & (!\A|rfA3\(2) & \A|rfA3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA3\(0),
	datac => \A|rfA3\(2),
	datad => \A|rfA3\(1),
	combout => \rf|Decoder0~4_combout\);

-- Location: LCCOMB_X18_Y13_N26
\rf|dw[2][8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[2][8]~combout\ = (\rf|Decoder0~4_combout\ & ((\A|rfD3\(8)))) # (!\rf|Decoder0~4_combout\ & (\rf|dw[2][8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[2][8]~combout\,
	datab => \rf|Decoder0~4_combout\,
	datad => \A|rfD3\(8),
	combout => \rf|dw[2][8]~combout\);

-- Location: LCCOMB_X18_Y13_N16
\rf|R2|d_read~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R2|d_read~12_combout\ = (\rf_write_en~q\ & \rf|dw[2][8]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datac => \rf|dw[2][8]~combout\,
	combout => \rf|R2|d_read~12_combout\);

-- Location: FF_X18_Y13_N17
\rf|R2|d_read[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R2|d_read~12_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R2|d_read\(8));

-- Location: LCCOMB_X17_Y13_N8
\rf|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Decoder0~5_combout\ = (\A|rfA3\(0) & (!\A|rfA3\(2) & !\A|rfA3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfA3\(0),
	datac => \A|rfA3\(2),
	datad => \A|rfA3\(1),
	combout => \rf|Decoder0~5_combout\);

-- Location: LCCOMB_X18_Y13_N8
\rf|dw[1][8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[1][8]~combout\ = (\rf|Decoder0~5_combout\ & ((\A|rfD3\(8)))) # (!\rf|Decoder0~5_combout\ & (\rf|dw[1][8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[1][8]~combout\,
	datac => \rf|Decoder0~5_combout\,
	datad => \A|rfD3\(8),
	combout => \rf|dw[1][8]~combout\);

-- Location: LCCOMB_X17_Y12_N8
\rf|R1|d_read~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R1|d_read~12_combout\ = (\rf_write_en~q\ & \rf|dw[1][8]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[1][8]~combout\,
	combout => \rf|R1|d_read~12_combout\);

-- Location: FF_X17_Y12_N9
\rf|R1|d_read[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R1|d_read~12_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R1|d_read\(8));

-- Location: LCCOMB_X17_Y13_N22
\rf|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Decoder0~6_combout\ = (!\A|rfA3\(0) & (!\A|rfA3\(2) & !\A|rfA3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA3\(0),
	datac => \A|rfA3\(2),
	datad => \A|rfA3\(1),
	combout => \rf|Decoder0~6_combout\);

-- Location: LCCOMB_X18_Y13_N30
\rf|dw[0][8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[0][8]~combout\ = (\rf|Decoder0~6_combout\ & ((\A|rfD3\(8)))) # (!\rf|Decoder0~6_combout\ & (\rf|dw[0][8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Decoder0~6_combout\,
	datac => \rf|dw[0][8]~combout\,
	datad => \A|rfD3\(8),
	combout => \rf|dw[0][8]~combout\);

-- Location: LCCOMB_X18_Y12_N12
\rf|R0|d_read~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R0|d_read~12_combout\ = (\rf|dw[0][8]~combout\ & \rf_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|dw[0][8]~combout\,
	datad => \rf_write_en~q\,
	combout => \rf|R0|d_read~12_combout\);

-- Location: FF_X17_Y12_N19
\rf|R0|d_read[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|R0|d_read~12_combout\,
	sload => VCC,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R0|d_read\(8));

-- Location: LCCOMB_X17_Y12_N24
\rf|Mux23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux23~2_combout\ = (\A|rfA2\(0) & ((\rf|R1|d_read\(8)) # ((\A|rfA2\(1))))) # (!\A|rfA2\(0) & (((\rf|R0|d_read\(8) & !\A|rfA2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R1|d_read\(8),
	datab => \rf|R0|d_read\(8),
	datac => \A|rfA2\(0),
	datad => \A|rfA2\(1),
	combout => \rf|Mux23~2_combout\);

-- Location: LCCOMB_X18_Y13_N18
\rf|Mux23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux23~3_combout\ = (\A|rfA2\(1) & ((\rf|Mux23~2_combout\ & (\rf|R3|d_read\(8))) # (!\rf|Mux23~2_combout\ & ((\rf|R2|d_read\(8)))))) # (!\A|rfA2\(1) & (((\rf|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(1),
	datab => \rf|R3|d_read\(8),
	datac => \rf|R2|d_read\(8),
	datad => \rf|Mux23~2_combout\,
	combout => \rf|Mux23~3_combout\);

-- Location: LCCOMB_X17_Y14_N18
\A|I|rfA2[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA2[2]~2_combout\ = (\inp[8]~input_o\) # ((\A|I|Equal4~10_combout\ & (!\A|Equal0~2_combout\ & !\A|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|Equal4~10_combout\,
	datab => \inp[8]~input_o\,
	datac => \A|Equal0~2_combout\,
	datad => \A|Equal0~3_combout\,
	combout => \A|I|rfA2[2]~2_combout\);

-- Location: LCCOMB_X17_Y14_N6
\A|I|rfA2[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA2\(2) = (\A|I|adderA[0]~17_combout\ & ((\A|I|rfA2[2]~2_combout\))) # (!\A|I|adderA[0]~17_combout\ & (\A|I|rfA2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfA2\(2),
	datac => \A|I|rfA2[2]~2_combout\,
	datad => \A|I|adderA[0]~17_combout\,
	combout => \A|I|rfA2\(2));

-- Location: LCCOMB_X14_Y14_N8
\A|rfA2[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA2[2]~4_combout\ = (\A|op_proc~0_combout\ & (\inp[8]~input_o\)) # (!\A|op_proc~0_combout\ & ((\A|I|rfA2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~0_combout\,
	datab => \inp[8]~input_o\,
	datad => \A|I|rfA2\(2),
	combout => \A|rfA2[2]~4_combout\);

-- Location: FF_X14_Y14_N25
\A|J|rfA2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \A|J|rfA2[1]~1_combout\,
	sload => VCC,
	ena => \A|J|rfA2[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|J|rfA2\(2));

-- Location: LCCOMB_X14_Y14_N24
\A|rfA2[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA2[2]~5_combout\ = (\A|op_proc~1_combout\ & (\A|rfA2[2]~4_combout\)) # (!\A|op_proc~1_combout\ & ((\A|op_proc~0_combout\ & (\A|rfA2[2]~4_combout\)) # (!\A|op_proc~0_combout\ & ((\A|J|rfA2\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2[2]~4_combout\,
	datab => \A|op_proc~1_combout\,
	datac => \A|J|rfA2\(2),
	datad => \A|op_proc~0_combout\,
	combout => \A|rfA2[2]~5_combout\);

-- Location: LCCOMB_X14_Y14_N10
\A|rfA2[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA2\(2) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfA2[2]~5_combout\))) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfA2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(2),
	datac => \A|rfA2[2]~5_combout\,
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfA2\(2));

-- Location: LCCOMB_X18_Y13_N10
\rf|Mux23~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux23~4_combout\ = (\A|rfA2\(2) & (\rf|Mux23~1_combout\)) # (!\A|rfA2\(2) & ((\rf|Mux23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux23~1_combout\,
	datac => \rf|Mux23~3_combout\,
	datad => \A|rfA2\(2),
	combout => \rf|Mux23~4_combout\);

-- Location: LCCOMB_X18_Y13_N6
\A|D2[0][8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[0][8]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux23~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D2[0][8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][8]~combout\,
	datac => \rf|Mux23~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D2[0][8]~combout\);

-- Location: LCCOMB_X14_Y16_N0
\A|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Equal0~0_combout\ = (!\inp[13]~input_o\ & (!\inp[14]~input_o\ & (!\inp[15]~input_o\ & !\inp[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[13]~input_o\,
	datab => \inp[14]~input_o\,
	datac => \inp[15]~input_o\,
	datad => \inp[12]~input_o\,
	combout => \A|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y16_N30
\A|R|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|Cout~0_combout\ = ((\inp[1]~input_o\ & \inp[0]~input_o\)) # (!\A|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp[1]~input_o\,
	datac => \inp[0]~input_o\,
	datad => \A|Equal0~0_combout\,
	combout => \A|R|Cout~0_combout\);

-- Location: CLKCTRL_G1
\A|R|Cout~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \A|R|Cout~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \A|R|Cout~0clkctrl_outclk\);

-- Location: LCCOMB_X16_Y16_N30
\A|R|adderB[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderB\(8) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderB\(8)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D2[0][8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][8]~combout\,
	datac => \A|R|adderB\(8),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderB\(8));

-- Location: LCCOMB_X16_Y16_N12
\A|R|adderA[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderA\(8) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|R|adderA\(8))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|D1[0][8]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderA\(8),
	datac => \A|D1[0][8]~combout\,
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderA\(8));

-- Location: LCCOMB_X19_Y15_N10
\rf|dw[2][7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[2][7]~combout\ = (\rf|Decoder0~4_combout\ & ((\A|rfD3\(7)))) # (!\rf|Decoder0~4_combout\ & (\rf|dw[2][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[2][7]~combout\,
	datab => \rf|Decoder0~4_combout\,
	datad => \A|rfD3\(7),
	combout => \rf|dw[2][7]~combout\);

-- Location: LCCOMB_X19_Y15_N2
\rf|R2|d_read~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R2|d_read~4_combout\ = (\rf_write_en~q\ & \rf|dw[2][7]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datad => \rf|dw[2][7]~combout\,
	combout => \rf|R2|d_read~4_combout\);

-- Location: FF_X19_Y15_N3
\rf|R2|d_read[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R2|d_read~4_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R2|d_read\(7));

-- Location: LCCOMB_X19_Y15_N26
\rf|dw[0][7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[0][7]~combout\ = (\rf|Decoder0~6_combout\ & ((\A|rfD3\(7)))) # (!\rf|Decoder0~6_combout\ & (\rf|dw[0][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~6_combout\,
	datac => \rf|dw[0][7]~combout\,
	datad => \A|rfD3\(7),
	combout => \rf|dw[0][7]~combout\);

-- Location: LCCOMB_X19_Y15_N0
\rf|R0|d_read~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R0|d_read~4_combout\ = (\rf|dw[0][7]~combout\ & \rf_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|dw[0][7]~combout\,
	datad => \rf_write_en~q\,
	combout => \rf|R0|d_read~4_combout\);

-- Location: FF_X18_Y15_N9
\rf|R0|d_read[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|R0|d_read~4_combout\,
	sload => VCC,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R0|d_read\(7));

-- Location: LCCOMB_X19_Y15_N30
\rf|dw[1][7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[1][7]~combout\ = (\rf|Decoder0~5_combout\ & ((\A|rfD3\(7)))) # (!\rf|Decoder0~5_combout\ & (\rf|dw[1][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[1][7]~combout\,
	datab => \rf|Decoder0~5_combout\,
	datad => \A|rfD3\(7),
	combout => \rf|dw[1][7]~combout\);

-- Location: LCCOMB_X18_Y15_N26
\rf|R1|d_read~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R1|d_read~4_combout\ = (\rf_write_en~q\ & \rf|dw[1][7]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datac => \rf|dw[1][7]~combout\,
	combout => \rf|R1|d_read~4_combout\);

-- Location: FF_X18_Y15_N27
\rf|R1|d_read[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R1|d_read~4_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R1|d_read\(7));

-- Location: LCCOMB_X18_Y15_N30
\rf|Mux24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux24~2_combout\ = (\A|rfA2\(0) & (((\rf|R1|d_read\(7)) # (\A|rfA2\(1))))) # (!\A|rfA2\(0) & (\rf|R0|d_read\(7) & ((!\A|rfA2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R0|d_read\(7),
	datab => \A|rfA2\(0),
	datac => \rf|R1|d_read\(7),
	datad => \A|rfA2\(1),
	combout => \rf|Mux24~2_combout\);

-- Location: LCCOMB_X19_Y15_N4
\rf|dw[3][7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[3][7]~combout\ = (\rf|Decoder0~7_combout\ & ((\A|rfD3\(7)))) # (!\rf|Decoder0~7_combout\ & (\rf|dw[3][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[3][7]~combout\,
	datac => \rf|Decoder0~7_combout\,
	datad => \A|rfD3\(7),
	combout => \rf|dw[3][7]~combout\);

-- Location: LCCOMB_X18_Y15_N6
\rf|R3|d_read~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R3|d_read~4_combout\ = (\rf_write_en~q\ & \rf|dw[3][7]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[3][7]~combout\,
	combout => \rf|R3|d_read~4_combout\);

-- Location: FF_X18_Y15_N7
\rf|R3|d_read[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R3|d_read~4_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R3|d_read\(7));

-- Location: LCCOMB_X19_Y15_N6
\rf|Mux24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux24~3_combout\ = (\rf|Mux24~2_combout\ & (((\rf|R3|d_read\(7)) # (!\A|rfA2\(1))))) # (!\rf|Mux24~2_combout\ & (\rf|R2|d_read\(7) & ((\A|rfA2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R2|d_read\(7),
	datab => \rf|Mux24~2_combout\,
	datac => \rf|R3|d_read\(7),
	datad => \A|rfA2\(1),
	combout => \rf|Mux24~3_combout\);

-- Location: LCCOMB_X18_Y15_N16
\rf|dw[4][7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[4][7]~combout\ = (GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & ((\A|rfD3\(7)))) # (!GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & (\rf|dw[4][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[4][7]~combout\,
	datac => \A|rfD3\(7),
	datad => \rf|Decoder0~2clkctrl_outclk\,
	combout => \rf|dw[4][7]~combout\);

-- Location: LCCOMB_X18_Y15_N4
\rf|R4|d_read~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R4|d_read~4_combout\ = (\rf_write_en~q\ & \rf|dw[4][7]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[4][7]~combout\,
	combout => \rf|R4|d_read~4_combout\);

-- Location: FF_X18_Y15_N5
\rf|R4|d_read[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R4|d_read~4_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R4|d_read\(7));

-- Location: LCCOMB_X18_Y15_N24
\rf|dw[6][7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[6][7]~combout\ = (GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & (\A|rfD3\(7))) # (!GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & ((\rf|dw[6][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(7),
	datac => \rf|Decoder0~1clkctrl_outclk\,
	datad => \rf|dw[6][7]~combout\,
	combout => \rf|dw[6][7]~combout\);

-- Location: LCCOMB_X18_Y15_N12
\rf|R6|d_read~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R6|d_read~4_combout\ = (\rf_write_en~q\ & \rf|dw[6][7]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[6][7]~combout\,
	combout => \rf|R6|d_read~4_combout\);

-- Location: FF_X18_Y15_N13
\rf|R6|d_read[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R6|d_read~4_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R6|d_read\(7));

-- Location: LCCOMB_X18_Y15_N14
\rf|Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux24~0_combout\ = (\A|rfA2\(0) & (((\A|rfA2\(1))))) # (!\A|rfA2\(0) & ((\A|rfA2\(1) & ((\rf|R6|d_read\(7)))) # (!\A|rfA2\(1) & (\rf|R4|d_read\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R4|d_read\(7),
	datab => \A|rfA2\(0),
	datac => \rf|R6|d_read\(7),
	datad => \A|rfA2\(1),
	combout => \rf|Mux24~0_combout\);

-- Location: LCCOMB_X14_Y13_N28
\rf|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Decoder0~0_combout\ = (\A|rfA3\(0) & (!\A|rfA3\(1) & \A|rfA3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA3\(0),
	datac => \A|rfA3\(1),
	datad => \A|rfA3\(2),
	combout => \rf|Decoder0~0_combout\);

-- Location: CLKCTRL_G4
\rf|Decoder0~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rf|Decoder0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rf|Decoder0~0clkctrl_outclk\);

-- Location: LCCOMB_X18_Y15_N18
\rf|dw[5][7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[5][7]~combout\ = (GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & ((\A|rfD3\(7)))) # (!GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & (\rf|dw[5][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[5][7]~combout\,
	datac => \A|rfD3\(7),
	datad => \rf|Decoder0~0clkctrl_outclk\,
	combout => \rf|dw[5][7]~combout\);

-- Location: LCCOMB_X18_Y15_N22
\rf|R5|d_read~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R5|d_read~4_combout\ = (\rf_write_en~q\ & \rf|dw[5][7]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[5][7]~combout\,
	combout => \rf|R5|d_read~4_combout\);

-- Location: FF_X18_Y15_N23
\rf|R5|d_read[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R5|d_read~4_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R5|d_read\(7));

-- Location: LCCOMB_X19_Y15_N12
\rf|Mux24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux24~1_combout\ = (\A|rfA2\(0) & ((\rf|Mux24~0_combout\ & (\rf|R7|d_read\(7))) # (!\rf|Mux24~0_combout\ & ((\rf|R5|d_read\(7)))))) # (!\A|rfA2\(0) & (\rf|Mux24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(0),
	datab => \rf|Mux24~0_combout\,
	datac => \rf|R7|d_read\(7),
	datad => \rf|R5|d_read\(7),
	combout => \rf|Mux24~1_combout\);

-- Location: LCCOMB_X19_Y15_N18
\rf|Mux24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux24~4_combout\ = (\A|rfA2\(2) & ((\rf|Mux24~1_combout\))) # (!\A|rfA2\(2) & (\rf|Mux24~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux24~3_combout\,
	datab => \rf|Mux24~1_combout\,
	datad => \A|rfA2\(2),
	combout => \rf|Mux24~4_combout\);

-- Location: LCCOMB_X19_Y15_N14
\A|D2[0][7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[0][7]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux24~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D2[0][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[0][7]~combout\,
	datac => \rf|Mux24~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D2[0][7]~combout\);

-- Location: LCCOMB_X18_Y17_N2
\A|R|adderB[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderB\(7) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderB\(7)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D2[0][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[0][7]~combout\,
	datac => \A|R|Cout~0clkctrl_outclk\,
	datad => \A|R|adderB\(7),
	combout => \A|R|adderB\(7));

-- Location: LCCOMB_X15_Y15_N10
\A|D1[1][6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[1][6]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux9~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D1[1][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][6]~combout\,
	datac => \rf|Mux9~4_combout\,
	datad => \A|op_proc~1_combout\,
	combout => \A|D1[1][6]~combout\);

-- Location: LCCOMB_X16_Y15_N2
\rf|dw[7][6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[7][6]~combout\ = (\rf|Decoder0~3_combout\ & ((\A|rfD3\(6)))) # (!\rf|Decoder0~3_combout\ & (\rf|dw[7][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[7][6]~combout\,
	datac => \rf|Decoder0~3_combout\,
	datad => \A|rfD3\(6),
	combout => \rf|dw[7][6]~combout\);

-- Location: LCCOMB_X16_Y15_N10
\rf|R7|d_read~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R7|d_read~12_combout\ = (\rf_write_en~q\ & \rf|dw[7][6]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[7][6]~combout\,
	combout => \rf|R7|d_read~12_combout\);

-- Location: FF_X16_Y15_N11
\rf|R7|d_read[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R7|d_read~12_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R7|d_read\(6));

-- Location: LCCOMB_X15_Y15_N18
\rf|dw[6][6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[6][6]~combout\ = (GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & (\A|rfD3\(6))) # (!GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & ((\rf|dw[6][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3\(6),
	datac => \rf|Decoder0~1clkctrl_outclk\,
	datad => \rf|dw[6][6]~combout\,
	combout => \rf|dw[6][6]~combout\);

-- Location: LCCOMB_X15_Y15_N2
\rf|R6|d_read~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R6|d_read~11_combout\ = (\rf_write_en~q\ & \rf|dw[6][6]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[6][6]~combout\,
	combout => \rf|R6|d_read~11_combout\);

-- Location: FF_X15_Y15_N3
\rf|R6|d_read[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R6|d_read~11_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R6|d_read\(6));

-- Location: LCCOMB_X15_Y15_N28
\rf|dw[4][6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[4][6]~combout\ = (GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & (\A|rfD3\(6))) # (!GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & ((\rf|dw[4][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3\(6),
	datac => \rf|dw[4][6]~combout\,
	datad => \rf|Decoder0~2clkctrl_outclk\,
	combout => \rf|dw[4][6]~combout\);

-- Location: LCCOMB_X15_Y15_N12
\rf|R4|d_read~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R4|d_read~11_combout\ = (\rf_write_en~q\ & \rf|dw[4][6]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[4][6]~combout\,
	combout => \rf|R4|d_read~11_combout\);

-- Location: FF_X15_Y15_N13
\rf|R4|d_read[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R4|d_read~11_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R4|d_read\(6));

-- Location: LCCOMB_X15_Y15_N14
\rf|Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux25~0_combout\ = (\A|rfA2\(1) & ((\A|rfA2\(0)) # ((\rf|R6|d_read\(6))))) # (!\A|rfA2\(1) & (!\A|rfA2\(0) & ((\rf|R4|d_read\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(1),
	datab => \A|rfA2\(0),
	datac => \rf|R6|d_read\(6),
	datad => \rf|R4|d_read\(6),
	combout => \rf|Mux25~0_combout\);

-- Location: LCCOMB_X16_Y15_N20
\rf|dw[5][6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[5][6]~combout\ = (GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & (\A|rfD3\(6))) # (!GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & ((\rf|dw[5][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3\(6),
	datac => \rf|Decoder0~0clkctrl_outclk\,
	datad => \rf|dw[5][6]~combout\,
	combout => \rf|dw[5][6]~combout\);

-- Location: LCCOMB_X16_Y15_N28
\rf|R5|d_read~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R5|d_read~11_combout\ = (\rf_write_en~q\ & \rf|dw[5][6]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[5][6]~combout\,
	combout => \rf|R5|d_read~11_combout\);

-- Location: FF_X16_Y15_N29
\rf|R5|d_read[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R5|d_read~11_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R5|d_read\(6));

-- Location: LCCOMB_X16_Y15_N22
\rf|Mux25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux25~1_combout\ = (\rf|Mux25~0_combout\ & ((\rf|R7|d_read\(6)) # ((!\A|rfA2\(0))))) # (!\rf|Mux25~0_combout\ & (((\rf|R5|d_read\(6) & \A|rfA2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R7|d_read\(6),
	datab => \rf|Mux25~0_combout\,
	datac => \rf|R5|d_read\(6),
	datad => \A|rfA2\(0),
	combout => \rf|Mux25~1_combout\);

-- Location: LCCOMB_X15_Y15_N26
\rf|dw[1][6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[1][6]~combout\ = (\rf|Decoder0~5_combout\ & ((\A|rfD3\(6)))) # (!\rf|Decoder0~5_combout\ & (\rf|dw[1][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Decoder0~5_combout\,
	datac => \rf|dw[1][6]~combout\,
	datad => \A|rfD3\(6),
	combout => \rf|dw[1][6]~combout\);

-- Location: LCCOMB_X15_Y15_N16
\rf|R1|d_read~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R1|d_read~11_combout\ = (\rf|dw[1][6]~combout\ & \rf_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|dw[1][6]~combout\,
	datad => \rf_write_en~q\,
	combout => \rf|R1|d_read~11_combout\);

-- Location: FF_X15_Y15_N17
\rf|R1|d_read[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R1|d_read~11_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R1|d_read\(6));

-- Location: LCCOMB_X16_Y15_N30
\rf|dw[0][6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[0][6]~combout\ = (\rf|Decoder0~6_combout\ & ((\A|rfD3\(6)))) # (!\rf|Decoder0~6_combout\ & (\rf|dw[0][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Decoder0~6_combout\,
	datac => \rf|dw[0][6]~combout\,
	datad => \A|rfD3\(6),
	combout => \rf|dw[0][6]~combout\);

-- Location: LCCOMB_X15_Y15_N6
\rf|R0|d_read~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R0|d_read~11_combout\ = (\rf|dw[0][6]~combout\ & \rf_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|dw[0][6]~combout\,
	datad => \rf_write_en~q\,
	combout => \rf|R0|d_read~11_combout\);

-- Location: FF_X15_Y15_N7
\rf|R0|d_read[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R0|d_read~11_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R0|d_read\(6));

-- Location: LCCOMB_X16_Y15_N8
\rf|Mux25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux25~2_combout\ = (\A|rfA2\(0) & ((\rf|R1|d_read\(6)) # ((\A|rfA2\(1))))) # (!\A|rfA2\(0) & (((\rf|R0|d_read\(6) & !\A|rfA2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(0),
	datab => \rf|R1|d_read\(6),
	datac => \rf|R0|d_read\(6),
	datad => \A|rfA2\(1),
	combout => \rf|Mux25~2_combout\);

-- Location: LCCOMB_X16_Y15_N16
\rf|dw[3][6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[3][6]~combout\ = (\rf|Decoder0~7_combout\ & ((\A|rfD3\(6)))) # (!\rf|Decoder0~7_combout\ & (\rf|dw[3][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[3][6]~combout\,
	datac => \rf|Decoder0~7_combout\,
	datad => \A|rfD3\(6),
	combout => \rf|dw[3][6]~combout\);

-- Location: LCCOMB_X16_Y15_N24
\rf|R3|d_read~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R3|d_read~11_combout\ = (\rf_write_en~q\ & \rf|dw[3][6]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[3][6]~combout\,
	combout => \rf|R3|d_read~11_combout\);

-- Location: FF_X16_Y15_N25
\rf|R3|d_read[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R3|d_read~11_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R3|d_read\(6));

-- Location: LCCOMB_X16_Y15_N4
\rf|Mux25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux25~3_combout\ = (\rf|Mux25~2_combout\ & ((\rf|R3|d_read\(6)) # ((!\A|rfA2\(1))))) # (!\rf|Mux25~2_combout\ & (((\rf|R2|d_read\(6) & \A|rfA2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux25~2_combout\,
	datab => \rf|R3|d_read\(6),
	datac => \rf|R2|d_read\(6),
	datad => \A|rfA2\(1),
	combout => \rf|Mux25~3_combout\);

-- Location: LCCOMB_X16_Y15_N0
\rf|Mux25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux25~4_combout\ = (\A|rfA2\(2) & (\rf|Mux25~1_combout\)) # (!\A|rfA2\(2) & ((\rf|Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux25~1_combout\,
	datac => \rf|Mux25~3_combout\,
	datad => \A|rfA2\(2),
	combout => \rf|Mux25~4_combout\);

-- Location: LCCOMB_X16_Y15_N6
\A|D2[1][6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[1][6]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux25~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D2[1][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[1][6]~combout\,
	datac => \A|op_proc~1_combout\,
	datad => \rf|Mux25~4_combout\,
	combout => \A|D2[1][6]~combout\);

-- Location: LCCOMB_X16_Y17_N0
\A|I|adderA[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA[6]~9_combout\ = (\A|Equal0~1_combout\ & (\A|D1[1][6]~combout\)) # (!\A|Equal0~1_combout\ & ((\A|I|adderA[0]~0_combout\ & ((\A|D2[1][6]~combout\))) # (!\A|I|adderA[0]~0_combout\ & (\A|D1[1][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][6]~combout\,
	datab => \A|D2[1][6]~combout\,
	datac => \A|Equal0~1_combout\,
	datad => \A|I|adderA[0]~0_combout\,
	combout => \A|I|adderA[6]~9_combout\);

-- Location: LCCOMB_X16_Y18_N0
\A|I|adderA[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA\(6) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderA[6]~9_combout\))) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\A|I|adderA\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|adderA\(6),
	datac => \A|I|adderA[6]~9_combout\,
	datad => \A|I|adderB[0]~7clkctrl_outclk\,
	combout => \A|I|adderA\(6));

-- Location: LCCOMB_X15_Y17_N6
\A|I|adderB[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderB[6]~5_combout\ = (\inp[6]~input_o\ & !\A|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[6]~input_o\,
	datad => \A|Equal0~4_combout\,
	combout => \A|I|adderB[6]~5_combout\);

-- Location: LCCOMB_X15_Y17_N16
\A|I|adderB[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderB\(6) = (!\A|I|adderB[15]~4_combout\ & ((\A|I|adderB[15]~2_combout\ & (\A|I|adderB[6]~5_combout\)) # (!\A|I|adderB[15]~2_combout\ & ((\A|I|adderB\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderB[6]~5_combout\,
	datab => \A|I|adderB[15]~2_combout\,
	datac => \A|I|adderB[15]~4_combout\,
	datad => \A|I|adderB\(6),
	combout => \A|I|adderB\(6));

-- Location: LCCOMB_X11_Y14_N26
\A|I|rfA1[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA1[1]~9_combout\ = (\A|I|rfA1[0]~12_combout\ & ((\inp[10]~input_o\))) # (!\A|I|rfA1[0]~12_combout\ & (\inp[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[7]~input_o\,
	datac => \inp[10]~input_o\,
	datad => \A|I|rfA1[0]~12_combout\,
	combout => \A|I|rfA1[1]~9_combout\);

-- Location: LCCOMB_X11_Y14_N24
\A|I|rfA1[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA1\(1) = (\A|I|rfA1[2]~11_combout\ & (\A|I|rfA1[1]~9_combout\)) # (!\A|I|rfA1[2]~11_combout\ & ((\A|I|rfA1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfA1[1]~9_combout\,
	datac => \A|I|rfA1[2]~11_combout\,
	datad => \A|I|rfA1\(1),
	combout => \A|I|rfA1\(1));

-- Location: LCCOMB_X11_Y14_N30
\A|rfA1[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA1[1]~10_combout\ = (\A|op_proc~0_combout\ & ((\inp[10]~input_o\))) # (!\A|op_proc~0_combout\ & (\A|I|rfA1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|rfA1\(1),
	datac => \inp[10]~input_o\,
	datad => \A|op_proc~0_combout\,
	combout => \A|rfA1[1]~10_combout\);

-- Location: FF_X11_Y14_N9
\A|J|rfA1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inp[10]~input_o\,
	sload => VCC,
	ena => \A|J|Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|J|rfA1\(1));

-- Location: LCCOMB_X11_Y14_N8
\A|rfA1[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA1[1]~11_combout\ = (\A|op_proc~0_combout\ & (\A|rfA1[1]~10_combout\)) # (!\A|op_proc~0_combout\ & ((\A|op_proc~1_combout\ & (\A|rfA1[1]~10_combout\)) # (!\A|op_proc~1_combout\ & ((\A|J|rfA1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1[1]~10_combout\,
	datab => \A|op_proc~0_combout\,
	datac => \A|J|rfA1\(1),
	datad => \A|op_proc~1_combout\,
	combout => \A|rfA1[1]~11_combout\);

-- Location: LCCOMB_X11_Y14_N6
\A|rfA1[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA1\(1) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfA1[1]~11_combout\))) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfA1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(1),
	datac => \A|rfA1[1]~11_combout\,
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfA1\(1));

-- Location: LCCOMB_X19_Y12_N20
\rf|dw[6][5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[6][5]~combout\ = (GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & ((\A|rfD3\(5)))) # (!GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & (\rf|dw[6][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~1clkctrl_outclk\,
	datab => \rf|dw[6][5]~combout\,
	datad => \A|rfD3\(5),
	combout => \rf|dw[6][5]~combout\);

-- Location: LCCOMB_X19_Y12_N14
\rf|R6|d_read~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R6|d_read~5_combout\ = (\rf_write_en~q\ & \rf|dw[6][5]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[6][5]~combout\,
	combout => \rf|R6|d_read~5_combout\);

-- Location: FF_X19_Y12_N15
\rf|R6|d_read[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R6|d_read~5_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R6|d_read\(5));

-- Location: LCCOMB_X19_Y13_N16
\rf|dw[4][5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[4][5]~combout\ = (GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & ((\A|rfD3\(5)))) # (!GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & (\rf|dw[4][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[4][5]~combout\,
	datac => \A|rfD3\(5),
	datad => \rf|Decoder0~2clkctrl_outclk\,
	combout => \rf|dw[4][5]~combout\);

-- Location: LCCOMB_X19_Y13_N4
\rf|R4|d_read~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R4|d_read~5_combout\ = (\rf_write_en~q\ & \rf|dw[4][5]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[4][5]~combout\,
	combout => \rf|R4|d_read~5_combout\);

-- Location: FF_X19_Y13_N5
\rf|R4|d_read[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R4|d_read~5_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R4|d_read\(5));

-- Location: LCCOMB_X19_Y12_N24
\rf|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux10~0_combout\ = (\A|rfA1\(1) & ((\rf|R6|d_read\(5)) # ((\A|rfA1\(0))))) # (!\A|rfA1\(1) & (((\rf|R4|d_read\(5) & !\A|rfA1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(1),
	datab => \rf|R6|d_read\(5),
	datac => \rf|R4|d_read\(5),
	datad => \A|rfA1\(0),
	combout => \rf|Mux10~0_combout\);

-- Location: LCCOMB_X16_Y11_N14
\rf|dw[7][5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[7][5]~combout\ = (\rf|Decoder0~3_combout\ & ((\A|rfD3\(5)))) # (!\rf|Decoder0~3_combout\ & (\rf|dw[7][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~3_combout\,
	datac => \rf|dw[7][5]~combout\,
	datad => \A|rfD3\(5),
	combout => \rf|dw[7][5]~combout\);

-- Location: LCCOMB_X16_Y11_N22
\rf|R7|d_read~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R7|d_read~6_combout\ = (\rf_write_en~q\ & \rf|dw[7][5]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datac => \rf|dw[7][5]~combout\,
	combout => \rf|R7|d_read~6_combout\);

-- Location: FF_X16_Y11_N23
\rf|R7|d_read[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R7|d_read~6_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R7|d_read\(5));

-- Location: LCCOMB_X19_Y12_N12
\rf|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux10~1_combout\ = (\A|rfA1\(0) & ((\rf|Mux10~0_combout\ & ((\rf|R7|d_read\(5)))) # (!\rf|Mux10~0_combout\ & (\rf|R5|d_read\(5))))) # (!\A|rfA1\(0) & (((\rf|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(0),
	datab => \rf|R5|d_read\(5),
	datac => \rf|Mux10~0_combout\,
	datad => \rf|R7|d_read\(5),
	combout => \rf|Mux10~1_combout\);

-- Location: FF_X11_Y14_N29
\A|J|rfA1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inp[11]~input_o\,
	sload => VCC,
	ena => \A|J|Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|J|rfA1\(2));

-- Location: LCCOMB_X11_Y14_N12
\A|I|rfA1[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA1[2]~10_combout\ = (\A|I|rfA1[0]~12_combout\ & ((\inp[11]~input_o\))) # (!\A|I|rfA1[0]~12_combout\ & (\inp[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp[8]~input_o\,
	datac => \inp[11]~input_o\,
	datad => \A|I|rfA1[0]~12_combout\,
	combout => \A|I|rfA1[2]~10_combout\);

-- Location: LCCOMB_X11_Y14_N10
\A|I|rfA1[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA1\(2) = (\A|I|rfA1[2]~11_combout\ & (\A|I|rfA1[2]~10_combout\)) # (!\A|I|rfA1[2]~11_combout\ & ((\A|I|rfA1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|rfA1[2]~10_combout\,
	datac => \A|I|rfA1[2]~11_combout\,
	datad => \A|I|rfA1\(2),
	combout => \A|I|rfA1\(2));

-- Location: LCCOMB_X11_Y14_N18
\A|rfA1[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA1[2]~12_combout\ = (\A|op_proc~0_combout\ & ((\inp[11]~input_o\))) # (!\A|op_proc~0_combout\ & (\A|I|rfA1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfA1\(2),
	datac => \inp[11]~input_o\,
	datad => \A|op_proc~0_combout\,
	combout => \A|rfA1[2]~12_combout\);

-- Location: LCCOMB_X11_Y14_N28
\A|rfA1[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA1[2]~13_combout\ = (\A|op_proc~1_combout\ & (((\A|rfA1[2]~12_combout\)))) # (!\A|op_proc~1_combout\ & ((\A|op_proc~0_combout\ & ((\A|rfA1[2]~12_combout\))) # (!\A|op_proc~0_combout\ & (\A|J|rfA1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~1_combout\,
	datab => \A|op_proc~0_combout\,
	datac => \A|J|rfA1\(2),
	datad => \A|rfA1[2]~12_combout\,
	combout => \A|rfA1[2]~13_combout\);

-- Location: LCCOMB_X11_Y14_N4
\A|rfA1[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfA1\(2) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfA1[2]~13_combout\))) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfA1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfA1\(2),
	datac => \A|rfA1[2]~13_combout\,
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfA1\(2));

-- Location: LCCOMB_X19_Y13_N26
\rf|dw[3][5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[3][5]~combout\ = (\rf|Decoder0~7_combout\ & ((\A|rfD3\(5)))) # (!\rf|Decoder0~7_combout\ & (\rf|dw[3][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[3][5]~combout\,
	datac => \rf|Decoder0~7_combout\,
	datad => \A|rfD3\(5),
	combout => \rf|dw[3][5]~combout\);

-- Location: LCCOMB_X20_Y12_N30
\rf|R3|d_read~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R3|d_read~5_combout\ = (\rf_write_en~q\ & \rf|dw[3][5]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[3][5]~combout\,
	combout => \rf|R3|d_read~5_combout\);

-- Location: FF_X20_Y12_N31
\rf|R3|d_read[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R3|d_read~5_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R3|d_read\(5));

-- Location: LCCOMB_X19_Y13_N28
\rf|dw[0][5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[0][5]~combout\ = (\rf|Decoder0~6_combout\ & ((\A|rfD3\(5)))) # (!\rf|Decoder0~6_combout\ & (\rf|dw[0][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[0][5]~combout\,
	datac => \rf|Decoder0~6_combout\,
	datad => \A|rfD3\(5),
	combout => \rf|dw[0][5]~combout\);

-- Location: LCCOMB_X19_Y13_N30
\rf|R0|d_read~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R0|d_read~5_combout\ = (\rf_write_en~q\ & \rf|dw[0][5]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[0][5]~combout\,
	combout => \rf|R0|d_read~5_combout\);

-- Location: FF_X19_Y12_N1
\rf|R0|d_read[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|R0|d_read~5_combout\,
	sload => VCC,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R0|d_read\(5));

-- Location: LCCOMB_X19_Y13_N8
\rf|dw[1][5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[1][5]~combout\ = (\rf|Decoder0~5_combout\ & ((\A|rfD3\(5)))) # (!\rf|Decoder0~5_combout\ & (\rf|dw[1][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[1][5]~combout\,
	datac => \rf|Decoder0~5_combout\,
	datad => \A|rfD3\(5),
	combout => \rf|dw[1][5]~combout\);

-- Location: LCCOMB_X20_Y12_N4
\rf|R1|d_read~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R1|d_read~5_combout\ = (\rf_write_en~q\ & \rf|dw[1][5]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[1][5]~combout\,
	combout => \rf|R1|d_read~5_combout\);

-- Location: FF_X20_Y12_N5
\rf|R1|d_read[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R1|d_read~5_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R1|d_read\(5));

-- Location: LCCOMB_X19_Y12_N18
\rf|Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux10~2_combout\ = (\A|rfA1\(1) & (((\A|rfA1\(0))))) # (!\A|rfA1\(1) & ((\A|rfA1\(0) & ((\rf|R1|d_read\(5)))) # (!\A|rfA1\(0) & (\rf|R0|d_read\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R0|d_read\(5),
	datab => \A|rfA1\(1),
	datac => \rf|R1|d_read\(5),
	datad => \A|rfA1\(0),
	combout => \rf|Mux10~2_combout\);

-- Location: LCCOMB_X19_Y13_N14
\rf|dw[2][5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[2][5]~combout\ = (\rf|Decoder0~4_combout\ & ((\A|rfD3\(5)))) # (!\rf|Decoder0~4_combout\ & (\rf|dw[2][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~4_combout\,
	datac => \rf|dw[2][5]~combout\,
	datad => \A|rfD3\(5),
	combout => \rf|dw[2][5]~combout\);

-- Location: LCCOMB_X19_Y13_N22
\rf|R2|d_read~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R2|d_read~5_combout\ = (\rf_write_en~q\ & \rf|dw[2][5]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datac => \rf|dw[2][5]~combout\,
	combout => \rf|R2|d_read~5_combout\);

-- Location: FF_X19_Y13_N23
\rf|R2|d_read[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R2|d_read~5_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R2|d_read\(5));

-- Location: LCCOMB_X19_Y12_N6
\rf|Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux10~3_combout\ = (\A|rfA1\(1) & ((\rf|Mux10~2_combout\ & (\rf|R3|d_read\(5))) # (!\rf|Mux10~2_combout\ & ((\rf|R2|d_read\(5)))))) # (!\A|rfA1\(1) & (((\rf|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R3|d_read\(5),
	datab => \A|rfA1\(1),
	datac => \rf|Mux10~2_combout\,
	datad => \rf|R2|d_read\(5),
	combout => \rf|Mux10~3_combout\);

-- Location: LCCOMB_X19_Y12_N0
\rf|Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux10~4_combout\ = (\A|rfA1\(2) & (\rf|Mux10~1_combout\)) # (!\A|rfA1\(2) & ((\rf|Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux10~1_combout\,
	datab => \A|rfA1\(2),
	datad => \rf|Mux10~3_combout\,
	combout => \rf|Mux10~4_combout\);

-- Location: LCCOMB_X19_Y12_N28
\A|D1[1][5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[1][5]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux10~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D1[1][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][5]~combout\,
	datab => \rf|Mux10~4_combout\,
	datad => \A|op_proc~1_combout\,
	combout => \A|D1[1][5]~combout\);

-- Location: LCCOMB_X18_Y14_N26
\rf|dw[3][4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[3][4]~combout\ = (\rf|Decoder0~7_combout\ & ((\A|rfD3\(4)))) # (!\rf|Decoder0~7_combout\ & (\rf|dw[3][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[3][4]~combout\,
	datac => \rf|Decoder0~7_combout\,
	datad => \A|rfD3\(4),
	combout => \rf|dw[3][4]~combout\);

-- Location: LCCOMB_X19_Y14_N22
\rf|R3|d_read~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R3|d_read~10_combout\ = (\rf_write_en~q\ & \rf|dw[3][4]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datac => \rf|dw[3][4]~combout\,
	combout => \rf|R3|d_read~10_combout\);

-- Location: FF_X19_Y14_N23
\rf|R3|d_read[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R3|d_read~10_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R3|d_read\(4));

-- Location: LCCOMB_X18_Y14_N4
\rf|dw[2][4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[2][4]~combout\ = (\rf|Decoder0~4_combout\ & ((\A|rfD3\(4)))) # (!\rf|Decoder0~4_combout\ & (\rf|dw[2][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Decoder0~4_combout\,
	datac => \rf|dw[2][4]~combout\,
	datad => \A|rfD3\(4),
	combout => \rf|dw[2][4]~combout\);

-- Location: LCCOMB_X20_Y14_N28
\rf|R2|d_read~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R2|d_read~10_combout\ = (\rf_write_en~q\ & \rf|dw[2][4]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datad => \rf|dw[2][4]~combout\,
	combout => \rf|R2|d_read~10_combout\);

-- Location: FF_X20_Y14_N29
\rf|R2|d_read[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R2|d_read~10_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R2|d_read\(4));

-- Location: LCCOMB_X18_Y14_N30
\rf|dw[1][4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[1][4]~combout\ = (\rf|Decoder0~5_combout\ & ((\A|rfD3\(4)))) # (!\rf|Decoder0~5_combout\ & (\rf|dw[1][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~5_combout\,
	datac => \rf|dw[1][4]~combout\,
	datad => \A|rfD3\(4),
	combout => \rf|dw[1][4]~combout\);

-- Location: LCCOMB_X20_Y14_N16
\rf|R1|d_read~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R1|d_read~10_combout\ = (\rf_write_en~q\ & \rf|dw[1][4]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datad => \rf|dw[1][4]~combout\,
	combout => \rf|R1|d_read~10_combout\);

-- Location: FF_X20_Y14_N17
\rf|R1|d_read[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R1|d_read~10_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R1|d_read\(4));

-- Location: LCCOMB_X18_Y14_N8
\rf|dw[0][4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[0][4]~combout\ = (\rf|Decoder0~6_combout\ & ((\A|rfD3\(4)))) # (!\rf|Decoder0~6_combout\ & (\rf|dw[0][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~6_combout\,
	datac => \rf|dw[0][4]~combout\,
	datad => \A|rfD3\(4),
	combout => \rf|dw[0][4]~combout\);

-- Location: LCCOMB_X20_Y14_N8
\rf|R0|d_read~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R0|d_read~10_combout\ = (\rf_write_en~q\ & \rf|dw[0][4]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datad => \rf|dw[0][4]~combout\,
	combout => \rf|R0|d_read~10_combout\);

-- Location: FF_X20_Y14_N9
\rf|R0|d_read[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R0|d_read~10_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R0|d_read\(4));

-- Location: LCCOMB_X20_Y14_N24
\rf|Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux11~2_combout\ = (\A|rfA1\(0) & ((\rf|R1|d_read\(4)) # ((\A|rfA1\(1))))) # (!\A|rfA1\(0) & (((\rf|R0|d_read\(4) & !\A|rfA1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R1|d_read\(4),
	datab => \A|rfA1\(0),
	datac => \rf|R0|d_read\(4),
	datad => \A|rfA1\(1),
	combout => \rf|Mux11~2_combout\);

-- Location: LCCOMB_X20_Y14_N14
\rf|Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux11~3_combout\ = (\rf|Mux11~2_combout\ & ((\rf|R3|d_read\(4)) # ((!\A|rfA1\(1))))) # (!\rf|Mux11~2_combout\ & (((\rf|R2|d_read\(4) & \A|rfA1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R3|d_read\(4),
	datab => \rf|R2|d_read\(4),
	datac => \rf|Mux11~2_combout\,
	datad => \A|rfA1\(1),
	combout => \rf|Mux11~3_combout\);

-- Location: LCCOMB_X19_Y14_N18
\rf|dw[6][4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[6][4]~combout\ = (GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & (\A|rfD3\(4))) # (!GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & ((\rf|dw[6][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3\(4),
	datac => \rf|Decoder0~1clkctrl_outclk\,
	datad => \rf|dw[6][4]~combout\,
	combout => \rf|dw[6][4]~combout\);

-- Location: LCCOMB_X19_Y14_N24
\rf|R6|d_read~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R6|d_read~10_combout\ = (\rf_write_en~q\ & \rf|dw[6][4]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[6][4]~combout\,
	combout => \rf|R6|d_read~10_combout\);

-- Location: FF_X19_Y14_N25
\rf|R6|d_read[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R6|d_read~10_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R6|d_read\(4));

-- Location: LCCOMB_X20_Y14_N20
\rf|dw[4][4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[4][4]~combout\ = (GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & ((\A|rfD3\(4)))) # (!GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & (\rf|dw[4][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[4][4]~combout\,
	datac => \rf|Decoder0~2clkctrl_outclk\,
	datad => \A|rfD3\(4),
	combout => \rf|dw[4][4]~combout\);

-- Location: LCCOMB_X20_Y14_N4
\rf|R4|d_read~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R4|d_read~10_combout\ = (\rf_write_en~q\ & \rf|dw[4][4]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datad => \rf|dw[4][4]~combout\,
	combout => \rf|R4|d_read~10_combout\);

-- Location: FF_X20_Y14_N5
\rf|R4|d_read[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R4|d_read~10_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R4|d_read\(4));

-- Location: LCCOMB_X19_Y14_N4
\rf|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux11~0_combout\ = (\A|rfA1\(0) & (((\A|rfA1\(1))))) # (!\A|rfA1\(0) & ((\A|rfA1\(1) & (\rf|R6|d_read\(4))) # (!\A|rfA1\(1) & ((\rf|R4|d_read\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R6|d_read\(4),
	datab => \A|rfA1\(0),
	datac => \rf|R4|d_read\(4),
	datad => \A|rfA1\(1),
	combout => \rf|Mux11~0_combout\);

-- Location: LCCOMB_X19_Y14_N10
\rf|dw[5][4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[5][4]~combout\ = (GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & (\A|rfD3\(4))) # (!GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & ((\rf|dw[5][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3\(4),
	datac => \rf|dw[5][4]~combout\,
	datad => \rf|Decoder0~0clkctrl_outclk\,
	combout => \rf|dw[5][4]~combout\);

-- Location: LCCOMB_X19_Y14_N0
\rf|R5|d_read~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R5|d_read~10_combout\ = (\rf_write_en~q\ & \rf|dw[5][4]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[5][4]~combout\,
	combout => \rf|R5|d_read~10_combout\);

-- Location: FF_X19_Y14_N1
\rf|R5|d_read[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R5|d_read~10_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R5|d_read\(4));

-- Location: LCCOMB_X19_Y14_N2
\rf|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux11~1_combout\ = (\rf|Mux11~0_combout\ & (((\rf|R7|d_read\(4))) # (!\A|rfA1\(0)))) # (!\rf|Mux11~0_combout\ & (\A|rfA1\(0) & ((\rf|R5|d_read\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux11~0_combout\,
	datab => \A|rfA1\(0),
	datac => \rf|R7|d_read\(4),
	datad => \rf|R5|d_read\(4),
	combout => \rf|Mux11~1_combout\);

-- Location: LCCOMB_X20_Y14_N26
\rf|Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux11~4_combout\ = (\A|rfA1\(2) & ((\rf|Mux11~1_combout\))) # (!\A|rfA1\(2) & (\rf|Mux11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux11~3_combout\,
	datac => \rf|Mux11~1_combout\,
	datad => \A|rfA1\(2),
	combout => \rf|Mux11~4_combout\);

-- Location: LCCOMB_X20_Y14_N18
\A|D1[1][4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[1][4]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux11~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D1[1][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D1[1][4]~combout\,
	datac => \rf|Mux11~4_combout\,
	datad => \A|op_proc~1_combout\,
	combout => \A|D1[1][4]~combout\);

-- Location: LCCOMB_X14_Y18_N8
\A|I|adderB[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderB\(4) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\inp[4]~input_o\)) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderB\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp[4]~input_o\,
	datac => \A|I|adderB\(4),
	datad => \A|I|adderB[0]~7clkctrl_outclk\,
	combout => \A|I|adderB\(4));

-- Location: LCCOMB_X20_Y13_N26
\A|D2[0][3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[0][3]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux28~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D2[0][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][3]~combout\,
	datac => \rf|Mux28~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D2[0][3]~combout\);

-- Location: LCCOMB_X16_Y10_N6
\rf|dw[6][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[6][2]~combout\ = (GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & (\A|rfD3\(2))) # (!GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & ((\rf|dw[6][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3\(2),
	datac => \rf|Decoder0~1clkctrl_outclk\,
	datad => \rf|dw[6][2]~combout\,
	combout => \rf|dw[6][2]~combout\);

-- Location: LCCOMB_X16_Y10_N10
\rf|R6|d_read~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R6|d_read~9_combout\ = (\rf_write_en~q\ & \rf|dw[6][2]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[6][2]~combout\,
	combout => \rf|R6|d_read~9_combout\);

-- Location: FF_X16_Y10_N11
\rf|R6|d_read[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R6|d_read~9_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R6|d_read\(2));

-- Location: LCCOMB_X16_Y10_N2
\rf|dw[4][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[4][2]~combout\ = (GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & (\A|rfD3\(2))) # (!GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & ((\rf|dw[4][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3\(2),
	datac => \rf|dw[4][2]~combout\,
	datad => \rf|Decoder0~2clkctrl_outclk\,
	combout => \rf|dw[4][2]~combout\);

-- Location: LCCOMB_X16_Y10_N4
\rf|R4|d_read~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R4|d_read~9_combout\ = (\rf_write_en~q\ & \rf|dw[4][2]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[4][2]~combout\,
	combout => \rf|R4|d_read~9_combout\);

-- Location: FF_X16_Y10_N5
\rf|R4|d_read[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R4|d_read~9_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R4|d_read\(2));

-- Location: LCCOMB_X16_Y10_N12
\rf|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux13~0_combout\ = (\A|rfA1\(1) & ((\rf|R6|d_read\(2)) # ((\A|rfA1\(0))))) # (!\A|rfA1\(1) & (((\rf|R4|d_read\(2) & !\A|rfA1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(1),
	datab => \rf|R6|d_read\(2),
	datac => \rf|R4|d_read\(2),
	datad => \A|rfA1\(0),
	combout => \rf|Mux13~0_combout\);

-- Location: LCCOMB_X16_Y10_N16
\rf|dw[5][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[5][2]~combout\ = (GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & ((\A|rfD3\(2)))) # (!GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & (\rf|dw[5][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[5][2]~combout\,
	datac => \A|rfD3\(2),
	datad => \rf|Decoder0~0clkctrl_outclk\,
	combout => \rf|dw[5][2]~combout\);

-- Location: LCCOMB_X16_Y10_N22
\rf|R5|d_read~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R5|d_read~9_combout\ = (\rf_write_en~q\ & \rf|dw[5][2]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[5][2]~combout\,
	combout => \rf|R5|d_read~9_combout\);

-- Location: FF_X16_Y10_N23
\rf|R5|d_read[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R5|d_read~9_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R5|d_read\(2));

-- Location: LCCOMB_X17_Y10_N24
\rf|dw[7][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[7][2]~combout\ = (\rf|Decoder0~3_combout\ & ((\A|rfD3\(2)))) # (!\rf|Decoder0~3_combout\ & (\rf|dw[7][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[7][2]~combout\,
	datac => \rf|Decoder0~3_combout\,
	datad => \A|rfD3\(2),
	combout => \rf|dw[7][2]~combout\);

-- Location: LCCOMB_X16_Y10_N18
\rf|R7|d_read~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R7|d_read~10_combout\ = (\rf_write_en~q\ & \rf|dw[7][2]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[7][2]~combout\,
	combout => \rf|R7|d_read~10_combout\);

-- Location: FF_X16_Y10_N19
\rf|R7|d_read[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R7|d_read~10_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R7|d_read\(2));

-- Location: LCCOMB_X16_Y10_N20
\rf|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux13~1_combout\ = (\A|rfA1\(0) & ((\rf|Mux13~0_combout\ & ((\rf|R7|d_read\(2)))) # (!\rf|Mux13~0_combout\ & (\rf|R5|d_read\(2))))) # (!\A|rfA1\(0) & (\rf|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(0),
	datab => \rf|Mux13~0_combout\,
	datac => \rf|R5|d_read\(2),
	datad => \rf|R7|d_read\(2),
	combout => \rf|Mux13~1_combout\);

-- Location: LCCOMB_X17_Y10_N28
\rf|dw[0][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[0][2]~combout\ = (\rf|Decoder0~6_combout\ & ((\A|rfD3\(2)))) # (!\rf|Decoder0~6_combout\ & (\rf|dw[0][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~6_combout\,
	datac => \rf|dw[0][2]~combout\,
	datad => \A|rfD3\(2),
	combout => \rf|dw[0][2]~combout\);

-- Location: LCCOMB_X20_Y10_N2
\rf|R0|d_read~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R0|d_read~9_combout\ = (\rf_write_en~q\ & \rf|dw[0][2]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[0][2]~combout\,
	combout => \rf|R0|d_read~9_combout\);

-- Location: FF_X20_Y10_N3
\rf|R0|d_read[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R0|d_read~9_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R0|d_read\(2));

-- Location: LCCOMB_X17_Y10_N16
\rf|dw[1][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[1][2]~combout\ = (\rf|Decoder0~5_combout\ & ((\A|rfD3\(2)))) # (!\rf|Decoder0~5_combout\ & (\rf|dw[1][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~5_combout\,
	datab => \rf|dw[1][2]~combout\,
	datad => \A|rfD3\(2),
	combout => \rf|dw[1][2]~combout\);

-- Location: LCCOMB_X20_Y10_N30
\rf|R1|d_read~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R1|d_read~9_combout\ = (\rf_write_en~q\ & \rf|dw[1][2]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[1][2]~combout\,
	combout => \rf|R1|d_read~9_combout\);

-- Location: FF_X20_Y10_N31
\rf|R1|d_read[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R1|d_read~9_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R1|d_read\(2));

-- Location: LCCOMB_X20_Y10_N14
\rf|Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux13~2_combout\ = (\A|rfA1\(1) & (((\A|rfA1\(0))))) # (!\A|rfA1\(1) & ((\A|rfA1\(0) & ((\rf|R1|d_read\(2)))) # (!\A|rfA1\(0) & (\rf|R0|d_read\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R0|d_read\(2),
	datab => \rf|R1|d_read\(2),
	datac => \A|rfA1\(1),
	datad => \A|rfA1\(0),
	combout => \rf|Mux13~2_combout\);

-- Location: LCCOMB_X17_Y10_N26
\rf|dw[2][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[2][2]~combout\ = (\rf|Decoder0~4_combout\ & ((\A|rfD3\(2)))) # (!\rf|Decoder0~4_combout\ & (\rf|dw[2][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[2][2]~combout\,
	datac => \rf|Decoder0~4_combout\,
	datad => \A|rfD3\(2),
	combout => \rf|dw[2][2]~combout\);

-- Location: LCCOMB_X17_Y10_N22
\rf|R2|d_read~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R2|d_read~9_combout\ = (\rf|dw[2][2]~combout\ & \rf_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|dw[2][2]~combout\,
	datad => \rf_write_en~q\,
	combout => \rf|R2|d_read~9_combout\);

-- Location: FF_X17_Y10_N23
\rf|R2|d_read[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R2|d_read~9_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R2|d_read\(2));

-- Location: LCCOMB_X20_Y10_N0
\rf|Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux13~3_combout\ = (\rf|Mux13~2_combout\ & ((\rf|R3|d_read\(2)) # ((!\A|rfA1\(1))))) # (!\rf|Mux13~2_combout\ & (((\rf|R2|d_read\(2) & \A|rfA1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux13~2_combout\,
	datab => \rf|R3|d_read\(2),
	datac => \rf|R2|d_read\(2),
	datad => \A|rfA1\(1),
	combout => \rf|Mux13~3_combout\);

-- Location: LCCOMB_X20_Y10_N18
\rf|Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux13~4_combout\ = (\A|rfA1\(2) & (\rf|Mux13~1_combout\)) # (!\A|rfA1\(2) & ((\rf|Mux13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux13~1_combout\,
	datac => \rf|Mux13~3_combout\,
	datad => \A|rfA1\(2),
	combout => \rf|Mux13~4_combout\);

-- Location: LCCOMB_X20_Y10_N26
\A|D1[0][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[0][2]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\rf|Mux13~4_combout\)) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\A|D1[0][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Mux13~4_combout\,
	datac => \A|D1[0][2]~combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D1[0][2]~combout\);

-- Location: LCCOMB_X13_Y14_N20
\rf|dw[5][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[5][0]~combout\ = (GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & ((\A|rfD3\(0)))) # (!GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & (\rf|dw[5][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Decoder0~0clkctrl_outclk\,
	datac => \rf|dw[5][0]~combout\,
	datad => \A|rfD3\(0),
	combout => \rf|dw[5][0]~combout\);

-- Location: LCCOMB_X13_Y14_N8
\rf|R5|d_read~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R5|d_read~8_combout\ = (\rf_write_en~q\ & \rf|dw[5][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[5][0]~combout\,
	combout => \rf|R5|d_read~8_combout\);

-- Location: FF_X13_Y14_N9
\rf|R5|d_read[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R5|d_read~8_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R5|d_read\(0));

-- Location: LCCOMB_X12_Y14_N18
\rf|dw[4][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[4][0]~combout\ = (GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & ((\A|rfD3\(0)))) # (!GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & (\rf|dw[4][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[4][0]~combout\,
	datac => \A|rfD3\(0),
	datad => \rf|Decoder0~2clkctrl_outclk\,
	combout => \rf|dw[4][0]~combout\);

-- Location: LCCOMB_X12_Y14_N28
\rf|R4|d_read~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R4|d_read~8_combout\ = (\rf_write_en~q\ & \rf|dw[4][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[4][0]~combout\,
	combout => \rf|R4|d_read~8_combout\);

-- Location: FF_X12_Y14_N29
\rf|R4|d_read[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R4|d_read~8_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R4|d_read\(0));

-- Location: LCCOMB_X12_Y14_N6
\rf|dw[6][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[6][0]~combout\ = (GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & ((\A|rfD3\(0)))) # (!GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & (\rf|dw[6][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[6][0]~combout\,
	datac => \rf|Decoder0~1clkctrl_outclk\,
	datad => \A|rfD3\(0),
	combout => \rf|dw[6][0]~combout\);

-- Location: LCCOMB_X12_Y14_N24
\rf|R6|d_read~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R6|d_read~8_combout\ = (\rf_write_en~q\ & \rf|dw[6][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[6][0]~combout\,
	combout => \rf|R6|d_read~8_combout\);

-- Location: FF_X12_Y14_N25
\rf|R6|d_read[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R6|d_read~8_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R6|d_read\(0));

-- Location: LCCOMB_X12_Y14_N10
\rf|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux31~0_combout\ = (\A|rfA2\(1) & (((\A|rfA2\(0)) # (\rf|R6|d_read\(0))))) # (!\A|rfA2\(1) & (\rf|R4|d_read\(0) & (!\A|rfA2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(1),
	datab => \rf|R4|d_read\(0),
	datac => \A|rfA2\(0),
	datad => \rf|R6|d_read\(0),
	combout => \rf|Mux31~0_combout\);

-- Location: LCCOMB_X13_Y14_N28
\rf|Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux31~1_combout\ = (\A|rfA2\(0) & ((\rf|Mux31~0_combout\ & (\rf|R7|d_read\(0))) # (!\rf|Mux31~0_combout\ & ((\rf|R5|d_read\(0)))))) # (!\A|rfA2\(0) & (((\rf|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R7|d_read\(0),
	datab => \rf|R5|d_read\(0),
	datac => \A|rfA2\(0),
	datad => \rf|Mux31~0_combout\,
	combout => \rf|Mux31~1_combout\);

-- Location: LCCOMB_X13_Y14_N10
\rf|dw[0][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[0][0]~combout\ = (\rf|Decoder0~6_combout\ & ((\A|rfD3\(0)))) # (!\rf|Decoder0~6_combout\ & (\rf|dw[0][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[0][0]~combout\,
	datab => \rf|Decoder0~6_combout\,
	datad => \A|rfD3\(0),
	combout => \rf|dw[0][0]~combout\);

-- Location: LCCOMB_X12_Y14_N12
\rf|R0|d_read~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R0|d_read~8_combout\ = (\rf|dw[0][0]~combout\ & \rf_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|dw[0][0]~combout\,
	datad => \rf_write_en~q\,
	combout => \rf|R0|d_read~8_combout\);

-- Location: FF_X12_Y14_N13
\rf|R0|d_read[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R0|d_read~8_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R0|d_read\(0));

-- Location: LCCOMB_X13_Y14_N4
\rf|dw[1][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[1][0]~combout\ = (\rf|Decoder0~5_combout\ & ((\A|rfD3\(0)))) # (!\rf|Decoder0~5_combout\ & (\rf|dw[1][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~5_combout\,
	datac => \rf|dw[1][0]~combout\,
	datad => \A|rfD3\(0),
	combout => \rf|dw[1][0]~combout\);

-- Location: LCCOMB_X12_Y14_N14
\rf|R1|d_read~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R1|d_read~8_combout\ = (\rf_write_en~q\ & \rf|dw[1][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[1][0]~combout\,
	combout => \rf|R1|d_read~8_combout\);

-- Location: FF_X12_Y14_N15
\rf|R1|d_read[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R1|d_read~8_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R1|d_read\(0));

-- Location: LCCOMB_X12_Y14_N20
\rf|Mux31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux31~2_combout\ = (\A|rfA2\(0) & (((\A|rfA2\(1)) # (\rf|R1|d_read\(0))))) # (!\A|rfA2\(0) & (\rf|R0|d_read\(0) & (!\A|rfA2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R0|d_read\(0),
	datab => \A|rfA2\(0),
	datac => \A|rfA2\(1),
	datad => \rf|R1|d_read\(0),
	combout => \rf|Mux31~2_combout\);

-- Location: LCCOMB_X13_Y14_N6
\rf|dw[2][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[2][0]~combout\ = (\rf|Decoder0~4_combout\ & ((\A|rfD3\(0)))) # (!\rf|Decoder0~4_combout\ & (\rf|dw[2][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[2][0]~combout\,
	datab => \A|rfD3\(0),
	datac => \rf|Decoder0~4_combout\,
	combout => \rf|dw[2][0]~combout\);

-- Location: LCCOMB_X13_Y14_N26
\rf|R2|d_read~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R2|d_read~8_combout\ = (\rf_write_en~q\ & \rf|dw[2][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[2][0]~combout\,
	combout => \rf|R2|d_read~8_combout\);

-- Location: FF_X13_Y14_N27
\rf|R2|d_read[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R2|d_read~8_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R2|d_read\(0));

-- Location: LCCOMB_X13_Y14_N16
\rf|dw[3][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[3][0]~combout\ = (\rf|Decoder0~7_combout\ & ((\A|rfD3\(0)))) # (!\rf|Decoder0~7_combout\ & (\rf|dw[3][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[3][0]~combout\,
	datac => \rf|Decoder0~7_combout\,
	datad => \A|rfD3\(0),
	combout => \rf|dw[3][0]~combout\);

-- Location: LCCOMB_X13_Y14_N0
\rf|R3|d_read~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R3|d_read~8_combout\ = (\rf_write_en~q\ & \rf|dw[3][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[3][0]~combout\,
	combout => \rf|R3|d_read~8_combout\);

-- Location: FF_X13_Y14_N1
\rf|R3|d_read[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R3|d_read~8_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R3|d_read\(0));

-- Location: LCCOMB_X13_Y14_N24
\rf|Mux31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux31~3_combout\ = (\rf|Mux31~2_combout\ & (((\rf|R3|d_read\(0)) # (!\A|rfA2\(1))))) # (!\rf|Mux31~2_combout\ & (\rf|R2|d_read\(0) & ((\A|rfA2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux31~2_combout\,
	datab => \rf|R2|d_read\(0),
	datac => \rf|R3|d_read\(0),
	datad => \A|rfA2\(1),
	combout => \rf|Mux31~3_combout\);

-- Location: LCCOMB_X13_Y14_N12
\rf|Mux31~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux31~4_combout\ = (\A|rfA2\(2) & (\rf|Mux31~1_combout\)) # (!\A|rfA2\(2) & ((\rf|Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux31~1_combout\,
	datac => \rf|Mux31~3_combout\,
	datad => \A|rfA2\(2),
	combout => \rf|Mux31~4_combout\);

-- Location: LCCOMB_X13_Y14_N22
\A|D2[0][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[0][0]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\rf|Mux31~4_combout\)) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\A|D2[0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Mux31~4_combout\,
	datac => \A|D2[0][0]~combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D2[0][0]~combout\);

-- Location: LCCOMB_X20_Y16_N8
\A|R|adderB[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderB\(0) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderB\(0)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D2[0][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][0]~combout\,
	datac => \A|R|adderB\(0),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderB\(0));

-- Location: LCCOMB_X20_Y16_N24
\A|R|adder|Sum[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|Sum\(0) = \A|R|adderA\(0) $ (\A|R|adderB\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|R|adderA\(0),
	datad => \A|R|adderB\(0),
	combout => \A|R|adder|Sum\(0));

-- Location: LCCOMB_X20_Y16_N6
\A|R|rfD3[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[0]~26_combout\ = (\A|Equal0~0_combout\ & (((\A|R|adder|Sum\(0))))) # (!\A|Equal0~0_combout\ & (((!\A|D2[0][0]~combout\)) # (!\A|D1[0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][0]~combout\,
	datab => \A|D2[0][0]~combout\,
	datac => \A|R|adder|Sum\(0),
	datad => \A|Equal0~0_combout\,
	combout => \A|R|rfD3[0]~26_combout\);

-- Location: LCCOMB_X15_Y17_N22
\A|R|rfD3[14]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[14]~12_combout\ = (!\inp[15]~input_o\ & !\inp[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp[15]~input_o\,
	datad => \inp[14]~input_o\,
	combout => \A|R|rfD3[14]~12_combout\);

-- Location: LCCOMB_X15_Y17_N18
\A|R|rfD3[14]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[14]~13_combout\ = (\A|R|rfD3[14]~12_combout\ & (!\inp[12]~input_o\ & ((!\inp[0]~input_o\) # (!\inp[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|rfD3[14]~12_combout\,
	datab => \inp[1]~input_o\,
	datac => \inp[12]~input_o\,
	datad => \inp[0]~input_o\,
	combout => \A|R|rfD3[14]~13_combout\);

-- Location: CLKCTRL_G7
\A|R|rfD3[14]~13clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \A|R|rfD3[14]~13clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \A|R|rfD3[14]~13clkctrl_outclk\);

-- Location: LCCOMB_X17_Y18_N26
\A|R|rfD3[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3\(0) = (GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & (\A|R|rfD3[0]~26_combout\)) # (!GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & ((\A|R|rfD3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|rfD3[0]~26_combout\,
	datac => \A|R|rfD3\(0),
	datad => \A|R|rfD3[14]~13clkctrl_outclk\,
	combout => \A|R|rfD3\(0));

-- Location: LCCOMB_X17_Y18_N28
\A|I|adderB[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderB\(0) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\inp[0]~input_o\))) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\A|I|adderB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|adderB\(0),
	datac => \inp[0]~input_o\,
	datad => \A|I|adderB[0]~7clkctrl_outclk\,
	combout => \A|I|adderB\(0));

-- Location: LCCOMB_X13_Y14_N2
\A|D2[1][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[1][0]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux31~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D2[1][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[1][0]~combout\,
	datac => \A|op_proc~1_combout\,
	datad => \rf|Mux31~4_combout\,
	combout => \A|D2[1][0]~combout\);

-- Location: LCCOMB_X12_Y14_N4
\A|D1[1][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[1][0]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux15~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D1[1][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D1[1][0]~combout\,
	datac => \rf|Mux15~4_combout\,
	datad => \A|op_proc~1_combout\,
	combout => \A|D1[1][0]~combout\);

-- Location: LCCOMB_X18_Y18_N4
\A|I|adderA[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA[0]~12_combout\ = (\A|Equal0~1_combout\ & (((\A|D1[1][0]~combout\)))) # (!\A|Equal0~1_combout\ & ((\A|I|adderA[0]~0_combout\ & (\A|D2[1][0]~combout\)) # (!\A|I|adderA[0]~0_combout\ & ((\A|D1[1][0]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[1][0]~combout\,
	datab => \A|D1[1][0]~combout\,
	datac => \A|Equal0~1_combout\,
	datad => \A|I|adderA[0]~0_combout\,
	combout => \A|I|adderA[0]~12_combout\);

-- Location: LCCOMB_X17_Y18_N14
\A|I|adderA[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA\(0) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\A|I|adderA[0]~12_combout\)) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|adderA[0]~12_combout\,
	datac => \A|I|adderA\(0),
	datad => \A|I|adderB[0]~7clkctrl_outclk\,
	combout => \A|I|adderA\(0));

-- Location: LCCOMB_X17_Y18_N2
\A|I|adder|Sum[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Sum\(0) = \A|I|adderB\(0) $ (\A|I|adderA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|adderB\(0),
	datac => \A|I|adderA\(0),
	combout => \A|I|adder|Sum\(0));

-- Location: LCCOMB_X18_Y18_N28
\A|I|rfD3[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[0]~13_combout\ = (\A|I|rfD3[15]~22_combout\ & (\A|I|adder|Sum\(0))) # (!\A|I|rfD3[15]~22_combout\ & (((!\A|Equal0~2_combout\ & \A|D1[1][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adder|Sum\(0),
	datab => \A|Equal0~2_combout\,
	datac => \A|I|rfD3[15]~22_combout\,
	datad => \A|D1[1][0]~combout\,
	combout => \A|I|rfD3[0]~13_combout\);

-- Location: LCCOMB_X17_Y14_N2
\A|I|rfA1[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfA1[2]~7_combout\ = (!\inp[14]~input_o\ & (!\inp[13]~input_o\ & \inp[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp[14]~input_o\,
	datac => \inp[13]~input_o\,
	datad => \inp[15]~input_o\,
	combout => \A|I|rfA1[2]~7_combout\);

-- Location: LCCOMB_X17_Y14_N22
\A|I|rfD3[15]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[15]~3_combout\ = (\A|Equal0~2_combout\) # ((\A|Equal0~4_combout\ & ((\A|I|Equal4~10_combout\))) # (!\A|Equal0~4_combout\ & (\A|I|rfA1[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Equal0~4_combout\,
	datab => \A|I|rfA1[2]~7_combout\,
	datac => \A|I|Equal4~10_combout\,
	datad => \A|Equal0~2_combout\,
	combout => \A|I|rfD3[15]~3_combout\);

-- Location: LCCOMB_X17_Y14_N20
\A|I|rfD3[15]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[15]~4_combout\ = (\A|Equal0~1_combout\) # ((\A|I|rfD3[15]~3_combout\ & !\A|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|Equal0~1_combout\,
	datac => \A|I|rfD3[15]~3_combout\,
	datad => \A|Equal0~3_combout\,
	combout => \A|I|rfD3[15]~4_combout\);

-- Location: CLKCTRL_G6
\A|I|rfD3[15]~4clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \A|I|rfD3[15]~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \A|I|rfD3[15]~4clkctrl_outclk\);

-- Location: LCCOMB_X18_Y18_N6
\A|I|rfD3[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3\(0) = (GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & ((\A|I|rfD3[0]~13_combout\))) # (!GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & (\A|I|rfD3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfD3\(0),
	datac => \A|I|rfD3[0]~13_combout\,
	datad => \A|I|rfD3[15]~4clkctrl_outclk\,
	combout => \A|I|rfD3\(0));

-- Location: LCCOMB_X18_Y18_N20
\A|rfD3[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[0]~13_combout\ = (\A|op_proc~0_combout\ & (\A|R|rfD3\(0))) # (!\A|op_proc~0_combout\ & (((\A|op_proc~1_combout\ & \A|I|rfD3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|rfD3\(0),
	datab => \A|op_proc~1_combout\,
	datac => \A|op_proc~0_combout\,
	datad => \A|I|rfD3\(0),
	combout => \A|rfD3[0]~13_combout\);

-- Location: LCCOMB_X13_Y14_N18
\A|rfD3[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3\(0) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfD3[0]~13_combout\)) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfD3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3[0]~13_combout\,
	datac => \A|rfA1[2]~14clkctrl_outclk\,
	datad => \A|rfD3\(0),
	combout => \A|rfD3\(0));

-- Location: LCCOMB_X13_Y14_N30
\rf|dw[7][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[7][0]~combout\ = (\rf|Decoder0~3_combout\ & (\A|rfD3\(0))) # (!\rf|Decoder0~3_combout\ & ((\rf|dw[7][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~3_combout\,
	datab => \A|rfD3\(0),
	datac => \rf|dw[7][0]~combout\,
	combout => \rf|dw[7][0]~combout\);

-- Location: LCCOMB_X13_Y14_N14
\rf|R7|d_read~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R7|d_read~9_combout\ = (\rf|dw[7][0]~combout\ & \rf_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|dw[7][0]~combout\,
	datad => \rf_write_en~q\,
	combout => \rf|R7|d_read~9_combout\);

-- Location: FF_X13_Y14_N15
\rf|R7|d_read[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R7|d_read~9_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R7|d_read\(0));

-- Location: LCCOMB_X12_Y14_N0
\rf|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux15~0_combout\ = (\A|rfA1\(0) & (((\A|rfA1\(1))))) # (!\A|rfA1\(0) & ((\A|rfA1\(1) & ((\rf|R6|d_read\(0)))) # (!\A|rfA1\(1) & (\rf|R4|d_read\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(0),
	datab => \rf|R4|d_read\(0),
	datac => \rf|R6|d_read\(0),
	datad => \A|rfA1\(1),
	combout => \rf|Mux15~0_combout\);

-- Location: LCCOMB_X12_Y14_N22
\rf|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux15~1_combout\ = (\A|rfA1\(0) & ((\rf|Mux15~0_combout\ & (\rf|R7|d_read\(0))) # (!\rf|Mux15~0_combout\ & ((\rf|R5|d_read\(0)))))) # (!\A|rfA1\(0) & (((\rf|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(0),
	datab => \rf|R7|d_read\(0),
	datac => \rf|Mux15~0_combout\,
	datad => \rf|R5|d_read\(0),
	combout => \rf|Mux15~1_combout\);

-- Location: LCCOMB_X12_Y14_N2
\rf|Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux15~2_combout\ = (\A|rfA1\(1) & (\A|rfA1\(0))) # (!\A|rfA1\(1) & ((\A|rfA1\(0) & (\rf|R1|d_read\(0))) # (!\A|rfA1\(0) & ((\rf|R0|d_read\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(1),
	datab => \A|rfA1\(0),
	datac => \rf|R1|d_read\(0),
	datad => \rf|R0|d_read\(0),
	combout => \rf|Mux15~2_combout\);

-- Location: LCCOMB_X12_Y14_N16
\rf|Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux15~3_combout\ = (\rf|Mux15~2_combout\ & (((\rf|R3|d_read\(0)) # (!\A|rfA1\(1))))) # (!\rf|Mux15~2_combout\ & (\rf|R2|d_read\(0) & ((\A|rfA1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux15~2_combout\,
	datab => \rf|R2|d_read\(0),
	datac => \rf|R3|d_read\(0),
	datad => \A|rfA1\(1),
	combout => \rf|Mux15~3_combout\);

-- Location: LCCOMB_X12_Y14_N26
\rf|Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux15~4_combout\ = (\A|rfA1\(2) & (\rf|Mux15~1_combout\)) # (!\A|rfA1\(2) & ((\rf|Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux15~1_combout\,
	datab => \rf|Mux15~3_combout\,
	datad => \A|rfA1\(2),
	combout => \rf|Mux15~4_combout\);

-- Location: LCCOMB_X12_Y14_N8
\A|D1[0][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[0][0]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux15~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D1[0][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D1[0][0]~combout\,
	datac => \rf|Mux15~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D1[0][0]~combout\);

-- Location: LCCOMB_X20_Y16_N26
\A|R|adderA[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderA\(0) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderA\(0)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D1[0][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D1[0][0]~combout\,
	datac => \A|R|adderA\(0),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderA\(0));

-- Location: LCCOMB_X19_Y11_N24
\rf|dw[4][1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[4][1]~combout\ = (GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & ((\A|rfD3\(1)))) # (!GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & (\rf|dw[4][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[4][1]~combout\,
	datac => \A|rfD3\(1),
	datad => \rf|Decoder0~2clkctrl_outclk\,
	combout => \rf|dw[4][1]~combout\);

-- Location: LCCOMB_X19_Y11_N4
\rf|R4|d_read~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R4|d_read~7_combout\ = (\rf_write_en~q\ & \rf|dw[4][1]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[4][1]~combout\,
	combout => \rf|R4|d_read~7_combout\);

-- Location: FF_X19_Y11_N5
\rf|R4|d_read[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R4|d_read~7_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R4|d_read\(1));

-- Location: LCCOMB_X19_Y11_N10
\rf|dw[6][1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[6][1]~combout\ = (GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & ((\A|rfD3\(1)))) # (!GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & (\rf|dw[6][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[6][1]~combout\,
	datab => \A|rfD3\(1),
	datad => \rf|Decoder0~1clkctrl_outclk\,
	combout => \rf|dw[6][1]~combout\);

-- Location: LCCOMB_X19_Y11_N0
\rf|R6|d_read~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R6|d_read~7_combout\ = (\rf_write_en~q\ & \rf|dw[6][1]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[6][1]~combout\,
	combout => \rf|R6|d_read~7_combout\);

-- Location: FF_X19_Y11_N1
\rf|R6|d_read[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R6|d_read~7_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R6|d_read\(1));

-- Location: LCCOMB_X19_Y11_N14
\rf|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux14~0_combout\ = (\A|rfA1\(1) & (((\rf|R6|d_read\(1)) # (\A|rfA1\(0))))) # (!\A|rfA1\(1) & (\rf|R4|d_read\(1) & ((!\A|rfA1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R4|d_read\(1),
	datab => \rf|R6|d_read\(1),
	datac => \A|rfA1\(1),
	datad => \A|rfA1\(0),
	combout => \rf|Mux14~0_combout\);

-- Location: LCCOMB_X18_Y11_N20
\rf|dw[5][1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[5][1]~combout\ = (GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & (\A|rfD3\(1))) # (!GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & ((\rf|dw[5][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(1),
	datac => \rf|dw[5][1]~combout\,
	datad => \rf|Decoder0~0clkctrl_outclk\,
	combout => \rf|dw[5][1]~combout\);

-- Location: LCCOMB_X18_Y11_N14
\rf|R5|d_read~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R5|d_read~7_combout\ = (\rf_write_en~q\ & \rf|dw[5][1]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[5][1]~combout\,
	combout => \rf|R5|d_read~7_combout\);

-- Location: FF_X18_Y11_N15
\rf|R5|d_read[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R5|d_read~7_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R5|d_read\(1));

-- Location: LCCOMB_X18_Y11_N10
\rf|dw[7][1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[7][1]~combout\ = (\rf|Decoder0~3_combout\ & ((\A|rfD3\(1)))) # (!\rf|Decoder0~3_combout\ & (\rf|dw[7][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[7][1]~combout\,
	datac => \rf|Decoder0~3_combout\,
	datad => \A|rfD3\(1),
	combout => \rf|dw[7][1]~combout\);

-- Location: LCCOMB_X19_Y11_N26
\rf|R7|d_read~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R7|d_read~8_combout\ = (\rf_write_en~q\ & \rf|dw[7][1]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[7][1]~combout\,
	combout => \rf|R7|d_read~8_combout\);

-- Location: FF_X19_Y11_N27
\rf|R7|d_read[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R7|d_read~8_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R7|d_read\(1));

-- Location: LCCOMB_X19_Y11_N6
\rf|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux14~1_combout\ = (\rf|Mux14~0_combout\ & (((\rf|R7|d_read\(1)) # (!\A|rfA1\(0))))) # (!\rf|Mux14~0_combout\ & (\rf|R5|d_read\(1) & ((\A|rfA1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux14~0_combout\,
	datab => \rf|R5|d_read\(1),
	datac => \rf|R7|d_read\(1),
	datad => \A|rfA1\(0),
	combout => \rf|Mux14~1_combout\);

-- Location: LCCOMB_X18_Y11_N4
\rf|dw[2][1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[2][1]~combout\ = (\rf|Decoder0~4_combout\ & ((\A|rfD3\(1)))) # (!\rf|Decoder0~4_combout\ & (\rf|dw[2][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[2][1]~combout\,
	datac => \rf|Decoder0~4_combout\,
	datad => \A|rfD3\(1),
	combout => \rf|dw[2][1]~combout\);

-- Location: LCCOMB_X19_Y11_N2
\rf|R2|d_read~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R2|d_read~7_combout\ = (\rf_write_en~q\ & \rf|dw[2][1]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datac => \rf|dw[2][1]~combout\,
	combout => \rf|R2|d_read~7_combout\);

-- Location: FF_X19_Y11_N3
\rf|R2|d_read[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R2|d_read~7_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R2|d_read\(1));

-- Location: LCCOMB_X18_Y11_N28
\rf|dw[0][1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[0][1]~combout\ = (\rf|Decoder0~6_combout\ & ((\A|rfD3\(1)))) # (!\rf|Decoder0~6_combout\ & (\rf|dw[0][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~6_combout\,
	datac => \rf|dw[0][1]~combout\,
	datad => \A|rfD3\(1),
	combout => \rf|dw[0][1]~combout\);

-- Location: LCCOMB_X20_Y11_N6
\rf|R0|d_read~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R0|d_read~7_combout\ = (\rf_write_en~q\ & \rf|dw[0][1]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datac => \rf|dw[0][1]~combout\,
	combout => \rf|R0|d_read~7_combout\);

-- Location: FF_X20_Y11_N7
\rf|R0|d_read[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R0|d_read~7_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R0|d_read\(1));

-- Location: LCCOMB_X20_Y11_N18
\rf|Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux14~2_combout\ = (\A|rfA1\(0) & ((\A|rfA1\(1)) # ((\rf|R1|d_read\(1))))) # (!\A|rfA1\(0) & (!\A|rfA1\(1) & ((\rf|R0|d_read\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(0),
	datab => \A|rfA1\(1),
	datac => \rf|R1|d_read\(1),
	datad => \rf|R0|d_read\(1),
	combout => \rf|Mux14~2_combout\);

-- Location: LCCOMB_X18_Y11_N22
\rf|dw[3][1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[3][1]~combout\ = (\rf|Decoder0~7_combout\ & ((\A|rfD3\(1)))) # (!\rf|Decoder0~7_combout\ & (\rf|dw[3][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~7_combout\,
	datac => \rf|dw[3][1]~combout\,
	datad => \A|rfD3\(1),
	combout => \rf|dw[3][1]~combout\);

-- Location: LCCOMB_X19_Y11_N20
\rf|R3|d_read~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R3|d_read~7_combout\ = (\rf_write_en~q\ & \rf|dw[3][1]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[3][1]~combout\,
	combout => \rf|R3|d_read~7_combout\);

-- Location: FF_X19_Y11_N21
\rf|R3|d_read[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R3|d_read~7_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R3|d_read\(1));

-- Location: LCCOMB_X19_Y11_N16
\rf|Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux14~3_combout\ = (\rf|Mux14~2_combout\ & (((\rf|R3|d_read\(1)) # (!\A|rfA1\(1))))) # (!\rf|Mux14~2_combout\ & (\rf|R2|d_read\(1) & ((\A|rfA1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R2|d_read\(1),
	datab => \rf|Mux14~2_combout\,
	datac => \rf|R3|d_read\(1),
	datad => \A|rfA1\(1),
	combout => \rf|Mux14~3_combout\);

-- Location: LCCOMB_X19_Y11_N12
\rf|Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux14~4_combout\ = (\A|rfA1\(2) & (\rf|Mux14~1_combout\)) # (!\A|rfA1\(2) & ((\rf|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(2),
	datab => \rf|Mux14~1_combout\,
	datad => \rf|Mux14~3_combout\,
	combout => \rf|Mux14~4_combout\);

-- Location: LCCOMB_X19_Y11_N8
\A|D1[0][1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[0][1]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\rf|Mux14~4_combout\)) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\A|D1[0][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux14~4_combout\,
	datab => \A|D1[0][1]~combout\,
	datac => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D1[0][1]~combout\);

-- Location: LCCOMB_X20_Y16_N2
\A|R|adderA[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderA\(1) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderA\(1)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D1[0][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][1]~combout\,
	datac => \A|R|adderA\(1),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderA\(1));

-- Location: LCCOMB_X20_Y15_N12
\A|R|adder|Sum[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|Sum[1]~5_combout\ = \A|R|adderA\(1) $ (\A|R|adderB\(1) $ (((\A|R|adderA\(0) & \A|R|adderB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderA\(1),
	datab => \A|R|adderB\(1),
	datac => \A|R|adderA\(0),
	datad => \A|R|adderB\(0),
	combout => \A|R|adder|Sum[1]~5_combout\);

-- Location: LCCOMB_X20_Y15_N14
\A|R|rfD3[1]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[1]~25_combout\ = (\A|Equal0~0_combout\ & (((\A|R|adder|Sum[1]~5_combout\)))) # (!\A|Equal0~0_combout\ & (((!\A|D1[0][1]~combout\)) # (!\A|D2[0][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][1]~combout\,
	datab => \A|D1[0][1]~combout\,
	datac => \A|Equal0~0_combout\,
	datad => \A|R|adder|Sum[1]~5_combout\,
	combout => \A|R|rfD3[1]~25_combout\);

-- Location: LCCOMB_X18_Y18_N14
\A|R|rfD3[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3\(1) = (GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & (\A|R|rfD3[1]~25_combout\)) # (!GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & ((\A|R|rfD3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|rfD3[1]~25_combout\,
	datac => \A|R|rfD3\(1),
	datad => \A|R|rfD3[14]~13clkctrl_outclk\,
	combout => \A|R|rfD3\(1));

-- Location: LCCOMB_X20_Y11_N22
\A|D2[1][1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[1][1]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux30~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D2[1][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[1][1]~combout\,
	datac => \A|op_proc~1_combout\,
	datad => \rf|Mux30~4_combout\,
	combout => \A|D2[1][1]~combout\);

-- Location: LCCOMB_X19_Y11_N30
\A|D1[1][1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[1][1]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux14~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D1[1][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][1]~combout\,
	datac => \A|op_proc~1_combout\,
	datad => \rf|Mux14~4_combout\,
	combout => \A|D1[1][1]~combout\);

-- Location: LCCOMB_X18_Y18_N18
\A|I|adderA[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA[1]~13_combout\ = (\A|Equal0~1_combout\ & (((\A|D1[1][1]~combout\)))) # (!\A|Equal0~1_combout\ & ((\A|I|adderA[0]~0_combout\ & (\A|D2[1][1]~combout\)) # (!\A|I|adderA[0]~0_combout\ & ((\A|D1[1][1]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[1][1]~combout\,
	datab => \A|D1[1][1]~combout\,
	datac => \A|Equal0~1_combout\,
	datad => \A|I|adderA[0]~0_combout\,
	combout => \A|I|adderA[1]~13_combout\);

-- Location: LCCOMB_X17_Y18_N10
\A|I|adderA[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA\(1) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderA[1]~13_combout\))) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\A|I|adderA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(1),
	datab => \A|I|adderA[1]~13_combout\,
	datad => \A|I|adderB[0]~7clkctrl_outclk\,
	combout => \A|I|adderA\(1));

-- Location: LCCOMB_X17_Y18_N4
\A|I|adderB[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderB\(1) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\inp[1]~input_o\)) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[1]~input_o\,
	datac => \A|I|adderB\(1),
	datad => \A|I|adderB[0]~7clkctrl_outclk\,
	combout => \A|I|adderB\(1));

-- Location: LCCOMB_X17_Y18_N16
\A|I|adder|Sum[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Sum[1]~4_combout\ = \A|I|adderA\(1) $ (\A|I|adderB\(1) $ (((\A|I|adderA\(0) & \A|I|adderB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(1),
	datab => \A|I|adderA\(0),
	datac => \A|I|adderB\(1),
	datad => \A|I|adderB\(0),
	combout => \A|I|adder|Sum[1]~4_combout\);

-- Location: LCCOMB_X18_Y18_N30
\A|I|rfD3[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[1]~12_combout\ = (\A|I|rfD3[15]~22_combout\ & (\A|I|adder|Sum[1]~4_combout\)) # (!\A|I|rfD3[15]~22_combout\ & (((!\A|Equal0~2_combout\ & \A|D1[1][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adder|Sum[1]~4_combout\,
	datab => \A|Equal0~2_combout\,
	datac => \A|I|rfD3[15]~22_combout\,
	datad => \A|D1[1][1]~combout\,
	combout => \A|I|rfD3[1]~12_combout\);

-- Location: LCCOMB_X18_Y18_N12
\A|I|rfD3[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3\(1) = (GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & ((\A|I|rfD3[1]~12_combout\))) # (!GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & (\A|I|rfD3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfD3\(1),
	datac => \A|I|rfD3[1]~12_combout\,
	datad => \A|I|rfD3[15]~4clkctrl_outclk\,
	combout => \A|I|rfD3\(1));

-- Location: LCCOMB_X18_Y18_N10
\A|rfD3[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[1]~12_combout\ = (\A|op_proc~0_combout\ & (((\A|R|rfD3\(1))))) # (!\A|op_proc~0_combout\ & (\A|op_proc~1_combout\ & ((\A|I|rfD3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~0_combout\,
	datab => \A|op_proc~1_combout\,
	datac => \A|R|rfD3\(1),
	datad => \A|I|rfD3\(1),
	combout => \A|rfD3[1]~12_combout\);

-- Location: LCCOMB_X18_Y11_N6
\A|rfD3[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3\(1) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfD3[1]~12_combout\)) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfD3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3[1]~12_combout\,
	datac => \A|rfD3\(1),
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfD3\(1));

-- Location: LCCOMB_X18_Y11_N2
\rf|dw[1][1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[1][1]~combout\ = (\rf|Decoder0~5_combout\ & ((\A|rfD3\(1)))) # (!\rf|Decoder0~5_combout\ & (\rf|dw[1][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[1][1]~combout\,
	datac => \rf|Decoder0~5_combout\,
	datad => \A|rfD3\(1),
	combout => \rf|dw[1][1]~combout\);

-- Location: LCCOMB_X19_Y11_N28
\rf|R1|d_read~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R1|d_read~7_combout\ = (\rf_write_en~q\ & \rf|dw[1][1]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[1][1]~combout\,
	combout => \rf|R1|d_read~7_combout\);

-- Location: LCCOMB_X20_Y11_N24
\rf|R1|d_read[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R1|d_read[1]~feeder_combout\ = \rf|R1|d_read~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|R1|d_read~7_combout\,
	combout => \rf|R1|d_read[1]~feeder_combout\);

-- Location: FF_X20_Y11_N25
\rf|R1|d_read[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R1|d_read[1]~feeder_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R1|d_read\(1));

-- Location: LCCOMB_X20_Y11_N2
\rf|Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux30~2_combout\ = (\A|rfA2\(1) & (((\A|rfA2\(0))))) # (!\A|rfA2\(1) & ((\A|rfA2\(0) & (\rf|R1|d_read\(1))) # (!\A|rfA2\(0) & ((\rf|R0|d_read\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R1|d_read\(1),
	datab => \A|rfA2\(1),
	datac => \rf|R0|d_read\(1),
	datad => \A|rfA2\(0),
	combout => \rf|Mux30~2_combout\);

-- Location: LCCOMB_X20_Y11_N10
\rf|Mux30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux30~3_combout\ = (\rf|Mux30~2_combout\ & (((\rf|R3|d_read\(1)) # (!\A|rfA2\(1))))) # (!\rf|Mux30~2_combout\ & (\rf|R2|d_read\(1) & (\A|rfA2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux30~2_combout\,
	datab => \rf|R2|d_read\(1),
	datac => \A|rfA2\(1),
	datad => \rf|R3|d_read\(1),
	combout => \rf|Mux30~3_combout\);

-- Location: LCCOMB_X19_Y11_N22
\rf|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux30~0_combout\ = (\A|rfA2\(0) & (((\A|rfA2\(1))))) # (!\A|rfA2\(0) & ((\A|rfA2\(1) & ((\rf|R6|d_read\(1)))) # (!\A|rfA2\(1) & (\rf|R4|d_read\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R4|d_read\(1),
	datab => \rf|R6|d_read\(1),
	datac => \A|rfA2\(0),
	datad => \A|rfA2\(1),
	combout => \rf|Mux30~0_combout\);

-- Location: LCCOMB_X19_Y11_N18
\rf|Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux30~1_combout\ = (\rf|Mux30~0_combout\ & (((\rf|R7|d_read\(1)) # (!\A|rfA2\(0))))) # (!\rf|Mux30~0_combout\ & (\rf|R5|d_read\(1) & ((\A|rfA2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux30~0_combout\,
	datab => \rf|R5|d_read\(1),
	datac => \rf|R7|d_read\(1),
	datad => \A|rfA2\(0),
	combout => \rf|Mux30~1_combout\);

-- Location: LCCOMB_X20_Y11_N0
\rf|Mux30~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux30~4_combout\ = (\A|rfA2\(2) & ((\rf|Mux30~1_combout\))) # (!\A|rfA2\(2) & (\rf|Mux30~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Mux30~3_combout\,
	datac => \rf|Mux30~1_combout\,
	datad => \A|rfA2\(2),
	combout => \rf|Mux30~4_combout\);

-- Location: LCCOMB_X20_Y11_N26
\A|D2[0][1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[0][1]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\rf|Mux30~4_combout\)) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\A|D2[0][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Mux30~4_combout\,
	datac => \A|D2[0][1]~combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D2[0][1]~combout\);

-- Location: LCCOMB_X20_Y16_N16
\A|R|adderB[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderB\(1) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderB\(1)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D2[0][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][1]~combout\,
	datac => \A|R|adderB\(1),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderB\(1));

-- Location: LCCOMB_X20_Y16_N20
\A|R|adder|carry[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[2]~0_combout\ = (\A|R|adderB\(1) & ((\A|R|adderA\(1)) # ((\A|R|adderA\(0) & \A|R|adderB\(0))))) # (!\A|R|adderB\(1) & (\A|R|adderA\(0) & (\A|R|adderB\(0) & \A|R|adderA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderA\(0),
	datab => \A|R|adderB\(1),
	datac => \A|R|adderB\(0),
	datad => \A|R|adderA\(1),
	combout => \A|R|adder|carry[2]~0_combout\);

-- Location: LCCOMB_X20_Y16_N4
\A|R|adderA[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderA\(2) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderA\(2)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D1[0][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D1[0][2]~combout\,
	datac => \A|R|adderA\(2),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderA\(2));

-- Location: LCCOMB_X20_Y16_N0
\A|R|rfD3[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[2]~27_combout\ = (\A|Equal0~0_combout\ & (\A|R|adder|carry[2]~0_combout\ $ (\A|R|adderA\(2) $ (\A|R|adderB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adder|carry[2]~0_combout\,
	datab => \A|Equal0~0_combout\,
	datac => \A|R|adderA\(2),
	datad => \A|R|adderB\(2),
	combout => \A|R|rfD3[2]~27_combout\);

-- Location: LCCOMB_X20_Y16_N18
\A|R|rfD3[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[2]~30_combout\ = (\A|R|rfD3[2]~27_combout\) # ((!\A|Equal0~0_combout\ & ((!\A|D2[0][2]~combout\) # (!\A|D1[0][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][2]~combout\,
	datab => \A|D2[0][2]~combout\,
	datac => \A|Equal0~0_combout\,
	datad => \A|R|rfD3[2]~27_combout\,
	combout => \A|R|rfD3[2]~30_combout\);

-- Location: LCCOMB_X20_Y17_N8
\A|R|rfD3[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3\(2) = (GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & (\A|R|rfD3[2]~30_combout\)) # (!GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & ((\A|R|rfD3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|rfD3[2]~30_combout\,
	datac => \A|R|rfD3\(2),
	datad => \A|R|rfD3[14]~13clkctrl_outclk\,
	combout => \A|R|rfD3\(2));

-- Location: LCCOMB_X20_Y10_N22
\A|D1[1][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[1][2]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux13~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D1[1][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][2]~combout\,
	datac => \A|op_proc~1_combout\,
	datad => \rf|Mux13~4_combout\,
	combout => \A|D1[1][2]~combout\);

-- Location: LCCOMB_X16_Y10_N14
\A|D2[1][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[1][2]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux29~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D2[1][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[1][2]~combout\,
	datac => \A|op_proc~1_combout\,
	datad => \rf|Mux29~4_combout\,
	combout => \A|D2[1][2]~combout\);

-- Location: LCCOMB_X18_Y14_N28
\A|I|adderA[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA[2]~11_combout\ = (\A|Equal0~1_combout\ & (((\A|D1[1][2]~combout\)))) # (!\A|Equal0~1_combout\ & ((\A|I|adderA[0]~0_combout\ & (\A|D2[1][2]~combout\)) # (!\A|I|adderA[0]~0_combout\ & ((\A|D1[1][2]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Equal0~1_combout\,
	datab => \A|D2[1][2]~combout\,
	datac => \A|I|adderA[0]~0_combout\,
	datad => \A|D1[1][2]~combout\,
	combout => \A|I|adderA[2]~11_combout\);

-- Location: LCCOMB_X17_Y18_N8
\A|I|adderA[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA\(2) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderA[2]~11_combout\))) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\A|I|adderA\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|adderA\(2),
	datac => \A|I|adderA[2]~11_combout\,
	datad => \A|I|adderB[0]~7clkctrl_outclk\,
	combout => \A|I|adderA\(2));

-- Location: LCCOMB_X17_Y18_N22
\A|I|adderB[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderB\(2) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\inp[2]~input_o\)) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp[2]~input_o\,
	datac => \A|I|adderB\(2),
	datad => \A|I|adderB[0]~7clkctrl_outclk\,
	combout => \A|I|adderB\(2));

-- Location: LCCOMB_X17_Y18_N0
\A|I|adder|carry[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|carry[2]~0_combout\ = (\A|I|adderA\(1) & ((\A|I|adderB\(1)) # ((\A|I|adderA\(0) & \A|I|adderB\(0))))) # (!\A|I|adderA\(1) & (\A|I|adderA\(0) & (\A|I|adderB\(1) & \A|I|adderB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(1),
	datab => \A|I|adderA\(0),
	datac => \A|I|adderB\(1),
	datad => \A|I|adderB\(0),
	combout => \A|I|adder|carry[2]~0_combout\);

-- Location: LCCOMB_X17_Y18_N18
\A|I|adder|Sum[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Sum[2]~0_combout\ = \A|I|adderA\(2) $ (\A|I|adderB\(2) $ (\A|I|adder|carry[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|adderA\(2),
	datac => \A|I|adderB\(2),
	datad => \A|I|adder|carry[2]~0_combout\,
	combout => \A|I|adder|Sum[2]~0_combout\);

-- Location: LCCOMB_X18_Y18_N22
\A|I|rfD3[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[2]~14_combout\ = (\A|I|rfD3[15]~22_combout\ & (((\A|I|adder|Sum[2]~0_combout\)))) # (!\A|I|rfD3[15]~22_combout\ & (\A|D1[1][2]~combout\ & ((!\A|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][2]~combout\,
	datab => \A|I|adder|Sum[2]~0_combout\,
	datac => \A|I|rfD3[15]~22_combout\,
	datad => \A|Equal0~2_combout\,
	combout => \A|I|rfD3[2]~14_combout\);

-- Location: LCCOMB_X20_Y17_N18
\A|I|rfD3[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3\(2) = (GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & ((\A|I|rfD3[2]~14_combout\))) # (!GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & (\A|I|rfD3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|rfD3\(2),
	datac => \A|I|rfD3[2]~14_combout\,
	datad => \A|I|rfD3[15]~4clkctrl_outclk\,
	combout => \A|I|rfD3\(2));

-- Location: LCCOMB_X20_Y17_N10
\A|rfD3[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[2]~14_combout\ = (\A|op_proc~0_combout\ & (\A|R|rfD3\(2))) # (!\A|op_proc~0_combout\ & (((\A|I|rfD3\(2) & \A|op_proc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~0_combout\,
	datab => \A|R|rfD3\(2),
	datac => \A|I|rfD3\(2),
	datad => \A|op_proc~1_combout\,
	combout => \A|rfD3[2]~14_combout\);

-- Location: LCCOMB_X17_Y10_N12
\A|rfD3[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3\(2) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfD3[2]~14_combout\)) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfD3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3[2]~14_combout\,
	datac => \A|rfD3\(2),
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfD3\(2));

-- Location: LCCOMB_X17_Y10_N30
\rf|dw[3][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[3][2]~combout\ = (\rf|Decoder0~7_combout\ & ((\A|rfD3\(2)))) # (!\rf|Decoder0~7_combout\ & (\rf|dw[3][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Decoder0~7_combout\,
	datac => \rf|dw[3][2]~combout\,
	datad => \A|rfD3\(2),
	combout => \rf|dw[3][2]~combout\);

-- Location: LCCOMB_X16_Y10_N26
\rf|R3|d_read~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R3|d_read~9_combout\ = (\rf_write_en~q\ & \rf|dw[3][2]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[3][2]~combout\,
	combout => \rf|R3|d_read~9_combout\);

-- Location: FF_X16_Y10_N27
\rf|R3|d_read[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R3|d_read~9_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R3|d_read\(2));

-- Location: LCCOMB_X20_Y10_N16
\rf|Mux29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux29~2_combout\ = (\A|rfA2\(0) & ((\rf|R1|d_read\(2)) # ((\A|rfA2\(1))))) # (!\A|rfA2\(0) & (((\rf|R0|d_read\(2) & !\A|rfA2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(0),
	datab => \rf|R1|d_read\(2),
	datac => \rf|R0|d_read\(2),
	datad => \A|rfA2\(1),
	combout => \rf|Mux29~2_combout\);

-- Location: LCCOMB_X16_Y10_N30
\rf|Mux29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux29~3_combout\ = (\A|rfA2\(1) & ((\rf|Mux29~2_combout\ & (\rf|R3|d_read\(2))) # (!\rf|Mux29~2_combout\ & ((\rf|R2|d_read\(2)))))) # (!\A|rfA2\(1) & (((\rf|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(1),
	datab => \rf|R3|d_read\(2),
	datac => \rf|R2|d_read\(2),
	datad => \rf|Mux29~2_combout\,
	combout => \rf|Mux29~3_combout\);

-- Location: LCCOMB_X16_Y10_N24
\rf|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux29~0_combout\ = (\A|rfA2\(1) & ((\rf|R6|d_read\(2)) # ((\A|rfA2\(0))))) # (!\A|rfA2\(1) & (((\rf|R4|d_read\(2) & !\A|rfA2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R6|d_read\(2),
	datab => \rf|R4|d_read\(2),
	datac => \A|rfA2\(1),
	datad => \A|rfA2\(0),
	combout => \rf|Mux29~0_combout\);

-- Location: LCCOMB_X16_Y10_N0
\rf|Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux29~1_combout\ = (\rf|Mux29~0_combout\ & (((\rf|R7|d_read\(2)) # (!\A|rfA2\(0))))) # (!\rf|Mux29~0_combout\ & (\rf|R5|d_read\(2) & ((\A|rfA2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux29~0_combout\,
	datab => \rf|R5|d_read\(2),
	datac => \rf|R7|d_read\(2),
	datad => \A|rfA2\(0),
	combout => \rf|Mux29~1_combout\);

-- Location: LCCOMB_X16_Y10_N28
\rf|Mux29~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux29~4_combout\ = (\A|rfA2\(2) & ((\rf|Mux29~1_combout\))) # (!\A|rfA2\(2) & (\rf|Mux29~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux29~3_combout\,
	datac => \A|rfA2\(2),
	datad => \rf|Mux29~1_combout\,
	combout => \rf|Mux29~4_combout\);

-- Location: LCCOMB_X16_Y12_N20
\A|D2[0][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[0][2]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux29~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D2[0][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[0][2]~combout\,
	datac => \rf|Mux29~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D2[0][2]~combout\);

-- Location: LCCOMB_X20_Y16_N14
\A|R|adderB[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderB\(2) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderB\(2)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D2[0][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[0][2]~combout\,
	datac => \A|R|adderB\(2),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderB\(2));

-- Location: LCCOMB_X20_Y16_N28
\A|R|adder|carry[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[3]~2_combout\ = (\A|R|adderB\(2) & ((\A|R|adderA\(2)) # (\A|R|adder|carry[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|adderB\(2),
	datac => \A|R|adderA\(2),
	datad => \A|R|adder|carry[2]~0_combout\,
	combout => \A|R|adder|carry[3]~2_combout\);

-- Location: LCCOMB_X19_Y16_N26
\A|R|adderB[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderB\(3) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderB\(3)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D2[0][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][3]~combout\,
	datac => \A|R|adderB\(3),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderB\(3));

-- Location: LCCOMB_X20_Y11_N28
\rf|dw[4][3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[4][3]~combout\ = (GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & (\A|rfD3\(3))) # (!GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & ((\rf|dw[4][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(3),
	datab => \rf|dw[4][3]~combout\,
	datad => \rf|Decoder0~2clkctrl_outclk\,
	combout => \rf|dw[4][3]~combout\);

-- Location: LCCOMB_X20_Y11_N4
\rf|R4|d_read~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R4|d_read~6_combout\ = (\rf_write_en~q\ & \rf|dw[4][3]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[4][3]~combout\,
	combout => \rf|R4|d_read~6_combout\);

-- Location: FF_X20_Y11_N5
\rf|R4|d_read[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R4|d_read~6_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R4|d_read\(3));

-- Location: LCCOMB_X20_Y11_N14
\rf|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux12~0_combout\ = (\A|rfA1\(0) & (((\A|rfA1\(1))))) # (!\A|rfA1\(0) & ((\A|rfA1\(1) & (\rf|R6|d_read\(3))) # (!\A|rfA1\(1) & ((\rf|R4|d_read\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(0),
	datab => \rf|R6|d_read\(3),
	datac => \rf|R4|d_read\(3),
	datad => \A|rfA1\(1),
	combout => \rf|Mux12~0_combout\);

-- Location: LCCOMB_X18_Y11_N18
\rf|dw[7][3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[7][3]~combout\ = (\rf|Decoder0~3_combout\ & ((\A|rfD3\(3)))) # (!\rf|Decoder0~3_combout\ & (\rf|dw[7][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[7][3]~combout\,
	datac => \rf|Decoder0~3_combout\,
	datad => \A|rfD3\(3),
	combout => \rf|dw[7][3]~combout\);

-- Location: LCCOMB_X17_Y11_N10
\rf|R7|d_read~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R7|d_read~7_combout\ = (\rf_write_en~q\ & \rf|dw[7][3]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[7][3]~combout\,
	combout => \rf|R7|d_read~7_combout\);

-- Location: FF_X17_Y11_N11
\rf|R7|d_read[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R7|d_read~7_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R7|d_read\(3));

-- Location: LCCOMB_X18_Y11_N16
\rf|dw[5][3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[5][3]~combout\ = (GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & ((\A|rfD3\(3)))) # (!GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & (\rf|dw[5][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[5][3]~combout\,
	datac => \A|rfD3\(3),
	datad => \rf|Decoder0~0clkctrl_outclk\,
	combout => \rf|dw[5][3]~combout\);

-- Location: LCCOMB_X18_Y11_N12
\rf|R5|d_read~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R5|d_read~6_combout\ = (\rf_write_en~q\ & \rf|dw[5][3]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[5][3]~combout\,
	combout => \rf|R5|d_read~6_combout\);

-- Location: FF_X18_Y11_N13
\rf|R5|d_read[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R5|d_read~6_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R5|d_read\(3));

-- Location: LCCOMB_X17_Y11_N18
\rf|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux12~1_combout\ = (\rf|Mux12~0_combout\ & (((\rf|R7|d_read\(3))) # (!\A|rfA1\(0)))) # (!\rf|Mux12~0_combout\ & (\A|rfA1\(0) & ((\rf|R5|d_read\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux12~0_combout\,
	datab => \A|rfA1\(0),
	datac => \rf|R7|d_read\(3),
	datad => \rf|R5|d_read\(3),
	combout => \rf|Mux12~1_combout\);

-- Location: LCCOMB_X18_Y11_N26
\rf|dw[1][3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[1][3]~combout\ = (\rf|Decoder0~5_combout\ & ((\A|rfD3\(3)))) # (!\rf|Decoder0~5_combout\ & (\rf|dw[1][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Decoder0~5_combout\,
	datac => \rf|dw[1][3]~combout\,
	datad => \A|rfD3\(3),
	combout => \rf|dw[1][3]~combout\);

-- Location: LCCOMB_X17_Y11_N22
\rf|R1|d_read~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R1|d_read~6_combout\ = (\rf_write_en~q\ & \rf|dw[1][3]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[1][3]~combout\,
	combout => \rf|R1|d_read~6_combout\);

-- Location: FF_X17_Y11_N23
\rf|R1|d_read[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R1|d_read~6_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R1|d_read\(3));

-- Location: LCCOMB_X18_Y11_N24
\rf|dw[0][3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[0][3]~combout\ = (\rf|Decoder0~6_combout\ & ((\A|rfD3\(3)))) # (!\rf|Decoder0~6_combout\ & (\rf|dw[0][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[0][3]~combout\,
	datac => \rf|Decoder0~6_combout\,
	datad => \A|rfD3\(3),
	combout => \rf|dw[0][3]~combout\);

-- Location: LCCOMB_X17_Y11_N0
\rf|R0|d_read~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R0|d_read~6_combout\ = (\rf_write_en~q\ & \rf|dw[0][3]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[0][3]~combout\,
	combout => \rf|R0|d_read~6_combout\);

-- Location: FF_X17_Y11_N1
\rf|R0|d_read[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R0|d_read~6_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R0|d_read\(3));

-- Location: LCCOMB_X17_Y11_N12
\rf|Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux12~2_combout\ = (\A|rfA1\(1) & (((\A|rfA1\(0))))) # (!\A|rfA1\(1) & ((\A|rfA1\(0) & (\rf|R1|d_read\(3))) # (!\A|rfA1\(0) & ((\rf|R0|d_read\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R1|d_read\(3),
	datab => \A|rfA1\(1),
	datac => \A|rfA1\(0),
	datad => \rf|R0|d_read\(3),
	combout => \rf|Mux12~2_combout\);

-- Location: LCCOMB_X18_Y11_N30
\rf|dw[3][3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[3][3]~combout\ = (\rf|Decoder0~7_combout\ & ((\A|rfD3\(3)))) # (!\rf|Decoder0~7_combout\ & (\rf|dw[3][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~7_combout\,
	datac => \rf|dw[3][3]~combout\,
	datad => \A|rfD3\(3),
	combout => \rf|dw[3][3]~combout\);

-- Location: LCCOMB_X17_Y11_N24
\rf|R3|d_read~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R3|d_read~6_combout\ = (\rf|dw[3][3]~combout\ & \rf_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|dw[3][3]~combout\,
	datad => \rf_write_en~q\,
	combout => \rf|R3|d_read~6_combout\);

-- Location: FF_X17_Y11_N25
\rf|R3|d_read[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R3|d_read~6_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R3|d_read\(3));

-- Location: LCCOMB_X18_Y11_N8
\rf|dw[2][3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[2][3]~combout\ = (\rf|Decoder0~4_combout\ & ((\A|rfD3\(3)))) # (!\rf|Decoder0~4_combout\ & (\rf|dw[2][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Decoder0~4_combout\,
	datac => \rf|dw[2][3]~combout\,
	datad => \A|rfD3\(3),
	combout => \rf|dw[2][3]~combout\);

-- Location: LCCOMB_X16_Y11_N12
\rf|R2|d_read~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R2|d_read~6_combout\ = (\rf_write_en~q\ & \rf|dw[2][3]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datac => \rf|dw[2][3]~combout\,
	combout => \rf|R2|d_read~6_combout\);

-- Location: FF_X16_Y11_N13
\rf|R2|d_read[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R2|d_read~6_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R2|d_read\(3));

-- Location: LCCOMB_X17_Y11_N28
\rf|Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux12~3_combout\ = (\A|rfA1\(1) & ((\rf|Mux12~2_combout\ & (\rf|R3|d_read\(3))) # (!\rf|Mux12~2_combout\ & ((\rf|R2|d_read\(3)))))) # (!\A|rfA1\(1) & (\rf|Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(1),
	datab => \rf|Mux12~2_combout\,
	datac => \rf|R3|d_read\(3),
	datad => \rf|R2|d_read\(3),
	combout => \rf|Mux12~3_combout\);

-- Location: LCCOMB_X17_Y11_N6
\rf|Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux12~4_combout\ = (\A|rfA1\(2) & (\rf|Mux12~1_combout\)) # (!\A|rfA1\(2) & ((\rf|Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux12~1_combout\,
	datac => \rf|Mux12~3_combout\,
	datad => \A|rfA1\(2),
	combout => \rf|Mux12~4_combout\);

-- Location: LCCOMB_X17_Y11_N8
\A|D1[0][3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[0][3]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux12~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D1[0][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D1[0][3]~combout\,
	datac => \rf|Mux12~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D1[0][3]~combout\);

-- Location: LCCOMB_X19_Y16_N28
\A|R|adderA[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderA\(3) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderA\(3)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D1[0][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D1[0][3]~combout\,
	datac => \A|R|adderA\(3),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderA\(3));

-- Location: LCCOMB_X20_Y16_N10
\A|R|adder|carry[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[3]~1_combout\ = (\A|R|adderA\(2) & \A|R|adder|carry[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|R|adderA\(2),
	datad => \A|R|adder|carry[2]~0_combout\,
	combout => \A|R|adder|carry[3]~1_combout\);

-- Location: LCCOMB_X19_Y17_N14
\A|R|adder|Sum[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|Sum\(3) = \A|R|adderB\(3) $ (\A|R|adderA\(3) $ (((\A|R|adder|carry[3]~2_combout\) # (\A|R|adder|carry[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adder|carry[3]~2_combout\,
	datab => \A|R|adderB\(3),
	datac => \A|R|adderA\(3),
	datad => \A|R|adder|carry[3]~1_combout\,
	combout => \A|R|adder|Sum\(3));

-- Location: LCCOMB_X19_Y17_N28
\A|R|rfD3[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[3]~24_combout\ = (\A|Equal0~0_combout\ & (((\A|R|adder|Sum\(3))))) # (!\A|Equal0~0_combout\ & (((!\A|D1[0][3]~combout\)) # (!\A|D2[0][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][3]~combout\,
	datab => \A|R|adder|Sum\(3),
	datac => \A|Equal0~0_combout\,
	datad => \A|D1[0][3]~combout\,
	combout => \A|R|rfD3[3]~24_combout\);

-- Location: LCCOMB_X18_Y18_N26
\A|R|rfD3[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3\(3) = (GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & ((\A|R|rfD3[3]~24_combout\))) # (!GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & (\A|R|rfD3\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|rfD3\(3),
	datac => \A|R|rfD3[3]~24_combout\,
	datad => \A|R|rfD3[14]~13clkctrl_outclk\,
	combout => \A|R|rfD3\(3));

-- Location: LCCOMB_X17_Y18_N12
\A|I|adderB[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderB\(3) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\inp[3]~input_o\))) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\A|I|adderB\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderB\(3),
	datac => \inp[3]~input_o\,
	datad => \A|I|adderB[0]~7clkctrl_outclk\,
	combout => \A|I|adderB\(3));

-- Location: LCCOMB_X17_Y18_N30
\A|I|adder|carry[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|carry[3]~1_combout\ = (\A|I|adderA\(2) & \A|I|adder|carry[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|I|adderA\(2),
	datad => \A|I|adder|carry[2]~0_combout\,
	combout => \A|I|adder|carry[3]~1_combout\);

-- Location: LCCOMB_X17_Y18_N24
\A|I|adder|carry[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|carry[3]~2_combout\ = (\A|I|adderB\(2) & ((\A|I|adderA\(2)) # (\A|I|adder|carry[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderB\(2),
	datac => \A|I|adderA\(2),
	datad => \A|I|adder|carry[2]~0_combout\,
	combout => \A|I|adder|carry[3]~2_combout\);

-- Location: LCCOMB_X17_Y18_N6
\A|I|adder|Sum[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Sum\(3) = \A|I|adderA\(3) $ (\A|I|adderB\(3) $ (((\A|I|adder|carry[3]~1_combout\) # (\A|I|adder|carry[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(3),
	datab => \A|I|adderB\(3),
	datac => \A|I|adder|carry[3]~1_combout\,
	datad => \A|I|adder|carry[3]~2_combout\,
	combout => \A|I|adder|Sum\(3));

-- Location: LCCOMB_X17_Y11_N30
\A|D1[1][3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[1][3]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux12~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D1[1][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][3]~combout\,
	datab => \A|op_proc~1_combout\,
	datad => \rf|Mux12~4_combout\,
	combout => \A|D1[1][3]~combout\);

-- Location: LCCOMB_X18_Y18_N0
\A|I|rfD3[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[3]~11_combout\ = (\A|I|rfD3[15]~22_combout\ & (\A|I|adder|Sum\(3))) # (!\A|I|rfD3[15]~22_combout\ & (((!\A|Equal0~2_combout\ & \A|D1[1][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adder|Sum\(3),
	datab => \A|Equal0~2_combout\,
	datac => \A|I|rfD3[15]~22_combout\,
	datad => \A|D1[1][3]~combout\,
	combout => \A|I|rfD3[3]~11_combout\);

-- Location: LCCOMB_X18_Y18_N16
\A|I|rfD3[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3\(3) = (GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & ((\A|I|rfD3[3]~11_combout\))) # (!GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & (\A|I|rfD3\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|rfD3\(3),
	datac => \A|I|rfD3[3]~11_combout\,
	datad => \A|I|rfD3[15]~4clkctrl_outclk\,
	combout => \A|I|rfD3\(3));

-- Location: LCCOMB_X18_Y18_N24
\A|rfD3[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[3]~11_combout\ = (\A|op_proc~0_combout\ & (\A|R|rfD3\(3))) # (!\A|op_proc~0_combout\ & (((\A|op_proc~1_combout\ & \A|I|rfD3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|rfD3\(3),
	datab => \A|op_proc~1_combout\,
	datac => \A|op_proc~0_combout\,
	datad => \A|I|rfD3\(3),
	combout => \A|rfD3[3]~11_combout\);

-- Location: LCCOMB_X18_Y11_N0
\A|rfD3[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3\(3) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfD3[3]~11_combout\))) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfD3\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(3),
	datac => \A|rfD3[3]~11_combout\,
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfD3\(3));

-- Location: LCCOMB_X20_Y11_N12
\rf|dw[6][3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[6][3]~combout\ = (GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & ((\A|rfD3\(3)))) # (!GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & (\rf|dw[6][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[6][3]~combout\,
	datac => \rf|Decoder0~1clkctrl_outclk\,
	datad => \A|rfD3\(3),
	combout => \rf|dw[6][3]~combout\);

-- Location: LCCOMB_X20_Y11_N30
\rf|R6|d_read~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R6|d_read~6_combout\ = (\rf_write_en~q\ & \rf|dw[6][3]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[6][3]~combout\,
	combout => \rf|R6|d_read~6_combout\);

-- Location: FF_X20_Y11_N31
\rf|R6|d_read[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R6|d_read~6_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R6|d_read\(3));

-- Location: LCCOMB_X20_Y11_N8
\rf|Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux28~0_combout\ = (\A|rfA2\(1) & ((\rf|R6|d_read\(3)) # ((\A|rfA2\(0))))) # (!\A|rfA2\(1) & (((\rf|R4|d_read\(3) & !\A|rfA2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(1),
	datab => \rf|R6|d_read\(3),
	datac => \rf|R4|d_read\(3),
	datad => \A|rfA2\(0),
	combout => \rf|Mux28~0_combout\);

-- Location: LCCOMB_X20_Y13_N22
\rf|Mux28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux28~1_combout\ = (\A|rfA2\(0) & ((\rf|Mux28~0_combout\ & ((\rf|R7|d_read\(3)))) # (!\rf|Mux28~0_combout\ & (\rf|R5|d_read\(3))))) # (!\A|rfA2\(0) & (\rf|Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(0),
	datab => \rf|Mux28~0_combout\,
	datac => \rf|R5|d_read\(3),
	datad => \rf|R7|d_read\(3),
	combout => \rf|Mux28~1_combout\);

-- Location: LCCOMB_X20_Y13_N28
\rf|Mux28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux28~2_combout\ = (\A|rfA2\(0) & (((\A|rfA2\(1)) # (\rf|R1|d_read\(3))))) # (!\A|rfA2\(0) & (\rf|R0|d_read\(3) & (!\A|rfA2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R0|d_read\(3),
	datab => \A|rfA2\(0),
	datac => \A|rfA2\(1),
	datad => \rf|R1|d_read\(3),
	combout => \rf|Mux28~2_combout\);

-- Location: LCCOMB_X20_Y13_N12
\rf|Mux28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux28~3_combout\ = (\A|rfA2\(1) & ((\rf|Mux28~2_combout\ & ((\rf|R3|d_read\(3)))) # (!\rf|Mux28~2_combout\ & (\rf|R2|d_read\(3))))) # (!\A|rfA2\(1) & (((\rf|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R2|d_read\(3),
	datab => \rf|R3|d_read\(3),
	datac => \A|rfA2\(1),
	datad => \rf|Mux28~2_combout\,
	combout => \rf|Mux28~3_combout\);

-- Location: LCCOMB_X20_Y13_N24
\rf|Mux28~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux28~4_combout\ = (\A|rfA2\(2) & (\rf|Mux28~1_combout\)) # (!\A|rfA2\(2) & ((\rf|Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux28~1_combout\,
	datac => \rf|Mux28~3_combout\,
	datad => \A|rfA2\(2),
	combout => \rf|Mux28~4_combout\);

-- Location: LCCOMB_X20_Y13_N30
\A|D2[1][3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[1][3]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux28~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D2[1][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[1][3]~combout\,
	datac => \A|op_proc~1_combout\,
	datad => \rf|Mux28~4_combout\,
	combout => \A|D2[1][3]~combout\);

-- Location: LCCOMB_X20_Y13_N14
\A|I|adderA[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA[3]~14_combout\ = (\A|I|adderA[0]~0_combout\ & ((\A|Equal0~1_combout\ & ((\A|D1[1][3]~combout\))) # (!\A|Equal0~1_combout\ & (\A|D2[1][3]~combout\)))) # (!\A|I|adderA[0]~0_combout\ & (((\A|D1[1][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[1][3]~combout\,
	datab => \A|D1[1][3]~combout\,
	datac => \A|I|adderA[0]~0_combout\,
	datad => \A|Equal0~1_combout\,
	combout => \A|I|adderA[3]~14_combout\);

-- Location: LCCOMB_X16_Y18_N24
\A|I|adderA[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA\(3) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderA[3]~14_combout\))) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\A|I|adderA\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|adderA\(3),
	datac => \A|I|adderA[3]~14_combout\,
	datad => \A|I|adderB[0]~7clkctrl_outclk\,
	combout => \A|I|adderA\(3));

-- Location: LCCOMB_X16_Y18_N16
\A|I|adder|carry[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|carry[4]~3_combout\ = (\A|I|adderA\(3) & ((\A|I|adderB\(3)) # ((\A|I|adder|carry[3]~1_combout\) # (\A|I|adder|carry[3]~2_combout\)))) # (!\A|I|adderA\(3) & (\A|I|adderB\(3) & ((\A|I|adder|carry[3]~1_combout\) # 
-- (\A|I|adder|carry[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(3),
	datab => \A|I|adderB\(3),
	datac => \A|I|adder|carry[3]~1_combout\,
	datad => \A|I|adder|carry[3]~2_combout\,
	combout => \A|I|adder|carry[4]~3_combout\);

-- Location: LCCOMB_X16_Y18_N12
\A|I|adder|Sum[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Sum[4]~1_combout\ = \A|I|adderA\(4) $ (\A|I|adderB\(4) $ (\A|I|adder|carry[4]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(4),
	datac => \A|I|adderB\(4),
	datad => \A|I|adder|carry[4]~3_combout\,
	combout => \A|I|adder|Sum[4]~1_combout\);

-- Location: LCCOMB_X16_Y17_N2
\A|I|rfD3[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[4]~15_combout\ = (\A|I|rfD3[15]~22_combout\ & (((\A|I|adder|Sum[4]~1_combout\)))) # (!\A|I|rfD3[15]~22_combout\ & (!\A|Equal0~2_combout\ & (\A|D1[1][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Equal0~2_combout\,
	datab => \A|I|rfD3[15]~22_combout\,
	datac => \A|D1[1][4]~combout\,
	datad => \A|I|adder|Sum[4]~1_combout\,
	combout => \A|I|rfD3[4]~15_combout\);

-- Location: LCCOMB_X16_Y17_N26
\A|I|rfD3[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3\(4) = (GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & ((\A|I|rfD3[4]~15_combout\))) # (!GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & (\A|I|rfD3\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfD3\(4),
	datac => \A|I|rfD3[4]~15_combout\,
	datad => \A|I|rfD3[15]~4clkctrl_outclk\,
	combout => \A|I|rfD3\(4));

-- Location: LCCOMB_X19_Y14_N20
\A|D2[0][4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[0][4]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux27~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D2[0][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[0][4]~combout\,
	datac => \rf|Mux27~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D2[0][4]~combout\);

-- Location: LCCOMB_X20_Y14_N30
\A|D1[0][4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[0][4]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\rf|Mux11~4_combout\)) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\A|D1[0][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux11~4_combout\,
	datac => \A|D1[0][4]~combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D1[0][4]~combout\);

-- Location: LCCOMB_X19_Y16_N30
\A|R|adderA[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderA\(4) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderA\(4)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D1[0][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D1[0][4]~combout\,
	datac => \A|R|adderA\(4),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderA\(4));

-- Location: LCCOMB_X19_Y16_N0
\A|R|adder|carry[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[4]~3_combout\ = (\A|R|adderB\(3) & ((\A|R|adderA\(3)) # ((\A|R|adder|carry[3]~1_combout\) # (\A|R|adder|carry[3]~2_combout\)))) # (!\A|R|adderB\(3) & (\A|R|adderA\(3) & ((\A|R|adder|carry[3]~1_combout\) # 
-- (\A|R|adder|carry[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderB\(3),
	datab => \A|R|adderA\(3),
	datac => \A|R|adder|carry[3]~1_combout\,
	datad => \A|R|adder|carry[3]~2_combout\,
	combout => \A|R|adder|carry[4]~3_combout\);

-- Location: LCCOMB_X20_Y16_N12
\A|R|adderB[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderB\(4) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderB\(4)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D2[0][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[0][4]~combout\,
	datac => \A|R|adderB\(4),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderB\(4));

-- Location: LCCOMB_X19_Y17_N24
\A|R|adder|Sum[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|Sum[4]~0_combout\ = \A|R|adderA\(4) $ (\A|R|adder|carry[4]~3_combout\ $ (\A|R|adderB\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|adderA\(4),
	datac => \A|R|adder|carry[4]~3_combout\,
	datad => \A|R|adderB\(4),
	combout => \A|R|adder|Sum[4]~0_combout\);

-- Location: LCCOMB_X20_Y17_N28
\A|R|rfD3[4]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[4]~31_combout\ = (\A|Equal0~0_combout\ & (((\A|R|adder|Sum[4]~0_combout\)))) # (!\A|Equal0~0_combout\ & (((!\A|D1[0][4]~combout\)) # (!\A|D2[0][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][4]~combout\,
	datab => \A|R|adder|Sum[4]~0_combout\,
	datac => \A|Equal0~0_combout\,
	datad => \A|D1[0][4]~combout\,
	combout => \A|R|rfD3[4]~31_combout\);

-- Location: LCCOMB_X20_Y17_N24
\A|R|rfD3[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3\(4) = (GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & ((\A|R|rfD3[4]~31_combout\))) # (!GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & (\A|R|rfD3\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|rfD3\(4),
	datac => \A|R|rfD3[4]~31_combout\,
	datad => \A|R|rfD3[14]~13clkctrl_outclk\,
	combout => \A|R|rfD3\(4));

-- Location: LCCOMB_X20_Y17_N12
\A|rfD3[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[4]~15_combout\ = (\A|op_proc~0_combout\ & (((\A|R|rfD3\(4))))) # (!\A|op_proc~0_combout\ & (\A|I|rfD3\(4) & ((\A|op_proc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfD3\(4),
	datab => \A|op_proc~0_combout\,
	datac => \A|R|rfD3\(4),
	datad => \A|op_proc~1_combout\,
	combout => \A|rfD3[4]~15_combout\);

-- Location: LCCOMB_X18_Y14_N20
\A|rfD3[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3\(4) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfD3[4]~15_combout\)) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfD3\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3[4]~15_combout\,
	datac => \A|rfD3\(4),
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfD3\(4));

-- Location: LCCOMB_X18_Y14_N18
\rf|dw[7][4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[7][4]~combout\ = (\rf|Decoder0~3_combout\ & ((\A|rfD3\(4)))) # (!\rf|Decoder0~3_combout\ & (\rf|dw[7][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[7][4]~combout\,
	datac => \rf|Decoder0~3_combout\,
	datad => \A|rfD3\(4),
	combout => \rf|dw[7][4]~combout\);

-- Location: LCCOMB_X19_Y14_N6
\rf|R7|d_read~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R7|d_read~11_combout\ = (\rf_write_en~q\ & \rf|dw[7][4]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[7][4]~combout\,
	combout => \rf|R7|d_read~11_combout\);

-- Location: FF_X19_Y14_N7
\rf|R7|d_read[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R7|d_read~11_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R7|d_read\(4));

-- Location: LCCOMB_X19_Y14_N16
\rf|Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux27~0_combout\ = (\A|rfA2\(0) & (((\A|rfA2\(1))))) # (!\A|rfA2\(0) & ((\A|rfA2\(1) & (\rf|R6|d_read\(4))) # (!\A|rfA2\(1) & ((\rf|R4|d_read\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R6|d_read\(4),
	datab => \A|rfA2\(0),
	datac => \rf|R4|d_read\(4),
	datad => \A|rfA2\(1),
	combout => \rf|Mux27~0_combout\);

-- Location: LCCOMB_X19_Y14_N26
\rf|Mux27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux27~1_combout\ = (\A|rfA2\(0) & ((\rf|Mux27~0_combout\ & (\rf|R7|d_read\(4))) # (!\rf|Mux27~0_combout\ & ((\rf|R5|d_read\(4)))))) # (!\A|rfA2\(0) & (((\rf|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R7|d_read\(4),
	datab => \A|rfA2\(0),
	datac => \rf|Mux27~0_combout\,
	datad => \rf|R5|d_read\(4),
	combout => \rf|Mux27~1_combout\);

-- Location: LCCOMB_X19_Y14_N8
\rf|Mux27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux27~2_combout\ = (\A|rfA2\(1) & (((\A|rfA2\(0))))) # (!\A|rfA2\(1) & ((\A|rfA2\(0) & (\rf|R1|d_read\(4))) # (!\A|rfA2\(0) & ((\rf|R0|d_read\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R1|d_read\(4),
	datab => \A|rfA2\(1),
	datac => \rf|R0|d_read\(4),
	datad => \A|rfA2\(0),
	combout => \rf|Mux27~2_combout\);

-- Location: LCCOMB_X19_Y14_N12
\rf|Mux27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux27~3_combout\ = (\rf|Mux27~2_combout\ & (((\rf|R3|d_read\(4))) # (!\A|rfA2\(1)))) # (!\rf|Mux27~2_combout\ & (\A|rfA2\(1) & (\rf|R2|d_read\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux27~2_combout\,
	datab => \A|rfA2\(1),
	datac => \rf|R2|d_read\(4),
	datad => \rf|R3|d_read\(4),
	combout => \rf|Mux27~3_combout\);

-- Location: LCCOMB_X19_Y14_N28
\rf|Mux27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux27~4_combout\ = (\A|rfA2\(2) & (\rf|Mux27~1_combout\)) # (!\A|rfA2\(2) & ((\rf|Mux27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Mux27~1_combout\,
	datac => \rf|Mux27~3_combout\,
	datad => \A|rfA2\(2),
	combout => \rf|Mux27~4_combout\);

-- Location: LCCOMB_X19_Y14_N14
\A|D2[1][4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[1][4]~combout\ = (\A|op_proc~1_combout\ & (\rf|Mux27~4_combout\)) # (!\A|op_proc~1_combout\ & ((\A|D2[1][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Mux27~4_combout\,
	datac => \A|D2[1][4]~combout\,
	datad => \A|op_proc~1_combout\,
	combout => \A|D2[1][4]~combout\);

-- Location: LCCOMB_X16_Y17_N22
\A|I|adderA[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA[4]~10_combout\ = (\A|Equal0~1_combout\ & (((\A|D1[1][4]~combout\)))) # (!\A|Equal0~1_combout\ & ((\A|I|adderA[0]~0_combout\ & (\A|D2[1][4]~combout\)) # (!\A|I|adderA[0]~0_combout\ & ((\A|D1[1][4]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[1][4]~combout\,
	datab => \A|D1[1][4]~combout\,
	datac => \A|Equal0~1_combout\,
	datad => \A|I|adderA[0]~0_combout\,
	combout => \A|I|adderA[4]~10_combout\);

-- Location: LCCOMB_X16_Y18_N6
\A|I|adderA[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA\(4) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderA[4]~10_combout\))) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\A|I|adderA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(4),
	datac => \A|I|adderA[4]~10_combout\,
	datad => \A|I|adderB[0]~7clkctrl_outclk\,
	combout => \A|I|adderA\(4));

-- Location: LCCOMB_X16_Y18_N10
\A|I|adder|carry[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|carry[5]~4_combout\ = (\A|I|adderA\(4) & \A|I|adder|carry[4]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(4),
	datad => \A|I|adder|carry[4]~3_combout\,
	combout => \A|I|adder|carry[5]~4_combout\);

-- Location: LCCOMB_X14_Y18_N26
\A|I|adderB[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderB\(5) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\inp[5]~input_o\)) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderB\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[5]~input_o\,
	datac => \A|I|adderB\(5),
	datad => \A|I|adderB[0]~7clkctrl_outclk\,
	combout => \A|I|adderB\(5));

-- Location: LCCOMB_X16_Y18_N4
\A|I|adder|carry[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|carry[5]~5_combout\ = (\A|I|adderB\(4) & ((\A|I|adderA\(4)) # (\A|I|adder|carry[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(4),
	datac => \A|I|adderB\(4),
	datad => \A|I|adder|carry[4]~3_combout\,
	combout => \A|I|adder|carry[5]~5_combout\);

-- Location: LCCOMB_X16_Y18_N20
\A|I|adder|Sum[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Sum\(5) = \A|I|adderB\(5) $ (\A|I|adderA\(5) $ (((\A|I|adder|carry[5]~4_combout\) # (\A|I|adder|carry[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adder|carry[5]~4_combout\,
	datab => \A|I|adderB\(5),
	datac => \A|I|adder|carry[5]~5_combout\,
	datad => \A|I|adderA\(5),
	combout => \A|I|adder|Sum\(5));

-- Location: LCCOMB_X14_Y17_N28
\A|I|rfD3[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[5]~10_combout\ = (\A|I|rfD3[15]~22_combout\ & (((\A|I|adder|Sum\(5))))) # (!\A|I|rfD3[15]~22_combout\ & (\A|D1[1][5]~combout\ & ((!\A|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][5]~combout\,
	datab => \A|I|adder|Sum\(5),
	datac => \A|I|rfD3[15]~22_combout\,
	datad => \A|Equal0~2_combout\,
	combout => \A|I|rfD3[5]~10_combout\);

-- Location: LCCOMB_X14_Y17_N26
\A|I|rfD3[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3\(5) = (GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & (\A|I|rfD3[5]~10_combout\)) # (!GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & ((\A|I|rfD3\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfD3[5]~10_combout\,
	datac => \A|I|rfD3\(5),
	datad => \A|I|rfD3[15]~4clkctrl_outclk\,
	combout => \A|I|rfD3\(5));

-- Location: LCCOMB_X19_Y12_N8
\A|D2[0][5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[0][5]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux26~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D2[0][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[0][5]~combout\,
	datac => \rf|Mux26~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D2[0][5]~combout\);

-- Location: LCCOMB_X19_Y12_N22
\A|D1[0][5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[0][5]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux10~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D1[0][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][5]~combout\,
	datac => \rf|Mux10~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D1[0][5]~combout\);

-- Location: LCCOMB_X18_Y17_N12
\A|R|adderA[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderA\(5) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderA\(5)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D1[0][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D1[0][5]~combout\,
	datac => \A|R|Cout~0clkctrl_outclk\,
	datad => \A|R|adderA\(5),
	combout => \A|R|adderA\(5));

-- Location: LCCOMB_X19_Y16_N22
\A|R|adder|carry[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[5]~4_combout\ = (\A|R|adderA\(4) & \A|R|adder|carry[4]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|R|adderA\(4),
	datad => \A|R|adder|carry[4]~3_combout\,
	combout => \A|R|adder|carry[5]~4_combout\);

-- Location: LCCOMB_X19_Y16_N16
\A|R|adder|carry[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[5]~5_combout\ = (\A|R|adderB\(4) & ((\A|R|adderA\(4)) # (\A|R|adder|carry[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderA\(4),
	datac => \A|R|adderB\(4),
	datad => \A|R|adder|carry[4]~3_combout\,
	combout => \A|R|adder|carry[5]~5_combout\);

-- Location: LCCOMB_X18_Y17_N6
\A|R|adderB[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderB\(5) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderB\(5)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D2[0][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][5]~combout\,
	datac => \A|R|Cout~0clkctrl_outclk\,
	datad => \A|R|adderB\(5),
	combout => \A|R|adderB\(5));

-- Location: LCCOMB_X18_Y17_N20
\A|R|adder|Sum[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|Sum\(5) = \A|R|adderA\(5) $ (\A|R|adderB\(5) $ (((\A|R|adder|carry[5]~4_combout\) # (\A|R|adder|carry[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderA\(5),
	datab => \A|R|adder|carry[5]~4_combout\,
	datac => \A|R|adder|carry[5]~5_combout\,
	datad => \A|R|adderB\(5),
	combout => \A|R|adder|Sum\(5));

-- Location: LCCOMB_X18_Y17_N10
\A|R|rfD3[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[5]~23_combout\ = (\A|Equal0~0_combout\ & (((\A|R|adder|Sum\(5))))) # (!\A|Equal0~0_combout\ & (((!\A|D1[0][5]~combout\)) # (!\A|D2[0][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][5]~combout\,
	datab => \A|R|adder|Sum\(5),
	datac => \A|D1[0][5]~combout\,
	datad => \A|Equal0~0_combout\,
	combout => \A|R|rfD3[5]~23_combout\);

-- Location: LCCOMB_X20_Y17_N14
\A|R|rfD3[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3\(5) = (GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & (\A|R|rfD3[5]~23_combout\)) # (!GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & ((\A|R|rfD3\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|rfD3[5]~23_combout\,
	datac => \A|R|rfD3\(5),
	datad => \A|R|rfD3[14]~13clkctrl_outclk\,
	combout => \A|R|rfD3\(5));

-- Location: LCCOMB_X18_Y13_N28
\A|rfD3[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[5]~10_combout\ = (\A|op_proc~0_combout\ & (((\A|R|rfD3\(5))))) # (!\A|op_proc~0_combout\ & (\A|I|rfD3\(5) & ((\A|op_proc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfD3\(5),
	datab => \A|op_proc~0_combout\,
	datac => \A|R|rfD3\(5),
	datad => \A|op_proc~1_combout\,
	combout => \A|rfD3[5]~10_combout\);

-- Location: LCCOMB_X19_Y13_N12
\A|rfD3[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3\(5) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfD3[5]~10_combout\))) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfD3\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(5),
	datac => \A|rfD3[5]~10_combout\,
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfD3\(5));

-- Location: LCCOMB_X16_Y11_N20
\rf|dw[5][5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[5][5]~combout\ = (GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & (\A|rfD3\(5))) # (!GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & ((\rf|dw[5][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3\(5),
	datac => \rf|dw[5][5]~combout\,
	datad => \rf|Decoder0~0clkctrl_outclk\,
	combout => \rf|dw[5][5]~combout\);

-- Location: LCCOMB_X16_Y11_N4
\rf|R5|d_read~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R5|d_read~5_combout\ = (\rf_write_en~q\ & \rf|dw[5][5]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[5][5]~combout\,
	combout => \rf|R5|d_read~5_combout\);

-- Location: FF_X16_Y11_N5
\rf|R5|d_read[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R5|d_read~5_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R5|d_read\(5));

-- Location: LCCOMB_X19_Y12_N16
\rf|Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux26~0_combout\ = (\A|rfA2\(1) & ((\rf|R6|d_read\(5)) # ((\A|rfA2\(0))))) # (!\A|rfA2\(1) & (((\rf|R4|d_read\(5) & !\A|rfA2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(1),
	datab => \rf|R6|d_read\(5),
	datac => \rf|R4|d_read\(5),
	datad => \A|rfA2\(0),
	combout => \rf|Mux26~0_combout\);

-- Location: LCCOMB_X19_Y12_N26
\rf|Mux26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux26~1_combout\ = (\A|rfA2\(0) & ((\rf|Mux26~0_combout\ & ((\rf|R7|d_read\(5)))) # (!\rf|Mux26~0_combout\ & (\rf|R5|d_read\(5))))) # (!\A|rfA2\(0) & (((\rf|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(0),
	datab => \rf|R5|d_read\(5),
	datac => \rf|Mux26~0_combout\,
	datad => \rf|R7|d_read\(5),
	combout => \rf|Mux26~1_combout\);

-- Location: LCCOMB_X19_Y12_N10
\rf|Mux26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux26~2_combout\ = (\A|rfA2\(0) & (((\rf|R1|d_read\(5)) # (\A|rfA2\(1))))) # (!\A|rfA2\(0) & (\rf|R0|d_read\(5) & ((!\A|rfA2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R0|d_read\(5),
	datab => \A|rfA2\(0),
	datac => \rf|R1|d_read\(5),
	datad => \A|rfA2\(1),
	combout => \rf|Mux26~2_combout\);

-- Location: LCCOMB_X19_Y12_N30
\rf|Mux26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux26~3_combout\ = (\A|rfA2\(1) & ((\rf|Mux26~2_combout\ & (\rf|R3|d_read\(5))) # (!\rf|Mux26~2_combout\ & ((\rf|R2|d_read\(5)))))) # (!\A|rfA2\(1) & (((\rf|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R3|d_read\(5),
	datab => \A|rfA2\(1),
	datac => \rf|Mux26~2_combout\,
	datad => \rf|R2|d_read\(5),
	combout => \rf|Mux26~3_combout\);

-- Location: LCCOMB_X19_Y12_N4
\rf|Mux26~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux26~4_combout\ = (\A|rfA2\(2) & (\rf|Mux26~1_combout\)) # (!\A|rfA2\(2) & ((\rf|Mux26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux26~1_combout\,
	datab => \rf|Mux26~3_combout\,
	datad => \A|rfA2\(2),
	combout => \rf|Mux26~4_combout\);

-- Location: LCCOMB_X19_Y12_N2
\A|D2[1][5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[1][5]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux26~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D2[1][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[1][5]~combout\,
	datac => \rf|Mux26~4_combout\,
	datad => \A|op_proc~1_combout\,
	combout => \A|D2[1][5]~combout\);

-- Location: LCCOMB_X16_Y17_N12
\A|I|adderA[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA[5]~15_combout\ = (\A|Equal0~1_combout\ & (((\A|D1[1][5]~combout\)))) # (!\A|Equal0~1_combout\ & ((\A|I|adderA[0]~0_combout\ & (\A|D2[1][5]~combout\)) # (!\A|I|adderA[0]~0_combout\ & ((\A|D1[1][5]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[1][5]~combout\,
	datab => \A|D1[1][5]~combout\,
	datac => \A|Equal0~1_combout\,
	datad => \A|I|adderA[0]~0_combout\,
	combout => \A|I|adderA[5]~15_combout\);

-- Location: LCCOMB_X16_Y18_N18
\A|I|adderA[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA\(5) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderA[5]~15_combout\))) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\A|I|adderA\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|adderA\(5),
	datac => \A|I|adderA[5]~15_combout\,
	datad => \A|I|adderB[0]~7clkctrl_outclk\,
	combout => \A|I|adderA\(5));

-- Location: LCCOMB_X16_Y18_N2
\A|I|adder|carry[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|carry[6]~6_combout\ = (\A|I|adderA\(5) & ((\A|I|adderB\(5)) # ((\A|I|adder|carry[5]~5_combout\) # (\A|I|adder|carry[5]~4_combout\)))) # (!\A|I|adderA\(5) & (\A|I|adderB\(5) & ((\A|I|adder|carry[5]~5_combout\) # 
-- (\A|I|adder|carry[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(5),
	datab => \A|I|adderB\(5),
	datac => \A|I|adder|carry[5]~5_combout\,
	datad => \A|I|adder|carry[5]~4_combout\,
	combout => \A|I|adder|carry[6]~6_combout\);

-- Location: LCCOMB_X16_Y18_N22
\A|I|adder|Sum[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Sum[6]~2_combout\ = \A|I|adderA\(6) $ (\A|I|adderB\(6) $ (\A|I|adder|carry[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|adderA\(6),
	datac => \A|I|adderB\(6),
	datad => \A|I|adder|carry[6]~6_combout\,
	combout => \A|I|adder|Sum[6]~2_combout\);

-- Location: LCCOMB_X16_Y17_N20
\A|I|rfD3[6]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[6]~16_combout\ = (\A|I|rfD3[15]~22_combout\ & (((\A|I|adder|Sum[6]~2_combout\)))) # (!\A|I|rfD3[15]~22_combout\ & (!\A|Equal0~2_combout\ & ((\A|D1[1][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Equal0~2_combout\,
	datab => \A|I|adder|Sum[6]~2_combout\,
	datac => \A|I|rfD3[15]~22_combout\,
	datad => \A|D1[1][6]~combout\,
	combout => \A|I|rfD3[6]~16_combout\);

-- Location: LCCOMB_X20_Y17_N22
\A|I|rfD3[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3\(6) = (GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & (\A|I|rfD3[6]~16_combout\)) # (!GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & ((\A|I|rfD3\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|rfD3[6]~16_combout\,
	datac => \A|I|rfD3\(6),
	datad => \A|I|rfD3[15]~4clkctrl_outclk\,
	combout => \A|I|rfD3\(6));

-- Location: LCCOMB_X16_Y15_N26
\A|D2[0][6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[0][6]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux25~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D2[0][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][6]~combout\,
	datac => \rf|Mux25~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D2[0][6]~combout\);

-- Location: LCCOMB_X19_Y16_N6
\A|R|adder|carry[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[6]~6_combout\ = (\A|R|adderB\(5) & ((\A|R|adderA\(5)) # ((\A|R|adder|carry[5]~4_combout\) # (\A|R|adder|carry[5]~5_combout\)))) # (!\A|R|adderB\(5) & (\A|R|adderA\(5) & ((\A|R|adder|carry[5]~4_combout\) # 
-- (\A|R|adder|carry[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderB\(5),
	datab => \A|R|adderA\(5),
	datac => \A|R|adder|carry[5]~4_combout\,
	datad => \A|R|adder|carry[5]~5_combout\,
	combout => \A|R|adder|carry[6]~6_combout\);

-- Location: LCCOMB_X20_Y16_N30
\A|R|adderB[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderB\(6) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderB\(6)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D2[0][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[0][6]~combout\,
	datac => \A|R|adderB\(6),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderB\(6));

-- Location: LCCOMB_X19_Y17_N18
\A|R|adder|Sum[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|Sum[6]~1_combout\ = \A|R|adder|carry[6]~6_combout\ $ (\A|R|adderA\(6) $ (\A|R|adderB\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adder|carry[6]~6_combout\,
	datab => \A|R|adderA\(6),
	datac => \A|R|adderB\(6),
	combout => \A|R|adder|Sum[6]~1_combout\);

-- Location: LCCOMB_X19_Y17_N2
\A|R|rfD3[6]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[6]~32_combout\ = (\A|Equal0~0_combout\ & (((\A|R|adder|Sum[6]~1_combout\)))) # (!\A|Equal0~0_combout\ & (((!\A|D1[0][6]~combout\)) # (!\A|D2[0][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Equal0~0_combout\,
	datab => \A|D2[0][6]~combout\,
	datac => \A|D1[0][6]~combout\,
	datad => \A|R|adder|Sum[6]~1_combout\,
	combout => \A|R|rfD3[6]~32_combout\);

-- Location: LCCOMB_X19_Y17_N26
\A|R|rfD3[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3\(6) = (GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & ((\A|R|rfD3[6]~32_combout\))) # (!GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & (\A|R|rfD3\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|rfD3\(6),
	datac => \A|R|rfD3[6]~32_combout\,
	datad => \A|R|rfD3[14]~13clkctrl_outclk\,
	combout => \A|R|rfD3\(6));

-- Location: LCCOMB_X20_Y17_N30
\A|rfD3[6]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[6]~16_combout\ = (\A|op_proc~0_combout\ & (((\A|R|rfD3\(6))))) # (!\A|op_proc~0_combout\ & (\A|I|rfD3\(6) & ((\A|op_proc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfD3\(6),
	datab => \A|op_proc~0_combout\,
	datac => \A|R|rfD3\(6),
	datad => \A|op_proc~1_combout\,
	combout => \A|rfD3[6]~16_combout\);

-- Location: LCCOMB_X16_Y15_N18
\A|rfD3[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3\(6) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfD3[6]~16_combout\))) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfD3\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3\(6),
	datac => \A|rfD3[6]~16_combout\,
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfD3\(6));

-- Location: LCCOMB_X16_Y15_N14
\rf|dw[2][6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[2][6]~combout\ = (\rf|Decoder0~4_combout\ & ((\A|rfD3\(6)))) # (!\rf|Decoder0~4_combout\ & (\rf|dw[2][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~4_combout\,
	datab => \rf|dw[2][6]~combout\,
	datad => \A|rfD3\(6),
	combout => \rf|dw[2][6]~combout\);

-- Location: LCCOMB_X15_Y15_N4
\rf|R2|d_read~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R2|d_read~11_combout\ = (\rf_write_en~q\ & \rf|dw[2][6]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datad => \rf|dw[2][6]~combout\,
	combout => \rf|R2|d_read~11_combout\);

-- Location: FF_X15_Y15_N5
\rf|R2|d_read[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R2|d_read~11_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R2|d_read\(6));

-- Location: LCCOMB_X15_Y15_N22
\rf|Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux9~2_combout\ = (\A|rfA1\(0) & ((\A|rfA1\(1)) # ((\rf|R1|d_read\(6))))) # (!\A|rfA1\(0) & (!\A|rfA1\(1) & ((\rf|R0|d_read\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(0),
	datab => \A|rfA1\(1),
	datac => \rf|R1|d_read\(6),
	datad => \rf|R0|d_read\(6),
	combout => \rf|Mux9~2_combout\);

-- Location: LCCOMB_X15_Y15_N24
\rf|Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux9~3_combout\ = (\rf|Mux9~2_combout\ & (((\rf|R3|d_read\(6)) # (!\A|rfA1\(1))))) # (!\rf|Mux9~2_combout\ & (\rf|R2|d_read\(6) & ((\A|rfA1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R2|d_read\(6),
	datab => \rf|Mux9~2_combout\,
	datac => \rf|R3|d_read\(6),
	datad => \A|rfA1\(1),
	combout => \rf|Mux9~3_combout\);

-- Location: LCCOMB_X15_Y15_N0
\rf|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux9~0_combout\ = (\A|rfA1\(1) & ((\A|rfA1\(0)) # ((\rf|R6|d_read\(6))))) # (!\A|rfA1\(1) & (!\A|rfA1\(0) & ((\rf|R4|d_read\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(1),
	datab => \A|rfA1\(0),
	datac => \rf|R6|d_read\(6),
	datad => \rf|R4|d_read\(6),
	combout => \rf|Mux9~0_combout\);

-- Location: LCCOMB_X15_Y15_N8
\rf|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux9~1_combout\ = (\rf|Mux9~0_combout\ & ((\rf|R7|d_read\(6)) # ((!\A|rfA1\(0))))) # (!\rf|Mux9~0_combout\ & (((\rf|R5|d_read\(6) & \A|rfA1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R7|d_read\(6),
	datab => \rf|R5|d_read\(6),
	datac => \rf|Mux9~0_combout\,
	datad => \A|rfA1\(0),
	combout => \rf|Mux9~1_combout\);

-- Location: LCCOMB_X15_Y15_N30
\rf|Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux9~4_combout\ = (\A|rfA1\(2) & ((\rf|Mux9~1_combout\))) # (!\A|rfA1\(2) & (\rf|Mux9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux9~3_combout\,
	datab => \rf|Mux9~1_combout\,
	datad => \A|rfA1\(2),
	combout => \rf|Mux9~4_combout\);

-- Location: LCCOMB_X15_Y15_N20
\A|D1[0][6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[0][6]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux9~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D1[0][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D1[0][6]~combout\,
	datac => \rf|Mux9~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D1[0][6]~combout\);

-- Location: LCCOMB_X19_Y17_N16
\A|R|adderA[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderA\(6) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderA\(6)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D1[0][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][6]~combout\,
	datac => \A|R|Cout~0clkctrl_outclk\,
	datad => \A|R|adderA\(6),
	combout => \A|R|adderA\(6));

-- Location: LCCOMB_X19_Y16_N8
\A|R|adder|carry[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[7]~7_combout\ = (\A|R|adderA\(6) & \A|R|adder|carry[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|R|adderA\(6),
	datad => \A|R|adder|carry[6]~6_combout\,
	combout => \A|R|adder|carry[7]~7_combout\);

-- Location: LCCOMB_X19_Y16_N2
\A|R|adder|carry[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[7]~8_combout\ = (\A|R|adderB\(5) & ((\A|R|adderA\(5)) # ((\A|R|adder|carry[5]~4_combout\) # (\A|R|adder|carry[5]~5_combout\)))) # (!\A|R|adderB\(5) & (\A|R|adderA\(5) & ((\A|R|adder|carry[5]~4_combout\) # 
-- (\A|R|adder|carry[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderB\(5),
	datab => \A|R|adderA\(5),
	datac => \A|R|adder|carry[5]~4_combout\,
	datad => \A|R|adder|carry[5]~5_combout\,
	combout => \A|R|adder|carry[7]~8_combout\);

-- Location: LCCOMB_X19_Y16_N20
\A|R|adder|carry[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[7]~9_combout\ = (\A|R|adderB\(6) & ((\A|R|adderA\(6)) # (\A|R|adder|carry[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|adderA\(6),
	datac => \A|R|adderB\(6),
	datad => \A|R|adder|carry[7]~8_combout\,
	combout => \A|R|adder|carry[7]~9_combout\);

-- Location: LCCOMB_X18_Y17_N18
\A|R|adder|Sum[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|Sum\(7) = \A|R|adderB\(7) $ (\A|R|adderA\(7) $ (((\A|R|adder|carry[7]~7_combout\) # (\A|R|adder|carry[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderB\(7),
	datab => \A|R|adderA\(7),
	datac => \A|R|adder|carry[7]~7_combout\,
	datad => \A|R|adder|carry[7]~9_combout\,
	combout => \A|R|adder|Sum\(7));

-- Location: LCCOMB_X18_Y17_N4
\A|R|rfD3[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[7]~22_combout\ = (\A|Equal0~0_combout\ & (((\A|R|adder|Sum\(7))))) # (!\A|Equal0~0_combout\ & (((!\A|D2[0][7]~combout\)) # (!\A|D1[0][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][7]~combout\,
	datab => \A|R|adder|Sum\(7),
	datac => \A|D2[0][7]~combout\,
	datad => \A|Equal0~0_combout\,
	combout => \A|R|rfD3[7]~22_combout\);

-- Location: LCCOMB_X18_Y17_N26
\A|R|rfD3[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3\(7) = (GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & (\A|R|rfD3[7]~22_combout\)) # (!GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & ((\A|R|rfD3\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|rfD3[7]~22_combout\,
	datac => \A|R|rfD3\(7),
	datad => \A|R|rfD3[14]~13clkctrl_outclk\,
	combout => \A|R|rfD3\(7));

-- Location: LCCOMB_X18_Y15_N8
\A|D1[1][7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[1][7]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux8~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D1[1][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][7]~combout\,
	datab => \rf|Mux8~4_combout\,
	datad => \A|op_proc~1_combout\,
	combout => \A|D1[1][7]~combout\);

-- Location: LCCOMB_X19_Y15_N8
\A|D2[1][7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[1][7]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux24~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D2[1][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[1][7]~combout\,
	datac => \A|op_proc~1_combout\,
	datad => \rf|Mux24~4_combout\,
	combout => \A|D2[1][7]~combout\);

-- Location: LCCOMB_X16_Y18_N28
\A|I|adderA[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA[7]~16_combout\ = (\A|Equal0~1_combout\ & (\A|D1[1][7]~combout\)) # (!\A|Equal0~1_combout\ & ((\A|I|adderA[0]~0_combout\ & ((\A|D2[1][7]~combout\))) # (!\A|I|adderA[0]~0_combout\ & (\A|D1[1][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][7]~combout\,
	datab => \A|Equal0~1_combout\,
	datac => \A|D2[1][7]~combout\,
	datad => \A|I|adderA[0]~0_combout\,
	combout => \A|I|adderA[7]~16_combout\);

-- Location: LCCOMB_X15_Y18_N26
\A|I|adderA[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA\(7) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\A|I|adderA[7]~16_combout\)) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA[7]~16_combout\,
	datac => \A|I|adderA\(7),
	datad => \A|I|adderB[0]~7clkctrl_outclk\,
	combout => \A|I|adderA\(7));

-- Location: LCCOMB_X15_Y17_N30
\A|I|adderB[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderB[7]~6_combout\ = (\inp[7]~input_o\ & !\A|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp[7]~input_o\,
	datad => \A|Equal0~4_combout\,
	combout => \A|I|adderB[7]~6_combout\);

-- Location: LCCOMB_X15_Y17_N2
\A|I|adderB[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderB\(7) = (!\A|I|adderB[15]~4_combout\ & ((\A|I|adderB[15]~2_combout\ & (\A|I|adderB[7]~6_combout\)) # (!\A|I|adderB[15]~2_combout\ & ((\A|I|adderB\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderB[15]~4_combout\,
	datab => \A|I|adderB[15]~2_combout\,
	datac => \A|I|adderB[7]~6_combout\,
	datad => \A|I|adderB\(7),
	combout => \A|I|adderB\(7));

-- Location: LCCOMB_X16_Y18_N26
\A|I|adder|carry[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|carry[7]~8_combout\ = (\A|I|adderB\(6) & ((\A|I|adderA\(6)) # (\A|I|adder|carry[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|adderA\(6),
	datac => \A|I|adderB\(6),
	datad => \A|I|adder|carry[6]~6_combout\,
	combout => \A|I|adder|carry[7]~8_combout\);

-- Location: LCCOMB_X16_Y18_N8
\A|I|adder|carry[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|carry[7]~7_combout\ = (\A|I|adderA\(6) & \A|I|adder|carry[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|adderA\(6),
	datad => \A|I|adder|carry[6]~6_combout\,
	combout => \A|I|adder|carry[7]~7_combout\);

-- Location: LCCOMB_X16_Y18_N14
\A|I|adder|Sum[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Sum\(7) = \A|I|adderA\(7) $ (\A|I|adderB\(7) $ (((\A|I|adder|carry[7]~8_combout\) # (\A|I|adder|carry[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(7),
	datab => \A|I|adderB\(7),
	datac => \A|I|adder|carry[7]~8_combout\,
	datad => \A|I|adder|carry[7]~7_combout\,
	combout => \A|I|adder|Sum\(7));

-- Location: LCCOMB_X18_Y18_N2
\A|I|rfD3[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[7]~9_combout\ = (\A|I|rfD3[15]~22_combout\ & (((\A|I|adder|Sum\(7))))) # (!\A|I|rfD3[15]~22_combout\ & (\A|D1[1][7]~combout\ & ((!\A|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][7]~combout\,
	datab => \A|I|adder|Sum\(7),
	datac => \A|Equal0~2_combout\,
	datad => \A|I|rfD3[15]~22_combout\,
	combout => \A|I|rfD3[7]~9_combout\);

-- Location: LCCOMB_X18_Y18_N8
\A|I|rfD3[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3\(7) = (GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & ((\A|I|rfD3[7]~9_combout\))) # (!GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & (\A|I|rfD3\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|rfD3\(7),
	datac => \A|I|rfD3[7]~9_combout\,
	datad => \A|I|rfD3[15]~4clkctrl_outclk\,
	combout => \A|I|rfD3\(7));

-- Location: FF_X19_Y15_N29
\A|J|rfD3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inp[0]~input_o\,
	sload => VCC,
	ena => \A|J|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|J|rfD3\(7));

-- Location: LCCOMB_X19_Y15_N28
\A|rfD3[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[7]~8_combout\ = (!\A|op_proc~0_combout\ & ((\A|op_proc~1_combout\ & (\A|I|rfD3\(7))) # (!\A|op_proc~1_combout\ & ((\A|J|rfD3\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfD3\(7),
	datab => \A|op_proc~1_combout\,
	datac => \A|J|rfD3\(7),
	datad => \A|op_proc~0_combout\,
	combout => \A|rfD3[7]~8_combout\);

-- Location: LCCOMB_X19_Y15_N24
\A|rfD3[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[7]~9_combout\ = (\A|rfD3[7]~8_combout\) # ((\A|R|rfD3\(7) & \A|op_proc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|rfD3\(7),
	datac => \A|rfD3[7]~8_combout\,
	datad => \A|op_proc~0_combout\,
	combout => \A|rfD3[7]~9_combout\);

-- Location: LCCOMB_X19_Y15_N20
\A|rfD3[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3\(7) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfD3[7]~9_combout\)) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfD3\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3[7]~9_combout\,
	datac => \A|rfA1[2]~14clkctrl_outclk\,
	datad => \A|rfD3\(7),
	combout => \A|rfD3\(7));

-- Location: LCCOMB_X19_Y15_N22
\rf|dw[7][7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[7][7]~combout\ = (\rf|Decoder0~3_combout\ & ((\A|rfD3\(7)))) # (!\rf|Decoder0~3_combout\ & (\rf|dw[7][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[7][7]~combout\,
	datac => \rf|Decoder0~3_combout\,
	datad => \A|rfD3\(7),
	combout => \rf|dw[7][7]~combout\);

-- Location: LCCOMB_X19_Y15_N16
\rf|R7|d_read~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R7|d_read~5_combout\ = (\rf|dw[7][7]~combout\ & \rf_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|dw[7][7]~combout\,
	datad => \rf_write_en~q\,
	combout => \rf|R7|d_read~5_combout\);

-- Location: FF_X19_Y15_N17
\rf|R7|d_read[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R7|d_read~5_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R7|d_read\(7));

-- Location: LCCOMB_X18_Y15_N2
\rf|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux8~0_combout\ = (\A|rfA1\(0) & (((\A|rfA1\(1))))) # (!\A|rfA1\(0) & ((\A|rfA1\(1) & ((\rf|R6|d_read\(7)))) # (!\A|rfA1\(1) & (\rf|R4|d_read\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R4|d_read\(7),
	datab => \A|rfA1\(0),
	datac => \rf|R6|d_read\(7),
	datad => \A|rfA1\(1),
	combout => \rf|Mux8~0_combout\);

-- Location: LCCOMB_X18_Y15_N20
\rf|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux8~1_combout\ = (\A|rfA1\(0) & ((\rf|Mux8~0_combout\ & (\rf|R7|d_read\(7))) # (!\rf|Mux8~0_combout\ & ((\rf|R5|d_read\(7)))))) # (!\A|rfA1\(0) & (((\rf|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(0),
	datab => \rf|R7|d_read\(7),
	datac => \rf|Mux8~0_combout\,
	datad => \rf|R5|d_read\(7),
	combout => \rf|Mux8~1_combout\);

-- Location: LCCOMB_X18_Y15_N10
\rf|Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux8~2_combout\ = (\A|rfA1\(1) & (((\A|rfA1\(0))))) # (!\A|rfA1\(1) & ((\A|rfA1\(0) & ((\rf|R1|d_read\(7)))) # (!\A|rfA1\(0) & (\rf|R0|d_read\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R0|d_read\(7),
	datab => \A|rfA1\(1),
	datac => \rf|R1|d_read\(7),
	datad => \A|rfA1\(0),
	combout => \rf|Mux8~2_combout\);

-- Location: LCCOMB_X18_Y15_N0
\rf|Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux8~3_combout\ = (\A|rfA1\(1) & ((\rf|Mux8~2_combout\ & ((\rf|R3|d_read\(7)))) # (!\rf|Mux8~2_combout\ & (\rf|R2|d_read\(7))))) # (!\A|rfA1\(1) & (((\rf|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(1),
	datab => \rf|R2|d_read\(7),
	datac => \rf|Mux8~2_combout\,
	datad => \rf|R3|d_read\(7),
	combout => \rf|Mux8~3_combout\);

-- Location: LCCOMB_X18_Y15_N28
\rf|Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux8~4_combout\ = (\A|rfA1\(2) & (\rf|Mux8~1_combout\)) # (!\A|rfA1\(2) & ((\rf|Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux8~1_combout\,
	datab => \rf|Mux8~3_combout\,
	datac => \A|rfA1\(2),
	combout => \rf|Mux8~4_combout\);

-- Location: LCCOMB_X18_Y17_N8
\A|D1[0][7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[0][7]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\rf|Mux8~4_combout\)) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\A|D1[0][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Mux8~4_combout\,
	datac => \A|D1[0][7]~combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D1[0][7]~combout\);

-- Location: LCCOMB_X18_Y17_N16
\A|R|adderA[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderA\(7) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderA\(7)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D1[0][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][7]~combout\,
	datac => \A|R|Cout~0clkctrl_outclk\,
	datad => \A|R|adderA\(7),
	combout => \A|R|adderA\(7));

-- Location: LCCOMB_X19_Y16_N10
\A|R|adder|carry[8]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[8]~10_combout\ = (\A|R|adderA\(7) & ((\A|R|adderB\(7)) # ((\A|R|adder|carry[7]~7_combout\) # (\A|R|adder|carry[7]~9_combout\)))) # (!\A|R|adderA\(7) & (\A|R|adderB\(7) & ((\A|R|adder|carry[7]~7_combout\) # 
-- (\A|R|adder|carry[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderA\(7),
	datab => \A|R|adderB\(7),
	datac => \A|R|adder|carry[7]~7_combout\,
	datad => \A|R|adder|carry[7]~9_combout\,
	combout => \A|R|adder|carry[8]~10_combout\);

-- Location: LCCOMB_X17_Y16_N18
\A|R|adder|Sum[8]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|Sum[8]~2_combout\ = \A|R|adderB\(8) $ (\A|R|adderA\(8) $ (\A|R|adder|carry[8]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|adderB\(8),
	datac => \A|R|adderA\(8),
	datad => \A|R|adder|carry[8]~10_combout\,
	combout => \A|R|adder|Sum[8]~2_combout\);

-- Location: LCCOMB_X16_Y16_N2
\A|R|rfD3[8]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[8]~33_combout\ = (\A|Equal0~0_combout\ & (((\A|R|adder|Sum[8]~2_combout\)))) # (!\A|Equal0~0_combout\ & (((!\A|D2[0][8]~combout\)) # (!\A|D1[0][8]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][8]~combout\,
	datab => \A|D2[0][8]~combout\,
	datac => \A|Equal0~0_combout\,
	datad => \A|R|adder|Sum[8]~2_combout\,
	combout => \A|R|rfD3[8]~33_combout\);

-- Location: LCCOMB_X17_Y16_N30
\A|R|rfD3[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3\(8) = (GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & (\A|R|rfD3[8]~33_combout\)) # (!GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & ((\A|R|rfD3\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|rfD3[8]~33_combout\,
	datac => \A|R|rfD3\(8),
	datad => \A|R|rfD3[14]~13clkctrl_outclk\,
	combout => \A|R|rfD3\(8));

-- Location: LCCOMB_X15_Y18_N16
\A|I|adder|carry[8]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|carry[8]~9_combout\ = (\A|I|adderA\(7) & ((\A|I|adderB\(7)) # ((\A|I|adder|carry[7]~7_combout\) # (\A|I|adder|carry[7]~8_combout\)))) # (!\A|I|adderA\(7) & (\A|I|adderB\(7) & ((\A|I|adder|carry[7]~7_combout\) # 
-- (\A|I|adder|carry[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(7),
	datab => \A|I|adderB\(7),
	datac => \A|I|adder|carry[7]~7_combout\,
	datad => \A|I|adder|carry[7]~8_combout\,
	combout => \A|I|adder|carry[8]~9_combout\);

-- Location: LCCOMB_X15_Y18_N10
\A|I|adder|Sum[8]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Sum[8]~3_combout\ = \A|I|adderB\(8) $ (\A|I|adderA\(8) $ (\A|I|adder|carry[8]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderB\(8),
	datab => \A|I|adderA\(8),
	datad => \A|I|adder|carry[8]~9_combout\,
	combout => \A|I|adder|Sum[8]~3_combout\);

-- Location: LCCOMB_X16_Y13_N8
\A|I|rfD3[8]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[8]~17_combout\ = (\A|I|rfD3[15]~22_combout\ & (((\A|I|adder|Sum[8]~3_combout\)))) # (!\A|I|rfD3[15]~22_combout\ & (\A|D1[1][8]~combout\ & (!\A|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][8]~combout\,
	datab => \A|Equal0~2_combout\,
	datac => \A|I|rfD3[15]~22_combout\,
	datad => \A|I|adder|Sum[8]~3_combout\,
	combout => \A|I|rfD3[8]~17_combout\);

-- Location: LCCOMB_X16_Y13_N2
\A|I|rfD3[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3\(8) = (GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & (\A|I|rfD3[8]~17_combout\)) # (!GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & ((\A|I|rfD3\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfD3[8]~17_combout\,
	datab => \A|I|rfD3\(8),
	datad => \A|I|rfD3[15]~4clkctrl_outclk\,
	combout => \A|I|rfD3\(8));

-- Location: FF_X18_Y13_N23
\A|J|rfD3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inp[1]~input_o\,
	sload => VCC,
	ena => \A|J|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|J|rfD3\(8));

-- Location: LCCOMB_X18_Y13_N22
\A|rfD3[8]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[8]~17_combout\ = (!\A|op_proc~0_combout\ & ((\A|op_proc~1_combout\ & (\A|I|rfD3\(8))) # (!\A|op_proc~1_combout\ & ((\A|J|rfD3\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~0_combout\,
	datab => \A|I|rfD3\(8),
	datac => \A|J|rfD3\(8),
	datad => \A|op_proc~1_combout\,
	combout => \A|rfD3[8]~17_combout\);

-- Location: LCCOMB_X18_Y13_N14
\A|rfD3[8]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[8]~18_combout\ = (\A|rfD3[8]~17_combout\) # ((\A|R|rfD3\(8) & \A|op_proc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|rfD3\(8),
	datac => \A|rfD3[8]~17_combout\,
	datad => \A|op_proc~0_combout\,
	combout => \A|rfD3[8]~18_combout\);

-- Location: LCCOMB_X18_Y13_N24
\A|rfD3[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3\(8) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfD3[8]~18_combout\))) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfD3\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3\(8),
	datac => \A|rfD3[8]~18_combout\,
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfD3\(8));

-- Location: LCCOMB_X20_Y12_N2
\rf|dw[5][8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[5][8]~combout\ = (GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & (\A|rfD3\(8))) # (!GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & ((\rf|dw[5][8]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3\(8),
	datac => \rf|dw[5][8]~combout\,
	datad => \rf|Decoder0~0clkctrl_outclk\,
	combout => \rf|dw[5][8]~combout\);

-- Location: LCCOMB_X20_Y12_N28
\rf|R5|d_read~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R5|d_read~12_combout\ = (\rf_write_en~q\ & \rf|dw[5][8]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[5][8]~combout\,
	combout => \rf|R5|d_read~12_combout\);

-- Location: FF_X20_Y12_N29
\rf|R5|d_read[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R5|d_read~12_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R5|d_read\(8));

-- Location: LCCOMB_X17_Y12_N12
\rf|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux7~0_combout\ = (\A|rfA1\(1) & (((\rf|R6|d_read\(8)) # (\A|rfA1\(0))))) # (!\A|rfA1\(1) & (\rf|R4|d_read\(8) & ((!\A|rfA1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R4|d_read\(8),
	datab => \rf|R6|d_read\(8),
	datac => \A|rfA1\(1),
	datad => \A|rfA1\(0),
	combout => \rf|Mux7~0_combout\);

-- Location: LCCOMB_X17_Y12_N30
\rf|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux7~1_combout\ = (\rf|Mux7~0_combout\ & (((\rf|R7|d_read\(8)) # (!\A|rfA1\(0))))) # (!\rf|Mux7~0_combout\ & (\rf|R5|d_read\(8) & ((\A|rfA1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R5|d_read\(8),
	datab => \rf|R7|d_read\(8),
	datac => \rf|Mux7~0_combout\,
	datad => \A|rfA1\(0),
	combout => \rf|Mux7~1_combout\);

-- Location: LCCOMB_X17_Y12_N18
\rf|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux7~2_combout\ = (\A|rfA1\(1) & (\A|rfA1\(0))) # (!\A|rfA1\(1) & ((\A|rfA1\(0) & ((\rf|R1|d_read\(8)))) # (!\A|rfA1\(0) & (\rf|R0|d_read\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(1),
	datab => \A|rfA1\(0),
	datac => \rf|R0|d_read\(8),
	datad => \rf|R1|d_read\(8),
	combout => \rf|Mux7~2_combout\);

-- Location: LCCOMB_X17_Y12_N16
\rf|Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux7~3_combout\ = (\A|rfA1\(1) & ((\rf|Mux7~2_combout\ & (\rf|R3|d_read\(8))) # (!\rf|Mux7~2_combout\ & ((\rf|R2|d_read\(8)))))) # (!\A|rfA1\(1) & (((\rf|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R3|d_read\(8),
	datab => \rf|R2|d_read\(8),
	datac => \A|rfA1\(1),
	datad => \rf|Mux7~2_combout\,
	combout => \rf|Mux7~3_combout\);

-- Location: LCCOMB_X17_Y12_N10
\rf|Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux7~4_combout\ = (\A|rfA1\(2) & (\rf|Mux7~1_combout\)) # (!\A|rfA1\(2) & ((\rf|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux7~1_combout\,
	datab => \rf|Mux7~3_combout\,
	datad => \A|rfA1\(2),
	combout => \rf|Mux7~4_combout\);

-- Location: LCCOMB_X17_Y12_N0
\A|D1[1][8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[1][8]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux7~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D1[1][8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D1[1][8]~combout\,
	datac => \A|op_proc~1_combout\,
	datad => \rf|Mux7~4_combout\,
	combout => \A|D1[1][8]~combout\);

-- Location: LCCOMB_X18_Y13_N12
\A|D2[1][8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[1][8]~combout\ = (\A|op_proc~1_combout\ & (\rf|Mux23~4_combout\)) # (!\A|op_proc~1_combout\ & ((\A|D2[1][8]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux23~4_combout\,
	datac => \A|D2[1][8]~combout\,
	datad => \A|op_proc~1_combout\,
	combout => \A|D2[1][8]~combout\);

-- Location: LCCOMB_X16_Y13_N26
\A|I|adderA[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA[8]~8_combout\ = (\A|Equal0~1_combout\ & (\A|D1[1][8]~combout\)) # (!\A|Equal0~1_combout\ & ((\A|I|adderA[0]~0_combout\ & ((\A|D2[1][8]~combout\))) # (!\A|I|adderA[0]~0_combout\ & (\A|D1[1][8]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][8]~combout\,
	datab => \A|D2[1][8]~combout\,
	datac => \A|Equal0~1_combout\,
	datad => \A|I|adderA[0]~0_combout\,
	combout => \A|I|adderA[8]~8_combout\);

-- Location: LCCOMB_X14_Y18_N30
\A|I|adderA[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA\(8) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\A|I|adderA[8]~8_combout\)) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|adderA[8]~8_combout\,
	datac => \A|I|adderA\(8),
	datad => \A|I|adderB[0]~7clkctrl_outclk\,
	combout => \A|I|adderA\(8));

-- Location: LCCOMB_X14_Y15_N20
\rf|dw[2][9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[2][9]~combout\ = (\rf|Decoder0~4_combout\ & ((\A|rfD3\(9)))) # (!\rf|Decoder0~4_combout\ & (\rf|dw[2][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[2][9]~combout\,
	datac => \rf|Decoder0~4_combout\,
	datad => \A|rfD3\(9),
	combout => \rf|dw[2][9]~combout\);

-- Location: LCCOMB_X14_Y15_N0
\rf|R2|d_read~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R2|d_read~3_combout\ = (\rf_write_en~q\ & \rf|dw[2][9]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datad => \rf|dw[2][9]~combout\,
	combout => \rf|R2|d_read~3_combout\);

-- Location: FF_X14_Y15_N1
\rf|R2|d_read[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R2|d_read~3_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R2|d_read\(9));

-- Location: LCCOMB_X14_Y15_N22
\rf|dw[1][9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[1][9]~combout\ = (\rf|Decoder0~5_combout\ & ((\A|rfD3\(9)))) # (!\rf|Decoder0~5_combout\ & (\rf|dw[1][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[1][9]~combout\,
	datac => \rf|Decoder0~5_combout\,
	datad => \A|rfD3\(9),
	combout => \rf|dw[1][9]~combout\);

-- Location: LCCOMB_X13_Y15_N6
\rf|R1|d_read~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R1|d_read~3_combout\ = (\rf_write_en~q\ & \rf|dw[1][9]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[1][9]~combout\,
	combout => \rf|R1|d_read~3_combout\);

-- Location: FF_X14_Y15_N15
\rf|R1|d_read[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|R1|d_read~3_combout\,
	sload => VCC,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R1|d_read\(9));

-- Location: LCCOMB_X14_Y15_N4
\rf|dw[0][9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[0][9]~combout\ = (\rf|Decoder0~6_combout\ & ((\A|rfD3\(9)))) # (!\rf|Decoder0~6_combout\ & (\rf|dw[0][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[0][9]~combout\,
	datac => \rf|Decoder0~6_combout\,
	datad => \A|rfD3\(9),
	combout => \rf|dw[0][9]~combout\);

-- Location: LCCOMB_X13_Y15_N28
\rf|R0|d_read~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R0|d_read~3_combout\ = (\rf_write_en~q\ & \rf|dw[0][9]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[0][9]~combout\,
	combout => \rf|R0|d_read~3_combout\);

-- Location: FF_X13_Y15_N29
\rf|R0|d_read[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R0|d_read~3_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R0|d_read\(9));

-- Location: LCCOMB_X14_Y15_N12
\rf|Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux22~2_combout\ = (\A|rfA2\(0) & ((\A|rfA2\(1)) # ((\rf|R1|d_read\(9))))) # (!\A|rfA2\(0) & (!\A|rfA2\(1) & ((\rf|R0|d_read\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(0),
	datab => \A|rfA2\(1),
	datac => \rf|R1|d_read\(9),
	datad => \rf|R0|d_read\(9),
	combout => \rf|Mux22~2_combout\);

-- Location: LCCOMB_X13_Y15_N4
\rf|dw[3][9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[3][9]~combout\ = (\rf|Decoder0~7_combout\ & ((\A|rfD3\(9)))) # (!\rf|Decoder0~7_combout\ & (\rf|dw[3][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[3][9]~combout\,
	datac => \rf|Decoder0~7_combout\,
	datad => \A|rfD3\(9),
	combout => \rf|dw[3][9]~combout\);

-- Location: LCCOMB_X14_Y15_N18
\rf|R3|d_read~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R3|d_read~3_combout\ = (\rf|dw[3][9]~combout\ & \rf_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|dw[3][9]~combout\,
	datad => \rf_write_en~q\,
	combout => \rf|R3|d_read~3_combout\);

-- Location: FF_X14_Y15_N19
\rf|R3|d_read[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R3|d_read~3_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R3|d_read\(9));

-- Location: LCCOMB_X14_Y15_N8
\rf|Mux22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux22~3_combout\ = (\A|rfA2\(1) & ((\rf|Mux22~2_combout\ & ((\rf|R3|d_read\(9)))) # (!\rf|Mux22~2_combout\ & (\rf|R2|d_read\(9))))) # (!\A|rfA2\(1) & (((\rf|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R2|d_read\(9),
	datab => \A|rfA2\(1),
	datac => \rf|Mux22~2_combout\,
	datad => \rf|R3|d_read\(9),
	combout => \rf|Mux22~3_combout\);

-- Location: LCCOMB_X13_Y15_N16
\rf|dw[6][9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[6][9]~combout\ = (GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & (\A|rfD3\(9))) # (!GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & ((\rf|dw[6][9]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(9),
	datac => \rf|Decoder0~1clkctrl_outclk\,
	datad => \rf|dw[6][9]~combout\,
	combout => \rf|dw[6][9]~combout\);

-- Location: LCCOMB_X13_Y15_N12
\rf|R6|d_read~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R6|d_read~3_combout\ = (\rf_write_en~q\ & \rf|dw[6][9]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[6][9]~combout\,
	combout => \rf|R6|d_read~3_combout\);

-- Location: FF_X13_Y15_N13
\rf|R6|d_read[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R6|d_read~3_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R6|d_read\(9));

-- Location: LCCOMB_X13_Y15_N24
\rf|Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux22~0_combout\ = (\A|rfA2\(1) & ((\A|rfA2\(0)) # ((\rf|R6|d_read\(9))))) # (!\A|rfA2\(1) & (!\A|rfA2\(0) & (\rf|R4|d_read\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(1),
	datab => \A|rfA2\(0),
	datac => \rf|R4|d_read\(9),
	datad => \rf|R6|d_read\(9),
	combout => \rf|Mux22~0_combout\);

-- Location: LCCOMB_X13_Y15_N20
\rf|dw[5][9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[5][9]~combout\ = (GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & (\A|rfD3\(9))) # (!GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & ((\rf|dw[5][9]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(9),
	datac => \rf|Decoder0~0clkctrl_outclk\,
	datad => \rf|dw[5][9]~combout\,
	combout => \rf|dw[5][9]~combout\);

-- Location: LCCOMB_X13_Y15_N0
\rf|R5|d_read~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R5|d_read~3_combout\ = (\rf_write_en~q\ & \rf|dw[5][9]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[5][9]~combout\,
	combout => \rf|R5|d_read~3_combout\);

-- Location: FF_X13_Y15_N1
\rf|R5|d_read[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R5|d_read~3_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R5|d_read\(9));

-- Location: LCCOMB_X14_Y15_N26
\rf|dw[7][9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[7][9]~combout\ = (\rf|Decoder0~3_combout\ & ((\A|rfD3\(9)))) # (!\rf|Decoder0~3_combout\ & (\rf|dw[7][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Decoder0~3_combout\,
	datac => \rf|dw[7][9]~combout\,
	datad => \A|rfD3\(9),
	combout => \rf|dw[7][9]~combout\);

-- Location: LCCOMB_X14_Y15_N16
\rf|R7|d_read~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R7|d_read~4_combout\ = (\rf|dw[7][9]~combout\ & \rf_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|dw[7][9]~combout\,
	datad => \rf_write_en~q\,
	combout => \rf|R7|d_read~4_combout\);

-- Location: FF_X14_Y15_N17
\rf|R7|d_read[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R7|d_read~4_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R7|d_read\(9));

-- Location: LCCOMB_X14_Y15_N2
\rf|Mux22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux22~1_combout\ = (\A|rfA2\(0) & ((\rf|Mux22~0_combout\ & ((\rf|R7|d_read\(9)))) # (!\rf|Mux22~0_combout\ & (\rf|R5|d_read\(9))))) # (!\A|rfA2\(0) & (\rf|Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(0),
	datab => \rf|Mux22~0_combout\,
	datac => \rf|R5|d_read\(9),
	datad => \rf|R7|d_read\(9),
	combout => \rf|Mux22~1_combout\);

-- Location: LCCOMB_X14_Y15_N30
\rf|Mux22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux22~4_combout\ = (\A|rfA2\(2) & ((\rf|Mux22~1_combout\))) # (!\A|rfA2\(2) & (\rf|Mux22~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux22~3_combout\,
	datab => \rf|Mux22~1_combout\,
	datac => \A|rfA2\(2),
	combout => \rf|Mux22~4_combout\);

-- Location: LCCOMB_X15_Y13_N10
\A|D2[1][9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[1][9]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux22~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D2[1][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[1][9]~combout\,
	datac => \A|op_proc~1_combout\,
	datad => \rf|Mux22~4_combout\,
	combout => \A|D2[1][9]~combout\);

-- Location: LCCOMB_X18_Y17_N30
\A|I|adderA[9]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA[9]~7_combout\ = (\A|Equal0~1_combout\ & (((\A|D1[1][9]~combout\)))) # (!\A|Equal0~1_combout\ & ((\A|I|adderA[0]~0_combout\ & (\A|D2[1][9]~combout\)) # (!\A|I|adderA[0]~0_combout\ & ((\A|D1[1][9]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[1][9]~combout\,
	datab => \A|D1[1][9]~combout\,
	datac => \A|Equal0~1_combout\,
	datad => \A|I|adderA[0]~0_combout\,
	combout => \A|I|adderA[9]~7_combout\);

-- Location: LCCOMB_X16_Y18_N30
\A|I|adderA[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA\(9) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\A|I|adderA[9]~7_combout\)) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderA\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|adderA[9]~7_combout\,
	datac => \A|I|adderA\(9),
	datad => \A|I|adderB[0]~7clkctrl_outclk\,
	combout => \A|I|adderA\(9));

-- Location: LCCOMB_X15_Y18_N8
\A|I|adder|Sum[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Sum\(9) = \A|I|adderA\(9) $ (((\A|I|adderB\(8) & ((\A|I|adderA\(8)) # (\A|I|adder|carry[8]~9_combout\))) # (!\A|I|adderB\(8) & (\A|I|adderA\(8) & \A|I|adder|carry[8]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderB\(8),
	datab => \A|I|adderA\(8),
	datac => \A|I|adderA\(9),
	datad => \A|I|adder|carry[8]~9_combout\,
	combout => \A|I|adder|Sum\(9));

-- Location: LCCOMB_X14_Y17_N18
\A|I|rfD3[9]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[9]~8_combout\ = (\A|I|rfD3[15]~22_combout\ & (((\A|I|adder|Sum\(9))))) # (!\A|I|rfD3[15]~22_combout\ & (\A|D1[1][9]~combout\ & (!\A|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][9]~combout\,
	datab => \A|Equal0~2_combout\,
	datac => \A|I|rfD3[15]~22_combout\,
	datad => \A|I|adder|Sum\(9),
	combout => \A|I|rfD3[9]~8_combout\);

-- Location: LCCOMB_X14_Y17_N16
\A|I|rfD3[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3\(9) = (GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & ((\A|I|rfD3[9]~8_combout\))) # (!GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & (\A|I|rfD3\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|rfD3\(9),
	datac => \A|I|rfD3[9]~8_combout\,
	datad => \A|I|rfD3[15]~4clkctrl_outclk\,
	combout => \A|I|rfD3\(9));

-- Location: FF_X14_Y15_N25
\A|J|rfD3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inp[2]~input_o\,
	sload => VCC,
	ena => \A|J|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|J|rfD3\(9));

-- Location: LCCOMB_X14_Y15_N24
\A|rfD3[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[9]~6_combout\ = (!\A|op_proc~0_combout\ & ((\A|op_proc~1_combout\ & (\A|I|rfD3\(9))) # (!\A|op_proc~1_combout\ & ((\A|J|rfD3\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~1_combout\,
	datab => \A|I|rfD3\(9),
	datac => \A|J|rfD3\(9),
	datad => \A|op_proc~0_combout\,
	combout => \A|rfD3[9]~6_combout\);

-- Location: LCCOMB_X13_Y15_N22
\A|D1[0][9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[0][9]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux6~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D1[0][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][9]~combout\,
	datac => \rf|Mux6~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D1[0][9]~combout\);

-- Location: LCCOMB_X17_Y16_N12
\A|R|adderA[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderA\(9) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderA\(9)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D1[0][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D1[0][9]~combout\,
	datac => \A|R|Cout~0clkctrl_outclk\,
	datad => \A|R|adderA\(9),
	combout => \A|R|adderA\(9));

-- Location: LCCOMB_X19_Y16_N18
\A|R|adder|carry[9]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[9]~12_combout\ = (\A|R|adderB\(8) & ((\A|R|adderA\(8)) # (\A|R|adder|carry[8]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderA\(8),
	datac => \A|R|adderB\(8),
	datad => \A|R|adder|carry[8]~10_combout\,
	combout => \A|R|adder|carry[9]~12_combout\);

-- Location: LCCOMB_X19_Y16_N4
\A|R|adder|carry[9]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[9]~11_combout\ = (\A|R|adderA\(8) & \A|R|adder|carry[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|R|adderA\(8),
	datad => \A|R|adder|carry[8]~10_combout\,
	combout => \A|R|adder|carry[9]~11_combout\);

-- Location: LCCOMB_X14_Y15_N10
\A|D2[0][9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[0][9]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux22~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D2[0][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][9]~combout\,
	datac => \A|op_proc~0clkctrl_outclk\,
	datad => \rf|Mux22~4_combout\,
	combout => \A|D2[0][9]~combout\);

-- Location: LCCOMB_X17_Y16_N10
\A|R|adderB[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderB\(9) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderB\(9)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D2[0][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[0][9]~combout\,
	datac => \A|R|Cout~0clkctrl_outclk\,
	datad => \A|R|adderB\(9),
	combout => \A|R|adderB\(9));

-- Location: LCCOMB_X18_Y16_N14
\A|R|adder|Sum[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|Sum\(9) = \A|R|adderA\(9) $ (\A|R|adderB\(9) $ (((\A|R|adder|carry[9]~12_combout\) # (\A|R|adder|carry[9]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderA\(9),
	datab => \A|R|adder|carry[9]~12_combout\,
	datac => \A|R|adder|carry[9]~11_combout\,
	datad => \A|R|adderB\(9),
	combout => \A|R|adder|Sum\(9));

-- Location: LCCOMB_X17_Y16_N26
\A|R|rfD3[9]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[9]~21_combout\ = (\A|Equal0~0_combout\ & (\A|R|adder|Sum\(9))) # (!\A|Equal0~0_combout\ & (((!\A|D2[0][9]~combout\) # (!\A|D1[0][9]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adder|Sum\(9),
	datab => \A|D1[0][9]~combout\,
	datac => \A|Equal0~0_combout\,
	datad => \A|D2[0][9]~combout\,
	combout => \A|R|rfD3[9]~21_combout\);

-- Location: LCCOMB_X17_Y16_N4
\A|R|rfD3[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3\(9) = (GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & ((\A|R|rfD3[9]~21_combout\))) # (!GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & (\A|R|rfD3\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|rfD3\(9),
	datac => \A|R|rfD3[14]~13clkctrl_outclk\,
	datad => \A|R|rfD3[9]~21_combout\,
	combout => \A|R|rfD3\(9));

-- Location: LCCOMB_X14_Y15_N14
\A|rfD3[9]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[9]~7_combout\ = (\A|rfD3[9]~6_combout\) # ((\A|op_proc~0_combout\ & \A|R|rfD3\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~0_combout\,
	datab => \A|rfD3[9]~6_combout\,
	datad => \A|R|rfD3\(9),
	combout => \A|rfD3[9]~7_combout\);

-- Location: LCCOMB_X14_Y15_N6
\A|rfD3[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3\(9) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfD3[9]~7_combout\))) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfD3\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(9),
	datac => \A|rfD3[9]~7_combout\,
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfD3\(9));

-- Location: LCCOMB_X14_Y15_N28
\rf|dw[4][9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[4][9]~combout\ = (GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & (\A|rfD3\(9))) # (!GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & ((\rf|dw[4][9]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(9),
	datab => \rf|dw[4][9]~combout\,
	datad => \rf|Decoder0~2clkctrl_outclk\,
	combout => \rf|dw[4][9]~combout\);

-- Location: LCCOMB_X13_Y15_N2
\rf|R4|d_read~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R4|d_read~3_combout\ = (\rf_write_en~q\ & \rf|dw[4][9]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[4][9]~combout\,
	combout => \rf|R4|d_read~3_combout\);

-- Location: FF_X13_Y15_N3
\rf|R4|d_read[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R4|d_read~3_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R4|d_read\(9));

-- Location: LCCOMB_X13_Y15_N30
\rf|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux6~0_combout\ = (\A|rfA1\(0) & (((\A|rfA1\(1))))) # (!\A|rfA1\(0) & ((\A|rfA1\(1) & ((\rf|R6|d_read\(9)))) # (!\A|rfA1\(1) & (\rf|R4|d_read\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(0),
	datab => \rf|R4|d_read\(9),
	datac => \rf|R6|d_read\(9),
	datad => \A|rfA1\(1),
	combout => \rf|Mux6~0_combout\);

-- Location: LCCOMB_X13_Y15_N18
\rf|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux6~1_combout\ = (\rf|Mux6~0_combout\ & (((\rf|R7|d_read\(9))) # (!\A|rfA1\(0)))) # (!\rf|Mux6~0_combout\ & (\A|rfA1\(0) & (\rf|R5|d_read\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux6~0_combout\,
	datab => \A|rfA1\(0),
	datac => \rf|R5|d_read\(9),
	datad => \rf|R7|d_read\(9),
	combout => \rf|Mux6~1_combout\);

-- Location: LCCOMB_X13_Y15_N8
\rf|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux6~2_combout\ = (\A|rfA1\(1) & (((\A|rfA1\(0))))) # (!\A|rfA1\(1) & ((\A|rfA1\(0) & (\rf|R1|d_read\(9))) # (!\A|rfA1\(0) & ((\rf|R0|d_read\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R1|d_read\(9),
	datab => \rf|R0|d_read\(9),
	datac => \A|rfA1\(1),
	datad => \A|rfA1\(0),
	combout => \rf|Mux6~2_combout\);

-- Location: LCCOMB_X13_Y15_N26
\rf|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux6~3_combout\ = (\rf|Mux6~2_combout\ & (((\rf|R3|d_read\(9))) # (!\A|rfA1\(1)))) # (!\rf|Mux6~2_combout\ & (\A|rfA1\(1) & ((\rf|R2|d_read\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux6~2_combout\,
	datab => \A|rfA1\(1),
	datac => \rf|R3|d_read\(9),
	datad => \rf|R2|d_read\(9),
	combout => \rf|Mux6~3_combout\);

-- Location: LCCOMB_X13_Y15_N14
\rf|Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux6~4_combout\ = (\A|rfA1\(2) & (\rf|Mux6~1_combout\)) # (!\A|rfA1\(2) & ((\rf|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux6~1_combout\,
	datac => \rf|Mux6~3_combout\,
	datad => \A|rfA1\(2),
	combout => \rf|Mux6~4_combout\);

-- Location: LCCOMB_X13_Y15_N10
\A|D1[1][9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[1][9]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux6~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D1[1][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][9]~combout\,
	datac => \rf|Mux6~4_combout\,
	datad => \A|op_proc~1_combout\,
	combout => \A|D1[1][9]~combout\);

-- Location: LCCOMB_X15_Y13_N8
\A|I|Equal4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|Equal4~6_combout\ = \A|D1[1][9]~combout\ $ (\A|D2[1][9]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|D1[1][9]~combout\,
	datad => \A|D2[1][9]~combout\,
	combout => \A|I|Equal4~6_combout\);

-- Location: FF_X15_Y14_N1
\A|J|rfD3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inp[3]~input_o\,
	sload => VCC,
	ena => \A|J|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|J|rfD3\(10));

-- Location: LCCOMB_X15_Y13_N14
\A|I|rfD3[10]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[10]~18_combout\ = (!\A|I|rfD3[15]~22_combout\ & (!\A|Equal0~2_combout\ & \A|D1[1][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfD3[15]~22_combout\,
	datab => \A|Equal0~2_combout\,
	datad => \A|D1[1][10]~combout\,
	combout => \A|I|rfD3[10]~18_combout\);

-- Location: LCCOMB_X15_Y14_N14
\rf|dw[2][10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[2][10]~combout\ = (\rf|Decoder0~4_combout\ & ((\A|rfD3\(10)))) # (!\rf|Decoder0~4_combout\ & (\rf|dw[2][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[2][10]~combout\,
	datac => \rf|Decoder0~4_combout\,
	datad => \A|rfD3\(10),
	combout => \rf|dw[2][10]~combout\);

-- Location: LCCOMB_X15_Y14_N22
\rf|R2|d_read~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R2|d_read~13_combout\ = (\rf|dw[2][10]~combout\ & \rf_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|dw[2][10]~combout\,
	datad => \rf_write_en~q\,
	combout => \rf|R2|d_read~13_combout\);

-- Location: FF_X15_Y14_N23
\rf|R2|d_read[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R2|d_read~13_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R2|d_read\(10));

-- Location: LCCOMB_X16_Y14_N26
\rf|dw[1][10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[1][10]~combout\ = (\rf|Decoder0~5_combout\ & ((\A|rfD3\(10)))) # (!\rf|Decoder0~5_combout\ & (\rf|dw[1][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~5_combout\,
	datac => \rf|dw[1][10]~combout\,
	datad => \A|rfD3\(10),
	combout => \rf|dw[1][10]~combout\);

-- Location: LCCOMB_X16_Y14_N8
\rf|R1|d_read~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R1|d_read~13_combout\ = (\rf|dw[1][10]~combout\ & \rf_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|dw[1][10]~combout\,
	datad => \rf_write_en~q\,
	combout => \rf|R1|d_read~13_combout\);

-- Location: FF_X16_Y14_N9
\rf|R1|d_read[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R1|d_read~13_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R1|d_read\(10));

-- Location: LCCOMB_X15_Y14_N16
\rf|dw[0][10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[0][10]~combout\ = (\rf|Decoder0~6_combout\ & ((\A|rfD3\(10)))) # (!\rf|Decoder0~6_combout\ & (\rf|dw[0][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[0][10]~combout\,
	datac => \rf|Decoder0~6_combout\,
	datad => \A|rfD3\(10),
	combout => \rf|dw[0][10]~combout\);

-- Location: LCCOMB_X15_Y14_N28
\rf|R0|d_read~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R0|d_read~13_combout\ = (\rf_write_en~q\ & \rf|dw[0][10]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datad => \rf|dw[0][10]~combout\,
	combout => \rf|R0|d_read~13_combout\);

-- Location: FF_X15_Y14_N29
\rf|R0|d_read[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R0|d_read~13_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R0|d_read\(10));

-- Location: LCCOMB_X15_Y14_N18
\rf|Mux21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux21~2_combout\ = (\A|rfA2\(1) & (\A|rfA2\(0))) # (!\A|rfA2\(1) & ((\A|rfA2\(0) & (\rf|R1|d_read\(10))) # (!\A|rfA2\(0) & ((\rf|R0|d_read\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(1),
	datab => \A|rfA2\(0),
	datac => \rf|R1|d_read\(10),
	datad => \rf|R0|d_read\(10),
	combout => \rf|Mux21~2_combout\);

-- Location: LCCOMB_X16_Y14_N18
\rf|dw[3][10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[3][10]~combout\ = (\rf|Decoder0~7_combout\ & ((\A|rfD3\(10)))) # (!\rf|Decoder0~7_combout\ & (\rf|dw[3][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[3][10]~combout\,
	datac => \rf|Decoder0~7_combout\,
	datad => \A|rfD3\(10),
	combout => \rf|dw[3][10]~combout\);

-- Location: LCCOMB_X16_Y14_N20
\rf|R3|d_read~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R3|d_read~13_combout\ = (\rf_write_en~q\ & \rf|dw[3][10]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[3][10]~combout\,
	combout => \rf|R3|d_read~13_combout\);

-- Location: FF_X16_Y14_N21
\rf|R3|d_read[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R3|d_read~13_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R3|d_read\(10));

-- Location: LCCOMB_X15_Y14_N8
\rf|Mux21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux21~3_combout\ = (\A|rfA2\(1) & ((\rf|Mux21~2_combout\ & ((\rf|R3|d_read\(10)))) # (!\rf|Mux21~2_combout\ & (\rf|R2|d_read\(10))))) # (!\A|rfA2\(1) & (((\rf|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R2|d_read\(10),
	datab => \A|rfA2\(1),
	datac => \rf|Mux21~2_combout\,
	datad => \rf|R3|d_read\(10),
	combout => \rf|Mux21~3_combout\);

-- Location: LCCOMB_X16_Y14_N12
\rf|dw[4][10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[4][10]~combout\ = (GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & (\A|rfD3\(10))) # (!GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & ((\rf|dw[4][10]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(10),
	datac => \rf|dw[4][10]~combout\,
	datad => \rf|Decoder0~2clkctrl_outclk\,
	combout => \rf|dw[4][10]~combout\);

-- Location: LCCOMB_X16_Y14_N22
\rf|R4|d_read~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R4|d_read~13_combout\ = (\rf_write_en~q\ & \rf|dw[4][10]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[4][10]~combout\,
	combout => \rf|R4|d_read~13_combout\);

-- Location: FF_X16_Y14_N23
\rf|R4|d_read[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R4|d_read~13_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R4|d_read\(10));

-- Location: LCCOMB_X16_Y14_N2
\rf|dw[6][10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[6][10]~combout\ = (GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & (\A|rfD3\(10))) # (!GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & ((\rf|dw[6][10]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(10),
	datac => \rf|Decoder0~1clkctrl_outclk\,
	datad => \rf|dw[6][10]~combout\,
	combout => \rf|dw[6][10]~combout\);

-- Location: LCCOMB_X16_Y14_N28
\rf|R6|d_read~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R6|d_read~13_combout\ = (\rf_write_en~q\ & \rf|dw[6][10]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[6][10]~combout\,
	combout => \rf|R6|d_read~13_combout\);

-- Location: FF_X16_Y14_N29
\rf|R6|d_read[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R6|d_read~13_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R6|d_read\(10));

-- Location: LCCOMB_X16_Y14_N14
\rf|Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux21~0_combout\ = (\A|rfA2\(0) & (((\A|rfA2\(1))))) # (!\A|rfA2\(0) & ((\A|rfA2\(1) & ((\rf|R6|d_read\(10)))) # (!\A|rfA2\(1) & (\rf|R4|d_read\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R4|d_read\(10),
	datab => \A|rfA2\(0),
	datac => \A|rfA2\(1),
	datad => \rf|R6|d_read\(10),
	combout => \rf|Mux21~0_combout\);

-- Location: LCCOMB_X15_Y14_N12
\rf|dw[7][10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[7][10]~combout\ = (\rf|Decoder0~3_combout\ & ((\A|rfD3\(10)))) # (!\rf|Decoder0~3_combout\ & (\rf|dw[7][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[7][10]~combout\,
	datab => \rf|Decoder0~3_combout\,
	datad => \A|rfD3\(10),
	combout => \rf|dw[7][10]~combout\);

-- Location: LCCOMB_X15_Y14_N6
\rf|R7|d_read~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R7|d_read~14_combout\ = (\rf_write_en~q\ & \rf|dw[7][10]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datad => \rf|dw[7][10]~combout\,
	combout => \rf|R7|d_read~14_combout\);

-- Location: FF_X15_Y14_N7
\rf|R7|d_read[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R7|d_read~14_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R7|d_read\(10));

-- Location: LCCOMB_X15_Y14_N4
\rf|Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux21~1_combout\ = (\A|rfA2\(0) & ((\rf|Mux21~0_combout\ & ((\rf|R7|d_read\(10)))) # (!\rf|Mux21~0_combout\ & (\rf|R5|d_read\(10))))) # (!\A|rfA2\(0) & (((\rf|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R5|d_read\(10),
	datab => \A|rfA2\(0),
	datac => \rf|Mux21~0_combout\,
	datad => \rf|R7|d_read\(10),
	combout => \rf|Mux21~1_combout\);

-- Location: LCCOMB_X15_Y14_N30
\rf|Mux21~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux21~4_combout\ = (\A|rfA2\(2) & ((\rf|Mux21~1_combout\))) # (!\A|rfA2\(2) & (\rf|Mux21~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux21~3_combout\,
	datab => \A|rfA2\(2),
	datac => \rf|Mux21~1_combout\,
	combout => \rf|Mux21~4_combout\);

-- Location: LCCOMB_X16_Y13_N6
\A|D2[1][10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[1][10]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux21~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D2[1][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[1][10]~combout\,
	datac => \A|op_proc~1_combout\,
	datad => \rf|Mux21~4_combout\,
	combout => \A|D2[1][10]~combout\);

-- Location: LCCOMB_X15_Y13_N24
\A|I|adderA[10]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA[10]~6_combout\ = (\A|Equal0~1_combout\ & (\A|D1[1][10]~combout\)) # (!\A|Equal0~1_combout\ & ((\A|I|adderA[0]~0_combout\ & ((\A|D2[1][10]~combout\))) # (!\A|I|adderA[0]~0_combout\ & (\A|D1[1][10]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][10]~combout\,
	datab => \A|D2[1][10]~combout\,
	datac => \A|Equal0~1_combout\,
	datad => \A|I|adderA[0]~0_combout\,
	combout => \A|I|adderA[10]~6_combout\);

-- Location: LCCOMB_X14_Y18_N4
\A|I|adderA[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA\(10) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\A|I|adderA[10]~6_combout\)) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderA\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA[10]~6_combout\,
	datac => \A|I|adderA\(10),
	datad => \A|I|adderB[0]~7clkctrl_outclk\,
	combout => \A|I|adderA\(10));

-- Location: LCCOMB_X15_Y18_N2
\A|I|adder|carry~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|carry~10_combout\ = (\A|I|adderA\(9) & ((\A|I|adderB\(8) & ((\A|I|adderA\(8)) # (\A|I|adder|carry[8]~9_combout\))) # (!\A|I|adderB\(8) & (\A|I|adderA\(8) & \A|I|adder|carry[8]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderB\(8),
	datab => \A|I|adderA\(8),
	datac => \A|I|adderA\(9),
	datad => \A|I|adder|carry[8]~9_combout\,
	combout => \A|I|adder|carry~10_combout\);

-- Location: LCCOMB_X15_Y18_N20
\A|I|rfD3[10]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[10]~19_combout\ = (\A|I|rfD3[10]~18_combout\) # ((\A|I|rfD3[15]~22_combout\ & (\A|I|adderA\(10) $ (\A|I|adder|carry~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfD3[10]~18_combout\,
	datab => \A|I|adderA\(10),
	datac => \A|I|adder|carry~10_combout\,
	datad => \A|I|rfD3[15]~22_combout\,
	combout => \A|I|rfD3[10]~19_combout\);

-- Location: LCCOMB_X15_Y17_N8
\A|I|rfD3[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3\(10) = (GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & (\A|I|rfD3[10]~19_combout\)) # (!GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & ((\A|I|rfD3\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|rfD3[10]~19_combout\,
	datac => \A|I|rfD3\(10),
	datad => \A|I|rfD3[15]~4clkctrl_outclk\,
	combout => \A|I|rfD3\(10));

-- Location: LCCOMB_X15_Y14_N0
\A|rfD3[10]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[10]~19_combout\ = (!\A|op_proc~0_combout\ & ((\A|op_proc~1_combout\ & ((\A|I|rfD3\(10)))) # (!\A|op_proc~1_combout\ & (\A|J|rfD3\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~1_combout\,
	datab => \A|op_proc~0_combout\,
	datac => \A|J|rfD3\(10),
	datad => \A|I|rfD3\(10),
	combout => \A|rfD3[10]~19_combout\);

-- Location: LCCOMB_X16_Y14_N6
\A|D1[0][10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[0][10]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux5~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D1[0][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][10]~combout\,
	datac => \rf|Mux5~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D1[0][10]~combout\);

-- Location: LCCOMB_X16_Y16_N14
\A|R|adderA[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderA\(10) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderA\(10)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D1[0][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D1[0][10]~combout\,
	datac => \A|R|adderA\(10),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderA\(10));

-- Location: LCCOMB_X15_Y14_N24
\A|D2[0][10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[0][10]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux21~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D2[0][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[0][10]~combout\,
	datac => \rf|Mux21~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D2[0][10]~combout\);

-- Location: LCCOMB_X16_Y16_N8
\A|R|adderB[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderB\(10) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderB\(10)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D2[0][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[0][10]~combout\,
	datac => \A|R|adderB\(10),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderB\(10));

-- Location: LCCOMB_X19_Y16_N12
\A|R|adder|carry[10]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[10]~13_combout\ = (\A|R|adderB\(9) & ((\A|R|adderA\(9)) # ((\A|R|adder|carry[9]~11_combout\) # (\A|R|adder|carry[9]~12_combout\)))) # (!\A|R|adderB\(9) & (\A|R|adderA\(9) & ((\A|R|adder|carry[9]~11_combout\) # 
-- (\A|R|adder|carry[9]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderB\(9),
	datab => \A|R|adderA\(9),
	datac => \A|R|adder|carry[9]~11_combout\,
	datad => \A|R|adder|carry[9]~12_combout\,
	combout => \A|R|adder|carry[10]~13_combout\);

-- Location: LCCOMB_X16_Y16_N0
\A|R|rfD3[10]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[10]~28_combout\ = (\A|Equal0~0_combout\ & (\A|R|adderA\(10) $ (\A|R|adderB\(10) $ (\A|R|adder|carry[10]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Equal0~0_combout\,
	datab => \A|R|adderA\(10),
	datac => \A|R|adderB\(10),
	datad => \A|R|adder|carry[10]~13_combout\,
	combout => \A|R|rfD3[10]~28_combout\);

-- Location: LCCOMB_X16_Y16_N28
\A|R|rfD3[10]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[10]~34_combout\ = (\A|R|rfD3[10]~28_combout\) # ((!\A|Equal0~0_combout\ & ((!\A|D1[0][10]~combout\) # (!\A|D2[0][10]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|rfD3[10]~28_combout\,
	datab => \A|D2[0][10]~combout\,
	datac => \A|D1[0][10]~combout\,
	datad => \A|Equal0~0_combout\,
	combout => \A|R|rfD3[10]~34_combout\);

-- Location: LCCOMB_X15_Y16_N8
\A|R|rfD3[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3\(10) = (GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & (\A|R|rfD3[10]~34_combout\)) # (!GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & ((\A|R|rfD3\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|rfD3[10]~34_combout\,
	datac => \A|R|rfD3\(10),
	datad => \A|R|rfD3[14]~13clkctrl_outclk\,
	combout => \A|R|rfD3\(10));

-- Location: LCCOMB_X15_Y14_N26
\A|rfD3[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[10]~20_combout\ = (\A|rfD3[10]~19_combout\) # ((\A|op_proc~0_combout\ & \A|R|rfD3\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|op_proc~0_combout\,
	datac => \A|rfD3[10]~19_combout\,
	datad => \A|R|rfD3\(10),
	combout => \A|rfD3[10]~20_combout\);

-- Location: LCCOMB_X15_Y14_N10
\A|rfD3[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3\(10) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfD3[10]~20_combout\))) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfD3\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(10),
	datac => \A|rfD3[10]~20_combout\,
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfD3\(10));

-- Location: LCCOMB_X15_Y14_N2
\rf|dw[5][10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[5][10]~combout\ = (GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & (\A|rfD3\(10))) # (!GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & ((\rf|dw[5][10]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(10),
	datac => \rf|Decoder0~0clkctrl_outclk\,
	datad => \rf|dw[5][10]~combout\,
	combout => \rf|dw[5][10]~combout\);

-- Location: LCCOMB_X15_Y14_N20
\rf|R5|d_read~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R5|d_read~13_combout\ = (\rf_write_en~q\ & \rf|dw[5][10]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datad => \rf|dw[5][10]~combout\,
	combout => \rf|R5|d_read~13_combout\);

-- Location: FF_X15_Y14_N21
\rf|R5|d_read[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R5|d_read~13_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R5|d_read\(10));

-- Location: LCCOMB_X16_Y14_N16
\rf|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux5~0_combout\ = (\A|rfA1\(1) & (((\rf|R6|d_read\(10)) # (\A|rfA1\(0))))) # (!\A|rfA1\(1) & (\rf|R4|d_read\(10) & ((!\A|rfA1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(1),
	datab => \rf|R4|d_read\(10),
	datac => \rf|R6|d_read\(10),
	datad => \A|rfA1\(0),
	combout => \rf|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y14_N24
\rf|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux5~1_combout\ = (\A|rfA1\(0) & ((\rf|Mux5~0_combout\ & ((\rf|R7|d_read\(10)))) # (!\rf|Mux5~0_combout\ & (\rf|R5|d_read\(10))))) # (!\A|rfA1\(0) & (((\rf|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R5|d_read\(10),
	datab => \A|rfA1\(0),
	datac => \rf|Mux5~0_combout\,
	datad => \rf|R7|d_read\(10),
	combout => \rf|Mux5~1_combout\);

-- Location: LCCOMB_X16_Y14_N10
\rf|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux5~2_combout\ = (\A|rfA1\(1) & (((\A|rfA1\(0))))) # (!\A|rfA1\(1) & ((\A|rfA1\(0) & (\rf|R1|d_read\(10))) # (!\A|rfA1\(0) & ((\rf|R0|d_read\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(1),
	datab => \rf|R1|d_read\(10),
	datac => \rf|R0|d_read\(10),
	datad => \A|rfA1\(0),
	combout => \rf|Mux5~2_combout\);

-- Location: LCCOMB_X16_Y14_N4
\rf|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux5~3_combout\ = (\A|rfA1\(1) & ((\rf|Mux5~2_combout\ & ((\rf|R3|d_read\(10)))) # (!\rf|Mux5~2_combout\ & (\rf|R2|d_read\(10))))) # (!\A|rfA1\(1) & (\rf|Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(1),
	datab => \rf|Mux5~2_combout\,
	datac => \rf|R2|d_read\(10),
	datad => \rf|R3|d_read\(10),
	combout => \rf|Mux5~3_combout\);

-- Location: LCCOMB_X16_Y14_N0
\rf|Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux5~4_combout\ = (\A|rfA1\(2) & (\rf|Mux5~1_combout\)) # (!\A|rfA1\(2) & ((\rf|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux5~1_combout\,
	datac => \rf|Mux5~3_combout\,
	datad => \A|rfA1\(2),
	combout => \rf|Mux5~4_combout\);

-- Location: LCCOMB_X16_Y14_N30
\A|D1[1][10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[1][10]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux5~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D1[1][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][10]~combout\,
	datac => \A|op_proc~1_combout\,
	datad => \rf|Mux5~4_combout\,
	combout => \A|D1[1][10]~combout\);

-- Location: LCCOMB_X18_Y10_N10
\rf|dw[4][11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[4][11]~combout\ = (GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & (\A|rfD3\(11))) # (!GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & ((\rf|dw[4][11]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3\(11),
	datac => \rf|dw[4][11]~combout\,
	datad => \rf|Decoder0~2clkctrl_outclk\,
	combout => \rf|dw[4][11]~combout\);

-- Location: LCCOMB_X18_Y10_N26
\rf|R4|d_read~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R4|d_read~2_combout\ = (\rf_write_en~q\ & \rf|dw[4][11]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[4][11]~combout\,
	combout => \rf|R4|d_read~2_combout\);

-- Location: FF_X18_Y10_N27
\rf|R4|d_read[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R4|d_read~2_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R4|d_read\(11));

-- Location: LCCOMB_X18_Y10_N28
\rf|dw[6][11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[6][11]~combout\ = (GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & (\A|rfD3\(11))) # (!GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & ((\rf|dw[6][11]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Decoder0~1clkctrl_outclk\,
	datac => \A|rfD3\(11),
	datad => \rf|dw[6][11]~combout\,
	combout => \rf|dw[6][11]~combout\);

-- Location: LCCOMB_X18_Y10_N20
\rf|R6|d_read~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R6|d_read~2_combout\ = (\rf_write_en~q\ & \rf|dw[6][11]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[6][11]~combout\,
	combout => \rf|R6|d_read~2_combout\);

-- Location: FF_X18_Y10_N21
\rf|R6|d_read[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R6|d_read~2_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R6|d_read\(11));

-- Location: LCCOMB_X18_Y10_N24
\rf|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux20~0_combout\ = (\A|rfA2\(0) & (((\A|rfA2\(1))))) # (!\A|rfA2\(0) & ((\A|rfA2\(1) & ((\rf|R6|d_read\(11)))) # (!\A|rfA2\(1) & (\rf|R4|d_read\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(0),
	datab => \rf|R4|d_read\(11),
	datac => \A|rfA2\(1),
	datad => \rf|R6|d_read\(11),
	combout => \rf|Mux20~0_combout\);

-- Location: LCCOMB_X18_Y12_N20
\rf|dw[5][11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[5][11]~combout\ = (GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & (\A|rfD3\(11))) # (!GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & ((\rf|dw[5][11]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3\(11),
	datac => \rf|dw[5][11]~combout\,
	datad => \rf|Decoder0~0clkctrl_outclk\,
	combout => \rf|dw[5][11]~combout\);

-- Location: LCCOMB_X18_Y12_N0
\rf|R5|d_read~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R5|d_read~2_combout\ = (\rf_write_en~q\ & \rf|dw[5][11]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[5][11]~combout\,
	combout => \rf|R5|d_read~2_combout\);

-- Location: FF_X18_Y12_N1
\rf|R5|d_read[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R5|d_read~2_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R5|d_read\(11));

-- Location: LCCOMB_X18_Y10_N6
\rf|Mux20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux20~1_combout\ = (\rf|Mux20~0_combout\ & (((\rf|R7|d_read\(11))) # (!\A|rfA2\(0)))) # (!\rf|Mux20~0_combout\ & (\A|rfA2\(0) & ((\rf|R5|d_read\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux20~0_combout\,
	datab => \A|rfA2\(0),
	datac => \rf|R7|d_read\(11),
	datad => \rf|R5|d_read\(11),
	combout => \rf|Mux20~1_combout\);

-- Location: LCCOMB_X18_Y12_N6
\rf|dw[3][11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[3][11]~combout\ = (\rf|Decoder0~7_combout\ & ((\A|rfD3\(11)))) # (!\rf|Decoder0~7_combout\ & (\rf|dw[3][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[3][11]~combout\,
	datac => \rf|Decoder0~7_combout\,
	datad => \A|rfD3\(11),
	combout => \rf|dw[3][11]~combout\);

-- Location: LCCOMB_X18_Y10_N4
\rf|R3|d_read~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R3|d_read~2_combout\ = (\rf_write_en~q\ & \rf|dw[3][11]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[3][11]~combout\,
	combout => \rf|R3|d_read~2_combout\);

-- Location: FF_X18_Y10_N5
\rf|R3|d_read[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R3|d_read~2_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R3|d_read\(11));

-- Location: LCCOMB_X18_Y12_N8
\rf|dw[0][11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[0][11]~combout\ = (\rf|Decoder0~6_combout\ & ((\A|rfD3\(11)))) # (!\rf|Decoder0~6_combout\ & (\rf|dw[0][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~6_combout\,
	datab => \rf|dw[0][11]~combout\,
	datad => \A|rfD3\(11),
	combout => \rf|dw[0][11]~combout\);

-- Location: LCCOMB_X18_Y10_N12
\rf|R0|d_read~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R0|d_read~2_combout\ = (\rf_write_en~q\ & \rf|dw[0][11]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[0][11]~combout\,
	combout => \rf|R0|d_read~2_combout\);

-- Location: FF_X18_Y10_N13
\rf|R0|d_read[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R0|d_read~2_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R0|d_read\(11));

-- Location: LCCOMB_X18_Y12_N22
\rf|dw[1][11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[1][11]~combout\ = (\rf|Decoder0~5_combout\ & ((\A|rfD3\(11)))) # (!\rf|Decoder0~5_combout\ & (\rf|dw[1][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~5_combout\,
	datac => \rf|dw[1][11]~combout\,
	datad => \A|rfD3\(11),
	combout => \rf|dw[1][11]~combout\);

-- Location: LCCOMB_X17_Y10_N14
\rf|R1|d_read~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R1|d_read~2_combout\ = (\rf_write_en~q\ & \rf|dw[1][11]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[1][11]~combout\,
	combout => \rf|R1|d_read~2_combout\);

-- Location: FF_X17_Y10_N15
\rf|R1|d_read[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R1|d_read~2_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R1|d_read\(11));

-- Location: LCCOMB_X18_Y10_N30
\rf|Mux20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux20~2_combout\ = (\A|rfA2\(0) & (((\A|rfA2\(1)) # (\rf|R1|d_read\(11))))) # (!\A|rfA2\(0) & (\rf|R0|d_read\(11) & (!\A|rfA2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(0),
	datab => \rf|R0|d_read\(11),
	datac => \A|rfA2\(1),
	datad => \rf|R1|d_read\(11),
	combout => \rf|Mux20~2_combout\);

-- Location: LCCOMB_X18_Y12_N24
\rf|dw[2][11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[2][11]~combout\ = (\rf|Decoder0~4_combout\ & ((\A|rfD3\(11)))) # (!\rf|Decoder0~4_combout\ & (\rf|dw[2][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[2][11]~combout\,
	datac => \rf|Decoder0~4_combout\,
	datad => \A|rfD3\(11),
	combout => \rf|dw[2][11]~combout\);

-- Location: LCCOMB_X17_Y10_N18
\rf|R2|d_read~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R2|d_read~2_combout\ = (\rf_write_en~q\ & \rf|dw[2][11]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[2][11]~combout\,
	combout => \rf|R2|d_read~2_combout\);

-- Location: FF_X17_Y10_N19
\rf|R2|d_read[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R2|d_read~2_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R2|d_read\(11));

-- Location: LCCOMB_X18_Y10_N2
\rf|Mux20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux20~3_combout\ = (\rf|Mux20~2_combout\ & ((\rf|R3|d_read\(11)) # ((!\A|rfA2\(1))))) # (!\rf|Mux20~2_combout\ & (((\rf|R2|d_read\(11) & \A|rfA2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R3|d_read\(11),
	datab => \rf|Mux20~2_combout\,
	datac => \rf|R2|d_read\(11),
	datad => \A|rfA2\(1),
	combout => \rf|Mux20~3_combout\);

-- Location: LCCOMB_X18_Y10_N16
\rf|Mux20~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux20~4_combout\ = (\A|rfA2\(2) & (\rf|Mux20~1_combout\)) # (!\A|rfA2\(2) & ((\rf|Mux20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux20~1_combout\,
	datab => \rf|Mux20~3_combout\,
	datac => \A|rfA2\(2),
	combout => \rf|Mux20~4_combout\);

-- Location: LCCOMB_X17_Y14_N8
\A|D2[0][11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[0][11]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\rf|Mux20~4_combout\)) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\A|D2[0][11]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux20~4_combout\,
	datac => \A|D2[0][11]~combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D2[0][11]~combout\);

-- Location: LCCOMB_X17_Y16_N8
\A|D1[0][11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[0][11]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux4~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D1[0][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D1[0][11]~combout\,
	datac => \rf|Mux4~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D1[0][11]~combout\);

-- Location: LCCOMB_X17_Y16_N2
\A|R|adderB[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderB\(11) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderB\(11)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D2[0][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][11]~combout\,
	datac => \A|R|Cout~0clkctrl_outclk\,
	datad => \A|R|adderB\(11),
	combout => \A|R|adderB\(11));

-- Location: LCCOMB_X17_Y16_N0
\A|R|adderA[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderA\(11) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderA\(11)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D1[0][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][11]~combout\,
	datac => \A|R|Cout~0clkctrl_outclk\,
	datad => \A|R|adderA\(11),
	combout => \A|R|adderA\(11));

-- Location: LCCOMB_X19_Y16_N24
\A|R|adder|carry[11]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[11]~15_combout\ = (\A|R|adderB\(10) & ((\A|R|adderA\(10)) # (\A|R|adder|carry[10]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderB\(10),
	datac => \A|R|adderA\(10),
	datad => \A|R|adder|carry[10]~13_combout\,
	combout => \A|R|adder|carry[11]~15_combout\);

-- Location: LCCOMB_X19_Y16_N14
\A|R|adder|carry[11]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[11]~14_combout\ = (\A|R|adderA\(10) & \A|R|adder|carry[10]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|R|adderA\(10),
	datad => \A|R|adder|carry[10]~13_combout\,
	combout => \A|R|adder|carry[11]~14_combout\);

-- Location: LCCOMB_X17_Y16_N28
\A|R|adder|Sum[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|Sum\(11) = \A|R|adderB\(11) $ (\A|R|adderA\(11) $ (((\A|R|adder|carry[11]~15_combout\) # (\A|R|adder|carry[11]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderB\(11),
	datab => \A|R|adderA\(11),
	datac => \A|R|adder|carry[11]~15_combout\,
	datad => \A|R|adder|carry[11]~14_combout\,
	combout => \A|R|adder|Sum\(11));

-- Location: LCCOMB_X17_Y16_N24
\A|R|rfD3[11]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[11]~20_combout\ = (\A|Equal0~0_combout\ & (((\A|R|adder|Sum\(11))))) # (!\A|Equal0~0_combout\ & (((!\A|D1[0][11]~combout\)) # (!\A|D2[0][11]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][11]~combout\,
	datab => \A|D1[0][11]~combout\,
	datac => \A|Equal0~0_combout\,
	datad => \A|R|adder|Sum\(11),
	combout => \A|R|rfD3[11]~20_combout\);

-- Location: LCCOMB_X17_Y16_N22
\A|R|rfD3[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3\(11) = (GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & ((\A|R|rfD3[11]~20_combout\))) # (!GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & (\A|R|rfD3\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|rfD3\(11),
	datac => \A|R|rfD3[11]~20_combout\,
	datad => \A|R|rfD3[14]~13clkctrl_outclk\,
	combout => \A|R|rfD3\(11));

-- Location: LCCOMB_X17_Y10_N8
\A|D2[1][11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[1][11]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux20~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D2[1][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~1_combout\,
	datab => \A|D2[1][11]~combout\,
	datad => \rf|Mux20~4_combout\,
	combout => \A|D2[1][11]~combout\);

-- Location: LCCOMB_X16_Y13_N28
\A|I|adderA[11]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA[11]~5_combout\ = (\A|Equal0~1_combout\ & (((\A|D1[1][11]~combout\)))) # (!\A|Equal0~1_combout\ & ((\A|I|adderA[0]~0_combout\ & (\A|D2[1][11]~combout\)) # (!\A|I|adderA[0]~0_combout\ & ((\A|D1[1][11]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[1][11]~combout\,
	datab => \A|D1[1][11]~combout\,
	datac => \A|Equal0~1_combout\,
	datad => \A|I|adderA[0]~0_combout\,
	combout => \A|I|adderA[11]~5_combout\);

-- Location: LCCOMB_X16_Y16_N26
\A|I|adderA[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA\(11) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderA[11]~5_combout\))) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\A|I|adderA\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(11),
	datac => \A|I|adderA[11]~5_combout\,
	datad => \A|I|adderB[0]~7clkctrl_outclk\,
	combout => \A|I|adderA\(11));

-- Location: LCCOMB_X15_Y18_N14
\A|I|rfD3[11]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[11]~6_combout\ = (\A|I|rfD3[15]~22_combout\ & (\A|I|adderA\(11) $ (((\A|I|adderA\(10) & \A|I|adder|carry~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(10),
	datab => \A|I|adderA\(11),
	datac => \A|I|adder|carry~10_combout\,
	datad => \A|I|rfD3[15]~22_combout\,
	combout => \A|I|rfD3[11]~6_combout\);

-- Location: LCCOMB_X14_Y17_N12
\A|I|rfD3[11]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[11]~7_combout\ = (\A|I|rfD3[11]~6_combout\) # ((!\A|Equal0~2_combout\ & (\A|D1[1][11]~combout\ & !\A|I|rfD3[15]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfD3[11]~6_combout\,
	datab => \A|Equal0~2_combout\,
	datac => \A|D1[1][11]~combout\,
	datad => \A|I|rfD3[15]~22_combout\,
	combout => \A|I|rfD3[11]~7_combout\);

-- Location: LCCOMB_X14_Y17_N14
\A|I|rfD3[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3\(11) = (GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & (\A|I|rfD3[11]~7_combout\)) # (!GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & ((\A|I|rfD3\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfD3[11]~7_combout\,
	datac => \A|I|rfD3\(11),
	datad => \A|I|rfD3[15]~4clkctrl_outclk\,
	combout => \A|I|rfD3\(11));

-- Location: FF_X14_Y12_N13
\A|J|rfD3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inp[4]~input_o\,
	sload => VCC,
	ena => \A|J|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|J|rfD3\(11));

-- Location: LCCOMB_X14_Y12_N12
\A|rfD3[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[11]~4_combout\ = (!\A|op_proc~0_combout\ & ((\A|op_proc~1_combout\ & (\A|I|rfD3\(11))) # (!\A|op_proc~1_combout\ & ((\A|J|rfD3\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~0_combout\,
	datab => \A|I|rfD3\(11),
	datac => \A|J|rfD3\(11),
	datad => \A|op_proc~1_combout\,
	combout => \A|rfD3[11]~4_combout\);

-- Location: LCCOMB_X18_Y12_N2
\A|rfD3[11]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[11]~5_combout\ = (\A|rfD3[11]~4_combout\) # ((\A|R|rfD3\(11) & \A|op_proc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|rfD3\(11),
	datac => \A|rfD3[11]~4_combout\,
	datad => \A|op_proc~0_combout\,
	combout => \A|rfD3[11]~5_combout\);

-- Location: LCCOMB_X18_Y12_N16
\A|rfD3[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3\(11) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfD3[11]~5_combout\))) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfD3\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3\(11),
	datac => \A|rfD3[11]~5_combout\,
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfD3\(11));

-- Location: LCCOMB_X18_Y12_N18
\rf|dw[7][11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[7][11]~combout\ = (\rf|Decoder0~3_combout\ & (\A|rfD3\(11))) # (!\rf|Decoder0~3_combout\ & ((\rf|dw[7][11]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3\(11),
	datac => \rf|Decoder0~3_combout\,
	datad => \rf|dw[7][11]~combout\,
	combout => \rf|dw[7][11]~combout\);

-- Location: LCCOMB_X18_Y12_N30
\rf|R7|d_read~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R7|d_read~3_combout\ = (\rf_write_en~q\ & \rf|dw[7][11]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[7][11]~combout\,
	combout => \rf|R7|d_read~3_combout\);

-- Location: FF_X18_Y12_N31
\rf|R7|d_read[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R7|d_read~3_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R7|d_read\(11));

-- Location: LCCOMB_X18_Y10_N14
\rf|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux4~0_combout\ = (\A|rfA1\(1) & (((\rf|R6|d_read\(11)) # (\A|rfA1\(0))))) # (!\A|rfA1\(1) & (\rf|R4|d_read\(11) & ((!\A|rfA1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R4|d_read\(11),
	datab => \A|rfA1\(1),
	datac => \rf|R6|d_read\(11),
	datad => \A|rfA1\(0),
	combout => \rf|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y10_N0
\rf|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux4~1_combout\ = (\A|rfA1\(0) & ((\rf|Mux4~0_combout\ & (\rf|R7|d_read\(11))) # (!\rf|Mux4~0_combout\ & ((\rf|R5|d_read\(11)))))) # (!\A|rfA1\(0) & (((\rf|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R7|d_read\(11),
	datab => \A|rfA1\(0),
	datac => \rf|R5|d_read\(11),
	datad => \rf|Mux4~0_combout\,
	combout => \rf|Mux4~1_combout\);

-- Location: LCCOMB_X18_Y10_N18
\rf|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux4~2_combout\ = (\A|rfA1\(1) & (((\A|rfA1\(0))))) # (!\A|rfA1\(1) & ((\A|rfA1\(0) & (\rf|R1|d_read\(11))) # (!\A|rfA1\(0) & ((\rf|R0|d_read\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R1|d_read\(11),
	datab => \A|rfA1\(1),
	datac => \rf|R0|d_read\(11),
	datad => \A|rfA1\(0),
	combout => \rf|Mux4~2_combout\);

-- Location: LCCOMB_X18_Y10_N8
\rf|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux4~3_combout\ = (\rf|Mux4~2_combout\ & (((\rf|R3|d_read\(11)) # (!\A|rfA1\(1))))) # (!\rf|Mux4~2_combout\ & (\rf|R2|d_read\(11) & (\A|rfA1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R2|d_read\(11),
	datab => \rf|Mux4~2_combout\,
	datac => \A|rfA1\(1),
	datad => \rf|R3|d_read\(11),
	combout => \rf|Mux4~3_combout\);

-- Location: LCCOMB_X18_Y10_N22
\rf|Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux4~4_combout\ = (\A|rfA1\(2) & (\rf|Mux4~1_combout\)) # (!\A|rfA1\(2) & ((\rf|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux4~1_combout\,
	datab => \A|rfA1\(2),
	datad => \rf|Mux4~3_combout\,
	combout => \rf|Mux4~4_combout\);

-- Location: LCCOMB_X17_Y13_N10
\A|D1[1][11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[1][11]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux4~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D1[1][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][11]~combout\,
	datab => \rf|Mux4~4_combout\,
	datad => \A|op_proc~1_combout\,
	combout => \A|D1[1][11]~combout\);

-- Location: LCCOMB_X16_Y13_N14
\A|I|Equal4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|Equal4~5_combout\ = (\A|D1[1][10]~combout\ & (\A|D2[1][10]~combout\ & (\A|D1[1][11]~combout\ $ (!\A|D2[1][11]~combout\)))) # (!\A|D1[1][10]~combout\ & (!\A|D2[1][10]~combout\ & (\A|D1[1][11]~combout\ $ (!\A|D2[1][11]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][10]~combout\,
	datab => \A|D1[1][11]~combout\,
	datac => \A|D2[1][11]~combout\,
	datad => \A|D2[1][10]~combout\,
	combout => \A|I|Equal4~5_combout\);

-- Location: LCCOMB_X16_Y13_N22
\A|I|Equal4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|Equal4~7_combout\ = (!\A|I|Equal4~6_combout\ & (\A|I|Equal4~5_combout\ & (\A|D2[1][8]~combout\ $ (!\A|D1[1][8]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|Equal4~6_combout\,
	datab => \A|I|Equal4~5_combout\,
	datac => \A|D2[1][8]~combout\,
	datad => \A|D1[1][8]~combout\,
	combout => \A|I|Equal4~7_combout\);

-- Location: LCCOMB_X14_Y12_N18
\rf|dw[7][14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[7][14]~combout\ = (\rf|Decoder0~3_combout\ & ((\A|rfD3\(14)))) # (!\rf|Decoder0~3_combout\ & (\rf|dw[7][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[7][14]~combout\,
	datac => \rf|Decoder0~3_combout\,
	datad => \A|rfD3\(14),
	combout => \rf|dw[7][14]~combout\);

-- Location: LCCOMB_X14_Y12_N20
\rf|R7|d_read~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R7|d_read~16_combout\ = (\rf_write_en~q\ & \rf|dw[7][14]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[7][14]~combout\,
	combout => \rf|R7|d_read~16_combout\);

-- Location: FF_X14_Y12_N21
\rf|R7|d_read[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R7|d_read~16_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R7|d_read\(14));

-- Location: LCCOMB_X15_Y12_N12
\rf|dw[6][14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[6][14]~combout\ = (GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & (\A|rfD3\(14))) # (!GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & ((\rf|dw[6][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(14),
	datac => \rf|Decoder0~1clkctrl_outclk\,
	datad => \rf|dw[6][14]~combout\,
	combout => \rf|dw[6][14]~combout\);

-- Location: LCCOMB_X15_Y12_N26
\rf|R6|d_read~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R6|d_read~15_combout\ = (\rf_write_en~q\ & \rf|dw[6][14]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[6][14]~combout\,
	combout => \rf|R6|d_read~15_combout\);

-- Location: FF_X15_Y12_N27
\rf|R6|d_read[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R6|d_read~15_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R6|d_read\(14));

-- Location: LCCOMB_X15_Y12_N20
\rf|dw[4][14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[4][14]~combout\ = (GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & (\A|rfD3\(14))) # (!GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & ((\rf|dw[4][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(14),
	datab => \rf|dw[4][14]~combout\,
	datad => \rf|Decoder0~2clkctrl_outclk\,
	combout => \rf|dw[4][14]~combout\);

-- Location: LCCOMB_X15_Y12_N28
\rf|R4|d_read~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R4|d_read~15_combout\ = (\rf_write_en~q\ & \rf|dw[4][14]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[4][14]~combout\,
	combout => \rf|R4|d_read~15_combout\);

-- Location: FF_X15_Y12_N29
\rf|R4|d_read[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R4|d_read~15_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R4|d_read\(14));

-- Location: LCCOMB_X15_Y12_N18
\rf|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux17~0_combout\ = (\A|rfA2\(1) & ((\A|rfA2\(0)) # ((\rf|R6|d_read\(14))))) # (!\A|rfA2\(1) & (!\A|rfA2\(0) & ((\rf|R4|d_read\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(1),
	datab => \A|rfA2\(0),
	datac => \rf|R6|d_read\(14),
	datad => \rf|R4|d_read\(14),
	combout => \rf|Mux17~0_combout\);

-- Location: LCCOMB_X14_Y12_N28
\rf|dw[5][14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[5][14]~combout\ = (GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & ((\A|rfD3\(14)))) # (!GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & (\rf|dw[5][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[5][14]~combout\,
	datac => \A|rfD3\(14),
	datad => \rf|Decoder0~0clkctrl_outclk\,
	combout => \rf|dw[5][14]~combout\);

-- Location: LCCOMB_X14_Y12_N24
\rf|R5|d_read~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R5|d_read~15_combout\ = (\rf_write_en~q\ & \rf|dw[5][14]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[5][14]~combout\,
	combout => \rf|R5|d_read~15_combout\);

-- Location: FF_X14_Y12_N25
\rf|R5|d_read[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R5|d_read~15_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R5|d_read\(14));

-- Location: LCCOMB_X14_Y12_N30
\rf|Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux17~1_combout\ = (\rf|Mux17~0_combout\ & ((\rf|R7|d_read\(14)) # ((!\A|rfA2\(0))))) # (!\rf|Mux17~0_combout\ & (((\rf|R5|d_read\(14) & \A|rfA2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R7|d_read\(14),
	datab => \rf|Mux17~0_combout\,
	datac => \rf|R5|d_read\(14),
	datad => \A|rfA2\(0),
	combout => \rf|Mux17~1_combout\);

-- Location: LCCOMB_X14_Y12_N26
\rf|dw[1][14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[1][14]~combout\ = (\rf|Decoder0~5_combout\ & ((\A|rfD3\(14)))) # (!\rf|Decoder0~5_combout\ & (\rf|dw[1][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~5_combout\,
	datac => \rf|dw[1][14]~combout\,
	datad => \A|rfD3\(14),
	combout => \rf|dw[1][14]~combout\);

-- Location: LCCOMB_X15_Y12_N16
\rf|R1|d_read~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R1|d_read~15_combout\ = (\rf_write_en~q\ & \rf|dw[1][14]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[1][14]~combout\,
	combout => \rf|R1|d_read~15_combout\);

-- Location: FF_X15_Y12_N17
\rf|R1|d_read[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R1|d_read~15_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R1|d_read\(14));

-- Location: LCCOMB_X14_Y12_N22
\rf|dw[0][14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[0][14]~combout\ = (\rf|Decoder0~6_combout\ & ((\A|rfD3\(14)))) # (!\rf|Decoder0~6_combout\ & (\rf|dw[0][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[0][14]~combout\,
	datab => \rf|Decoder0~6_combout\,
	datad => \A|rfD3\(14),
	combout => \rf|dw[0][14]~combout\);

-- Location: LCCOMB_X15_Y12_N0
\rf|R0|d_read~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R0|d_read~15_combout\ = (\rf_write_en~q\ & \rf|dw[0][14]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[0][14]~combout\,
	combout => \rf|R0|d_read~15_combout\);

-- Location: FF_X15_Y12_N1
\rf|R0|d_read[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R0|d_read~15_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R0|d_read\(14));

-- Location: LCCOMB_X15_Y12_N24
\rf|Mux17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux17~2_combout\ = (\A|rfA2\(1) & (\A|rfA2\(0))) # (!\A|rfA2\(1) & ((\A|rfA2\(0) & (\rf|R1|d_read\(14))) # (!\A|rfA2\(0) & ((\rf|R0|d_read\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(1),
	datab => \A|rfA2\(0),
	datac => \rf|R1|d_read\(14),
	datad => \rf|R0|d_read\(14),
	combout => \rf|Mux17~2_combout\);

-- Location: LCCOMB_X14_Y12_N6
\rf|dw[2][14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[2][14]~combout\ = (\rf|Decoder0~4_combout\ & ((\A|rfD3\(14)))) # (!\rf|Decoder0~4_combout\ & (\rf|dw[2][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[2][14]~combout\,
	datac => \rf|Decoder0~4_combout\,
	datad => \A|rfD3\(14),
	combout => \rf|dw[2][14]~combout\);

-- Location: LCCOMB_X14_Y12_N8
\rf|R2|d_read~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R2|d_read~15_combout\ = (\rf_write_en~q\ & \rf|dw[2][14]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[2][14]~combout\,
	combout => \rf|R2|d_read~15_combout\);

-- Location: FF_X14_Y12_N9
\rf|R2|d_read[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R2|d_read~15_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R2|d_read\(14));

-- Location: LCCOMB_X14_Y12_N2
\rf|Mux17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux17~3_combout\ = (\A|rfA2\(1) & ((\rf|Mux17~2_combout\ & ((\rf|R3|d_read\(14)))) # (!\rf|Mux17~2_combout\ & (\rf|R2|d_read\(14))))) # (!\A|rfA2\(1) & (\rf|Mux17~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(1),
	datab => \rf|Mux17~2_combout\,
	datac => \rf|R2|d_read\(14),
	datad => \rf|R3|d_read\(14),
	combout => \rf|Mux17~3_combout\);

-- Location: LCCOMB_X14_Y12_N16
\rf|Mux17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux17~4_combout\ = (\A|rfA2\(2) & (\rf|Mux17~1_combout\)) # (!\A|rfA2\(2) & ((\rf|Mux17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux17~1_combout\,
	datab => \rf|Mux17~3_combout\,
	datad => \A|rfA2\(2),
	combout => \rf|Mux17~4_combout\);

-- Location: LCCOMB_X14_Y12_N4
\A|D2[0][14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[0][14]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux17~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D2[0][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[0][14]~combout\,
	datac => \rf|Mux17~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D2[0][14]~combout\);

-- Location: LCCOMB_X15_Y12_N14
\A|D1[0][14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[0][14]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux1~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D1[0][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D1[0][14]~combout\,
	datac => \rf|Mux1~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D1[0][14]~combout\);

-- Location: LCCOMB_X14_Y16_N14
\A|R|adderA[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderA\(14) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderA\(14)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D1[0][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D1[0][14]~combout\,
	datac => \A|R|adderA\(14),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderA\(14));

-- Location: LCCOMB_X14_Y16_N28
\A|R|adderB[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderB\(14) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|R|adderB\(14))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|D2[0][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|adderB\(14),
	datac => \A|D2[0][14]~combout\,
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderB\(14));

-- Location: LCCOMB_X14_Y10_N10
\rf|dw[5][13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[5][13]~combout\ = (GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & ((\A|rfD3\(13)))) # (!GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & (\rf|dw[5][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[5][13]~combout\,
	datab => \A|rfD3\(13),
	datac => \rf|Decoder0~0clkctrl_outclk\,
	combout => \rf|dw[5][13]~combout\);

-- Location: LCCOMB_X14_Y10_N12
\rf|R5|d_read~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R5|d_read~1_combout\ = (\rf_write_en~q\ & \rf|dw[5][13]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[5][13]~combout\,
	combout => \rf|R5|d_read~1_combout\);

-- Location: FF_X14_Y10_N13
\rf|R5|d_read[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R5|d_read~1_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R5|d_read\(13));

-- Location: LCCOMB_X15_Y10_N10
\rf|dw[4][13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[4][13]~combout\ = (GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & ((\A|rfD3\(13)))) # (!GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & (\rf|dw[4][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[4][13]~combout\,
	datac => \A|rfD3\(13),
	datad => \rf|Decoder0~2clkctrl_outclk\,
	combout => \rf|dw[4][13]~combout\);

-- Location: LCCOMB_X15_Y10_N0
\rf|R4|d_read~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R4|d_read~1_combout\ = (\rf_write_en~q\ & \rf|dw[4][13]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datad => \rf|dw[4][13]~combout\,
	combout => \rf|R4|d_read~1_combout\);

-- Location: FF_X15_Y10_N1
\rf|R4|d_read[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R4|d_read~1_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R4|d_read\(13));

-- Location: LCCOMB_X15_Y10_N2
\rf|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux2~0_combout\ = (\A|rfA1\(0) & (((\A|rfA1\(1))))) # (!\A|rfA1\(0) & ((\A|rfA1\(1) & (\rf|R6|d_read\(13))) # (!\A|rfA1\(1) & ((\rf|R4|d_read\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R6|d_read\(13),
	datab => \A|rfA1\(0),
	datac => \rf|R4|d_read\(13),
	datad => \A|rfA1\(1),
	combout => \rf|Mux2~0_combout\);

-- Location: LCCOMB_X15_Y10_N6
\rf|dw[7][13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[7][13]~combout\ = (\rf|Decoder0~3_combout\ & ((\A|rfD3\(13)))) # (!\rf|Decoder0~3_combout\ & (\rf|dw[7][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[7][13]~combout\,
	datac => \A|rfD3\(13),
	datad => \rf|Decoder0~3_combout\,
	combout => \rf|dw[7][13]~combout\);

-- Location: LCCOMB_X15_Y10_N24
\rf|R7|d_read~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R7|d_read~2_combout\ = (\rf_write_en~q\ & \rf|dw[7][13]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datad => \rf|dw[7][13]~combout\,
	combout => \rf|R7|d_read~2_combout\);

-- Location: FF_X15_Y10_N25
\rf|R7|d_read[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R7|d_read~2_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R7|d_read\(13));

-- Location: LCCOMB_X15_Y10_N14
\rf|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux2~1_combout\ = (\A|rfA1\(0) & ((\rf|Mux2~0_combout\ & ((\rf|R7|d_read\(13)))) # (!\rf|Mux2~0_combout\ & (\rf|R5|d_read\(13))))) # (!\A|rfA1\(0) & (((\rf|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R5|d_read\(13),
	datab => \A|rfA1\(0),
	datac => \rf|Mux2~0_combout\,
	datad => \rf|R7|d_read\(13),
	combout => \rf|Mux2~1_combout\);

-- Location: LCCOMB_X14_Y10_N22
\rf|dw[1][13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[1][13]~combout\ = (\rf|Decoder0~5_combout\ & ((\A|rfD3\(13)))) # (!\rf|Decoder0~5_combout\ & (\rf|dw[1][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[1][13]~combout\,
	datac => \rf|Decoder0~5_combout\,
	datad => \A|rfD3\(13),
	combout => \rf|dw[1][13]~combout\);

-- Location: LCCOMB_X14_Y10_N24
\rf|R1|d_read~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R1|d_read~1_combout\ = (\rf|dw[1][13]~combout\ & \rf_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|dw[1][13]~combout\,
	datad => \rf_write_en~q\,
	combout => \rf|R1|d_read~1_combout\);

-- Location: FF_X14_Y10_N25
\rf|R1|d_read[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R1|d_read~1_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R1|d_read\(13));

-- Location: LCCOMB_X14_Y10_N16
\rf|dw[0][13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[0][13]~combout\ = (\rf|Decoder0~6_combout\ & ((\A|rfD3\(13)))) # (!\rf|Decoder0~6_combout\ & (\rf|dw[0][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[0][13]~combout\,
	datac => \rf|Decoder0~6_combout\,
	datad => \A|rfD3\(13),
	combout => \rf|dw[0][13]~combout\);

-- Location: LCCOMB_X15_Y10_N28
\rf|R0|d_read~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R0|d_read~1_combout\ = (\rf|dw[0][13]~combout\ & \rf_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|dw[0][13]~combout\,
	datad => \rf_write_en~q\,
	combout => \rf|R0|d_read~1_combout\);

-- Location: FF_X15_Y10_N29
\rf|R0|d_read[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R0|d_read~1_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R0|d_read\(13));

-- Location: LCCOMB_X15_Y10_N8
\rf|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux2~2_combout\ = (\A|rfA1\(0) & ((\rf|R1|d_read\(13)) # ((\A|rfA1\(1))))) # (!\A|rfA1\(0) & (((\rf|R0|d_read\(13) & !\A|rfA1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(0),
	datab => \rf|R1|d_read\(13),
	datac => \rf|R0|d_read\(13),
	datad => \A|rfA1\(1),
	combout => \rf|Mux2~2_combout\);

-- Location: LCCOMB_X14_Y10_N26
\rf|dw[2][13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[2][13]~combout\ = (\rf|Decoder0~4_combout\ & ((\A|rfD3\(13)))) # (!\rf|Decoder0~4_combout\ & (\rf|dw[2][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[2][13]~combout\,
	datac => \A|rfD3\(13),
	datad => \rf|Decoder0~4_combout\,
	combout => \rf|dw[2][13]~combout\);

-- Location: LCCOMB_X15_Y10_N30
\rf|R2|d_read~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R2|d_read~1_combout\ = (\rf_write_en~q\ & \rf|dw[2][13]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datad => \rf|dw[2][13]~combout\,
	combout => \rf|R2|d_read~1_combout\);

-- Location: FF_X15_Y10_N31
\rf|R2|d_read[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R2|d_read~1_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R2|d_read\(13));

-- Location: LCCOMB_X14_Y10_N4
\rf|dw[3][13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[3][13]~combout\ = (\rf|Decoder0~7_combout\ & ((\A|rfD3\(13)))) # (!\rf|Decoder0~7_combout\ & (\rf|dw[3][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~7_combout\,
	datac => \rf|dw[3][13]~combout\,
	datad => \A|rfD3\(13),
	combout => \rf|dw[3][13]~combout\);

-- Location: LCCOMB_X14_Y10_N14
\rf|R3|d_read~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R3|d_read~1_combout\ = (\rf|dw[3][13]~combout\ & \rf_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|dw[3][13]~combout\,
	datad => \rf_write_en~q\,
	combout => \rf|R3|d_read~1_combout\);

-- Location: FF_X14_Y10_N15
\rf|R3|d_read[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R3|d_read~1_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R3|d_read\(13));

-- Location: LCCOMB_X15_Y10_N26
\rf|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux2~3_combout\ = (\rf|Mux2~2_combout\ & (((\rf|R3|d_read\(13))) # (!\A|rfA1\(1)))) # (!\rf|Mux2~2_combout\ & (\A|rfA1\(1) & (\rf|R2|d_read\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux2~2_combout\,
	datab => \A|rfA1\(1),
	datac => \rf|R2|d_read\(13),
	datad => \rf|R3|d_read\(13),
	combout => \rf|Mux2~3_combout\);

-- Location: LCCOMB_X15_Y10_N16
\rf|Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux2~4_combout\ = (\A|rfA1\(2) & (\rf|Mux2~1_combout\)) # (!\A|rfA1\(2) & ((\rf|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux2~1_combout\,
	datab => \rf|Mux2~3_combout\,
	datad => \A|rfA1\(2),
	combout => \rf|Mux2~4_combout\);

-- Location: LCCOMB_X15_Y10_N18
\A|D1[1][13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[1][13]~combout\ = (\A|op_proc~1_combout\ & (\rf|Mux2~4_combout\)) # (!\A|op_proc~1_combout\ & ((\A|D1[1][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Mux2~4_combout\,
	datac => \A|D1[1][13]~combout\,
	datad => \A|op_proc~1_combout\,
	combout => \A|D1[1][13]~combout\);

-- Location: FF_X13_Y11_N5
\A|J|rfD3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inp[5]~input_o\,
	sload => VCC,
	ena => \A|J|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|J|rfD3\(12));

-- Location: LCCOMB_X15_Y18_N18
\A|I|adder|Sum[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Sum\(12) = \A|I|adderA\(12) $ (((\A|I|adderA\(11) & (\A|I|adderA\(10) & \A|I|adder|carry~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(12),
	datab => \A|I|adderA\(11),
	datac => \A|I|adderA\(10),
	datad => \A|I|adder|carry~10_combout\,
	combout => \A|I|adder|Sum\(12));

-- Location: LCCOMB_X14_Y17_N6
\A|I|rfD3[12]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[12]~20_combout\ = (\A|I|rfD3[15]~22_combout\ & (((\A|I|adder|Sum\(12))))) # (!\A|I|rfD3[15]~22_combout\ & (\A|D1[1][12]~combout\ & ((!\A|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][12]~combout\,
	datab => \A|I|rfD3[15]~22_combout\,
	datac => \A|I|adder|Sum\(12),
	datad => \A|Equal0~2_combout\,
	combout => \A|I|rfD3[12]~20_combout\);

-- Location: LCCOMB_X14_Y17_N20
\A|I|rfD3[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3\(12) = (GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & ((\A|I|rfD3[12]~20_combout\))) # (!GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & (\A|I|rfD3\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|rfD3\(12),
	datac => \A|I|rfD3[12]~20_combout\,
	datad => \A|I|rfD3[15]~4clkctrl_outclk\,
	combout => \A|I|rfD3\(12));

-- Location: LCCOMB_X13_Y11_N4
\A|rfD3[12]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[12]~21_combout\ = (!\A|op_proc~0_combout\ & ((\A|op_proc~1_combout\ & ((\A|I|rfD3\(12)))) # (!\A|op_proc~1_combout\ & (\A|J|rfD3\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~0_combout\,
	datab => \A|op_proc~1_combout\,
	datac => \A|J|rfD3\(12),
	datad => \A|I|rfD3\(12),
	combout => \A|rfD3[12]~21_combout\);

-- Location: LCCOMB_X15_Y11_N30
\A|D1[0][12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[0][12]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux3~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D1[0][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][12]~combout\,
	datac => \rf|Mux3~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D1[0][12]~combout\);

-- Location: LCCOMB_X14_Y11_N8
\rf|dw[1][12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[1][12]~combout\ = (\rf|Decoder0~5_combout\ & ((\A|rfD3\(12)))) # (!\rf|Decoder0~5_combout\ & (\rf|dw[1][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[1][12]~combout\,
	datac => \rf|Decoder0~5_combout\,
	datad => \A|rfD3\(12),
	combout => \rf|dw[1][12]~combout\);

-- Location: LCCOMB_X14_Y11_N20
\rf|R1|d_read~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R1|d_read~14_combout\ = (\rf|dw[1][12]~combout\ & \rf_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|dw[1][12]~combout\,
	datad => \rf_write_en~q\,
	combout => \rf|R1|d_read~14_combout\);

-- Location: FF_X14_Y11_N21
\rf|R1|d_read[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R1|d_read~14_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R1|d_read\(12));

-- Location: LCCOMB_X14_Y11_N30
\rf|dw[0][12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[0][12]~combout\ = (\rf|Decoder0~6_combout\ & ((\A|rfD3\(12)))) # (!\rf|Decoder0~6_combout\ & (\rf|dw[0][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Decoder0~6_combout\,
	datac => \rf|dw[0][12]~combout\,
	datad => \A|rfD3\(12),
	combout => \rf|dw[0][12]~combout\);

-- Location: LCCOMB_X15_Y11_N20
\rf|R0|d_read~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R0|d_read~14_combout\ = (\rf_write_en~q\ & \rf|dw[0][12]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[0][12]~combout\,
	combout => \rf|R0|d_read~14_combout\);

-- Location: FF_X15_Y11_N21
\rf|R0|d_read[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R0|d_read~14_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R0|d_read\(12));

-- Location: LCCOMB_X14_Y11_N26
\rf|Mux19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux19~2_combout\ = (\A|rfA2\(1) & (((\A|rfA2\(0))))) # (!\A|rfA2\(1) & ((\A|rfA2\(0) & (\rf|R1|d_read\(12))) # (!\A|rfA2\(0) & ((\rf|R0|d_read\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(1),
	datab => \rf|R1|d_read\(12),
	datac => \rf|R0|d_read\(12),
	datad => \A|rfA2\(0),
	combout => \rf|Mux19~2_combout\);

-- Location: LCCOMB_X14_Y11_N10
\rf|dw[2][12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[2][12]~combout\ = (\rf|Decoder0~4_combout\ & ((\A|rfD3\(12)))) # (!\rf|Decoder0~4_combout\ & (\rf|dw[2][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[2][12]~combout\,
	datac => \rf|Decoder0~4_combout\,
	datad => \A|rfD3\(12),
	combout => \rf|dw[2][12]~combout\);

-- Location: LCCOMB_X15_Y11_N2
\rf|R2|d_read~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R2|d_read~14_combout\ = (\rf_write_en~q\ & \rf|dw[2][12]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[2][12]~combout\,
	combout => \rf|R2|d_read~14_combout\);

-- Location: FF_X15_Y11_N3
\rf|R2|d_read[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R2|d_read~14_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R2|d_read\(12));

-- Location: LCCOMB_X14_Y11_N22
\rf|dw[3][12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[3][12]~combout\ = (\rf|Decoder0~7_combout\ & ((\A|rfD3\(12)))) # (!\rf|Decoder0~7_combout\ & (\rf|dw[3][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Decoder0~7_combout\,
	datac => \rf|dw[3][12]~combout\,
	datad => \A|rfD3\(12),
	combout => \rf|dw[3][12]~combout\);

-- Location: LCCOMB_X14_Y11_N18
\rf|R3|d_read~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R3|d_read~14_combout\ = (\rf|dw[3][12]~combout\ & \rf_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|dw[3][12]~combout\,
	datad => \rf_write_en~q\,
	combout => \rf|R3|d_read~14_combout\);

-- Location: FF_X14_Y11_N19
\rf|R3|d_read[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R3|d_read~14_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R3|d_read\(12));

-- Location: LCCOMB_X14_Y11_N24
\rf|Mux19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux19~3_combout\ = (\A|rfA2\(1) & ((\rf|Mux19~2_combout\ & ((\rf|R3|d_read\(12)))) # (!\rf|Mux19~2_combout\ & (\rf|R2|d_read\(12))))) # (!\A|rfA2\(1) & (\rf|Mux19~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(1),
	datab => \rf|Mux19~2_combout\,
	datac => \rf|R2|d_read\(12),
	datad => \rf|R3|d_read\(12),
	combout => \rf|Mux19~3_combout\);

-- Location: LCCOMB_X14_Y11_N14
\rf|dw[5][12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[5][12]~combout\ = (GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & (\A|rfD3\(12))) # (!GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & ((\rf|dw[5][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3\(12),
	datac => \rf|dw[5][12]~combout\,
	datad => \rf|Decoder0~0clkctrl_outclk\,
	combout => \rf|dw[5][12]~combout\);

-- Location: LCCOMB_X15_Y11_N16
\rf|R5|d_read~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R5|d_read~14_combout\ = (\rf_write_en~q\ & \rf|dw[5][12]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[5][12]~combout\,
	combout => \rf|R5|d_read~14_combout\);

-- Location: FF_X15_Y11_N17
\rf|R5|d_read[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R5|d_read~14_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R5|d_read\(12));

-- Location: LCCOMB_X15_Y11_N12
\rf|dw[6][12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[6][12]~combout\ = (GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & (\A|rfD3\(12))) # (!GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & ((\rf|dw[6][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(12),
	datac => \rf|Decoder0~1clkctrl_outclk\,
	datad => \rf|dw[6][12]~combout\,
	combout => \rf|dw[6][12]~combout\);

-- Location: LCCOMB_X15_Y11_N4
\rf|R6|d_read~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R6|d_read~14_combout\ = (\rf_write_en~q\ & \rf|dw[6][12]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[6][12]~combout\,
	combout => \rf|R6|d_read~14_combout\);

-- Location: FF_X15_Y11_N5
\rf|R6|d_read[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R6|d_read~14_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R6|d_read\(12));

-- Location: LCCOMB_X15_Y11_N26
\rf|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux19~0_combout\ = (\A|rfA2\(1) & (((\rf|R6|d_read\(12)) # (\A|rfA2\(0))))) # (!\A|rfA2\(1) & (\rf|R4|d_read\(12) & ((!\A|rfA2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R4|d_read\(12),
	datab => \A|rfA2\(1),
	datac => \rf|R6|d_read\(12),
	datad => \A|rfA2\(0),
	combout => \rf|Mux19~0_combout\);

-- Location: LCCOMB_X14_Y11_N0
\rf|dw[7][12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[7][12]~combout\ = (\rf|Decoder0~3_combout\ & ((\A|rfD3\(12)))) # (!\rf|Decoder0~3_combout\ & (\rf|dw[7][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[7][12]~combout\,
	datac => \rf|Decoder0~3_combout\,
	datad => \A|rfD3\(12),
	combout => \rf|dw[7][12]~combout\);

-- Location: LCCOMB_X16_Y11_N10
\rf|R7|d_read~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R7|d_read~15_combout\ = (\rf_write_en~q\ & \rf|dw[7][12]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[7][12]~combout\,
	combout => \rf|R7|d_read~15_combout\);

-- Location: FF_X15_Y11_N25
\rf|R7|d_read[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|R7|d_read~15_combout\,
	sload => VCC,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R7|d_read\(12));

-- Location: LCCOMB_X15_Y11_N0
\rf|Mux19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux19~1_combout\ = (\rf|Mux19~0_combout\ & (((\rf|R7|d_read\(12)) # (!\A|rfA2\(0))))) # (!\rf|Mux19~0_combout\ & (\rf|R5|d_read\(12) & ((\A|rfA2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R5|d_read\(12),
	datab => \rf|Mux19~0_combout\,
	datac => \rf|R7|d_read\(12),
	datad => \A|rfA2\(0),
	combout => \rf|Mux19~1_combout\);

-- Location: LCCOMB_X14_Y11_N2
\rf|Mux19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux19~4_combout\ = (\A|rfA2\(2) & ((\rf|Mux19~1_combout\))) # (!\A|rfA2\(2) & (\rf|Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux19~3_combout\,
	datab => \rf|Mux19~1_combout\,
	datad => \A|rfA2\(2),
	combout => \rf|Mux19~4_combout\);

-- Location: LCCOMB_X14_Y11_N28
\A|D2[0][12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[0][12]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\rf|Mux19~4_combout\)) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\A|D2[0][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux19~4_combout\,
	datac => \A|op_proc~0clkctrl_outclk\,
	datad => \A|D2[0][12]~combout\,
	combout => \A|D2[0][12]~combout\);

-- Location: LCCOMB_X13_Y16_N10
\A|R|adderA[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderA\(12) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|R|adderA\(12))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|D1[0][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderA\(12),
	datab => \A|D1[0][12]~combout\,
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderA\(12));

-- Location: LCCOMB_X13_Y16_N8
\A|R|adderB[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderB\(12) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderB\(12)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D2[0][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[0][12]~combout\,
	datac => \A|R|adderB\(12),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderB\(12));

-- Location: LCCOMB_X18_Y16_N20
\A|R|adder|carry[12]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[12]~16_combout\ = (\A|R|adderB\(11) & ((\A|R|adderA\(11)) # ((\A|R|adder|carry[11]~14_combout\) # (\A|R|adder|carry[11]~15_combout\)))) # (!\A|R|adderB\(11) & (\A|R|adderA\(11) & ((\A|R|adder|carry[11]~14_combout\) # 
-- (\A|R|adder|carry[11]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderB\(11),
	datab => \A|R|adderA\(11),
	datac => \A|R|adder|carry[11]~14_combout\,
	datad => \A|R|adder|carry[11]~15_combout\,
	combout => \A|R|adder|carry[12]~16_combout\);

-- Location: LCCOMB_X18_Y16_N12
\A|R|adder|Sum[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|Sum[12]~3_combout\ = \A|R|adderA\(12) $ (\A|R|adderB\(12) $ (\A|R|adder|carry[12]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderA\(12),
	datac => \A|R|adderB\(12),
	datad => \A|R|adder|carry[12]~16_combout\,
	combout => \A|R|adder|Sum[12]~3_combout\);

-- Location: LCCOMB_X13_Y16_N28
\A|R|rfD3[12]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[12]~35_combout\ = (\A|Equal0~0_combout\ & (((\A|R|adder|Sum[12]~3_combout\)))) # (!\A|Equal0~0_combout\ & (((!\A|D2[0][12]~combout\)) # (!\A|D1[0][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Equal0~0_combout\,
	datab => \A|D1[0][12]~combout\,
	datac => \A|D2[0][12]~combout\,
	datad => \A|R|adder|Sum[12]~3_combout\,
	combout => \A|R|rfD3[12]~35_combout\);

-- Location: LCCOMB_X13_Y16_N12
\A|R|rfD3[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3\(12) = (GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & ((\A|R|rfD3[12]~35_combout\))) # (!GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & (\A|R|rfD3\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|rfD3\(12),
	datab => \A|R|rfD3[12]~35_combout\,
	datad => \A|R|rfD3[14]~13clkctrl_outclk\,
	combout => \A|R|rfD3\(12));

-- Location: LCCOMB_X13_Y11_N10
\A|rfD3[12]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[12]~22_combout\ = (\A|rfD3[12]~21_combout\) # ((\A|op_proc~0_combout\ & \A|R|rfD3\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~0_combout\,
	datac => \A|rfD3[12]~21_combout\,
	datad => \A|R|rfD3\(12),
	combout => \A|rfD3[12]~22_combout\);

-- Location: LCCOMB_X14_Y11_N12
\A|rfD3[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3\(12) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfD3[12]~22_combout\))) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfD3\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3\(12),
	datac => \A|rfD3[12]~22_combout\,
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfD3\(12));

-- Location: LCCOMB_X15_Y11_N24
\rf|dw[4][12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[4][12]~combout\ = (GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & (\A|rfD3\(12))) # (!GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & ((\rf|dw[4][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(12),
	datab => \rf|dw[4][12]~combout\,
	datad => \rf|Decoder0~2clkctrl_outclk\,
	combout => \rf|dw[4][12]~combout\);

-- Location: LCCOMB_X15_Y11_N8
\rf|R4|d_read~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R4|d_read~14_combout\ = (\rf_write_en~q\ & \rf|dw[4][12]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[4][12]~combout\,
	combout => \rf|R4|d_read~14_combout\);

-- Location: FF_X15_Y11_N9
\rf|R4|d_read[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R4|d_read~14_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R4|d_read\(12));

-- Location: LCCOMB_X15_Y11_N22
\rf|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux3~0_combout\ = (\A|rfA1\(0) & (((\A|rfA1\(1))))) # (!\A|rfA1\(0) & ((\A|rfA1\(1) & ((\rf|R6|d_read\(12)))) # (!\A|rfA1\(1) & (\rf|R4|d_read\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R4|d_read\(12),
	datab => \A|rfA1\(0),
	datac => \rf|R6|d_read\(12),
	datad => \A|rfA1\(1),
	combout => \rf|Mux3~0_combout\);

-- Location: LCCOMB_X15_Y11_N10
\rf|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux3~1_combout\ = (\rf|Mux3~0_combout\ & (((\rf|R7|d_read\(12))) # (!\A|rfA1\(0)))) # (!\rf|Mux3~0_combout\ & (\A|rfA1\(0) & (\rf|R5|d_read\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux3~0_combout\,
	datab => \A|rfA1\(0),
	datac => \rf|R5|d_read\(12),
	datad => \rf|R7|d_read\(12),
	combout => \rf|Mux3~1_combout\);

-- Location: LCCOMB_X15_Y11_N6
\rf|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux3~2_combout\ = (\A|rfA1\(1) & (((\A|rfA1\(0))))) # (!\A|rfA1\(1) & ((\A|rfA1\(0) & ((\rf|R1|d_read\(12)))) # (!\A|rfA1\(0) & (\rf|R0|d_read\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R0|d_read\(12),
	datab => \A|rfA1\(1),
	datac => \rf|R1|d_read\(12),
	datad => \A|rfA1\(0),
	combout => \rf|Mux3~2_combout\);

-- Location: LCCOMB_X15_Y11_N14
\rf|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux3~3_combout\ = (\A|rfA1\(1) & ((\rf|Mux3~2_combout\ & (\rf|R3|d_read\(12))) # (!\rf|Mux3~2_combout\ & ((\rf|R2|d_read\(12)))))) # (!\A|rfA1\(1) & (((\rf|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R3|d_read\(12),
	datab => \A|rfA1\(1),
	datac => \rf|R2|d_read\(12),
	datad => \rf|Mux3~2_combout\,
	combout => \rf|Mux3~3_combout\);

-- Location: LCCOMB_X15_Y11_N18
\rf|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux3~4_combout\ = (\A|rfA1\(2) & (\rf|Mux3~1_combout\)) # (!\A|rfA1\(2) & ((\rf|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(2),
	datab => \rf|Mux3~1_combout\,
	datad => \rf|Mux3~3_combout\,
	combout => \rf|Mux3~4_combout\);

-- Location: LCCOMB_X15_Y11_N28
\A|D1[1][12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[1][12]~combout\ = (\A|op_proc~1_combout\ & (\rf|Mux3~4_combout\)) # (!\A|op_proc~1_combout\ & ((\A|D1[1][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Mux3~4_combout\,
	datac => \A|D1[1][12]~combout\,
	datad => \A|op_proc~1_combout\,
	combout => \A|D1[1][12]~combout\);

-- Location: LCCOMB_X14_Y11_N16
\A|D2[1][12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[1][12]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux19~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D2[1][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|op_proc~1_combout\,
	datac => \A|D2[1][12]~combout\,
	datad => \rf|Mux19~4_combout\,
	combout => \A|D2[1][12]~combout\);

-- Location: LCCOMB_X15_Y13_N4
\A|I|adderA[12]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA[12]~4_combout\ = (\A|Equal0~1_combout\ & (\A|D1[1][12]~combout\)) # (!\A|Equal0~1_combout\ & ((\A|I|adderA[0]~0_combout\ & ((\A|D2[1][12]~combout\))) # (!\A|I|adderA[0]~0_combout\ & (\A|D1[1][12]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][12]~combout\,
	datab => \A|Equal0~1_combout\,
	datac => \A|D2[1][12]~combout\,
	datad => \A|I|adderA[0]~0_combout\,
	combout => \A|I|adderA[12]~4_combout\);

-- Location: LCCOMB_X15_Y13_N30
\A|I|adderA[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA\(12) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderA[12]~4_combout\))) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\A|I|adderA\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(12),
	datac => \A|I|adderB[0]~7clkctrl_outclk\,
	datad => \A|I|adderA[12]~4_combout\,
	combout => \A|I|adderA\(12));

-- Location: LCCOMB_X15_Y18_N28
\A|I|adder|carry~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|carry~11_combout\ = (\A|I|adderA\(12) & (\A|I|adderA\(11) & (\A|I|adderA\(10) & \A|I|adder|carry~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(12),
	datab => \A|I|adderA\(11),
	datac => \A|I|adderA\(10),
	datad => \A|I|adder|carry~10_combout\,
	combout => \A|I|adder|carry~11_combout\);

-- Location: LCCOMB_X14_Y17_N4
\A|I|adder|Sum[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Sum\(13) = \A|I|adderA\(13) $ (\A|I|adder|carry~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|I|adderA\(13),
	datad => \A|I|adder|carry~11_combout\,
	combout => \A|I|adder|Sum\(13));

-- Location: LCCOMB_X14_Y17_N10
\A|I|rfD3[13]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[13]~5_combout\ = (\A|I|rfD3[15]~22_combout\ & (((\A|I|adder|Sum\(13))))) # (!\A|I|rfD3[15]~22_combout\ & (\A|D1[1][13]~combout\ & (!\A|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][13]~combout\,
	datab => \A|Equal0~2_combout\,
	datac => \A|I|adder|Sum\(13),
	datad => \A|I|rfD3[15]~22_combout\,
	combout => \A|I|rfD3[13]~5_combout\);

-- Location: LCCOMB_X14_Y17_N8
\A|I|rfD3[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3\(13) = (GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & (\A|I|rfD3[13]~5_combout\)) # (!GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & ((\A|I|rfD3\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|rfD3[13]~5_combout\,
	datac => \A|I|rfD3\(13),
	datad => \A|I|rfD3[15]~4clkctrl_outclk\,
	combout => \A|I|rfD3\(13));

-- Location: FF_X14_Y10_N29
\A|J|rfD3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inp[6]~input_o\,
	sload => VCC,
	ena => \A|J|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|J|rfD3\(13));

-- Location: LCCOMB_X14_Y10_N28
\A|rfD3[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[13]~2_combout\ = (!\A|op_proc~0_combout\ & ((\A|op_proc~1_combout\ & (\A|I|rfD3\(13))) # (!\A|op_proc~1_combout\ & ((\A|J|rfD3\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfD3\(13),
	datab => \A|op_proc~1_combout\,
	datac => \A|J|rfD3\(13),
	datad => \A|op_proc~0_combout\,
	combout => \A|rfD3[13]~2_combout\);

-- Location: LCCOMB_X15_Y10_N12
\A|D1[0][13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[0][13]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux2~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D1[0][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][13]~combout\,
	datac => \rf|Mux2~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D1[0][13]~combout\);

-- Location: LCCOMB_X13_Y16_N26
\A|R|adderA[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderA\(13) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderA\(13)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D1[0][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][13]~combout\,
	datac => \A|R|adderA\(13),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderA\(13));

-- Location: LCCOMB_X18_Y16_N26
\A|R|adder|carry[13]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[13]~17_combout\ = (\A|R|adderA\(12) & \A|R|adder|carry[12]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderA\(12),
	datad => \A|R|adder|carry[12]~16_combout\,
	combout => \A|R|adder|carry[13]~17_combout\);

-- Location: LCCOMB_X18_Y16_N28
\A|R|adder|carry[13]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[13]~18_combout\ = (\A|R|adderB\(12) & ((\A|R|adderA\(12)) # (\A|R|adder|carry[12]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderA\(12),
	datac => \A|R|adderB\(12),
	datad => \A|R|adder|carry[12]~16_combout\,
	combout => \A|R|adder|carry[13]~18_combout\);

-- Location: LCCOMB_X18_Y16_N2
\A|R|adder|Sum[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|Sum\(13) = \A|R|adderB\(13) $ (\A|R|adderA\(13) $ (((\A|R|adder|carry[13]~17_combout\) # (\A|R|adder|carry[13]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderB\(13),
	datab => \A|R|adderA\(13),
	datac => \A|R|adder|carry[13]~17_combout\,
	datad => \A|R|adder|carry[13]~18_combout\,
	combout => \A|R|adder|Sum\(13));

-- Location: LCCOMB_X13_Y16_N18
\A|R|rfD3[13]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[13]~19_combout\ = (\A|Equal0~0_combout\ & (((\A|R|adder|Sum\(13))))) # (!\A|Equal0~0_combout\ & (((!\A|D2[0][13]~combout\)) # (!\A|D1[0][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][13]~combout\,
	datab => \A|D2[0][13]~combout\,
	datac => \A|Equal0~0_combout\,
	datad => \A|R|adder|Sum\(13),
	combout => \A|R|rfD3[13]~19_combout\);

-- Location: LCCOMB_X13_Y16_N30
\A|R|rfD3[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3\(13) = (GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & ((\A|R|rfD3[13]~19_combout\))) # (!GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & (\A|R|rfD3\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|rfD3\(13),
	datac => \A|R|rfD3[13]~19_combout\,
	datad => \A|R|rfD3[14]~13clkctrl_outclk\,
	combout => \A|R|rfD3\(13));

-- Location: LCCOMB_X13_Y10_N16
\A|rfD3[13]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[13]~3_combout\ = (\A|rfD3[13]~2_combout\) # ((\A|op_proc~0_combout\ & \A|R|rfD3\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3[13]~2_combout\,
	datac => \A|op_proc~0_combout\,
	datad => \A|R|rfD3\(13),
	combout => \A|rfD3[13]~3_combout\);

-- Location: LCCOMB_X14_Y10_N30
\A|rfD3[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3\(13) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfD3[13]~3_combout\)) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfD3\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3[13]~3_combout\,
	datac => \A|rfD3\(13),
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfD3\(13));

-- Location: LCCOMB_X15_Y10_N20
\rf|dw[6][13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[6][13]~combout\ = (GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & (\A|rfD3\(13))) # (!GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & ((\rf|dw[6][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(13),
	datac => \rf|Decoder0~1clkctrl_outclk\,
	datad => \rf|dw[6][13]~combout\,
	combout => \rf|dw[6][13]~combout\);

-- Location: LCCOMB_X15_Y10_N22
\rf|R6|d_read~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R6|d_read~1_combout\ = (\rf_write_en~q\ & \rf|dw[6][13]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datad => \rf|dw[6][13]~combout\,
	combout => \rf|R6|d_read~1_combout\);

-- Location: FF_X15_Y10_N23
\rf|R6|d_read[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R6|d_read~1_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R6|d_read\(13));

-- Location: LCCOMB_X15_Y10_N4
\rf|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux18~0_combout\ = (\A|rfA2\(0) & (((\A|rfA2\(1))))) # (!\A|rfA2\(0) & ((\A|rfA2\(1) & (\rf|R6|d_read\(13))) # (!\A|rfA2\(1) & ((\rf|R4|d_read\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(0),
	datab => \rf|R6|d_read\(13),
	datac => \rf|R4|d_read\(13),
	datad => \A|rfA2\(1),
	combout => \rf|Mux18~0_combout\);

-- Location: LCCOMB_X14_Y10_N18
\rf|Mux18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux18~1_combout\ = (\rf|Mux18~0_combout\ & (((\rf|R7|d_read\(13)) # (!\A|rfA2\(0))))) # (!\rf|Mux18~0_combout\ & (\rf|R5|d_read\(13) & ((\A|rfA2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux18~0_combout\,
	datab => \rf|R5|d_read\(13),
	datac => \rf|R7|d_read\(13),
	datad => \A|rfA2\(0),
	combout => \rf|Mux18~1_combout\);

-- Location: LCCOMB_X14_Y10_N2
\rf|Mux18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux18~2_combout\ = (\A|rfA2\(1) & (((\A|rfA2\(0))))) # (!\A|rfA2\(1) & ((\A|rfA2\(0) & (\rf|R1|d_read\(13))) # (!\A|rfA2\(0) & ((\rf|R0|d_read\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(1),
	datab => \rf|R1|d_read\(13),
	datac => \rf|R0|d_read\(13),
	datad => \A|rfA2\(0),
	combout => \rf|Mux18~2_combout\);

-- Location: LCCOMB_X14_Y10_N8
\rf|Mux18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux18~3_combout\ = (\rf|Mux18~2_combout\ & (((\rf|R3|d_read\(13)) # (!\A|rfA2\(1))))) # (!\rf|Mux18~2_combout\ & (\rf|R2|d_read\(13) & (\A|rfA2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux18~2_combout\,
	datab => \rf|R2|d_read\(13),
	datac => \A|rfA2\(1),
	datad => \rf|R3|d_read\(13),
	combout => \rf|Mux18~3_combout\);

-- Location: LCCOMB_X14_Y10_N20
\rf|Mux18~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux18~4_combout\ = (\A|rfA2\(2) & (\rf|Mux18~1_combout\)) # (!\A|rfA2\(2) & ((\rf|Mux18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux18~1_combout\,
	datab => \rf|Mux18~3_combout\,
	datad => \A|rfA2\(2),
	combout => \rf|Mux18~4_combout\);

-- Location: LCCOMB_X14_Y10_N6
\A|D2[0][13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[0][13]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux18~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D2[0][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][13]~combout\,
	datac => \rf|Mux18~4_combout\,
	datad => \A|op_proc~0clkctrl_outclk\,
	combout => \A|D2[0][13]~combout\);

-- Location: LCCOMB_X13_Y16_N4
\A|R|adderB[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderB\(13) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderB\(13)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D2[0][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[0][13]~combout\,
	datac => \A|R|adderB\(13),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderB\(13));

-- Location: LCCOMB_X18_Y16_N18
\A|R|adder|carry[14]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[14]~19_combout\ = (\A|R|adderB\(13) & ((\A|R|adderA\(13)) # ((\A|R|adder|carry[13]~17_combout\) # (\A|R|adder|carry[13]~18_combout\)))) # (!\A|R|adderB\(13) & (\A|R|adderA\(13) & ((\A|R|adder|carry[13]~17_combout\) # 
-- (\A|R|adder|carry[13]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderB\(13),
	datab => \A|R|adderA\(13),
	datac => \A|R|adder|carry[13]~17_combout\,
	datad => \A|R|adder|carry[13]~18_combout\,
	combout => \A|R|adder|carry[14]~19_combout\);

-- Location: LCCOMB_X17_Y16_N14
\A|R|adder|Sum[14]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|Sum[14]~4_combout\ = \A|R|adderA\(14) $ (\A|R|adderB\(14) $ (\A|R|adder|carry[14]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|adderA\(14),
	datac => \A|R|adderB\(14),
	datad => \A|R|adder|carry[14]~19_combout\,
	combout => \A|R|adder|Sum[14]~4_combout\);

-- Location: LCCOMB_X14_Y16_N16
\A|R|rfD3[14]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[14]~29_combout\ = (\A|Equal0~0_combout\ & (((\A|R|adder|Sum[14]~4_combout\)))) # (!\A|Equal0~0_combout\ & (((!\A|D1[0][14]~combout\)) # (!\A|D2[0][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][14]~combout\,
	datab => \A|D1[0][14]~combout\,
	datac => \A|Equal0~0_combout\,
	datad => \A|R|adder|Sum[14]~4_combout\,
	combout => \A|R|rfD3[14]~29_combout\);

-- Location: LCCOMB_X13_Y16_N22
\A|R|rfD3[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3\(14) = (GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & (\A|R|rfD3[14]~29_combout\)) # (!GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & ((\A|R|rfD3\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|rfD3[14]~29_combout\,
	datac => \A|R|rfD3\(14),
	datad => \A|R|rfD3[14]~13clkctrl_outclk\,
	combout => \A|R|rfD3\(14));

-- Location: FF_X13_Y12_N5
\A|J|rfD3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inp[7]~input_o\,
	sload => VCC,
	ena => \A|J|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|J|rfD3\(14));

-- Location: LCCOMB_X14_Y12_N0
\A|D2[1][14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[1][14]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux17~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D2[1][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~1_combout\,
	datab => \A|D2[1][14]~combout\,
	datad => \rf|Mux17~4_combout\,
	combout => \A|D2[1][14]~combout\);

-- Location: LCCOMB_X16_Y13_N24
\A|I|adderA[14]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA[14]~2_combout\ = (\A|Equal0~1_combout\ & (((\A|D1[1][14]~combout\)))) # (!\A|Equal0~1_combout\ & ((\A|I|adderA[0]~0_combout\ & (\A|D2[1][14]~combout\)) # (!\A|I|adderA[0]~0_combout\ & ((\A|D1[1][14]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[1][14]~combout\,
	datab => \A|D1[1][14]~combout\,
	datac => \A|Equal0~1_combout\,
	datad => \A|I|adderA[0]~0_combout\,
	combout => \A|I|adderA[14]~2_combout\);

-- Location: LCCOMB_X15_Y16_N4
\A|I|adderA[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA\(14) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderA[14]~2_combout\))) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\A|I|adderA\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|adderA\(14),
	datac => \A|I|adderA[14]~2_combout\,
	datad => \A|I|adderB[0]~7clkctrl_outclk\,
	combout => \A|I|adderA\(14));

-- Location: LCCOMB_X14_Y17_N24
\A|I|adder|Sum[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Sum\(14) = \A|I|adderA\(14) $ (((\A|I|adderA\(13) & \A|I|adder|carry~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(13),
	datac => \A|I|adderA\(14),
	datad => \A|I|adder|carry~11_combout\,
	combout => \A|I|adder|Sum\(14));

-- Location: LCCOMB_X14_Y17_N30
\A|I|rfD3[14]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[14]~21_combout\ = (\A|I|rfD3[15]~22_combout\ & (((\A|I|adder|Sum\(14))))) # (!\A|I|rfD3[15]~22_combout\ & (!\A|Equal0~2_combout\ & (\A|D1[1][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|rfD3[15]~22_combout\,
	datab => \A|Equal0~2_combout\,
	datac => \A|D1[1][14]~combout\,
	datad => \A|I|adder|Sum\(14),
	combout => \A|I|rfD3[14]~21_combout\);

-- Location: LCCOMB_X14_Y17_N22
\A|I|rfD3[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3\(14) = (GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & (\A|I|rfD3[14]~21_combout\)) # (!GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & ((\A|I|rfD3\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|rfD3[14]~21_combout\,
	datac => \A|I|rfD3\(14),
	datad => \A|I|rfD3[15]~4clkctrl_outclk\,
	combout => \A|I|rfD3\(14));

-- Location: LCCOMB_X13_Y12_N4
\A|rfD3[14]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[14]~23_combout\ = (!\A|op_proc~0_combout\ & ((\A|op_proc~1_combout\ & ((\A|I|rfD3\(14)))) # (!\A|op_proc~1_combout\ & (\A|J|rfD3\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~1_combout\,
	datab => \A|op_proc~0_combout\,
	datac => \A|J|rfD3\(14),
	datad => \A|I|rfD3\(14),
	combout => \A|rfD3[14]~23_combout\);

-- Location: LCCOMB_X13_Y12_N22
\A|rfD3[14]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[14]~24_combout\ = (\A|rfD3[14]~23_combout\) # ((\A|R|rfD3\(14) & \A|op_proc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|rfD3\(14),
	datac => \A|rfD3[14]~23_combout\,
	datad => \A|op_proc~0_combout\,
	combout => \A|rfD3[14]~24_combout\);

-- Location: LCCOMB_X14_Y12_N10
\A|rfD3[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3\(14) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfD3[14]~24_combout\)) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfD3\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3[14]~24_combout\,
	datac => \A|rfA1[2]~14clkctrl_outclk\,
	datad => \A|rfD3\(14),
	combout => \A|rfD3\(14));

-- Location: LCCOMB_X14_Y12_N14
\rf|dw[3][14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[3][14]~combout\ = (\rf|Decoder0~7_combout\ & ((\A|rfD3\(14)))) # (!\rf|Decoder0~7_combout\ & (\rf|dw[3][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Decoder0~7_combout\,
	datac => \rf|dw[3][14]~combout\,
	datad => \A|rfD3\(14),
	combout => \rf|dw[3][14]~combout\);

-- Location: LCCOMB_X15_Y12_N10
\rf|R3|d_read~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R3|d_read~15_combout\ = (\rf_write_en~q\ & \rf|dw[3][14]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf_write_en~q\,
	datad => \rf|dw[3][14]~combout\,
	combout => \rf|R3|d_read~15_combout\);

-- Location: FF_X15_Y12_N11
\rf|R3|d_read[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R3|d_read~15_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R3|d_read\(14));

-- Location: LCCOMB_X15_Y12_N6
\rf|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux1~2_combout\ = (\A|rfA1\(1) & (\A|rfA1\(0))) # (!\A|rfA1\(1) & ((\A|rfA1\(0) & (\rf|R1|d_read\(14))) # (!\A|rfA1\(0) & ((\rf|R0|d_read\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(1),
	datab => \A|rfA1\(0),
	datac => \rf|R1|d_read\(14),
	datad => \rf|R0|d_read\(14),
	combout => \rf|Mux1~2_combout\);

-- Location: LCCOMB_X15_Y12_N22
\rf|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux1~3_combout\ = (\A|rfA1\(1) & ((\rf|Mux1~2_combout\ & (\rf|R3|d_read\(14))) # (!\rf|Mux1~2_combout\ & ((\rf|R2|d_read\(14)))))) # (!\A|rfA1\(1) & (((\rf|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(1),
	datab => \rf|R3|d_read\(14),
	datac => \rf|Mux1~2_combout\,
	datad => \rf|R2|d_read\(14),
	combout => \rf|Mux1~3_combout\);

-- Location: LCCOMB_X15_Y12_N8
\rf|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux1~0_combout\ = (\A|rfA1\(0) & (((\A|rfA1\(1))))) # (!\A|rfA1\(0) & ((\A|rfA1\(1) & (\rf|R6|d_read\(14))) # (!\A|rfA1\(1) & ((\rf|R4|d_read\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R6|d_read\(14),
	datab => \A|rfA1\(0),
	datac => \A|rfA1\(1),
	datad => \rf|R4|d_read\(14),
	combout => \rf|Mux1~0_combout\);

-- Location: LCCOMB_X15_Y12_N4
\rf|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux1~1_combout\ = (\A|rfA1\(0) & ((\rf|Mux1~0_combout\ & (\rf|R7|d_read\(14))) # (!\rf|Mux1~0_combout\ & ((\rf|R5|d_read\(14)))))) # (!\A|rfA1\(0) & (((\rf|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R7|d_read\(14),
	datab => \A|rfA1\(0),
	datac => \rf|Mux1~0_combout\,
	datad => \rf|R5|d_read\(14),
	combout => \rf|Mux1~1_combout\);

-- Location: LCCOMB_X15_Y12_N2
\rf|Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux1~4_combout\ = (\A|rfA1\(2) & ((\rf|Mux1~1_combout\))) # (!\A|rfA1\(2) & (\rf|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux1~3_combout\,
	datac => \rf|Mux1~1_combout\,
	datad => \A|rfA1\(2),
	combout => \rf|Mux1~4_combout\);

-- Location: LCCOMB_X15_Y12_N30
\A|D1[1][14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[1][14]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux1~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D1[1][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][14]~combout\,
	datab => \rf|Mux1~4_combout\,
	datad => \A|op_proc~1_combout\,
	combout => \A|D1[1][14]~combout\);

-- Location: LCCOMB_X17_Y13_N16
\rf|dw[2][15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[2][15]~combout\ = (\rf|Decoder0~4_combout\ & ((\A|rfD3\(15)))) # (!\rf|Decoder0~4_combout\ & (\rf|dw[2][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|dw[2][15]~combout\,
	datac => \rf|Decoder0~4_combout\,
	datad => \A|rfD3\(15),
	combout => \rf|dw[2][15]~combout\);

-- Location: LCCOMB_X16_Y13_N12
\rf|R2|d_read~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R2|d_read~0_combout\ = (\rf_write_en~q\ & \rf|dw[2][15]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[2][15]~combout\,
	combout => \rf|R2|d_read~0_combout\);

-- Location: FF_X17_Y15_N25
\rf|R2|d_read[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|R2|d_read~0_combout\,
	sload => VCC,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R2|d_read\(15));

-- Location: LCCOMB_X17_Y13_N26
\rf|dw[0][15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[0][15]~combout\ = (\rf|Decoder0~6_combout\ & ((\A|rfD3\(15)))) # (!\rf|Decoder0~6_combout\ & (\rf|dw[0][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~6_combout\,
	datac => \rf|dw[0][15]~combout\,
	datad => \A|rfD3\(15),
	combout => \rf|dw[0][15]~combout\);

-- Location: LCCOMB_X17_Y15_N20
\rf|R0|d_read~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R0|d_read~0_combout\ = (\rf_write_en~q\ & \rf|dw[0][15]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[0][15]~combout\,
	combout => \rf|R0|d_read~0_combout\);

-- Location: FF_X17_Y15_N21
\rf|R0|d_read[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R0|d_read~0_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R0|d_read\(15));

-- Location: LCCOMB_X17_Y13_N30
\rf|dw[1][15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[1][15]~combout\ = (\rf|Decoder0~5_combout\ & ((\A|rfD3\(15)))) # (!\rf|Decoder0~5_combout\ & (\rf|dw[1][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[1][15]~combout\,
	datac => \rf|Decoder0~5_combout\,
	datad => \A|rfD3\(15),
	combout => \rf|dw[1][15]~combout\);

-- Location: LCCOMB_X17_Y15_N10
\rf|R1|d_read~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R1|d_read~0_combout\ = (\rf_write_en~q\ & \rf|dw[1][15]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[1][15]~combout\,
	combout => \rf|R1|d_read~0_combout\);

-- Location: FF_X17_Y15_N11
\rf|R1|d_read[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R1|d_read~0_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R1|d_read\(15));

-- Location: LCCOMB_X17_Y15_N8
\rf|Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux16~2_combout\ = (\A|rfA2\(1) & (((\A|rfA2\(0))))) # (!\A|rfA2\(1) & ((\A|rfA2\(0) & ((\rf|R1|d_read\(15)))) # (!\A|rfA2\(0) & (\rf|R0|d_read\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R0|d_read\(15),
	datab => \A|rfA2\(1),
	datac => \rf|R1|d_read\(15),
	datad => \A|rfA2\(0),
	combout => \rf|Mux16~2_combout\);

-- Location: LCCOMB_X17_Y13_N6
\rf|dw[3][15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[3][15]~combout\ = (\rf|Decoder0~7_combout\ & ((\A|rfD3\(15)))) # (!\rf|Decoder0~7_combout\ & (\rf|dw[3][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[3][15]~combout\,
	datac => \rf|Decoder0~7_combout\,
	datad => \A|rfD3\(15),
	combout => \rf|dw[3][15]~combout\);

-- Location: LCCOMB_X16_Y13_N10
\rf|R3|d_read~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R3|d_read~0_combout\ = (\rf_write_en~q\ & \rf|dw[3][15]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf_write_en~q\,
	datad => \rf|dw[3][15]~combout\,
	combout => \rf|R3|d_read~0_combout\);

-- Location: FF_X17_Y15_N3
\rf|R3|d_read[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|R3|d_read~0_combout\,
	sload => VCC,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R3|d_read\(15));

-- Location: LCCOMB_X17_Y15_N4
\rf|Mux16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux16~3_combout\ = (\A|rfA2\(1) & ((\rf|Mux16~2_combout\ & ((\rf|R3|d_read\(15)))) # (!\rf|Mux16~2_combout\ & (\rf|R2|d_read\(15))))) # (!\A|rfA2\(1) & (((\rf|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(1),
	datab => \rf|R2|d_read\(15),
	datac => \rf|Mux16~2_combout\,
	datad => \rf|R3|d_read\(15),
	combout => \rf|Mux16~3_combout\);

-- Location: LCCOMB_X16_Y11_N28
\rf|dw[5][15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[5][15]~combout\ = (GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & ((\A|rfD3\(15)))) # (!GLOBAL(\rf|Decoder0~0clkctrl_outclk\) & (\rf|dw[5][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|dw[5][15]~combout\,
	datac => \A|rfD3\(15),
	datad => \rf|Decoder0~0clkctrl_outclk\,
	combout => \rf|dw[5][15]~combout\);

-- Location: LCCOMB_X16_Y11_N8
\rf|R5|d_read~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R5|d_read~0_combout\ = (\rf_write_en~q\ & \rf|dw[5][15]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[5][15]~combout\,
	combout => \rf|R5|d_read~0_combout\);

-- Location: FF_X16_Y11_N9
\rf|R5|d_read[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R5|d_read~0_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R5|d_read\(15));

-- Location: LCCOMB_X16_Y11_N2
\rf|dw[6][15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[6][15]~combout\ = (GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & (\A|rfD3\(15))) # (!GLOBAL(\rf|Decoder0~1clkctrl_outclk\) & ((\rf|dw[6][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3\(15),
	datac => \rf|dw[6][15]~combout\,
	datad => \rf|Decoder0~1clkctrl_outclk\,
	combout => \rf|dw[6][15]~combout\);

-- Location: LCCOMB_X16_Y11_N30
\rf|R6|d_read~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R6|d_read~0_combout\ = (\rf_write_en~q\ & \rf|dw[6][15]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[6][15]~combout\,
	combout => \rf|R6|d_read~0_combout\);

-- Location: FF_X16_Y11_N31
\rf|R6|d_read[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R6|d_read~0_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R6|d_read\(15));

-- Location: LCCOMB_X16_Y11_N24
\rf|dw[4][15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[4][15]~combout\ = (GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & (\A|rfD3\(15))) # (!GLOBAL(\rf|Decoder0~2clkctrl_outclk\) & ((\rf|dw[4][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|rfD3\(15),
	datac => \rf|Decoder0~2clkctrl_outclk\,
	datad => \rf|dw[4][15]~combout\,
	combout => \rf|dw[4][15]~combout\);

-- Location: LCCOMB_X16_Y11_N16
\rf|R4|d_read~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R4|d_read~0_combout\ = (\rf_write_en~q\ & \rf|dw[4][15]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[4][15]~combout\,
	combout => \rf|R4|d_read~0_combout\);

-- Location: FF_X16_Y11_N17
\rf|R4|d_read[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R4|d_read~0_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R4|d_read\(15));

-- Location: LCCOMB_X17_Y15_N6
\rf|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux16~0_combout\ = (\A|rfA2\(1) & ((\A|rfA2\(0)) # ((\rf|R6|d_read\(15))))) # (!\A|rfA2\(1) & (!\A|rfA2\(0) & ((\rf|R4|d_read\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA2\(1),
	datab => \A|rfA2\(0),
	datac => \rf|R6|d_read\(15),
	datad => \rf|R4|d_read\(15),
	combout => \rf|Mux16~0_combout\);

-- Location: LCCOMB_X17_Y15_N0
\rf|Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux16~1_combout\ = (\A|rfA2\(0) & ((\rf|Mux16~0_combout\ & (\rf|R7|d_read\(15))) # (!\rf|Mux16~0_combout\ & ((\rf|R5|d_read\(15)))))) # (!\A|rfA2\(0) & (((\rf|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R7|d_read\(15),
	datab => \A|rfA2\(0),
	datac => \rf|R5|d_read\(15),
	datad => \rf|Mux16~0_combout\,
	combout => \rf|Mux16~1_combout\);

-- Location: LCCOMB_X17_Y15_N14
\rf|Mux16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux16~4_combout\ = (\A|rfA2\(2) & ((\rf|Mux16~1_combout\))) # (!\A|rfA2\(2) & (\rf|Mux16~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux16~3_combout\,
	datac => \rf|Mux16~1_combout\,
	datad => \A|rfA2\(2),
	combout => \rf|Mux16~4_combout\);

-- Location: LCCOMB_X17_Y15_N12
\A|D2[0][15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[0][15]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux16~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D2[0][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][15]~combout\,
	datab => \A|op_proc~0clkctrl_outclk\,
	datac => \rf|Mux16~4_combout\,
	combout => \A|D2[0][15]~combout\);

-- Location: LCCOMB_X17_Y15_N30
\A|D1[0][15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[0][15]~combout\ = (GLOBAL(\A|op_proc~0clkctrl_outclk\) & ((\rf|Mux0~4_combout\))) # (!GLOBAL(\A|op_proc~0clkctrl_outclk\) & (\A|D1[0][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|op_proc~0clkctrl_outclk\,
	datac => \A|D1[0][15]~combout\,
	datad => \rf|Mux0~4_combout\,
	combout => \A|D1[0][15]~combout\);

-- Location: LCCOMB_X14_Y16_N26
\A|R|adderA[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderA\(15) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderA\(15)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D1[0][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D1[0][15]~combout\,
	datac => \A|R|adderA\(15),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderA\(15));

-- Location: LCCOMB_X14_Y16_N24
\A|R|adderB[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adderB\(15) = (GLOBAL(\A|R|Cout~0clkctrl_outclk\) & ((\A|R|adderB\(15)))) # (!GLOBAL(\A|R|Cout~0clkctrl_outclk\) & (\A|D2[0][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[0][15]~combout\,
	datac => \A|R|adderB\(15),
	datad => \A|R|Cout~0clkctrl_outclk\,
	combout => \A|R|adderB\(15));

-- Location: LCCOMB_X18_Y16_N4
\A|R|adder|carry[15]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[15]~20_combout\ = (\A|R|adderA\(14) & \A|R|adder|carry[14]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|R|adderA\(14),
	datad => \A|R|adder|carry[14]~19_combout\,
	combout => \A|R|adder|carry[15]~20_combout\);

-- Location: LCCOMB_X18_Y16_N6
\A|R|adder|carry[15]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|carry[15]~21_combout\ = (\A|R|adderB\(14) & ((\A|R|adderA\(14)) # (\A|R|adder|carry[14]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|adderA\(14),
	datac => \A|R|adderB\(14),
	datad => \A|R|adder|carry[14]~19_combout\,
	combout => \A|R|adder|carry[15]~21_combout\);

-- Location: LCCOMB_X18_Y16_N0
\A|R|adder|Sum[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|Sum\(15) = \A|R|adderA\(15) $ (\A|R|adderB\(15) $ (((\A|R|adder|carry[15]~20_combout\) # (\A|R|adder|carry[15]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderA\(15),
	datab => \A|R|adderB\(15),
	datac => \A|R|adder|carry[15]~20_combout\,
	datad => \A|R|adder|carry[15]~21_combout\,
	combout => \A|R|adder|Sum\(15));

-- Location: LCCOMB_X14_Y16_N20
\A|R|rfD3[15]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[15]~18_combout\ = (\A|Equal0~0_combout\ & (((\A|R|adder|Sum\(15))))) # (!\A|Equal0~0_combout\ & (((!\A|D1[0][15]~combout\)) # (!\A|D2[0][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][15]~combout\,
	datab => \A|D1[0][15]~combout\,
	datac => \A|Equal0~0_combout\,
	datad => \A|R|adder|Sum\(15),
	combout => \A|R|rfD3[15]~18_combout\);

-- Location: LCCOMB_X14_Y16_N18
\A|R|rfD3[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3\(15) = (GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & ((\A|R|rfD3[15]~18_combout\))) # (!GLOBAL(\A|R|rfD3[14]~13clkctrl_outclk\) & (\A|R|rfD3\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|rfD3\(15),
	datac => \A|R|rfD3[15]~18_combout\,
	datad => \A|R|rfD3[14]~13clkctrl_outclk\,
	combout => \A|R|rfD3\(15));

-- Location: LCCOMB_X17_Y15_N26
\A|D2[1][15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[1][15]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux16~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D2[1][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[1][15]~combout\,
	datac => \rf|Mux16~4_combout\,
	datad => \A|op_proc~1_combout\,
	combout => \A|D2[1][15]~combout\);

-- Location: LCCOMB_X16_Y13_N30
\A|I|adderA[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA[15]~1_combout\ = (\A|Equal0~1_combout\ & (((\A|D1[1][15]~combout\)))) # (!\A|Equal0~1_combout\ & ((\A|I|adderA[0]~0_combout\ & (\A|D2[1][15]~combout\)) # (!\A|I|adderA[0]~0_combout\ & ((\A|D1[1][15]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[1][15]~combout\,
	datab => \A|D1[1][15]~combout\,
	datac => \A|Equal0~1_combout\,
	datad => \A|I|adderA[0]~0_combout\,
	combout => \A|I|adderA[15]~1_combout\);

-- Location: LCCOMB_X15_Y13_N12
\A|I|adderA[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA\(15) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderA[15]~1_combout\))) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\A|I|adderA\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(15),
	datac => \A|I|adderB[0]~7clkctrl_outclk\,
	datad => \A|I|adderA[15]~1_combout\,
	combout => \A|I|adderA\(15));

-- Location: LCCOMB_X15_Y16_N28
\A|I|adder|Sum[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Sum\(15) = \A|I|adderA\(15) $ (((\A|I|adderA\(13) & (\A|I|adderA\(14) & \A|I|adder|carry~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(13),
	datab => \A|I|adderA\(14),
	datac => \A|I|adderA\(15),
	datad => \A|I|adder|carry~11_combout\,
	combout => \A|I|adder|Sum\(15));

-- Location: LCCOMB_X15_Y13_N18
\A|I|rfD3[15]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3[15]~2_combout\ = (\A|I|rfD3[15]~22_combout\ & (((\A|I|adder|Sum\(15))))) # (!\A|I|rfD3[15]~22_combout\ & (\A|D1[1][15]~combout\ & (!\A|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][15]~combout\,
	datab => \A|Equal0~2_combout\,
	datac => \A|I|rfD3[15]~22_combout\,
	datad => \A|I|adder|Sum\(15),
	combout => \A|I|rfD3[15]~2_combout\);

-- Location: LCCOMB_X15_Y13_N2
\A|I|rfD3[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|rfD3\(15) = (GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & (\A|I|rfD3[15]~2_combout\)) # (!GLOBAL(\A|I|rfD3[15]~4clkctrl_outclk\) & ((\A|I|rfD3\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|rfD3[15]~2_combout\,
	datac => \A|I|rfD3\(15),
	datad => \A|I|rfD3[15]~4clkctrl_outclk\,
	combout => \A|I|rfD3\(15));

-- Location: FF_X14_Y13_N15
\A|J|rfD3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inp[8]~input_o\,
	sload => VCC,
	ena => \A|J|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|J|rfD3\(15));

-- Location: LCCOMB_X14_Y13_N14
\A|rfD3[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[15]~0_combout\ = (!\A|op_proc~0_combout\ & ((\A|op_proc~1_combout\ & (\A|I|rfD3\(15))) # (!\A|op_proc~1_combout\ & ((\A|J|rfD3\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~0_combout\,
	datab => \A|I|rfD3\(15),
	datac => \A|J|rfD3\(15),
	datad => \A|op_proc~1_combout\,
	combout => \A|rfD3[15]~0_combout\);

-- Location: LCCOMB_X17_Y13_N12
\A|rfD3[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3[15]~1_combout\ = (\A|rfD3[15]~0_combout\) # ((\A|R|rfD3\(15) & \A|op_proc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|rfD3\(15),
	datac => \A|op_proc~0_combout\,
	datad => \A|rfD3[15]~0_combout\,
	combout => \A|rfD3[15]~1_combout\);

-- Location: LCCOMB_X17_Y13_N18
\A|rfD3[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|rfD3\(15) = (GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & ((\A|rfD3[15]~1_combout\))) # (!GLOBAL(\A|rfA1[2]~14clkctrl_outclk\) & (\A|rfD3\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfD3\(15),
	datac => \A|rfD3[15]~1_combout\,
	datad => \A|rfA1[2]~14clkctrl_outclk\,
	combout => \A|rfD3\(15));

-- Location: LCCOMB_X16_Y11_N6
\rf|dw[7][15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|dw[7][15]~combout\ = (\rf|Decoder0~3_combout\ & (\A|rfD3\(15))) # (!\rf|Decoder0~3_combout\ & ((\rf|dw[7][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Decoder0~3_combout\,
	datac => \A|rfD3\(15),
	datad => \rf|dw[7][15]~combout\,
	combout => \rf|dw[7][15]~combout\);

-- Location: LCCOMB_X16_Y11_N26
\rf|R7|d_read~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|R7|d_read~1_combout\ = (\rf_write_en~q\ & \rf|dw[7][15]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf_write_en~q\,
	datad => \rf|dw[7][15]~combout\,
	combout => \rf|R7|d_read~1_combout\);

-- Location: FF_X16_Y11_N27
\rf|R7|d_read[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|R7|d_read~1_combout\,
	ena => \rf|R7|d_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|R7|d_read\(15));

-- Location: LCCOMB_X17_Y15_N22
\rf|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux0~0_combout\ = (\A|rfA1\(0) & (\A|rfA1\(1))) # (!\A|rfA1\(0) & ((\A|rfA1\(1) & (\rf|R6|d_read\(15))) # (!\A|rfA1\(1) & ((\rf|R4|d_read\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(0),
	datab => \A|rfA1\(1),
	datac => \rf|R6|d_read\(15),
	datad => \rf|R4|d_read\(15),
	combout => \rf|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y15_N28
\rf|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux0~1_combout\ = (\A|rfA1\(0) & ((\rf|Mux0~0_combout\ & (\rf|R7|d_read\(15))) # (!\rf|Mux0~0_combout\ & ((\rf|R5|d_read\(15)))))) # (!\A|rfA1\(0) & (((\rf|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R7|d_read\(15),
	datab => \A|rfA1\(0),
	datac => \rf|R5|d_read\(15),
	datad => \rf|Mux0~0_combout\,
	combout => \rf|Mux0~1_combout\);

-- Location: LCCOMB_X17_Y15_N18
\rf|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux0~2_combout\ = (\A|rfA1\(1) & (((\A|rfA1\(0))))) # (!\A|rfA1\(1) & ((\A|rfA1\(0) & ((\rf|R1|d_read\(15)))) # (!\A|rfA1\(0) & (\rf|R0|d_read\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|R0|d_read\(15),
	datab => \A|rfA1\(1),
	datac => \rf|R1|d_read\(15),
	datad => \A|rfA1\(0),
	combout => \rf|Mux0~2_combout\);

-- Location: LCCOMB_X17_Y15_N16
\rf|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux0~3_combout\ = (\A|rfA1\(1) & ((\rf|Mux0~2_combout\ & ((\rf|R3|d_read\(15)))) # (!\rf|Mux0~2_combout\ & (\rf|R2|d_read\(15))))) # (!\A|rfA1\(1) & (((\rf|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|rfA1\(1),
	datab => \rf|R2|d_read\(15),
	datac => \rf|Mux0~2_combout\,
	datad => \rf|R3|d_read\(15),
	combout => \rf|Mux0~3_combout\);

-- Location: LCCOMB_X17_Y15_N2
\rf|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rf|Mux0~4_combout\ = (\A|rfA1\(2) & (\rf|Mux0~1_combout\)) # (!\A|rfA1\(2) & ((\rf|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|Mux0~1_combout\,
	datab => \A|rfA1\(2),
	datad => \rf|Mux0~3_combout\,
	combout => \rf|Mux0~4_combout\);

-- Location: LCCOMB_X17_Y15_N24
\A|D1[1][15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D1[1][15]~combout\ = (\A|op_proc~1_combout\ & ((\rf|Mux0~4_combout\))) # (!\A|op_proc~1_combout\ & (\A|D1[1][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][15]~combout\,
	datab => \rf|Mux0~4_combout\,
	datad => \A|op_proc~1_combout\,
	combout => \A|D1[1][15]~combout\);

-- Location: LCCOMB_X16_Y13_N18
\A|I|Equal4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|Equal4~9_combout\ = (\A|D1[1][14]~combout\ & (\A|D2[1][14]~combout\ & (\A|D1[1][15]~combout\ $ (!\A|D2[1][15]~combout\)))) # (!\A|D1[1][14]~combout\ & (!\A|D2[1][14]~combout\ & (\A|D1[1][15]~combout\ $ (!\A|D2[1][15]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][14]~combout\,
	datab => \A|D1[1][15]~combout\,
	datac => \A|D2[1][14]~combout\,
	datad => \A|D2[1][15]~combout\,
	combout => \A|I|Equal4~9_combout\);

-- Location: LCCOMB_X14_Y10_N0
\A|D2[1][13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|D2[1][13]~combout\ = (\A|op_proc~1_combout\ & (\rf|Mux18~4_combout\)) # (!\A|op_proc~1_combout\ & ((\A|D2[1][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|Mux18~4_combout\,
	datac => \A|D2[1][13]~combout\,
	datad => \A|op_proc~1_combout\,
	combout => \A|D2[1][13]~combout\);

-- Location: LCCOMB_X15_Y13_N16
\A|I|Equal4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|Equal4~8_combout\ = (\A|D1[1][13]~combout\ & (\A|D2[1][13]~combout\ & (\A|D2[1][12]~combout\ $ (!\A|D1[1][12]~combout\)))) # (!\A|D1[1][13]~combout\ & (!\A|D2[1][13]~combout\ & (\A|D2[1][12]~combout\ $ (!\A|D1[1][12]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][13]~combout\,
	datab => \A|D2[1][12]~combout\,
	datac => \A|D2[1][13]~combout\,
	datad => \A|D1[1][12]~combout\,
	combout => \A|I|Equal4~8_combout\);

-- Location: LCCOMB_X16_Y15_N12
\A|I|Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|Equal4~3_combout\ = (\A|D1[1][6]~combout\ & (\A|D2[1][6]~combout\ & (\A|D1[1][7]~combout\ $ (!\A|D2[1][7]~combout\)))) # (!\A|D1[1][6]~combout\ & (!\A|D2[1][6]~combout\ & (\A|D1[1][7]~combout\ $ (!\A|D2[1][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][6]~combout\,
	datab => \A|D1[1][7]~combout\,
	datac => \A|D2[1][7]~combout\,
	datad => \A|D2[1][6]~combout\,
	combout => \A|I|Equal4~3_combout\);

-- Location: LCCOMB_X19_Y14_N30
\A|I|Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|Equal4~2_combout\ = (\A|D2[1][5]~combout\ & (\A|D1[1][5]~combout\ & (\A|D1[1][4]~combout\ $ (!\A|D2[1][4]~combout\)))) # (!\A|D2[1][5]~combout\ & (!\A|D1[1][5]~combout\ & (\A|D1[1][4]~combout\ $ (!\A|D2[1][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[1][5]~combout\,
	datab => \A|D1[1][4]~combout\,
	datac => \A|D2[1][4]~combout\,
	datad => \A|D1[1][5]~combout\,
	combout => \A|I|Equal4~2_combout\);

-- Location: LCCOMB_X19_Y13_N20
\A|I|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|Equal4~1_combout\ = (\A|D1[1][3]~combout\ & (\A|D2[1][3]~combout\ & (\A|D2[1][2]~combout\ $ (!\A|D1[1][2]~combout\)))) # (!\A|D1[1][3]~combout\ & (!\A|D2[1][3]~combout\ & (\A|D2[1][2]~combout\ $ (!\A|D1[1][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][3]~combout\,
	datab => \A|D2[1][2]~combout\,
	datac => \A|D2[1][3]~combout\,
	datad => \A|D1[1][2]~combout\,
	combout => \A|I|Equal4~1_combout\);

-- Location: LCCOMB_X12_Y14_N30
\A|I|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|Equal4~0_combout\ = (\A|D2[1][1]~combout\ & (\A|D1[1][1]~combout\ & (\A|D1[1][0]~combout\ $ (!\A|D2[1][0]~combout\)))) # (!\A|D2[1][1]~combout\ & (!\A|D1[1][1]~combout\ & (\A|D1[1][0]~combout\ $ (!\A|D2[1][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[1][1]~combout\,
	datab => \A|D1[1][0]~combout\,
	datac => \A|D1[1][1]~combout\,
	datad => \A|D2[1][0]~combout\,
	combout => \A|I|Equal4~0_combout\);

-- Location: LCCOMB_X16_Y13_N16
\A|I|Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|Equal4~4_combout\ = (\A|I|Equal4~3_combout\ & (\A|I|Equal4~2_combout\ & (\A|I|Equal4~1_combout\ & \A|I|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|Equal4~3_combout\,
	datab => \A|I|Equal4~2_combout\,
	datac => \A|I|Equal4~1_combout\,
	datad => \A|I|Equal4~0_combout\,
	combout => \A|I|Equal4~4_combout\);

-- Location: LCCOMB_X16_Y13_N0
\A|I|Equal4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|Equal4~10_combout\ = (\A|I|Equal4~7_combout\ & (\A|I|Equal4~9_combout\ & (\A|I|Equal4~8_combout\ & \A|I|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|Equal4~7_combout\,
	datab => \A|I|Equal4~9_combout\,
	datac => \A|I|Equal4~8_combout\,
	datad => \A|I|Equal4~4_combout\,
	combout => \A|I|Equal4~10_combout\);

-- Location: LCCOMB_X15_Y17_N20
\A|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Equal0~5_combout\ = (!\inp[13]~input_o\ & (\inp[15]~input_o\ & (!\inp[14]~input_o\ & !\inp[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[13]~input_o\,
	datab => \inp[15]~input_o\,
	datac => \inp[14]~input_o\,
	datad => \inp[12]~input_o\,
	combout => \A|Equal0~5_combout\);

-- Location: LCCOMB_X15_Y17_N28
\A|I|adderB[15]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderB[15]~2_combout\ = (\A|Equal0~4_combout\ & (\A|I|Equal4~10_combout\)) # (!\A|Equal0~4_combout\ & ((\A|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|Equal4~10_combout\,
	datac => \A|Equal0~4_combout\,
	datad => \A|Equal0~5_combout\,
	combout => \A|I|adderB[15]~2_combout\);

-- Location: LCCOMB_X17_Y14_N24
\A|I|adderB[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderB[0]~7_combout\ = (\A|I|adderB[15]~2_combout\) # ((\A|Equal0~2_combout\) # ((\A|Equal0~1_combout\) # (\A|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderB[15]~2_combout\,
	datab => \A|Equal0~2_combout\,
	datac => \A|Equal0~1_combout\,
	datad => \A|Equal0~3_combout\,
	combout => \A|I|adderB[0]~7_combout\);

-- Location: CLKCTRL_G5
\A|I|adderB[0]~7clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \A|I|adderB[0]~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \A|I|adderB[0]~7clkctrl_outclk\);

-- Location: LCCOMB_X15_Y13_N22
\A|I|adderA[13]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA[13]~3_combout\ = (\A|Equal0~1_combout\ & (\A|D1[1][13]~combout\)) # (!\A|Equal0~1_combout\ & ((\A|I|adderA[0]~0_combout\ & ((\A|D2[1][13]~combout\))) # (!\A|I|adderA[0]~0_combout\ & (\A|D1[1][13]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[1][13]~combout\,
	datab => \A|Equal0~1_combout\,
	datac => \A|D2[1][13]~combout\,
	datad => \A|I|adderA[0]~0_combout\,
	combout => \A|I|adderA[13]~3_combout\);

-- Location: LCCOMB_X15_Y13_N28
\A|I|adderA[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adderA\(13) = (GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & ((\A|I|adderA[13]~3_combout\))) # (!GLOBAL(\A|I|adderB[0]~7clkctrl_outclk\) & (\A|I|adderA\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|adderA\(13),
	datac => \A|I|adderB[0]~7clkctrl_outclk\,
	datad => \A|I|adderA[13]~3_combout\,
	combout => \A|I|adderA\(13));

-- Location: LCCOMB_X15_Y16_N30
\A|I|adder|carry~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|carry~12_combout\ = (\A|I|adderA\(13) & (\A|I|adderA\(15) & (\A|I|adderA\(14) & \A|I|adder|carry~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(13),
	datab => \A|I|adderA\(15),
	datac => \A|I|adderA\(14),
	datad => \A|I|adder|carry~11_combout\,
	combout => \A|I|adder|carry~12_combout\);

-- Location: LCCOMB_X15_Y16_N20
\A|I|cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|cout~combout\ = (\A|Equal0~1_combout\ & (\A|I|adder|carry~12_combout\)) # (!\A|Equal0~1_combout\ & ((\A|I|cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Equal0~1_combout\,
	datac => \A|I|adder|carry~12_combout\,
	datad => \A|I|cout~combout\,
	combout => \A|I|cout~combout\);

-- Location: LCCOMB_X18_Y16_N16
\A|R|adder|C~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|adder|C~0_combout\ = (\A|R|adderA\(15) & ((\A|R|adderB\(15)) # ((\A|R|adder|carry[15]~20_combout\) # (\A|R|adder|carry[15]~21_combout\)))) # (!\A|R|adderA\(15) & (\A|R|adderB\(15) & ((\A|R|adder|carry[15]~20_combout\) # 
-- (\A|R|adder|carry[15]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderA\(15),
	datab => \A|R|adderB\(15),
	datac => \A|R|adder|carry[15]~20_combout\,
	datad => \A|R|adder|carry[15]~21_combout\,
	combout => \A|R|adder|C~0_combout\);

-- Location: LCCOMB_X15_Y16_N22
\A|C_flag[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|C_flag[3]~0_combout\ = (\A|op_proc~0_combout\ & (((!\A|R|Cout~0_combout\ & \A|R|adder|C~0_combout\)))) # (!\A|op_proc~0_combout\ & (\A|I|cout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~0_combout\,
	datab => \A|I|cout~combout\,
	datac => \A|R|Cout~0_combout\,
	datad => \A|R|adder|C~0_combout\,
	combout => \A|C_flag[3]~0_combout\);

-- Location: LCCOMB_X15_Y16_N6
\A|C_flag[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|C_flag[3]~1_combout\ = (\A|C_flag[3]~0_combout\) # ((\inp[1]~input_o\ & (\A|op_proc~0_combout\ & \A|R|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[1]~input_o\,
	datab => \A|op_proc~0_combout\,
	datac => \A|C_flag[3]~0_combout\,
	datad => \A|R|Cout~0_combout\,
	combout => \A|C_flag[3]~1_combout\);

-- Location: LCCOMB_X15_Y16_N14
\A|I|comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|comb~4_combout\ = (!\A|Equal0~1_combout\ & (((\A|Equal0~2_combout\) # (\A|Equal0~3_combout\)) # (!\A|I|comb~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|comb~6_combout\,
	datab => \A|Equal0~1_combout\,
	datac => \A|Equal0~2_combout\,
	datad => \A|Equal0~3_combout\,
	combout => \A|I|comb~4_combout\);

-- Location: LCCOMB_X15_Y16_N12
\A|I|C_ch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|C_ch~combout\ = (!\A|I|comb~4_combout\ & ((\A|Equal0~1_combout\) # (\A|I|C_ch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Equal0~1_combout\,
	datac => \A|I|comb~4_combout\,
	datad => \A|I|C_ch~combout\,
	combout => \A|I|C_ch~combout\);

-- Location: LCCOMB_X15_Y16_N18
\A|R|C_ch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|C_ch~combout\ = (\A|R|rfD3[14]~13_combout\ & ((\A|Equal0~0_combout\))) # (!\A|R|rfD3[14]~13_combout\ & (\A|R|C_ch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|R|C_ch~combout\,
	datac => \A|Equal0~0_combout\,
	datad => \A|R|rfD3[14]~13_combout\,
	combout => \A|R|C_ch~combout\);

-- Location: LCCOMB_X15_Y16_N0
\A|C_flag[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|C_flag[3]~2_combout\ = (\A|op_proc~0_combout\ & (((\A|R|C_ch~combout\)))) # (!\A|op_proc~0_combout\ & (\A|I|C_ch~combout\ & (\A|op_proc~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|op_proc~0_combout\,
	datab => \A|I|C_ch~combout\,
	datac => \A|op_proc~1_combout\,
	datad => \A|R|C_ch~combout\,
	combout => \A|C_flag[3]~2_combout\);

-- Location: LCCOMB_X15_Y16_N10
\A|C_flag[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|C_flag\(3) = (\A|C_flag[3]~2_combout\ & ((\A|C_flag[3]~1_combout\))) # (!\A|C_flag[3]~2_combout\ & (\A|C_flag\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|C_flag\(3),
	datac => \A|C_flag[3]~1_combout\,
	datad => \A|C_flag[3]~2_combout\,
	combout => \A|C_flag\(3));

-- Location: LCCOMB_X14_Y16_N22
\A|Z_flag[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Z_flag[3]~0_combout\ = (\A|R|rfD3[14]~13_combout\ & (\A|D2[0][15]~combout\ & (!\A|Equal0~0_combout\ & \A|D1[0][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|rfD3[14]~13_combout\,
	datab => \A|D2[0][15]~combout\,
	datac => \A|Equal0~0_combout\,
	datad => \A|D1[0][15]~combout\,
	combout => \A|Z_flag[3]~0_combout\);

-- Location: LCCOMB_X13_Y16_N20
\A|R|nor_for_Z~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|nor_for_Z~7_combout\ = (\A|D1[0][12]~combout\ & \A|D2[0][12]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D1[0][12]~combout\,
	datac => \A|D2[0][12]~combout\,
	combout => \A|R|nor_for_Z~7_combout\);

-- Location: LCCOMB_X16_Y16_N22
\A|R|nor_for_Z~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|nor_for_Z~5_combout\ = (\A|D1[0][10]~combout\ & \A|D2[0][10]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|D1[0][10]~combout\,
	datad => \A|D2[0][10]~combout\,
	combout => \A|R|nor_for_Z~5_combout\);

-- Location: LCCOMB_X16_Y16_N24
\A|R|rfD3[8]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[8]~17_combout\ = (\A|D1[0][8]~combout\ & \A|D2[0][8]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|D1[0][8]~combout\,
	datad => \A|D2[0][8]~combout\,
	combout => \A|R|rfD3[8]~17_combout\);

-- Location: LCCOMB_X19_Y17_N20
\A|R|rfD3[6]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[6]~16_combout\ = (\A|D1[0][6]~combout\ & \A|D2[0][6]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|D1[0][6]~combout\,
	datad => \A|D2[0][6]~combout\,
	combout => \A|R|rfD3[6]~16_combout\);

-- Location: LCCOMB_X20_Y17_N4
\A|R|rfD3[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[4]~15_combout\ = (\A|D2[0][4]~combout\ & \A|D1[0][4]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|D2[0][4]~combout\,
	datad => \A|D1[0][4]~combout\,
	combout => \A|R|rfD3[4]~15_combout\);

-- Location: LCCOMB_X20_Y14_N22
\A|R|nor_for_Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|nor_for_Z~0_combout\ = (\A|D1[0][1]~combout\ & (\A|D2[0][0]~combout\ & (\A|D2[0][1]~combout\ & \A|D1[0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][1]~combout\,
	datab => \A|D2[0][0]~combout\,
	datac => \A|D2[0][1]~combout\,
	datad => \A|D1[0][0]~combout\,
	combout => \A|R|nor_for_Z~0_combout\);

-- Location: LCCOMB_X20_Y13_N18
\A|R|rfD3[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|rfD3[2]~14_combout\ = (\A|D1[0][2]~combout\ & \A|D2[0][2]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|D1[0][2]~combout\,
	datad => \A|D2[0][2]~combout\,
	combout => \A|R|rfD3[2]~14_combout\);

-- Location: LCCOMB_X19_Y13_N0
\A|R|nor_for_Z~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|nor_for_Z~1_combout\ = (\A|D1[0][3]~combout\ & (\A|D2[0][3]~combout\ & ((\A|R|nor_for_Z~0_combout\) # (!\A|R|rfD3[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][3]~combout\,
	datab => \A|D2[0][3]~combout\,
	datac => \A|R|nor_for_Z~0_combout\,
	datad => \A|R|rfD3[2]~14_combout\,
	combout => \A|R|nor_for_Z~1_combout\);

-- Location: LCCOMB_X18_Y17_N28
\A|R|nor_for_Z~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|nor_for_Z~2_combout\ = (\A|D2[0][5]~combout\ & (\A|D1[0][5]~combout\ & ((\A|R|nor_for_Z~1_combout\) # (!\A|R|rfD3[4]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][5]~combout\,
	datab => \A|R|rfD3[4]~15_combout\,
	datac => \A|D1[0][5]~combout\,
	datad => \A|R|nor_for_Z~1_combout\,
	combout => \A|R|nor_for_Z~2_combout\);

-- Location: LCCOMB_X18_Y17_N22
\A|R|nor_for_Z~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|nor_for_Z~3_combout\ = (\A|D1[0][7]~combout\ & (\A|D2[0][7]~combout\ & ((\A|R|nor_for_Z~2_combout\) # (!\A|R|rfD3[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|rfD3[6]~16_combout\,
	datab => \A|D1[0][7]~combout\,
	datac => \A|D2[0][7]~combout\,
	datad => \A|R|nor_for_Z~2_combout\,
	combout => \A|R|nor_for_Z~3_combout\);

-- Location: LCCOMB_X17_Y16_N16
\A|R|nor_for_Z~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|nor_for_Z~4_combout\ = (\A|D1[0][9]~combout\ & (\A|D2[0][9]~combout\ & ((\A|R|nor_for_Z~3_combout\) # (!\A|R|rfD3[8]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][9]~combout\,
	datab => \A|D2[0][9]~combout\,
	datac => \A|R|rfD3[8]~17_combout\,
	datad => \A|R|nor_for_Z~3_combout\,
	combout => \A|R|nor_for_Z~4_combout\);

-- Location: LCCOMB_X17_Y16_N6
\A|R|nor_for_Z~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|R|nor_for_Z~6_combout\ = (\A|D2[0][11]~combout\ & (\A|D1[0][11]~combout\ & ((\A|R|nor_for_Z~4_combout\) # (!\A|R|nor_for_Z~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D2[0][11]~combout\,
	datab => \A|R|nor_for_Z~5_combout\,
	datac => \A|D1[0][11]~combout\,
	datad => \A|R|nor_for_Z~4_combout\,
	combout => \A|R|nor_for_Z~6_combout\);

-- Location: LCCOMB_X13_Y16_N6
\A|Z_flag[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Z_flag[3]~1_combout\ = (\A|D1[0][13]~combout\ & (\A|D2[0][13]~combout\ & ((\A|R|nor_for_Z~6_combout\) # (!\A|R|nor_for_Z~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][13]~combout\,
	datab => \A|R|nor_for_Z~7_combout\,
	datac => \A|D2[0][13]~combout\,
	datad => \A|R|nor_for_Z~6_combout\,
	combout => \A|Z_flag[3]~1_combout\);

-- Location: LCCOMB_X13_Y16_N16
\A|Z_flag[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Z_flag[3]~2_combout\ = (\A|Z_flag[3]~0_combout\ & (((\A|Z_flag[3]~1_combout\) # (!\A|D2[0][14]~combout\)) # (!\A|D1[0][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|D1[0][14]~combout\,
	datab => \A|Z_flag[3]~0_combout\,
	datac => \A|D2[0][14]~combout\,
	datad => \A|Z_flag[3]~1_combout\,
	combout => \A|Z_flag[3]~2_combout\);

-- Location: LCCOMB_X18_Y17_N0
\A|Z_flag[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Z_flag[3]~4_combout\ = (!\A|R|adder|Sum\(5) & (\A|R|rfD3[14]~13_combout\ & (!\A|R|adder|Sum\(3) & !\A|R|adder|Sum\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adder|Sum\(5),
	datab => \A|R|rfD3[14]~13_combout\,
	datac => \A|R|adder|Sum\(3),
	datad => \A|R|adder|Sum\(7),
	combout => \A|Z_flag[3]~4_combout\);

-- Location: LCCOMB_X18_Y16_N8
\A|Z_flag[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Z_flag[3]~5_combout\ = (!\A|R|adder|Sum\(9) & !\A|R|adder|Sum\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|R|adder|Sum\(9),
	datad => \A|R|adder|Sum\(11),
	combout => \A|Z_flag[3]~5_combout\);

-- Location: LCCOMB_X18_Y16_N10
\A|Z_flag[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Z_flag[3]~6_combout\ = (\A|Z_flag[3]~4_combout\ & (!\A|R|adder|Sum\(13) & (\A|Z_flag[3]~5_combout\ & !\A|R|adder|Sum\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Z_flag[3]~4_combout\,
	datab => \A|R|adder|Sum\(13),
	datac => \A|Z_flag[3]~5_combout\,
	datad => \A|R|adder|Sum\(15),
	combout => \A|Z_flag[3]~6_combout\);

-- Location: LCCOMB_X17_Y16_N20
\A|Z_flag[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Z_flag[3]~10_combout\ = (!\A|R|adder|Sum[8]~2_combout\ & (\A|R|adderB\(10) $ (\A|R|adderA\(10) $ (!\A|R|adder|carry[10]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderB\(10),
	datab => \A|R|adderA\(10),
	datac => \A|R|adder|carry[10]~13_combout\,
	datad => \A|R|adder|Sum[8]~2_combout\,
	combout => \A|Z_flag[3]~10_combout\);

-- Location: LCCOMB_X20_Y16_N22
\A|Z_flag[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Z_flag[3]~7_combout\ = (\A|R|adderA\(0) & (\A|R|adderB\(0) & (\A|R|adderA\(1) $ (\A|R|adderB\(1))))) # (!\A|R|adderA\(0) & (!\A|R|adderB\(0) & (\A|R|adderA\(1) $ (!\A|R|adderB\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderA\(0),
	datab => \A|R|adderA\(1),
	datac => \A|R|adderB\(1),
	datad => \A|R|adderB\(0),
	combout => \A|Z_flag[3]~7_combout\);

-- Location: LCCOMB_X18_Y17_N14
\A|Z_flag[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Z_flag[3]~8_combout\ = (\A|Equal0~0_combout\ & (\A|R|adderA\(2) $ (\A|R|adder|carry[2]~0_combout\ $ (!\A|R|adderB\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adderA\(2),
	datab => \A|R|adder|carry[2]~0_combout\,
	datac => \A|R|adderB\(2),
	datad => \A|Equal0~0_combout\,
	combout => \A|Z_flag[3]~8_combout\);

-- Location: LCCOMB_X18_Y17_N24
\A|Z_flag[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Z_flag[3]~9_combout\ = (\A|Z_flag[3]~7_combout\ & (!\A|R|adder|Sum[6]~1_combout\ & (\A|Z_flag[3]~8_combout\ & !\A|R|adder|Sum[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Z_flag[3]~7_combout\,
	datab => \A|R|adder|Sum[6]~1_combout\,
	datac => \A|Z_flag[3]~8_combout\,
	datad => \A|R|adder|Sum[4]~0_combout\,
	combout => \A|Z_flag[3]~9_combout\);

-- Location: LCCOMB_X18_Y16_N22
\A|Z_flag[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Z_flag[3]~11_combout\ = (!\A|R|adder|Sum[12]~3_combout\ & (\A|Z_flag[3]~10_combout\ & (\A|Z_flag[3]~9_combout\ & !\A|R|adder|Sum[14]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|R|adder|Sum[12]~3_combout\,
	datab => \A|Z_flag[3]~10_combout\,
	datac => \A|Z_flag[3]~9_combout\,
	datad => \A|R|adder|Sum[14]~4_combout\,
	combout => \A|Z_flag[3]~11_combout\);

-- Location: LCCOMB_X15_Y17_N24
\A|I|zout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|zout~0_combout\ = (!\inp[13]~input_o\ & (!\inp[15]~input_o\ & (\inp[12]~input_o\ $ (\inp[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[13]~input_o\,
	datab => \inp[15]~input_o\,
	datac => \inp[12]~input_o\,
	datad => \inp[14]~input_o\,
	combout => \A|I|zout~0_combout\);

-- Location: LCCOMB_X15_Y18_N30
\A|I|adder|Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Z~0_combout\ = (\A|I|adderA\(13) & (((!\A|I|adder|carry~11_combout\) # (!\A|I|adderA\(15))) # (!\A|I|adderA\(14)))) # (!\A|I|adderA\(13) & ((\A|I|adderA\(14)) # ((\A|I|adderA\(15)) # (\A|I|adder|carry~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(13),
	datab => \A|I|adderA\(14),
	datac => \A|I|adderA\(15),
	datad => \A|I|adder|carry~11_combout\,
	combout => \A|I|adder|Z~0_combout\);

-- Location: LCCOMB_X17_Y18_N20
\A|I|adder|Z~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Z~3_combout\ = (\A|I|adderA\(0) & ((\A|I|adderA\(1) $ (!\A|I|adderB\(1))) # (!\A|I|adderB\(0)))) # (!\A|I|adderA\(0) & ((\A|I|adderB\(0)) # (\A|I|adderA\(1) $ (\A|I|adderB\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(1),
	datab => \A|I|adderB\(1),
	datac => \A|I|adderA\(0),
	datad => \A|I|adderB\(0),
	combout => \A|I|adder|Z~3_combout\);

-- Location: LCCOMB_X15_Y18_N0
\A|I|adder|Z~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Z~4_combout\ = (\A|I|adder|Sum[2]~0_combout\) # ((\A|I|adder|Sum[6]~2_combout\) # ((\A|I|adder|Sum[4]~1_combout\) # (\A|I|adder|Sum[8]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adder|Sum[2]~0_combout\,
	datab => \A|I|adder|Sum[6]~2_combout\,
	datac => \A|I|adder|Sum[4]~1_combout\,
	datad => \A|I|adder|Sum[8]~3_combout\,
	combout => \A|I|adder|Z~4_combout\);

-- Location: LCCOMB_X15_Y18_N22
\A|I|adder|Z~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Z~5_combout\ = (\A|I|adder|Z~3_combout\) # ((\A|I|adder|Sum\(7)) # ((\A|I|adder|Sum\(9)) # (\A|I|adder|Z~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adder|Z~3_combout\,
	datab => \A|I|adder|Sum\(7),
	datac => \A|I|adder|Sum\(9),
	datad => \A|I|adder|Z~4_combout\,
	combout => \A|I|adder|Z~5_combout\);

-- Location: LCCOMB_X15_Y18_N12
\A|I|adder|Z~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Z~1_combout\ = (\A|I|adderA\(12) & (((!\A|I|adder|carry~10_combout\) # (!\A|I|adderA\(10))) # (!\A|I|adderA\(11)))) # (!\A|I|adderA\(12) & ((\A|I|adderA\(11)) # ((\A|I|adderA\(10)) # (\A|I|adder|carry~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adderA\(12),
	datab => \A|I|adderA\(11),
	datac => \A|I|adderA\(10),
	datad => \A|I|adder|carry~10_combout\,
	combout => \A|I|adder|Z~1_combout\);

-- Location: LCCOMB_X15_Y18_N6
\A|I|adder|Z~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Z~2_combout\ = (\A|I|adder|Sum\(5)) # ((\A|I|adder|Sum\(3)) # (\A|I|adder|Z~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adder|Sum\(5),
	datac => \A|I|adder|Sum\(3),
	datad => \A|I|adder|Z~1_combout\,
	combout => \A|I|adder|Z~2_combout\);

-- Location: LCCOMB_X15_Y18_N4
\A|I|adder|Z~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|adder|Z~6_combout\ = (\A|I|adder|Z~0_combout\) # ((\A|I|adder|Z~5_combout\) # (\A|I|adder|Z~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|adder|Z~0_combout\,
	datac => \A|I|adder|Z~5_combout\,
	datad => \A|I|adder|Z~2_combout\,
	combout => \A|I|adder|Z~6_combout\);

-- Location: LCCOMB_X15_Y18_N24
\A|I|zout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|zout~combout\ = (\A|I|zout~0_combout\ & (!\A|I|adder|Z~6_combout\)) # (!\A|I|zout~0_combout\ & ((\A|I|zout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|zout~0_combout\,
	datac => \A|I|adder|Z~6_combout\,
	datad => \A|I|zout~combout\,
	combout => \A|I|zout~combout\);

-- Location: LCCOMB_X15_Y16_N24
\A|Z_flag[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Z_flag[3]~3_combout\ = (\A|op_proc~0_combout\ & (\inp[1]~input_o\ & ((\inp[0]~input_o\)))) # (!\A|op_proc~0_combout\ & (((\A|I|zout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[1]~input_o\,
	datab => \A|I|zout~combout\,
	datac => \inp[0]~input_o\,
	datad => \A|op_proc~0_combout\,
	combout => \A|Z_flag[3]~3_combout\);

-- Location: LCCOMB_X18_Y16_N24
\A|Z_flag[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Z_flag[3]~12_combout\ = (\A|Z_flag[3]~2_combout\) # ((\A|Z_flag[3]~3_combout\) # ((\A|Z_flag[3]~6_combout\ & \A|Z_flag[3]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Z_flag[3]~2_combout\,
	datab => \A|Z_flag[3]~6_combout\,
	datac => \A|Z_flag[3]~11_combout\,
	datad => \A|Z_flag[3]~3_combout\,
	combout => \A|Z_flag[3]~12_combout\);

-- Location: LCCOMB_X15_Y16_N26
\A|I|comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|comb~5_combout\ = (!\A|Equal0~1_combout\ & (!\A|Equal0~2_combout\ & ((\A|Equal0~3_combout\) # (!\A|I|comb~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|I|comb~6_combout\,
	datab => \A|Equal0~1_combout\,
	datac => \A|Equal0~2_combout\,
	datad => \A|Equal0~3_combout\,
	combout => \A|I|comb~5_combout\);

-- Location: LCCOMB_X15_Y16_N16
\A|I|Z_ch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|I|Z_ch~combout\ = (!\A|I|comb~5_combout\ & ((\A|I|zout~0_combout\) # (\A|I|Z_ch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|zout~0_combout\,
	datac => \A|I|comb~5_combout\,
	datad => \A|I|Z_ch~combout\,
	combout => \A|I|Z_ch~combout\);

-- Location: LCCOMB_X15_Y16_N2
\A|Z_flag[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Z_flag[3]~13_combout\ = (\A|op_proc~0_combout\) # ((\A|I|Z_ch~combout\ & \A|op_proc~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|I|Z_ch~combout\,
	datac => \A|op_proc~1_combout\,
	datad => \A|op_proc~0_combout\,
	combout => \A|Z_flag[3]~13_combout\);

-- Location: LCCOMB_X18_Y16_N30
\A|Z_flag[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A|Z_flag\(3) = (\A|Z_flag[3]~13_combout\ & (\A|Z_flag[3]~12_combout\)) # (!\A|Z_flag[3]~13_combout\ & ((\A|Z_flag\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Z_flag[3]~12_combout\,
	datac => \A|Z_flag[3]~13_combout\,
	datad => \A|Z_flag\(3),
	combout => \A|Z_flag\(3));

-- Location: IOIBUF_X19_Y25_N22
\mD_read[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mD_read(0),
	o => \mD_read[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\mD_read[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mD_read(1),
	o => \mD_read[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\mD_read[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mD_read(2),
	o => \mD_read[2]~input_o\);

-- Location: IOIBUF_X29_Y25_N22
\mD_read[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mD_read(3),
	o => \mD_read[3]~input_o\);

-- Location: IOIBUF_X27_Y25_N15
\mD_read[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mD_read(4),
	o => \mD_read[4]~input_o\);

-- Location: IOIBUF_X17_Y0_N22
\mD_read[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mD_read(5),
	o => \mD_read[5]~input_o\);

-- Location: IOIBUF_X10_Y20_N1
\mD_read[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mD_read(6),
	o => \mD_read[6]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\mD_read[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mD_read(7),
	o => \mD_read[7]~input_o\);

-- Location: IOIBUF_X31_Y14_N15
\mD_read[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mD_read(8),
	o => \mD_read[8]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\mD_read[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mD_read(9),
	o => \mD_read[9]~input_o\);

-- Location: IOIBUF_X27_Y25_N1
\mD_read[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mD_read(10),
	o => \mD_read[10]~input_o\);

-- Location: IOIBUF_X17_Y25_N29
\mD_read[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mD_read(11),
	o => \mD_read[11]~input_o\);

-- Location: IOIBUF_X31_Y3_N1
\mD_read[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mD_read(12),
	o => \mD_read[12]~input_o\);

-- Location: IOIBUF_X19_Y25_N1
\mD_read[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mD_read(13),
	o => \mD_read[13]~input_o\);

-- Location: IOIBUF_X31_Y3_N8
\mD_read[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mD_read(14),
	o => \mD_read[14]~input_o\);

-- Location: IOIBUF_X15_Y25_N1
\mD_read[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mD_read(15),
	o => \mD_read[15]~input_o\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_mA_write(0) <= \mA_write[0]~output_o\;

ww_mA_write(1) <= \mA_write[1]~output_o\;

ww_mA_write(2) <= \mA_write[2]~output_o\;

ww_mA_write(3) <= \mA_write[3]~output_o\;

ww_mA_write(4) <= \mA_write[4]~output_o\;

ww_mA_write(5) <= \mA_write[5]~output_o\;

ww_mA_write(6) <= \mA_write[6]~output_o\;

ww_mA_write(7) <= \mA_write[7]~output_o\;

ww_mA_write(8) <= \mA_write[8]~output_o\;

ww_mA_write(9) <= \mA_write[9]~output_o\;

ww_mA_write(10) <= \mA_write[10]~output_o\;

ww_mA_write(11) <= \mA_write[11]~output_o\;

ww_mA_write(12) <= \mA_write[12]~output_o\;

ww_mA_write(13) <= \mA_write[13]~output_o\;

ww_mA_write(14) <= \mA_write[14]~output_o\;

ww_mA_write(15) <= \mA_write[15]~output_o\;

ww_mD_write(0) <= \mD_write[0]~output_o\;

ww_mD_write(1) <= \mD_write[1]~output_o\;

ww_mD_write(2) <= \mD_write[2]~output_o\;

ww_mD_write(3) <= \mD_write[3]~output_o\;

ww_mD_write(4) <= \mD_write[4]~output_o\;

ww_mD_write(5) <= \mD_write[5]~output_o\;

ww_mD_write(6) <= \mD_write[6]~output_o\;

ww_mD_write(7) <= \mD_write[7]~output_o\;

ww_mD_write(8) <= \mD_write[8]~output_o\;

ww_mD_write(9) <= \mD_write[9]~output_o\;

ww_mD_write(10) <= \mD_write[10]~output_o\;

ww_mD_write(11) <= \mD_write[11]~output_o\;

ww_mD_write(12) <= \mD_write[12]~output_o\;

ww_mD_write(13) <= \mD_write[13]~output_o\;

ww_mD_write(14) <= \mD_write[14]~output_o\;

ww_mD_write(15) <= \mD_write[15]~output_o\;

ww_mA_read(0) <= \mA_read[0]~output_o\;

ww_mA_read(1) <= \mA_read[1]~output_o\;

ww_mA_read(2) <= \mA_read[2]~output_o\;

ww_mA_read(3) <= \mA_read[3]~output_o\;

ww_mA_read(4) <= \mA_read[4]~output_o\;

ww_mA_read(5) <= \mA_read[5]~output_o\;

ww_mA_read(6) <= \mA_read[6]~output_o\;

ww_mA_read(7) <= \mA_read[7]~output_o\;

ww_mA_read(8) <= \mA_read[8]~output_o\;

ww_mA_read(9) <= \mA_read[9]~output_o\;

ww_mA_read(10) <= \mA_read[10]~output_o\;

ww_mA_read(11) <= \mA_read[11]~output_o\;

ww_mA_read(12) <= \mA_read[12]~output_o\;

ww_mA_read(13) <= \mA_read[13]~output_o\;

ww_mA_read(14) <= \mA_read[14]~output_o\;

ww_mA_read(15) <= \mA_read[15]~output_o\;

ww_C <= \C~output_o\;

ww_Z <= \Z~output_o\;
END structure;


