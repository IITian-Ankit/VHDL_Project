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

-- DATE "11/21/2024 19:28:45"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
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

ENTITY 	timer IS
    PORT (
	CLK : IN std_logic;
	RS : IN std_logic;
	S : IN std_logic;
	M : IN std_logic;
	H : IN std_logic;
	K : IN std_logic;
	R : IN std_logic;
	H0 : OUT std_logic_vector(6 DOWNTO 0);
	H1 : OUT std_logic_vector(6 DOWNTO 0);
	H2 : OUT std_logic_vector(6 DOWNTO 0);
	H3 : OUT std_logic_vector(6 DOWNTO 0);
	H4 : OUT std_logic_vector(6 DOWNTO 0);
	H5 : OUT std_logic_vector(6 DOWNTO 0);
	BUZZER : OUT std_logic;
	Y : INOUT std_logic
	);
END timer;

-- Design Ports Information
-- H0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUZZER	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF timer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RS : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_H : std_logic;
SIGNAL ww_K : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_H0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_H1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_H2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_H3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_H4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_H5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BUZZER : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|CLKDIV|TEMP~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|CLKDIV|TEMP~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U4|CLKDIV|TEMP~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|CLKDIV|TEMP~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Y~output_o\ : std_logic;
SIGNAL \H0[0]~output_o\ : std_logic;
SIGNAL \H0[1]~output_o\ : std_logic;
SIGNAL \H0[2]~output_o\ : std_logic;
SIGNAL \H0[3]~output_o\ : std_logic;
SIGNAL \H0[4]~output_o\ : std_logic;
SIGNAL \H0[5]~output_o\ : std_logic;
SIGNAL \H0[6]~output_o\ : std_logic;
SIGNAL \H1[0]~output_o\ : std_logic;
SIGNAL \H1[1]~output_o\ : std_logic;
SIGNAL \H1[2]~output_o\ : std_logic;
SIGNAL \H1[3]~output_o\ : std_logic;
SIGNAL \H1[4]~output_o\ : std_logic;
SIGNAL \H1[5]~output_o\ : std_logic;
SIGNAL \H1[6]~output_o\ : std_logic;
SIGNAL \H2[0]~output_o\ : std_logic;
SIGNAL \H2[1]~output_o\ : std_logic;
SIGNAL \H2[2]~output_o\ : std_logic;
SIGNAL \H2[3]~output_o\ : std_logic;
SIGNAL \H2[4]~output_o\ : std_logic;
SIGNAL \H2[5]~output_o\ : std_logic;
SIGNAL \H2[6]~output_o\ : std_logic;
SIGNAL \H3[0]~output_o\ : std_logic;
SIGNAL \H3[1]~output_o\ : std_logic;
SIGNAL \H3[2]~output_o\ : std_logic;
SIGNAL \H3[3]~output_o\ : std_logic;
SIGNAL \H3[4]~output_o\ : std_logic;
SIGNAL \H3[5]~output_o\ : std_logic;
SIGNAL \H3[6]~output_o\ : std_logic;
SIGNAL \H4[0]~output_o\ : std_logic;
SIGNAL \H4[1]~output_o\ : std_logic;
SIGNAL \H4[2]~output_o\ : std_logic;
SIGNAL \H4[3]~output_o\ : std_logic;
SIGNAL \H4[4]~output_o\ : std_logic;
SIGNAL \H4[5]~output_o\ : std_logic;
SIGNAL \H4[6]~output_o\ : std_logic;
SIGNAL \H5[0]~output_o\ : std_logic;
SIGNAL \H5[1]~output_o\ : std_logic;
SIGNAL \H5[2]~output_o\ : std_logic;
SIGNAL \H5[3]~output_o\ : std_logic;
SIGNAL \H5[4]~output_o\ : std_logic;
SIGNAL \H5[5]~output_o\ : std_logic;
SIGNAL \H5[6]~output_o\ : std_logic;
SIGNAL \BUZZER~output_o\ : std_logic;
SIGNAL \RS~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \U4|CLKDIV|TEMP~0_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~0_combout\ : std_logic;
SIGNAL \U5|CLKDIV|CNT~12_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~1\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~2_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~3\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~4_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~5\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~6_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~7\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~8_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~9\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~10_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~11\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~12_combout\ : std_logic;
SIGNAL \U5|CLKDIV|CNT~11_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~13\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~14_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~15\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~16_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~17\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~18_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~19\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~20_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~21\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~22_combout\ : std_logic;
SIGNAL \U5|CLKDIV|CNT~10_combout\ : std_logic;
SIGNAL \U4|CLKDIV|Equal0~6_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~23\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~24_combout\ : std_logic;
SIGNAL \U5|CLKDIV|CNT~9_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~25\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~26_combout\ : std_logic;
SIGNAL \U5|CLKDIV|CNT~8_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~27\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~28_combout\ : std_logic;
SIGNAL \U5|CLKDIV|CNT~7_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~29\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~30_combout\ : std_logic;
SIGNAL \U4|CLKDIV|Equal0~5_combout\ : std_logic;
SIGNAL \U4|CLKDIV|Equal0~7_combout\ : std_logic;
SIGNAL \U4|CLKDIV|Equal0~9_combout\ : std_logic;
SIGNAL \U4|CLKDIV|Equal0~8_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~31\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~32_combout\ : std_logic;
SIGNAL \U5|CLKDIV|CNT~6_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~33\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~34_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~35\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~36_combout\ : std_logic;
SIGNAL \U5|CLKDIV|CNT~5_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~37\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~38_combout\ : std_logic;
SIGNAL \U5|CLKDIV|CNT~4_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~39\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~40_combout\ : std_logic;
SIGNAL \U5|CLKDIV|CNT~3_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~41\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~42_combout\ : std_logic;
SIGNAL \U5|CLKDIV|CNT~2_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~43\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~44_combout\ : std_logic;
SIGNAL \U5|CLKDIV|CNT~1_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~45\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~46_combout\ : std_logic;
SIGNAL \U4|CLKDIV|Equal0~2_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~47\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~48_combout\ : std_logic;
SIGNAL \U5|CLKDIV|CNT~0_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~49\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~50_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~51\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~52_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~53\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~54_combout\ : std_logic;
SIGNAL \U4|CLKDIV|Equal0~1_combout\ : std_logic;
SIGNAL \U4|CLKDIV|Equal0~3_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~55\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~56_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~57\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~58_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~59\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~60_combout\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~61\ : std_logic;
SIGNAL \U5|CLKDIV|Add0~62_combout\ : std_logic;
SIGNAL \U4|CLKDIV|Equal0~0_combout\ : std_logic;
SIGNAL \U4|CLKDIV|Equal0~4_combout\ : std_logic;
SIGNAL \U4|CLKDIV|Equal0~10_combout\ : std_logic;
SIGNAL \U4|CLKDIV|TEMP~q\ : std_logic;
SIGNAL \U4|CLKDIV|TEMP~clkctrl_outclk\ : std_logic;
SIGNAL \U2|Qs.s9~feeder_combout\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \U2|Qs.s9~q\ : std_logic;
SIGNAL \U2|Qs.s10~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s10~q\ : std_logic;
SIGNAL \U2|Qs.s11~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s11~q\ : std_logic;
SIGNAL \U2|Qs.s12~q\ : std_logic;
SIGNAL \U2|Qs.s13~q\ : std_logic;
SIGNAL \U2|Qs.s14~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s14~q\ : std_logic;
SIGNAL \U2|Qs.s15~q\ : std_logic;
SIGNAL \U2|Qs.s16~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s16~q\ : std_logic;
SIGNAL \U2|Qs.s17~q\ : std_logic;
SIGNAL \U2|Qs.s18~q\ : std_logic;
SIGNAL \U2|Qs.s19~q\ : std_logic;
SIGNAL \U2|Qs.s20~q\ : std_logic;
SIGNAL \U2|Qs.s21~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s21~q\ : std_logic;
SIGNAL \U2|Qs.s22~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s22~q\ : std_logic;
SIGNAL \U2|Qs.s23~q\ : std_logic;
SIGNAL \U2|Qs.s24~q\ : std_logic;
SIGNAL \U2|Qs.s25~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s25~q\ : std_logic;
SIGNAL \U2|Qs.s26~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s26~q\ : std_logic;
SIGNAL \U2|Qs.s27~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s27~q\ : std_logic;
SIGNAL \U2|Qs.s28~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s28~q\ : std_logic;
SIGNAL \U2|Qs.s29~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s29~q\ : std_logic;
SIGNAL \U2|Qs.s30~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s30~q\ : std_logic;
SIGNAL \U2|Qs.s31~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s31~q\ : std_logic;
SIGNAL \U2|Qs.s32~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s32~q\ : std_logic;
SIGNAL \U2|Qs.s33~q\ : std_logic;
SIGNAL \U2|Qs.s34~q\ : std_logic;
SIGNAL \U2|Qs.s35~q\ : std_logic;
SIGNAL \U2|Qs.s36~q\ : std_logic;
SIGNAL \U2|Qs.s37~q\ : std_logic;
SIGNAL \U2|Qs.s38~q\ : std_logic;
SIGNAL \U2|Qs.s39~q\ : std_logic;
SIGNAL \U2|Qs.s40~q\ : std_logic;
SIGNAL \U2|Qs.s41~q\ : std_logic;
SIGNAL \U2|Qs.s42~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s42~q\ : std_logic;
SIGNAL \U2|Qs.s43~q\ : std_logic;
SIGNAL \U2|Qs.s44~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s44~q\ : std_logic;
SIGNAL \U2|Qs.s45~q\ : std_logic;
SIGNAL \U2|Qs.s46~q\ : std_logic;
SIGNAL \U2|Qs.s47~q\ : std_logic;
SIGNAL \U2|Qs.s48~q\ : std_logic;
SIGNAL \U2|Qs.s49~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s49~q\ : std_logic;
SIGNAL \U2|Qs.s50~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s50~q\ : std_logic;
SIGNAL \U2|Qs.s51~q\ : std_logic;
SIGNAL \U2|Qs.s52~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s52~q\ : std_logic;
SIGNAL \U2|Qs.s53~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s53~q\ : std_logic;
SIGNAL \U2|Qs.s54~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s54~q\ : std_logic;
SIGNAL \U2|Qs.s55~q\ : std_logic;
SIGNAL \U2|Qs.s56~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s56~q\ : std_logic;
SIGNAL \U2|Qs.s57~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s57~q\ : std_logic;
SIGNAL \U2|Qs.s58~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s58~q\ : std_logic;
SIGNAL \U2|Qs.s59~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s59~q\ : std_logic;
SIGNAL \U2|Qs.s0~0_combout\ : std_logic;
SIGNAL \U2|Qs.s0~q\ : std_logic;
SIGNAL \U2|Qs.s1~0_combout\ : std_logic;
SIGNAL \U2|Qs.s1~q\ : std_logic;
SIGNAL \U2|Qs.s2~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s2~q\ : std_logic;
SIGNAL \U2|Qs.s3~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s3~q\ : std_logic;
SIGNAL \U2|Qs.s4~q\ : std_logic;
SIGNAL \U2|Qs.s5~q\ : std_logic;
SIGNAL \U2|Qs.s6~q\ : std_logic;
SIGNAL \U2|Qs.s7~q\ : std_logic;
SIGNAL \U2|Qs.s8~feeder_combout\ : std_logic;
SIGNAL \U2|Qs.s8~q\ : std_logic;
SIGNAL \U2|WideOr64~5_combout\ : std_logic;
SIGNAL \U2|WideOr64~4_combout\ : std_logic;
SIGNAL \U2|WideOr64~6_combout\ : std_logic;
SIGNAL \U2|WideOr60~3_combout\ : std_logic;
SIGNAL \U2|WideOr64~7_combout\ : std_logic;
SIGNAL \U2|WideOr65~0_combout\ : std_logic;
SIGNAL \U2|WideOr65~1_combout\ : std_logic;
SIGNAL \U2|WideOr65~2_combout\ : std_logic;
SIGNAL \U2|WideOr65~3_combout\ : std_logic;
SIGNAL \U2|WideOr65~combout\ : std_logic;
SIGNAL \U2|WideOr64~0_combout\ : std_logic;
SIGNAL \U2|WideOr64~1_combout\ : std_logic;
SIGNAL \U2|WideOr64~2_combout\ : std_logic;
SIGNAL \U2|WideOr64~3_combout\ : std_logic;
SIGNAL \U2|WideOr64~combout\ : std_logic;
SIGNAL \U2|WideOr61~6_combout\ : std_logic;
SIGNAL \U2|WideOr61~4_combout\ : std_logic;
SIGNAL \U2|WideOr61~5_combout\ : std_logic;
SIGNAL \U2|WideOr61~1_combout\ : std_logic;
SIGNAL \U2|WideOr63~0_combout\ : std_logic;
SIGNAL \U2|WideOr61~2_combout\ : std_logic;
SIGNAL \U2|WideOr61~0_combout\ : std_logic;
SIGNAL \U2|WideOr61~3_combout\ : std_logic;
SIGNAL \U2|WideOr61~combout\ : std_logic;
SIGNAL \U2|WideOr62~0_combout\ : std_logic;
SIGNAL \U2|WideOr63~2_combout\ : std_logic;
SIGNAL \U2|WideOr63~3_combout\ : std_logic;
SIGNAL \U2|WideOr60~0_combout\ : std_logic;
SIGNAL \U2|WideOr60~2_combout\ : std_logic;
SIGNAL \U2|WideOr60~1_combout\ : std_logic;
SIGNAL \U2|WideOr63~1_combout\ : std_logic;
SIGNAL \U2|WideOr63~combout\ : std_logic;
SIGNAL \U2|WideOr62~4_combout\ : std_logic;
SIGNAL \U2|WideOr62~3_combout\ : std_logic;
SIGNAL \U2|WideOr62~2_combout\ : std_logic;
SIGNAL \U2|WideOr62~1_combout\ : std_logic;
SIGNAL \U2|WideOr62~combout\ : std_logic;
SIGNAL \U2|WideOr60~5_combout\ : std_logic;
SIGNAL \U2|WideOr60~6_combout\ : std_logic;
SIGNAL \U2|WideOr60~7_combout\ : std_logic;
SIGNAL \U2|WideOr60~4_combout\ : std_logic;
SIGNAL \U2|WideOr60~combout\ : std_logic;
SIGNAL \U3|Ram0~112_combout\ : std_logic;
SIGNAL \U3|Ram0~181_combout\ : std_logic;
SIGNAL \U3|Qs.s43~1_combout\ : std_logic;
SIGNAL \U3|CLKDIV|TEMP~0_combout\ : std_logic;
SIGNAL \U3|CLKDIV|TEMP~feeder_combout\ : std_logic;
SIGNAL \U3|CLKDIV|TEMP~q\ : std_logic;
SIGNAL \U3|CLKDIV|TEMP~clkctrl_outclk\ : std_logic;
SIGNAL \U3|Ram0~118_combout\ : std_logic;
SIGNAL \U3|Ram0~144_combout\ : std_logic;
SIGNAL \U3|Qs.s44~1_combout\ : std_logic;
SIGNAL \U3|Ram0~174_combout\ : std_logic;
SIGNAL \U3|Qs.s45~1_combout\ : std_logic;
SIGNAL \U3|Ram0~160_combout\ : std_logic;
SIGNAL \U3|Qs.s46~1_combout\ : std_logic;
SIGNAL \U3|Ram0~176_combout\ : std_logic;
SIGNAL \U3|Qs.s47~1_combout\ : std_logic;
SIGNAL \U3|Ram0~121_combout\ : std_logic;
SIGNAL \U3|Ram0~147_combout\ : std_logic;
SIGNAL \U3|Qs.s48~1_combout\ : std_logic;
SIGNAL \U3|Ram0~175_combout\ : std_logic;
SIGNAL \U3|Qs.s49~1_combout\ : std_logic;
SIGNAL \U3|Ram0~161_combout\ : std_logic;
SIGNAL \U3|Qs.s50~1_combout\ : std_logic;
SIGNAL \U3|Ram0~109_combout\ : std_logic;
SIGNAL \U3|Ram0~137_combout\ : std_logic;
SIGNAL \U3|Qs.s52~1_combout\ : std_logic;
SIGNAL \U3|Ram0~164_combout\ : std_logic;
SIGNAL \U3|Qs.s53~1_combout\ : std_logic;
SIGNAL \U3|Ram0~151_combout\ : std_logic;
SIGNAL \U3|Qs.s54~1_combout\ : std_logic;
SIGNAL \U3|Ram0~129_combout\ : std_logic;
SIGNAL \U3|Ram0~131_combout\ : std_logic;
SIGNAL \U3|Qs.s55~1_combout\ : std_logic;
SIGNAL \U3|Ram0~113_combout\ : std_logic;
SIGNAL \U3|Ram0~141_combout\ : std_logic;
SIGNAL \U3|Qs.s56~1_combout\ : std_logic;
SIGNAL \U3|Ram0~168_combout\ : std_logic;
SIGNAL \U3|Qs.s57~1_combout\ : std_logic;
SIGNAL \U3|Ram0~155_combout\ : std_logic;
SIGNAL \U3|Qs.s58~1_combout\ : std_logic;
SIGNAL \U3|Ram0~182_combout\ : std_logic;
SIGNAL \U3|Qs.s59~1_combout\ : std_logic;
SIGNAL \U3|Ram0~114_combout\ : std_logic;
SIGNAL \U3|Ram0~115_combout\ : std_logic;
SIGNAL \U3|Qs.s0~1_combout\ : std_logic;
SIGNAL \U3|Ram0~122_combout\ : std_logic;
SIGNAL \U3|Ram0~156_combout\ : std_logic;
SIGNAL \U3|Qs.s2~1_combout\ : std_logic;
SIGNAL \U3|Ram0~186_combout\ : std_logic;
SIGNAL \U3|Qs.s3~1_combout\ : std_logic;
SIGNAL \U3|Ram0~106_combout\ : std_logic;
SIGNAL \U3|Ram0~134_combout\ : std_logic;
SIGNAL \U3|Qs.s4~1_combout\ : std_logic;
SIGNAL \U3|Ram0~162_combout\ : std_logic;
SIGNAL \U3|Qs.s5~1_combout\ : std_logic;
SIGNAL \U3|Ram0~148_combout\ : std_logic;
SIGNAL \U3|Qs.s6~1_combout\ : std_logic;
SIGNAL \U3|Ram0~178_combout\ : std_logic;
SIGNAL \U3|Qs.s7~1_combout\ : std_logic;
SIGNAL \U3|Ram0~110_combout\ : std_logic;
SIGNAL \U3|Ram0~138_combout\ : std_logic;
SIGNAL \U3|Qs.s8~1_combout\ : std_logic;
SIGNAL \U3|Ram0~165_combout\ : std_logic;
SIGNAL \U3|Qs.s9~1_combout\ : std_logic;
SIGNAL \U3|Ram0~152_combout\ : std_logic;
SIGNAL \U3|Qs.s10~1_combout\ : std_logic;
SIGNAL \U3|Ram0~132_combout\ : std_logic;
SIGNAL \U3|Ram0~133_combout\ : std_logic;
SIGNAL \U3|Qs.s11~1_combout\ : std_logic;
SIGNAL \U3|Ram0~116_combout\ : std_logic;
SIGNAL \U3|Ram0~142_combout\ : std_logic;
SIGNAL \U3|Qs.s12~1_combout\ : std_logic;
SIGNAL \U3|Ram0~170_combout\ : std_logic;
SIGNAL \U3|Qs.s13~1_combout\ : std_logic;
SIGNAL \U3|Ram0~157_combout\ : std_logic;
SIGNAL \U3|Qs.s14~1_combout\ : std_logic;
SIGNAL \U3|Ram0~177_combout\ : std_logic;
SIGNAL \U3|Qs.s15~1_combout\ : std_logic;
SIGNAL \U3|Ram0~119_combout\ : std_logic;
SIGNAL \U3|Ram0~145_combout\ : std_logic;
SIGNAL \U3|Qs.s16~1_combout\ : std_logic;
SIGNAL \U3|Ram0~171_combout\ : std_logic;
SIGNAL \U3|Qs.s17~1_combout\ : std_logic;
SIGNAL \U3|Ram0~185_combout\ : std_logic;
SIGNAL \U3|Qs.s19~1_combout\ : std_logic;
SIGNAL \U3|Ram0~107_combout\ : std_logic;
SIGNAL \U3|Ram0~135_combout\ : std_logic;
SIGNAL \U3|Qs.s20~1_combout\ : std_logic;
SIGNAL \U3|Ram0~163_combout\ : std_logic;
SIGNAL \U3|Qs.s21~1_combout\ : std_logic;
SIGNAL \U3|Ram0~149_combout\ : std_logic;
SIGNAL \U3|Qs.s22~1_combout\ : std_logic;
SIGNAL \U3|Ram0~179_combout\ : std_logic;
SIGNAL \U3|Qs.s23~1_combout\ : std_logic;
SIGNAL \U3|Ram0~111_combout\ : std_logic;
SIGNAL \U3|Ram0~139_combout\ : std_logic;
SIGNAL \U3|Qs.s24~1_combout\ : std_logic;
SIGNAL \U3|Ram0~166_combout\ : std_logic;
SIGNAL \U3|Qs.s25~1_combout\ : std_logic;
SIGNAL \U3|Ram0~153_combout\ : std_logic;
SIGNAL \U3|Qs.s26~1_combout\ : std_logic;
SIGNAL \U3|Ram0~180_combout\ : std_logic;
SIGNAL \U3|Qs.s27~1_combout\ : std_logic;
SIGNAL \U3|Ram0~117_combout\ : std_logic;
SIGNAL \U3|Ram0~143_combout\ : std_logic;
SIGNAL \U3|Qs.s28~1_combout\ : std_logic;
SIGNAL \U3|Ram0~172_combout\ : std_logic;
SIGNAL \U3|Qs.s29~1_combout\ : std_logic;
SIGNAL \U3|Ram0~123_combout\ : std_logic;
SIGNAL \U3|Ram0~124_combout\ : std_logic;
SIGNAL \U3|Qs.s30~1_combout\ : std_logic;
SIGNAL \U3|Ram0~127_combout\ : std_logic;
SIGNAL \U3|Ram0~128_combout\ : std_logic;
SIGNAL \U3|Qs.s31~1_combout\ : std_logic;
SIGNAL \U3|Ram0~120_combout\ : std_logic;
SIGNAL \U3|Ram0~146_combout\ : std_logic;
SIGNAL \U3|Qs.s32~1_combout\ : std_logic;
SIGNAL \U3|Ram0~173_combout\ : std_logic;
SIGNAL \U3|Qs.s33~1_combout\ : std_logic;
SIGNAL \U3|Ram0~159_combout\ : std_logic;
SIGNAL \U3|Qs.s34~1_combout\ : std_logic;
SIGNAL \U3|Ram0~183_combout\ : std_logic;
SIGNAL \U3|Qs.s35~1_combout\ : std_logic;
SIGNAL \U3|Ram0~108_combout\ : std_logic;
SIGNAL \U3|Ram0~136_combout\ : std_logic;
SIGNAL \U3|Qs.s36~1_combout\ : std_logic;
SIGNAL \U3|Ram0~125_combout\ : std_logic;
SIGNAL \U3|Ram0~126_combout\ : std_logic;
SIGNAL \U3|Qs.s37~1_combout\ : std_logic;
SIGNAL \U3|Ram0~150_combout\ : std_logic;
SIGNAL \U3|Qs.s38~1_combout\ : std_logic;
SIGNAL \U3|Ram0~130_combout\ : std_logic;
SIGNAL \U3|Qs.s39~1_combout\ : std_logic;
SIGNAL \U3|Ram0~140_combout\ : std_logic;
SIGNAL \U3|Qs.s40~1_combout\ : std_logic;
SIGNAL \U3|Ram0~167_combout\ : std_logic;
SIGNAL \U3|Qs.s41~1_combout\ : std_logic;
SIGNAL \U3|Ram0~154_combout\ : std_logic;
SIGNAL \U3|Qs.s42~1_combout\ : std_logic;
SIGNAL \U3|Qs.s42~3_combout\ : std_logic;
SIGNAL \K~input_o\ : std_logic;
SIGNAL \U3|WideOr64~4_combout\ : std_logic;
SIGNAL \U3|WideOr64~0_combout\ : std_logic;
SIGNAL \U3|WideOr63~4_combout\ : std_logic;
SIGNAL \U3|WideOr63~0_combout\ : std_logic;
SIGNAL \U3|WideOr63~1_combout\ : std_logic;
SIGNAL \U3|WideOr65~0_combout\ : std_logic;
SIGNAL \U3|WideOr63~2_combout\ : std_logic;
SIGNAL \U3|WideOr63~3_combout\ : std_logic;
SIGNAL \U3|WideOr63~combout\ : std_logic;
SIGNAL \H~input_o\ : std_logic;
SIGNAL \U4|Qs.s17~q\ : std_logic;
SIGNAL \U4|Qs.s18~q\ : std_logic;
SIGNAL \U4|Qs.s19~q\ : std_logic;
SIGNAL \U4|Qs.s20~feeder_combout\ : std_logic;
SIGNAL \U4|Qs.s20~q\ : std_logic;
SIGNAL \U4|Qs.s21~q\ : std_logic;
SIGNAL \U4|Qs.s22~feeder_combout\ : std_logic;
SIGNAL \U4|Qs.s22~q\ : std_logic;
SIGNAL \U4|Qs.s23~q\ : std_logic;
SIGNAL \U4|Qs.s0~0_combout\ : std_logic;
SIGNAL \U4|Qs.s0~q\ : std_logic;
SIGNAL \U4|Qs.s1~0_combout\ : std_logic;
SIGNAL \U4|Qs.s1~q\ : std_logic;
SIGNAL \U4|Qs.s2~q\ : std_logic;
SIGNAL \U4|Qs.s3~q\ : std_logic;
SIGNAL \U4|Qs.s4~feeder_combout\ : std_logic;
SIGNAL \U4|Qs.s4~q\ : std_logic;
SIGNAL \U4|Qs.s5~feeder_combout\ : std_logic;
SIGNAL \U4|Qs.s5~q\ : std_logic;
SIGNAL \U4|Qs.s6~q\ : std_logic;
SIGNAL \U4|Qs.s7~q\ : std_logic;
SIGNAL \U4|Qs.s8~feeder_combout\ : std_logic;
SIGNAL \U4|Qs.s8~q\ : std_logic;
SIGNAL \U4|Qs.s9~feeder_combout\ : std_logic;
SIGNAL \U4|Qs.s9~q\ : std_logic;
SIGNAL \U4|Qs.s10~q\ : std_logic;
SIGNAL \U4|Qs.s11~feeder_combout\ : std_logic;
SIGNAL \U4|Qs.s11~q\ : std_logic;
SIGNAL \U4|Qs.s12~feeder_combout\ : std_logic;
SIGNAL \U4|Qs.s12~q\ : std_logic;
SIGNAL \U4|Qs.s13~q\ : std_logic;
SIGNAL \U4|Qs.s14~feeder_combout\ : std_logic;
SIGNAL \U4|Qs.s14~q\ : std_logic;
SIGNAL \U4|Qs.s15~feeder_combout\ : std_logic;
SIGNAL \U4|Qs.s15~q\ : std_logic;
SIGNAL \U4|Qs.s16~q\ : std_logic;
SIGNAL \U4|WideOr28~0_combout\ : std_logic;
SIGNAL \U4|WideOr24~0_combout\ : std_logic;
SIGNAL \U4|WideOr24~combout\ : std_logic;
SIGNAL \U4|WideOr27~1_combout\ : std_logic;
SIGNAL \U4|WideOr27~0_combout\ : std_logic;
SIGNAL \U4|WideOr26~0_combout\ : std_logic;
SIGNAL \U4|WideOr27~2_combout\ : std_logic;
SIGNAL \U4|WideOr28~1_combout\ : std_logic;
SIGNAL \U4|WideOr25~1_combout\ : std_logic;
SIGNAL \U4|WideOr28~2_combout\ : std_logic;
SIGNAL \U4|WideOr25~0_combout\ : std_logic;
SIGNAL \U4|WideOr25~combout\ : std_logic;
SIGNAL \U5|Mux7~28_combout\ : std_logic;
SIGNAL \U4|WideOr26~2_combout\ : std_logic;
SIGNAL \U4|WideOr26~1_combout\ : std_logic;
SIGNAL \U4|WideOr26~3_combout\ : std_logic;
SIGNAL \U5|Mux7~32_combout\ : std_logic;
SIGNAL \U5|Qs.s15~1_combout\ : std_logic;
SIGNAL \U5|CLKDIV|TEMP~0_combout\ : std_logic;
SIGNAL \U5|CLKDIV|TEMP~feeder_combout\ : std_logic;
SIGNAL \U5|CLKDIV|TEMP~q\ : std_logic;
SIGNAL \U5|CLKDIV|TEMP~clkctrl_outclk\ : std_logic;
SIGNAL \U5|Mux7~4_combout\ : std_logic;
SIGNAL \U5|Mux7~5_combout\ : std_logic;
SIGNAL \U5|Qs.s16~1_combout\ : std_logic;
SIGNAL \U5|Mux7~20_combout\ : std_logic;
SIGNAL \U5|Mux7~21_combout\ : std_logic;
SIGNAL \U5|Qs.s17~1_combout\ : std_logic;
SIGNAL \U5|Mux7~0_combout\ : std_logic;
SIGNAL \U5|Mux7~1_combout\ : std_logic;
SIGNAL \U5|Qs.s18~1_combout\ : std_logic;
SIGNAL \U5|Mux7~30_combout\ : std_logic;
SIGNAL \U5|Mux7~31_combout\ : std_logic;
SIGNAL \U5|Mux7~15_combout\ : std_logic;
SIGNAL \U5|Qs.s20~1_combout\ : std_logic;
SIGNAL \U5|Mux7~22_combout\ : std_logic;
SIGNAL \U5|Qs.s21~1_combout\ : std_logic;
SIGNAL \U5|Mux7~16_combout\ : std_logic;
SIGNAL \U5|Qs.s22~1_combout\ : std_logic;
SIGNAL \U5|Mux7~33_combout\ : std_logic;
SIGNAL \U5|Qs.s23~1_combout\ : std_logic;
SIGNAL \U3|WideOr61~0_combout\ : std_logic;
SIGNAL \U3|WideOr60~0_combout\ : std_logic;
SIGNAL \U3|WideOr60~1_combout\ : std_logic;
SIGNAL \U3|WideOr60~3_combout\ : std_logic;
SIGNAL \U3|WideOr61~1_combout\ : std_logic;
SIGNAL \U3|WideOr60~2_combout\ : std_logic;
SIGNAL \U3|WideOr61~2_combout\ : std_logic;
SIGNAL \U3|WideOr60~4_combout\ : std_logic;
SIGNAL \U3|WideOr60~combout\ : std_logic;
SIGNAL \U3|WideOr65~2_combout\ : std_logic;
SIGNAL \U3|WideOr65~3_combout\ : std_logic;
SIGNAL \U3|WideOr65~1_combout\ : std_logic;
SIGNAL \U3|WideOr64~1_combout\ : std_logic;
SIGNAL \U3|WideOr62~0_combout\ : std_logic;
SIGNAL \U3|WideOr64~2_combout\ : std_logic;
SIGNAL \U3|WideOr64~3_combout\ : std_logic;
SIGNAL \U3|WideOr65~combout\ : std_logic;
SIGNAL \U3|WideOr64~5_combout\ : std_logic;
SIGNAL \U3|WideOr64~6_combout\ : std_logic;
SIGNAL \U3|WideOr64~7_combout\ : std_logic;
SIGNAL \U3|WideOr64~combout\ : std_logic;
SIGNAL \U3|WideOr61~5_combout\ : std_logic;
SIGNAL \U3|WideOr61~6_combout\ : std_logic;
SIGNAL \U3|WideOr61~7_combout\ : std_logic;
SIGNAL \U3|WideOr61~3_combout\ : std_logic;
SIGNAL \U3|WideOr61~4_combout\ : std_logic;
SIGNAL \U3|WideOr61~combout\ : std_logic;
SIGNAL \O~0_combout\ : std_logic;
SIGNAL \O~1_combout\ : std_logic;
SIGNAL \U1|CLKDIV|TEMP~0_combout\ : std_logic;
SIGNAL \U1|CLKDIV|TEMP~feeder_combout\ : std_logic;
SIGNAL \U1|CLKDIV|TEMP~q\ : std_logic;
SIGNAL \U1|CLKDIV|TEMP~clkctrl_outclk\ : std_logic;
SIGNAL \U0|Qs.s45~feeder_combout\ : std_logic;
SIGNAL \S~input_o\ : std_logic;
SIGNAL \U0|Qs.s45~q\ : std_logic;
SIGNAL \U0|Qs.s46~q\ : std_logic;
SIGNAL \U0|Qs.s47~q\ : std_logic;
SIGNAL \U0|Qs.s48~q\ : std_logic;
SIGNAL \U0|Qs.s49~q\ : std_logic;
SIGNAL \U0|Qs.s50~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s50~q\ : std_logic;
SIGNAL \U0|Qs.s51~q\ : std_logic;
SIGNAL \U0|Qs.s52~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s52~q\ : std_logic;
SIGNAL \U0|Qs.s53~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s53~q\ : std_logic;
SIGNAL \U0|Qs.s54~q\ : std_logic;
SIGNAL \U0|Qs.s55~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s55~q\ : std_logic;
SIGNAL \U0|Qs.s56~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s56~q\ : std_logic;
SIGNAL \U0|Qs.s57~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s57~q\ : std_logic;
SIGNAL \U0|Qs.s58~q\ : std_logic;
SIGNAL \U0|Qs.s59~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s59~q\ : std_logic;
SIGNAL \U0|Qs.s0~0_combout\ : std_logic;
SIGNAL \U0|Qs.s0~q\ : std_logic;
SIGNAL \U0|Qs.s1~0_combout\ : std_logic;
SIGNAL \U0|Qs.s1~q\ : std_logic;
SIGNAL \U0|Qs.s2~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s2~q\ : std_logic;
SIGNAL \U0|Qs.s3~q\ : std_logic;
SIGNAL \U0|Qs.s4~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s4~q\ : std_logic;
SIGNAL \U0|Qs.s5~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s5~q\ : std_logic;
SIGNAL \U0|Qs.s6~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s6~q\ : std_logic;
SIGNAL \U0|Qs.s7~q\ : std_logic;
SIGNAL \U0|Qs.s8~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s8~q\ : std_logic;
SIGNAL \U0|Qs.s9~q\ : std_logic;
SIGNAL \U0|Qs.s10~q\ : std_logic;
SIGNAL \U0|Qs.s11~q\ : std_logic;
SIGNAL \U0|Qs.s12~q\ : std_logic;
SIGNAL \U0|Qs.s13~q\ : std_logic;
SIGNAL \U0|Qs.s14~q\ : std_logic;
SIGNAL \U0|Qs.s15~q\ : std_logic;
SIGNAL \U0|Qs.s16~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s16~q\ : std_logic;
SIGNAL \U0|Qs.s17~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s17~q\ : std_logic;
SIGNAL \U0|Qs.s18~q\ : std_logic;
SIGNAL \U0|Qs.s19~q\ : std_logic;
SIGNAL \U0|Qs.s20~q\ : std_logic;
SIGNAL \U0|Qs.s21~q\ : std_logic;
SIGNAL \U0|Qs.s22~q\ : std_logic;
SIGNAL \U0|Qs.s23~q\ : std_logic;
SIGNAL \U0|Qs.s24~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s24~q\ : std_logic;
SIGNAL \U0|Qs.s25~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s25~q\ : std_logic;
SIGNAL \U0|Qs.s26~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s26~q\ : std_logic;
SIGNAL \U0|Qs.s27~q\ : std_logic;
SIGNAL \U0|Qs.s28~q\ : std_logic;
SIGNAL \U0|Qs.s29~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s29~q\ : std_logic;
SIGNAL \U0|Qs.s30~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s30~q\ : std_logic;
SIGNAL \U0|Qs.s31~q\ : std_logic;
SIGNAL \U0|Qs.s32~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s32~q\ : std_logic;
SIGNAL \U0|Qs.s33~q\ : std_logic;
SIGNAL \U0|Qs.s34~q\ : std_logic;
SIGNAL \U0|Qs.s35~q\ : std_logic;
SIGNAL \U0|Qs.s36~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s36~q\ : std_logic;
SIGNAL \U0|Qs.s37~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s37~q\ : std_logic;
SIGNAL \U0|Qs.s38~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s38~q\ : std_logic;
SIGNAL \U0|Qs.s39~q\ : std_logic;
SIGNAL \U0|Qs.s40~q\ : std_logic;
SIGNAL \U0|Qs.s41~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s41~q\ : std_logic;
SIGNAL \U0|Qs.s42~feeder_combout\ : std_logic;
SIGNAL \U0|Qs.s42~q\ : std_logic;
SIGNAL \U0|Qs.s43~q\ : std_logic;
SIGNAL \U0|Qs.s44~q\ : std_logic;
SIGNAL \U0|WideOr60~4_combout\ : std_logic;
SIGNAL \U0|WideOr60~2_combout\ : std_logic;
SIGNAL \U0|WideOr60~3_combout\ : std_logic;
SIGNAL \U0|WideOr61~2_combout\ : std_logic;
SIGNAL \U0|WideOr61~0_combout\ : std_logic;
SIGNAL \U0|WideOr60~0_combout\ : std_logic;
SIGNAL \U0|WideOr61~1_combout\ : std_logic;
SIGNAL \U0|WideOr60~1_combout\ : std_logic;
SIGNAL \U0|WideOr60~combout\ : std_logic;
SIGNAL \U0|WideOr61~6_combout\ : std_logic;
SIGNAL \U0|WideOr61~5_combout\ : std_logic;
SIGNAL \U0|WideOr61~7_combout\ : std_logic;
SIGNAL \U0|WideOr61~3_combout\ : std_logic;
SIGNAL \U0|WideOr61~4_combout\ : std_logic;
SIGNAL \U0|WideOr61~combout\ : std_logic;
SIGNAL \U0|WideOr64~4_combout\ : std_logic;
SIGNAL \U0|WideOr63~4_combout\ : std_logic;
SIGNAL \U0|WideOr64~0_combout\ : std_logic;
SIGNAL \U0|WideOr63~1_combout\ : std_logic;
SIGNAL \U0|WideOr65~0_combout\ : std_logic;
SIGNAL \U0|WideOr63~2_combout\ : std_logic;
SIGNAL \U0|WideOr63~0_combout\ : std_logic;
SIGNAL \U0|WideOr63~3_combout\ : std_logic;
SIGNAL \U0|WideOr63~combout\ : std_logic;
SIGNAL \U0|WideOr64~5_combout\ : std_logic;
SIGNAL \U0|WideOr65~1_combout\ : std_logic;
SIGNAL \U0|WideOr62~2_combout\ : std_logic;
SIGNAL \U0|WideOr62~0_combout\ : std_logic;
SIGNAL \U0|WideOr62~1_combout\ : std_logic;
SIGNAL \U0|WideOr62~combout\ : std_logic;
SIGNAL \U1|Ram0~62_combout\ : std_logic;
SIGNAL \U0|WideOr64~7_combout\ : std_logic;
SIGNAL \U0|WideOr64~8_combout\ : std_logic;
SIGNAL \U0|WideOr64~1_combout\ : std_logic;
SIGNAL \U0|WideOr64~2_combout\ : std_logic;
SIGNAL \U0|WideOr64~3_combout\ : std_logic;
SIGNAL \U0|WideOr65~2_combout\ : std_logic;
SIGNAL \U0|WideOr65~3_combout\ : std_logic;
SIGNAL \U1|Ram0~74_combout\ : std_logic;
SIGNAL \U1|Ram0~75_combout\ : std_logic;
SIGNAL \U1|Ram0~80_combout\ : std_logic;
SIGNAL \U1|Qs.s10~1_combout\ : std_logic;
SIGNAL \U0|WideOr64~combout\ : std_logic;
SIGNAL \U0|WideOr65~combout\ : std_logic;
SIGNAL \U1|Ram0~130_combout\ : std_logic;
SIGNAL \U1|Qs.s11~1_combout\ : std_logic;
SIGNAL \U1|Ram0~68_combout\ : std_logic;
SIGNAL \U1|Ram0~117_combout\ : std_logic;
SIGNAL \U1|Qs.s12~1_combout\ : std_logic;
SIGNAL \U1|Ram0~92_combout\ : std_logic;
SIGNAL \U1|Ram0~93_combout\ : std_logic;
SIGNAL \U1|Ram0~103_combout\ : std_logic;
SIGNAL \U1|Qs.s13~1_combout\ : std_logic;
SIGNAL \U1|Ram0~71_combout\ : std_logic;
SIGNAL \U1|Ram0~120_combout\ : std_logic;
SIGNAL \U1|Qs.s16~1_combout\ : std_logic;
SIGNAL \U1|Ram0~104_combout\ : std_logic;
SIGNAL \U1|Qs.s17~1_combout\ : std_logic;
SIGNAL \U1|Ram0~87_combout\ : std_logic;
SIGNAL \U1|Qs.s18~1_combout\ : std_logic;
SIGNAL \U1|Ram0~136_combout\ : std_logic;
SIGNAL \U1|Qs.s19~1_combout\ : std_logic;
SIGNAL \U1|Ram0~59_combout\ : std_logic;
SIGNAL \U1|Ram0~110_combout\ : std_logic;
SIGNAL \U1|Qs.s20~1_combout\ : std_logic;
SIGNAL \U1|Ram0~95_combout\ : std_logic;
SIGNAL \U1|Qs.s21~1_combout\ : std_logic;
SIGNAL \U1|Ram0~77_combout\ : std_logic;
SIGNAL \U1|Qs.s22~1_combout\ : std_logic;
SIGNAL \U1|Ram0~127_combout\ : std_logic;
SIGNAL \U1|Qs.s23~1_combout\ : std_logic;
SIGNAL \U1|Ram0~63_combout\ : std_logic;
SIGNAL \U1|Ram0~99_combout\ : std_logic;
SIGNAL \U1|Qs.s25~1_combout\ : std_logic;
SIGNAL \U1|Ram0~81_combout\ : std_logic;
SIGNAL \U1|Qs.s26~1_combout\ : std_logic;
SIGNAL \U1|Ram0~131_combout\ : std_logic;
SIGNAL \U1|Qs.s27~1_combout\ : std_logic;
SIGNAL \U1|Ram0~69_combout\ : std_logic;
SIGNAL \U1|Ram0~118_combout\ : std_logic;
SIGNAL \U1|Qs.s28~1_combout\ : std_logic;
SIGNAL \U1|Ram0~105_combout\ : std_logic;
SIGNAL \U1|Qs.s29~1_combout\ : std_logic;
SIGNAL \U1|Ram0~88_combout\ : std_logic;
SIGNAL \U1|Qs.s30~1_combout\ : std_logic;
SIGNAL \U1|Ram0~125_combout\ : std_logic;
SIGNAL \U1|Qs.s31~1_combout\ : std_logic;
SIGNAL \U1|Ram0~72_combout\ : std_logic;
SIGNAL \U1|Ram0~121_combout\ : std_logic;
SIGNAL \U1|Qs.s32~1_combout\ : std_logic;
SIGNAL \U1|Ram0~106_combout\ : std_logic;
SIGNAL \U1|Qs.s33~1_combout\ : std_logic;
SIGNAL \U1|Ram0~89_combout\ : std_logic;
SIGNAL \U1|Qs.s34~1_combout\ : std_logic;
SIGNAL \U1|Ram0~60_combout\ : std_logic;
SIGNAL \U1|Ram0~111_combout\ : std_logic;
SIGNAL \U1|Qs.s36~1_combout\ : std_logic;
SIGNAL \U1|Ram0~78_combout\ : std_logic;
SIGNAL \U1|Qs.s38~1_combout\ : std_logic;
SIGNAL \U1|Ram0~128_combout\ : std_logic;
SIGNAL \U1|Qs.s39~1_combout\ : std_logic;
SIGNAL \U1|Ram0~64_combout\ : std_logic;
SIGNAL \U1|Ram0~115_combout\ : std_logic;
SIGNAL \U1|Qs.s40~1_combout\ : std_logic;
SIGNAL \U1|Ram0~100_combout\ : std_logic;
SIGNAL \U1|Qs.s41~1_combout\ : std_logic;
SIGNAL \U1|Ram0~132_combout\ : std_logic;
SIGNAL \U1|Qs.s43~1_combout\ : std_logic;
SIGNAL \U1|Ram0~70_combout\ : std_logic;
SIGNAL \U1|Ram0~119_combout\ : std_logic;
SIGNAL \U1|Qs.s44~1_combout\ : std_logic;
SIGNAL \U1|Ram0~107_combout\ : std_logic;
SIGNAL \U1|Qs.s45~1_combout\ : std_logic;
SIGNAL \U1|Ram0~90_combout\ : std_logic;
SIGNAL \U1|Qs.s46~1_combout\ : std_logic;
SIGNAL \U1|Ram0~73_combout\ : std_logic;
SIGNAL \U1|Ram0~122_combout\ : std_logic;
SIGNAL \U1|Qs.s48~1_combout\ : std_logic;
SIGNAL \U1|Ram0~108_combout\ : std_logic;
SIGNAL \U1|Qs.s49~1_combout\ : std_logic;
SIGNAL \U1|Ram0~91_combout\ : std_logic;
SIGNAL \U1|Ram0~134_combout\ : std_logic;
SIGNAL \U1|Ram0~61_combout\ : std_logic;
SIGNAL \U1|Ram0~112_combout\ : std_logic;
SIGNAL \U1|Qs.s52~1_combout\ : std_logic;
SIGNAL \U1|Ram0~97_combout\ : std_logic;
SIGNAL \U1|Qs.s53~1_combout\ : std_logic;
SIGNAL \U1|Ram0~79_combout\ : std_logic;
SIGNAL \U1|Qs.s54~1_combout\ : std_logic;
SIGNAL \U1|Ram0~129_combout\ : std_logic;
SIGNAL \U1|Qs.s55~1_combout\ : std_logic;
SIGNAL \U1|Ram0~65_combout\ : std_logic;
SIGNAL \U1|Ram0~116_combout\ : std_logic;
SIGNAL \U1|Qs.s56~1_combout\ : std_logic;
SIGNAL \U1|Ram0~101_combout\ : std_logic;
SIGNAL \U1|Qs.s57~1_combout\ : std_logic;
SIGNAL \U1|Ram0~83_combout\ : std_logic;
SIGNAL \U1|Qs.s58~1_combout\ : std_logic;
SIGNAL \U1|Ram0~133_combout\ : std_logic;
SIGNAL \U1|Qs.s59~1_combout\ : std_logic;
SIGNAL \U1|Ram0~66_combout\ : std_logic;
SIGNAL \U1|Ram0~67_combout\ : std_logic;
SIGNAL \U1|Qs.s0~1_combout\ : std_logic;
SIGNAL \U1|Ram0~84_combout\ : std_logic;
SIGNAL \U1|Ram0~102_combout\ : std_logic;
SIGNAL \U1|Qs.s1~1_combout\ : std_logic;
SIGNAL \U1|Ram0~85_combout\ : std_logic;
SIGNAL \U1|Qs.s2~1_combout\ : std_logic;
SIGNAL \U1|Ram0~137_combout\ : std_logic;
SIGNAL \U1|Ram0~58_combout\ : std_logic;
SIGNAL \U1|Ram0~109_combout\ : std_logic;
SIGNAL \U1|Qs.s4~1_combout\ : std_logic;
SIGNAL \U1|Ram0~94_combout\ : std_logic;
SIGNAL \U1|Qs.s5~1_combout\ : std_logic;
SIGNAL \U1|Ram0~76_combout\ : std_logic;
SIGNAL \U1|Qs.s6~1_combout\ : std_logic;
SIGNAL \U1|Ram0~126_combout\ : std_logic;
SIGNAL \U1|Qs.s7~1_combout\ : std_logic;
SIGNAL \U1|Ram0~113_combout\ : std_logic;
SIGNAL \U1|Qs.s8~1_combout\ : std_logic;
SIGNAL \U1|Ram0~98_combout\ : std_logic;
SIGNAL \U1|Qs.s9~1_combout\ : std_logic;
SIGNAL \U1|Qs.s9~3_combout\ : std_logic;
SIGNAL \U1|Qs.s9~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s9~2_combout\ : std_logic;
SIGNAL \U1|Qs.s8~3_combout\ : std_logic;
SIGNAL \U1|Qs.s8~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s8~2_combout\ : std_logic;
SIGNAL \U1|Qs.s7~3_combout\ : std_logic;
SIGNAL \U1|Qs.s7~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s7~2_combout\ : std_logic;
SIGNAL \U1|Qs.s6~3_combout\ : std_logic;
SIGNAL \U1|Qs.s6~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s6~2_combout\ : std_logic;
SIGNAL \U1|Qs.s5~3_combout\ : std_logic;
SIGNAL \U1|Qs.s5~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s5~2_combout\ : std_logic;
SIGNAL \U1|Qs.s4~3_combout\ : std_logic;
SIGNAL \U1|Qs.s4~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s4~2_combout\ : std_logic;
SIGNAL \U1|Qs.s3~1_combout\ : std_logic;
SIGNAL \U1|Qs.s3~3_combout\ : std_logic;
SIGNAL \U1|Qs.s3~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s3~2_combout\ : std_logic;
SIGNAL \U1|Qs.s2~3_combout\ : std_logic;
SIGNAL \U1|Qs.s2~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s2~2_combout\ : std_logic;
SIGNAL \U1|Qs.s1~3_combout\ : std_logic;
SIGNAL \U1|Qs.s1~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s1~2_combout\ : std_logic;
SIGNAL \U1|Qs.s0~3_combout\ : std_logic;
SIGNAL \U1|Qs.s0~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s0~2_combout\ : std_logic;
SIGNAL \U1|Qs.s59~3_combout\ : std_logic;
SIGNAL \U1|Qs.s59~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s59~2_combout\ : std_logic;
SIGNAL \U1|Qs.s58~3_combout\ : std_logic;
SIGNAL \U1|Qs.s58~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s58~2_combout\ : std_logic;
SIGNAL \U1|Qs.s57~3_combout\ : std_logic;
SIGNAL \U1|Qs.s57~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s57~2_combout\ : std_logic;
SIGNAL \U1|Qs.s56~3_combout\ : std_logic;
SIGNAL \U1|Qs.s56~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s56~2_combout\ : std_logic;
SIGNAL \U1|Qs.s55~3_combout\ : std_logic;
SIGNAL \U1|Qs.s55~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s55~2_combout\ : std_logic;
SIGNAL \U1|Qs.s54~3_combout\ : std_logic;
SIGNAL \U1|Qs.s54~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s54~2_combout\ : std_logic;
SIGNAL \U1|Qs.s53~3_combout\ : std_logic;
SIGNAL \U1|Qs.s53~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s53~2_combout\ : std_logic;
SIGNAL \U1|Qs.s52~3_combout\ : std_logic;
SIGNAL \U1|Qs.s52~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s52~2_combout\ : std_logic;
SIGNAL \U1|Qs.s51~1_combout\ : std_logic;
SIGNAL \U1|Qs.s51~3_combout\ : std_logic;
SIGNAL \U1|Qs.s51~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s51~2_combout\ : std_logic;
SIGNAL \U1|Qs.s50~1_combout\ : std_logic;
SIGNAL \U1|Qs.s50~3_combout\ : std_logic;
SIGNAL \U1|Qs.s50~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s50~2_combout\ : std_logic;
SIGNAL \U1|Qs.s49~3_combout\ : std_logic;
SIGNAL \U1|Qs.s49~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s49~2_combout\ : std_logic;
SIGNAL \U1|Qs.s48~3_combout\ : std_logic;
SIGNAL \U1|Qs.s48~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s48~2_combout\ : std_logic;
SIGNAL \U1|Ram0~123_combout\ : std_logic;
SIGNAL \U1|Qs.s47~1_combout\ : std_logic;
SIGNAL \U1|Qs.s47~3_combout\ : std_logic;
SIGNAL \U1|Qs.s47~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s47~2_combout\ : std_logic;
SIGNAL \U1|Qs.s46~3_combout\ : std_logic;
SIGNAL \U1|Qs.s46~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s46~2_combout\ : std_logic;
SIGNAL \U1|Qs.s45~3_combout\ : std_logic;
SIGNAL \U1|Qs.s45~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s45~2_combout\ : std_logic;
SIGNAL \U1|Qs.s44~3_combout\ : std_logic;
SIGNAL \U1|Qs.s44~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s44~2_combout\ : std_logic;
SIGNAL \U1|Qs.s43~3_combout\ : std_logic;
SIGNAL \U1|Qs.s43~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s43~2_combout\ : std_logic;
SIGNAL \U1|Ram0~82_combout\ : std_logic;
SIGNAL \U1|Qs.s42~1_combout\ : std_logic;
SIGNAL \U1|Qs.s42~3_combout\ : std_logic;
SIGNAL \U1|Qs.s42~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s42~2_combout\ : std_logic;
SIGNAL \U1|Qs.s41~3_combout\ : std_logic;
SIGNAL \U1|Qs.s41~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s41~2_combout\ : std_logic;
SIGNAL \U1|Qs.s40~3_combout\ : std_logic;
SIGNAL \U1|Qs.s40~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s40~2_combout\ : std_logic;
SIGNAL \U1|Qs.s39~3_combout\ : std_logic;
SIGNAL \U1|Qs.s39~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s39~2_combout\ : std_logic;
SIGNAL \U1|Qs.s38~3_combout\ : std_logic;
SIGNAL \U1|Qs.s38~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s38~2_combout\ : std_logic;
SIGNAL \U1|Ram0~96_combout\ : std_logic;
SIGNAL \U1|Qs.s37~1_combout\ : std_logic;
SIGNAL \U1|Qs.s37~3_combout\ : std_logic;
SIGNAL \U1|Qs.s37~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s37~2_combout\ : std_logic;
SIGNAL \U1|Qs.s36~3_combout\ : std_logic;
SIGNAL \U1|Qs.s36~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s36~2_combout\ : std_logic;
SIGNAL \U1|Ram0~135_combout\ : std_logic;
SIGNAL \U1|Qs.s35~1_combout\ : std_logic;
SIGNAL \U1|Qs.s35~3_combout\ : std_logic;
SIGNAL \U1|Qs.s35~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s35~2_combout\ : std_logic;
SIGNAL \U1|Qs.s34~3_combout\ : std_logic;
SIGNAL \U1|Qs.s34~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s34~2_combout\ : std_logic;
SIGNAL \U1|Qs.s33~3_combout\ : std_logic;
SIGNAL \U1|Qs.s33~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s33~2_combout\ : std_logic;
SIGNAL \U1|Qs.s32~3_combout\ : std_logic;
SIGNAL \U1|Qs.s32~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s32~2_combout\ : std_logic;
SIGNAL \U1|Qs.s31~3_combout\ : std_logic;
SIGNAL \U1|Qs.s31~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s31~2_combout\ : std_logic;
SIGNAL \U1|Qs.s30~3_combout\ : std_logic;
SIGNAL \U1|Qs.s30~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s30~2_combout\ : std_logic;
SIGNAL \U1|Qs.s29~3_combout\ : std_logic;
SIGNAL \U1|Qs.s29~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s29~2_combout\ : std_logic;
SIGNAL \U1|Qs.s28~3_combout\ : std_logic;
SIGNAL \U1|Qs.s28~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s28~2_combout\ : std_logic;
SIGNAL \U1|Qs.s27~3_combout\ : std_logic;
SIGNAL \U1|Qs.s27~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s27~2_combout\ : std_logic;
SIGNAL \U1|Qs.s26~3_combout\ : std_logic;
SIGNAL \U1|Qs.s26~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s26~2_combout\ : std_logic;
SIGNAL \U1|Qs.s25~3_combout\ : std_logic;
SIGNAL \U1|Qs.s25~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s25~2_combout\ : std_logic;
SIGNAL \U1|Ram0~114_combout\ : std_logic;
SIGNAL \U1|Qs.s24~1_combout\ : std_logic;
SIGNAL \U1|Qs.s24~3_combout\ : std_logic;
SIGNAL \U1|Qs.s24~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s24~2_combout\ : std_logic;
SIGNAL \U1|Qs.s23~3_combout\ : std_logic;
SIGNAL \U1|Qs.s23~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s23~2_combout\ : std_logic;
SIGNAL \U1|Qs.s22~3_combout\ : std_logic;
SIGNAL \U1|Qs.s22~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s22~2_combout\ : std_logic;
SIGNAL \U1|Qs.s21~3_combout\ : std_logic;
SIGNAL \U1|Qs.s21~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s21~2_combout\ : std_logic;
SIGNAL \U1|Qs.s20~3_combout\ : std_logic;
SIGNAL \U1|Qs.s20~_emulatedfeeder_combout\ : std_logic;
SIGNAL \U1|Qs.s20~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s20~2_combout\ : std_logic;
SIGNAL \U1|Qs.s19~3_combout\ : std_logic;
SIGNAL \U1|Qs.s19~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s19~2_combout\ : std_logic;
SIGNAL \U1|Qs.s18~3_combout\ : std_logic;
SIGNAL \U1|Qs.s18~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s18~2_combout\ : std_logic;
SIGNAL \U1|Qs.s17~3_combout\ : std_logic;
SIGNAL \U1|Qs.s17~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s17~2_combout\ : std_logic;
SIGNAL \U1|Qs.s16~3_combout\ : std_logic;
SIGNAL \U1|Qs.s16~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s16~2_combout\ : std_logic;
SIGNAL \U1|Ram0~124_combout\ : std_logic;
SIGNAL \U1|Qs.s15~1_combout\ : std_logic;
SIGNAL \U1|Qs.s15~3_combout\ : std_logic;
SIGNAL \U1|Qs.s15~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s15~2_combout\ : std_logic;
SIGNAL \U1|Ram0~86_combout\ : std_logic;
SIGNAL \U1|Qs.s14~1_combout\ : std_logic;
SIGNAL \U1|Qs.s14~3_combout\ : std_logic;
SIGNAL \U1|Qs.s14~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s14~2_combout\ : std_logic;
SIGNAL \U1|Qs.s13~3_combout\ : std_logic;
SIGNAL \U1|Qs.s13~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s13~2_combout\ : std_logic;
SIGNAL \U1|Qs.s12~3_combout\ : std_logic;
SIGNAL \U1|Qs.s12~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s12~2_combout\ : std_logic;
SIGNAL \U1|Qs.s11~3_combout\ : std_logic;
SIGNAL \U1|Qs.s11~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s11~2_combout\ : std_logic;
SIGNAL \U1|Qs.s10~3_combout\ : std_logic;
SIGNAL \U1|Qs.s10~_emulated_q\ : std_logic;
SIGNAL \U1|Qs.s10~2_combout\ : std_logic;
SIGNAL \U1|WideOr65~1_combout\ : std_logic;
SIGNAL \U1|WideOr63~0_combout\ : std_logic;
SIGNAL \U1|WideOr62~0_combout\ : std_logic;
SIGNAL \U1|WideOr63~1_combout\ : std_logic;
SIGNAL \U1|WideOr63~2_combout\ : std_logic;
SIGNAL \U1|WideOr62~1_combout\ : std_logic;
SIGNAL \U1|WideOr64~5_combout\ : std_logic;
SIGNAL \U1|WideOr62~2_combout\ : std_logic;
SIGNAL \U1|WideOr62~combout\ : std_logic;
SIGNAL \U1|WideOr64~4_combout\ : std_logic;
SIGNAL \U1|WideOr64~0_combout\ : std_logic;
SIGNAL \U1|WideOr63~4_combout\ : std_logic;
SIGNAL \U1|WideOr65~0_combout\ : std_logic;
SIGNAL \U1|WideOr63~3_combout\ : std_logic;
SIGNAL \U1|WideOr63~combout\ : std_logic;
SIGNAL \U1|WideOr64~1_combout\ : std_logic;
SIGNAL \U1|WideOr64~2_combout\ : std_logic;
SIGNAL \U1|WideOr64~3_combout\ : std_logic;
SIGNAL \U1|WideOr65~2_combout\ : std_logic;
SIGNAL \U1|WideOr65~3_combout\ : std_logic;
SIGNAL \U1|WideOr65~combout\ : std_logic;
SIGNAL \U1|WideOr64~6_combout\ : std_logic;
SIGNAL \U1|WideOr64~7_combout\ : std_logic;
SIGNAL \U1|WideOr64~combout\ : std_logic;
SIGNAL \U1|WideOr60~2_combout\ : std_logic;
SIGNAL \U1|WideOr60~4_combout\ : std_logic;
SIGNAL \U1|WideOr60~3_combout\ : std_logic;
SIGNAL \U1|WideOr61~1_combout\ : std_logic;
SIGNAL \U1|WideOr61~2_combout\ : std_logic;
SIGNAL \U1|WideOr60~0_combout\ : std_logic;
SIGNAL \U1|WideOr61~0_combout\ : std_logic;
SIGNAL \U1|WideOr60~1_combout\ : std_logic;
SIGNAL \U1|WideOr60~combout\ : std_logic;
SIGNAL \U1|WideOr61~5_combout\ : std_logic;
SIGNAL \U1|WideOr61~6_combout\ : std_logic;
SIGNAL \U1|WideOr61~7_combout\ : std_logic;
SIGNAL \U1|WideOr61~3_combout\ : std_logic;
SIGNAL \U1|WideOr61~4_combout\ : std_logic;
SIGNAL \U1|WideOr61~combout\ : std_logic;
SIGNAL \N~0_combout\ : std_logic;
SIGNAL \N~1_combout\ : std_logic;
SIGNAL \E~0_combout\ : std_logic;
SIGNAL \U5|Qs.s23~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s23~2_combout\ : std_logic;
SIGNAL \U5|Qs.s22~3_combout\ : std_logic;
SIGNAL \U5|Qs.s22~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s22~2_combout\ : std_logic;
SIGNAL \U5|Qs.s21~3_combout\ : std_logic;
SIGNAL \U5|Qs.s21~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s21~2_combout\ : std_logic;
SIGNAL \U5|Qs.s20~3_combout\ : std_logic;
SIGNAL \U5|Qs.s20~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s20~2_combout\ : std_logic;
SIGNAL \U5|Qs.s19~1_combout\ : std_logic;
SIGNAL \U5|Qs.s19~3_combout\ : std_logic;
SIGNAL \U5|Qs.s19~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s19~2_combout\ : std_logic;
SIGNAL \U5|Qs.s18~3_combout\ : std_logic;
SIGNAL \U5|Qs.s18~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s18~2_combout\ : std_logic;
SIGNAL \U5|Qs.s17~3_combout\ : std_logic;
SIGNAL \U5|Qs.s17~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s17~2_combout\ : std_logic;
SIGNAL \U5|Qs.s16~3_combout\ : std_logic;
SIGNAL \U5|Qs.s16~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s16~2_combout\ : std_logic;
SIGNAL \U5|Qs.s15~3_combout\ : std_logic;
SIGNAL \U5|Qs.s15~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s15~2_combout\ : std_logic;
SIGNAL \U5|Mux7~2_combout\ : std_logic;
SIGNAL \U5|Mux7~14_combout\ : std_logic;
SIGNAL \U5|Qs.s14~1_combout\ : std_logic;
SIGNAL \U5|Qs.s14~3_combout\ : std_logic;
SIGNAL \U5|Qs.s14~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s14~2_combout\ : std_logic;
SIGNAL \U5|Mux7~3_combout\ : std_logic;
SIGNAL \U5|Mux7~29_combout\ : std_logic;
SIGNAL \U5|Qs.s11~1_combout\ : std_logic;
SIGNAL \U5|Mux7~8_combout\ : std_logic;
SIGNAL \U5|Mux7~13_combout\ : std_logic;
SIGNAL \U5|Qs.s12~1_combout\ : std_logic;
SIGNAL \U5|Mux7~17_combout\ : std_logic;
SIGNAL \U5|Mux7~19_combout\ : std_logic;
SIGNAL \U5|Qs.s13~1_combout\ : std_logic;
SIGNAL \U5|Qs.s13~3_combout\ : std_logic;
SIGNAL \U5|Qs.s13~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s13~2_combout\ : std_logic;
SIGNAL \U5|Qs.s12~3_combout\ : std_logic;
SIGNAL \U5|Qs.s12~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s12~2_combout\ : std_logic;
SIGNAL \U5|Qs.s11~3_combout\ : std_logic;
SIGNAL \U5|Qs.s11~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s11~2_combout\ : std_logic;
SIGNAL \U5|Qs.s10~1_combout\ : std_logic;
SIGNAL \U5|Qs.s10~3_combout\ : std_logic;
SIGNAL \U5|Qs.s10~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s10~2_combout\ : std_logic;
SIGNAL \U5|WideOr24~0_combout\ : std_logic;
SIGNAL \U5|Mux7~18_combout\ : std_logic;
SIGNAL \U5|Qs.s9~1_combout\ : std_logic;
SIGNAL \U5|Qs.s9~3_combout\ : std_logic;
SIGNAL \U5|Qs.s9~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s9~2_combout\ : std_logic;
SIGNAL \U5|Mux7~9_combout\ : std_logic;
SIGNAL \U5|Qs.s8~1_combout\ : std_logic;
SIGNAL \U5|Qs.s8~3_combout\ : std_logic;
SIGNAL \U5|Qs.s8~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s8~2_combout\ : std_logic;
SIGNAL \U5|WideOr26~0_combout\ : std_logic;
SIGNAL \U5|WideOr23~0_combout\ : std_logic;
SIGNAL \U5|WideOr26~1_combout\ : std_logic;
SIGNAL \L~0_combout\ : std_logic;
SIGNAL \U5|Mux0~0_combout\ : std_logic;
SIGNAL \U5|Mux0~1_combout\ : std_logic;
SIGNAL \U5|Mux0~2_combout\ : std_logic;
SIGNAL \U5|Qs.s0~1_combout\ : std_logic;
SIGNAL \U5|Mux7~23_combout\ : std_logic;
SIGNAL \U5|Mux7~24_combout\ : std_logic;
SIGNAL \U5|Qs.s1~1_combout\ : std_logic;
SIGNAL \U5|Mux7~6_combout\ : std_logic;
SIGNAL \U5|Mux7~7_combout\ : std_logic;
SIGNAL \U5|Qs.s2~1_combout\ : std_logic;
SIGNAL \U5|Mux7~26_combout\ : std_logic;
SIGNAL \U5|Mux7~27_combout\ : std_logic;
SIGNAL \U5|Qs.s3~1_combout\ : std_logic;
SIGNAL \U5|Mux7~10_combout\ : std_logic;
SIGNAL \U5|Mux7~11_combout\ : std_logic;
SIGNAL \U5|Qs.s4~1_combout\ : std_logic;
SIGNAL \U5|Mux7~25_combout\ : std_logic;
SIGNAL \U5|Qs.s5~1_combout\ : std_logic;
SIGNAL \U5|Mux7~12_combout\ : std_logic;
SIGNAL \U5|Qs.s6~1_combout\ : std_logic;
SIGNAL \U5|Mux7~34_combout\ : std_logic;
SIGNAL \U5|Qs.s7~1_combout\ : std_logic;
SIGNAL \U5|Qs.s7~3_combout\ : std_logic;
SIGNAL \U5|Qs.s7~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s7~2_combout\ : std_logic;
SIGNAL \U5|Qs.s6~3_combout\ : std_logic;
SIGNAL \U5|Qs.s6~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s6~2_combout\ : std_logic;
SIGNAL \U5|Qs.s5~3_combout\ : std_logic;
SIGNAL \U5|Qs.s5~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s5~2_combout\ : std_logic;
SIGNAL \U5|Qs.s4~3_combout\ : std_logic;
SIGNAL \U5|Qs.s4~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s4~2_combout\ : std_logic;
SIGNAL \U5|Qs.s3~3_combout\ : std_logic;
SIGNAL \U5|Qs.s3~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s3~2_combout\ : std_logic;
SIGNAL \U5|Qs.s2~3_combout\ : std_logic;
SIGNAL \U5|Qs.s2~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s2~2_combout\ : std_logic;
SIGNAL \U5|Qs.s1~3_combout\ : std_logic;
SIGNAL \U5|Qs.s1~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s1~2_combout\ : std_logic;
SIGNAL \U5|Qs.s0~3_combout\ : std_logic;
SIGNAL \U5|Qs.s0~_emulated_q\ : std_logic;
SIGNAL \U5|Qs.s0~2_combout\ : std_logic;
SIGNAL \U5|WideOr26~2_combout\ : std_logic;
SIGNAL \U5|WideOr27~0_combout\ : std_logic;
SIGNAL \U5|WideOr25~0_combout\ : std_logic;
SIGNAL \U5|WideOr25~1_combout\ : std_logic;
SIGNAL \U5|WideOr27~1_combout\ : std_logic;
SIGNAL \U5|WideOr25~2_combout\ : std_logic;
SIGNAL \U5|WideOr25~3_combout\ : std_logic;
SIGNAL \L~1_combout\ : std_logic;
SIGNAL \L~4_combout\ : std_logic;
SIGNAL \D~0_combout\ : std_logic;
SIGNAL \U3|Qs.s42~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s42~2_combout\ : std_logic;
SIGNAL \U3|Qs.s41~3_combout\ : std_logic;
SIGNAL \U3|Qs.s41~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s41~2_combout\ : std_logic;
SIGNAL \U3|Qs.s40~3_combout\ : std_logic;
SIGNAL \U3|Qs.s40~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s40~2_combout\ : std_logic;
SIGNAL \U3|Qs.s39~3_combout\ : std_logic;
SIGNAL \U3|Qs.s39~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s39~2_combout\ : std_logic;
SIGNAL \U3|Qs.s38~3_combout\ : std_logic;
SIGNAL \U3|Qs.s38~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s38~2_combout\ : std_logic;
SIGNAL \U3|Qs.s37~3_combout\ : std_logic;
SIGNAL \U3|Qs.s37~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s37~2_combout\ : std_logic;
SIGNAL \U3|Qs.s36~3_combout\ : std_logic;
SIGNAL \U3|Qs.s36~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s36~2_combout\ : std_logic;
SIGNAL \U3|Qs.s35~3_combout\ : std_logic;
SIGNAL \U3|Qs.s35~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s35~2_combout\ : std_logic;
SIGNAL \U3|Qs.s34~3_combout\ : std_logic;
SIGNAL \U3|Qs.s34~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s34~2_combout\ : std_logic;
SIGNAL \U3|Qs.s33~3_combout\ : std_logic;
SIGNAL \U3|Qs.s33~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s33~2_combout\ : std_logic;
SIGNAL \U3|Qs.s32~3_combout\ : std_logic;
SIGNAL \U3|Qs.s32~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s32~2_combout\ : std_logic;
SIGNAL \U3|Qs.s31~3_combout\ : std_logic;
SIGNAL \U3|Qs.s31~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s31~2_combout\ : std_logic;
SIGNAL \U3|Qs.s30~3_combout\ : std_logic;
SIGNAL \U3|Qs.s30~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s30~2_combout\ : std_logic;
SIGNAL \U3|Qs.s29~3_combout\ : std_logic;
SIGNAL \U3|Qs.s29~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s29~2_combout\ : std_logic;
SIGNAL \U3|Qs.s28~3_combout\ : std_logic;
SIGNAL \U3|Qs.s28~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s28~2_combout\ : std_logic;
SIGNAL \U3|Qs.s27~3_combout\ : std_logic;
SIGNAL \U3|Qs.s27~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s27~2_combout\ : std_logic;
SIGNAL \U3|Qs.s26~3_combout\ : std_logic;
SIGNAL \U3|Qs.s26~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s26~2_combout\ : std_logic;
SIGNAL \U3|Qs.s25~3_combout\ : std_logic;
SIGNAL \U3|Qs.s25~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s25~2_combout\ : std_logic;
SIGNAL \U3|Qs.s24~3_combout\ : std_logic;
SIGNAL \U3|Qs.s24~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s24~2_combout\ : std_logic;
SIGNAL \U3|Qs.s23~3_combout\ : std_logic;
SIGNAL \U3|Qs.s23~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s23~2_combout\ : std_logic;
SIGNAL \U3|Qs.s22~3_combout\ : std_logic;
SIGNAL \U3|Qs.s22~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s22~2_combout\ : std_logic;
SIGNAL \U3|Qs.s21~3_combout\ : std_logic;
SIGNAL \U3|Qs.s21~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s21~2_combout\ : std_logic;
SIGNAL \U3|Qs.s20~3_combout\ : std_logic;
SIGNAL \U3|Qs.s20~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s20~2_combout\ : std_logic;
SIGNAL \U3|Qs.s19~3_combout\ : std_logic;
SIGNAL \U3|Qs.s19~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s19~2_combout\ : std_logic;
SIGNAL \U3|Ram0~158_combout\ : std_logic;
SIGNAL \U3|Qs.s18~1_combout\ : std_logic;
SIGNAL \U3|Qs.s18~3_combout\ : std_logic;
SIGNAL \U3|Qs.s18~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s18~2_combout\ : std_logic;
SIGNAL \U3|Qs.s17~3_combout\ : std_logic;
SIGNAL \U3|Qs.s17~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s17~2_combout\ : std_logic;
SIGNAL \U3|Qs.s16~3_combout\ : std_logic;
SIGNAL \U3|Qs.s16~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s16~2_combout\ : std_logic;
SIGNAL \U3|Qs.s15~3_combout\ : std_logic;
SIGNAL \U3|Qs.s15~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s15~2_combout\ : std_logic;
SIGNAL \U3|Qs.s14~3_combout\ : std_logic;
SIGNAL \U3|Qs.s14~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s14~2_combout\ : std_logic;
SIGNAL \U3|Qs.s13~3_combout\ : std_logic;
SIGNAL \U3|Qs.s13~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s13~2_combout\ : std_logic;
SIGNAL \U3|Qs.s12~3_combout\ : std_logic;
SIGNAL \U3|Qs.s12~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s12~2_combout\ : std_logic;
SIGNAL \U3|Qs.s11~3_combout\ : std_logic;
SIGNAL \U3|Qs.s11~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s11~2_combout\ : std_logic;
SIGNAL \U3|Qs.s10~3_combout\ : std_logic;
SIGNAL \U3|Qs.s10~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s10~2_combout\ : std_logic;
SIGNAL \U3|Qs.s9~3_combout\ : std_logic;
SIGNAL \U3|Qs.s9~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s9~2_combout\ : std_logic;
SIGNAL \U3|Qs.s8~3_combout\ : std_logic;
SIGNAL \U3|Qs.s8~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s8~2_combout\ : std_logic;
SIGNAL \U3|Qs.s7~3_combout\ : std_logic;
SIGNAL \U3|Qs.s7~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s7~2_combout\ : std_logic;
SIGNAL \U3|Qs.s6~3_combout\ : std_logic;
SIGNAL \U3|Qs.s6~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s6~2_combout\ : std_logic;
SIGNAL \U3|Qs.s5~3_combout\ : std_logic;
SIGNAL \U3|Qs.s5~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s5~2_combout\ : std_logic;
SIGNAL \U3|Qs.s4~3_combout\ : std_logic;
SIGNAL \U3|Qs.s4~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s4~2_combout\ : std_logic;
SIGNAL \U3|Qs.s3~3_combout\ : std_logic;
SIGNAL \U3|Qs.s3~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s3~2_combout\ : std_logic;
SIGNAL \U3|Qs.s2~3_combout\ : std_logic;
SIGNAL \U3|Qs.s2~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s2~2_combout\ : std_logic;
SIGNAL \U3|Ram0~169_combout\ : std_logic;
SIGNAL \U3|Qs.s1~1_combout\ : std_logic;
SIGNAL \U3|Qs.s1~3_combout\ : std_logic;
SIGNAL \U3|Qs.s1~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s1~2_combout\ : std_logic;
SIGNAL \U3|Qs.s0~3_combout\ : std_logic;
SIGNAL \U3|Qs.s0~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s0~2_combout\ : std_logic;
SIGNAL \U3|Qs.s59~3_combout\ : std_logic;
SIGNAL \U3|Qs.s59~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s59~2_combout\ : std_logic;
SIGNAL \U3|Qs.s58~3_combout\ : std_logic;
SIGNAL \U3|Qs.s58~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s58~2_combout\ : std_logic;
SIGNAL \U3|Qs.s57~3_combout\ : std_logic;
SIGNAL \U3|Qs.s57~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s57~2_combout\ : std_logic;
SIGNAL \U3|Qs.s56~3_combout\ : std_logic;
SIGNAL \U3|Qs.s56~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s56~2_combout\ : std_logic;
SIGNAL \U3|Qs.s55~3_combout\ : std_logic;
SIGNAL \U3|Qs.s55~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s55~2_combout\ : std_logic;
SIGNAL \U3|Qs.s54~3_combout\ : std_logic;
SIGNAL \U3|Qs.s54~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s54~2_combout\ : std_logic;
SIGNAL \U3|Qs.s53~3_combout\ : std_logic;
SIGNAL \U3|Qs.s53~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s53~2_combout\ : std_logic;
SIGNAL \U3|Qs.s52~3_combout\ : std_logic;
SIGNAL \U3|Qs.s52~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s52~2_combout\ : std_logic;
SIGNAL \U3|Ram0~184_combout\ : std_logic;
SIGNAL \U3|Qs.s51~1_combout\ : std_logic;
SIGNAL \U3|Qs.s51~3_combout\ : std_logic;
SIGNAL \U3|Qs.s51~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s51~2_combout\ : std_logic;
SIGNAL \U3|Qs.s50~3_combout\ : std_logic;
SIGNAL \U3|Qs.s50~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s50~2_combout\ : std_logic;
SIGNAL \U3|Qs.s49~3_combout\ : std_logic;
SIGNAL \U3|Qs.s49~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s49~2_combout\ : std_logic;
SIGNAL \U3|Qs.s48~3_combout\ : std_logic;
SIGNAL \U3|Qs.s48~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s48~2_combout\ : std_logic;
SIGNAL \U3|Qs.s47~3_combout\ : std_logic;
SIGNAL \U3|Qs.s47~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s47~2_combout\ : std_logic;
SIGNAL \U3|Qs.s46~3_combout\ : std_logic;
SIGNAL \U3|Qs.s46~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s46~2_combout\ : std_logic;
SIGNAL \U3|Qs.s45~3_combout\ : std_logic;
SIGNAL \U3|Qs.s45~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s45~2_combout\ : std_logic;
SIGNAL \U3|Qs.s44~3_combout\ : std_logic;
SIGNAL \U3|Qs.s44~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s44~2_combout\ : std_logic;
SIGNAL \U3|Qs.s43~3_combout\ : std_logic;
SIGNAL \U3|Qs.s43~_emulated_q\ : std_logic;
SIGNAL \U3|Qs.s43~2_combout\ : std_logic;
SIGNAL \U3|WideOr62~2_combout\ : std_logic;
SIGNAL \U3|WideOr62~1_combout\ : std_logic;
SIGNAL \U3|WideOr62~combout\ : std_logic;
SIGNAL \L~2_combout\ : std_logic;
SIGNAL \L~3_combout\ : std_logic;
SIGNAL \U0|WideOr60~5_combout\ : std_logic;
SIGNAL \U10:5:H60|G3|O0~2_combout\ : std_logic;
SIGNAL \U10:2:H60|G3|O0~0_combout\ : std_logic;
SIGNAL \U0|WideOr64~6_combout\ : std_logic;
SIGNAL \U10:1:H60|G3|O0~0_combout\ : std_logic;
SIGNAL \U10:1:H60|G3|O0~1_combout\ : std_logic;
SIGNAL \U10:3:H60|G3|O0~0_combout\ : std_logic;
SIGNAL \F0|Ram0~1_combout\ : std_logic;
SIGNAL \U10:4:H60|G3|O0~0_combout\ : std_logic;
SIGNAL \F0|Ram0~0_combout\ : std_logic;
SIGNAL \F0|Ram0~2_combout\ : std_logic;
SIGNAL \F0|Ram0~7_combout\ : std_logic;
SIGNAL \F0|Ram0~6_combout\ : std_logic;
SIGNAL \F0|Ram0~8_combout\ : std_logic;
SIGNAL \U10:0:H60|G3|O0~0_combout\ : std_logic;
SIGNAL \F0|Ram0~4_combout\ : std_logic;
SIGNAL \F0|Ram0~3_combout\ : std_logic;
SIGNAL \F0|Ram0~5_combout\ : std_logic;
SIGNAL \F3|OR1|O0~0_combout\ : std_logic;
SIGNAL \F3|OR2|O0~0_combout\ : std_logic;
SIGNAL \F3|U0:2:AN9|O0~0_combout\ : std_logic;
SIGNAL \F3|OR3|O0~combout\ : std_logic;
SIGNAL \F3|OR6|O0~0_combout\ : std_logic;
SIGNAL \F3|OR10|O0~0_combout\ : std_logic;
SIGNAL \F3|OR12|O0~combout\ : std_logic;
SIGNAL \F0|Ram0~10_combout\ : std_logic;
SIGNAL \F0|Ram0~11_combout\ : std_logic;
SIGNAL \F0|Ram0~12_combout\ : std_logic;
SIGNAL \F0|Ram0~13_combout\ : std_logic;
SIGNAL \F0|Ram0~9_combout\ : std_logic;
SIGNAL \F4|OR1|O0~0_combout\ : std_logic;
SIGNAL \F4|OR2|O0~0_combout\ : std_logic;
SIGNAL \F4|U0:2:AN9|O0~0_combout\ : std_logic;
SIGNAL \F4|OR3|O0~combout\ : std_logic;
SIGNAL \F4|OR6|O0~0_combout\ : std_logic;
SIGNAL \F4|OR10|O0~0_combout\ : std_logic;
SIGNAL \F4|OR12|O0~0_combout\ : std_logic;
SIGNAL \U10:0:H61|G3|O0~0_combout\ : std_logic;
SIGNAL \U10:5:H61|G3|O0~2_combout\ : std_logic;
SIGNAL \U10:2:H61|G3|O0~0_combout\ : std_logic;
SIGNAL \U10:3:H61|G3|O0~0_combout\ : std_logic;
SIGNAL \U10:1:H61|G3|O0~0_combout\ : std_logic;
SIGNAL \F1|Ram0~0_combout\ : std_logic;
SIGNAL \U10:4:H61|G3|O0~0_combout\ : std_logic;
SIGNAL \F1|Ram0~1_combout\ : std_logic;
SIGNAL \F1|Ram0~2_combout\ : std_logic;
SIGNAL \F1|Ram0~7_combout\ : std_logic;
SIGNAL \F1|Ram0~6_combout\ : std_logic;
SIGNAL \F1|Ram0~8_combout\ : std_logic;
SIGNAL \F1|Ram0~3_combout\ : std_logic;
SIGNAL \F1|Ram0~4_combout\ : std_logic;
SIGNAL \F1|Ram0~5_combout\ : std_logic;
SIGNAL \F5|OR1|O0~0_combout\ : std_logic;
SIGNAL \F5|OR2|O0~0_combout\ : std_logic;
SIGNAL \F5|U0:2:AN9|O0~0_combout\ : std_logic;
SIGNAL \F5|OR3|O0~combout\ : std_logic;
SIGNAL \F5|OR6|O0~0_combout\ : std_logic;
SIGNAL \F5|OR10|O0~0_combout\ : std_logic;
SIGNAL \F5|OR12|O0~combout\ : std_logic;
SIGNAL \F1|Ram0~10_combout\ : std_logic;
SIGNAL \F1|Ram0~12_combout\ : std_logic;
SIGNAL \F1|Ram0~11_combout\ : std_logic;
SIGNAL \F1|Ram0~13_combout\ : std_logic;
SIGNAL \F1|Ram0~9_combout\ : std_logic;
SIGNAL \F6|OR1|O0~0_combout\ : std_logic;
SIGNAL \F6|OR2|O0~0_combout\ : std_logic;
SIGNAL \F6|U0:2:AN9|O0~0_combout\ : std_logic;
SIGNAL \F6|OR3|O0~combout\ : std_logic;
SIGNAL \F6|OR6|O0~0_combout\ : std_logic;
SIGNAL \F6|OR10|O0~0_combout\ : std_logic;
SIGNAL \F6|OR12|O0~0_combout\ : std_logic;
SIGNAL \U10:3:H62|G3|O0~0_combout\ : std_logic;
SIGNAL \U10:2:H62|G3|O0~0_combout\ : std_logic;
SIGNAL \U10:1:H62|G3|O0~0_combout\ : std_logic;
SIGNAL \U10:1:H62|G3|O0~1_combout\ : std_logic;
SIGNAL \U10:5:H62|G0|O0~combout\ : std_logic;
SIGNAL \F2|Ram0~0_combout\ : std_logic;
SIGNAL \F2|Ram0~1_combout\ : std_logic;
SIGNAL \U10:4:H62|G3|O0~0_combout\ : std_logic;
SIGNAL \F2|Ram0~2_combout\ : std_logic;
SIGNAL \F2|Ram0~4_combout\ : std_logic;
SIGNAL \F2|Ram0~3_combout\ : std_logic;
SIGNAL \F2|Ram0~5_combout\ : std_logic;
SIGNAL \F2|Ram0~6_combout\ : std_logic;
SIGNAL \F2|Ram0~7_combout\ : std_logic;
SIGNAL \F2|Ram0~8_combout\ : std_logic;
SIGNAL \U10:0:H62|G3|O0~0_combout\ : std_logic;
SIGNAL \F7|OR1|O0~0_combout\ : std_logic;
SIGNAL \F7|OR2|O0~0_combout\ : std_logic;
SIGNAL \F7|U0:2:AN9|O0~0_combout\ : std_logic;
SIGNAL \F7|OR3|O0~combout\ : std_logic;
SIGNAL \F7|OR6|O0~0_combout\ : std_logic;
SIGNAL \F7|OR10|O0~0_combout\ : std_logic;
SIGNAL \F7|OR12|O0~combout\ : std_logic;
SIGNAL \F2|Ram0~10_combout\ : std_logic;
SIGNAL \F2|Ram0~11_combout\ : std_logic;
SIGNAL \F2|Ram0~12_combout\ : std_logic;
SIGNAL \F2|Ram0~13_combout\ : std_logic;
SIGNAL \F2|Ram0~9_combout\ : std_logic;
SIGNAL \F8|OR1|O0~0_combout\ : std_logic;
SIGNAL \F8|OR2|O0~0_combout\ : std_logic;
SIGNAL \F8|U0:2:AN9|O0~combout\ : std_logic;
SIGNAL \F8|OR3|O0~combout\ : std_logic;
SIGNAL \F8|OR6|O0~0_combout\ : std_logic;
SIGNAL \F8|OR10|O0~0_combout\ : std_logic;
SIGNAL \F8|OR12|O0~0_combout\ : std_logic;
SIGNAL \U5|CLKDIV|CNT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_L~3_combout\ : std_logic;
SIGNAL \F8|OR1|ALT_INV_O0~0_combout\ : std_logic;
SIGNAL \F6|OR1|ALT_INV_O0~0_combout\ : std_logic;
SIGNAL \F4|OR1|ALT_INV_O0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_RS <= RS;
ww_S <= S;
ww_M <= M;
ww_H <= H;
ww_K <= K;
ww_R <= R;
H0 <= ww_H0;
H1 <= ww_H1;
H2 <= ww_H2;
H3 <= ww_H3;
H4 <= ww_H4;
H5 <= ww_H5;
BUZZER <= ww_BUZZER;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\U1|CLKDIV|TEMP~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|CLKDIV|TEMP~q\);

\U3|CLKDIV|TEMP~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U3|CLKDIV|TEMP~q\);

\U4|CLKDIV|TEMP~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U4|CLKDIV|TEMP~q\);

\U5|CLKDIV|TEMP~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U5|CLKDIV|TEMP~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_L~3_combout\ <= NOT \L~3_combout\;
\F8|OR1|ALT_INV_O0~0_combout\ <= NOT \F8|OR1|O0~0_combout\;
\F6|OR1|ALT_INV_O0~0_combout\ <= NOT \F6|OR1|O0~0_combout\;
\F4|OR1|ALT_INV_O0~0_combout\ <= NOT \F4|OR1|O0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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

-- Location: IOOBUF_X46_Y54_N2
\Y~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_L~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \Y~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\H0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F3|OR1|O0~0_combout\,
	devoe => ww_devoe,
	o => \H0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\H0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F3|OR2|O0~0_combout\,
	devoe => ww_devoe,
	o => \H0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\H0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F3|U0:2:AN9|O0~0_combout\,
	devoe => ww_devoe,
	o => \H0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\H0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F3|OR3|O0~combout\,
	devoe => ww_devoe,
	o => \H0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\H0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F3|OR6|O0~0_combout\,
	devoe => ww_devoe,
	o => \H0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\H0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F3|OR10|O0~0_combout\,
	devoe => ww_devoe,
	o => \H0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\H0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F3|OR12|O0~combout\,
	devoe => ww_devoe,
	o => \H0[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\H1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F4|OR1|ALT_INV_O0~0_combout\,
	devoe => ww_devoe,
	o => \H1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\H1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F4|OR2|O0~0_combout\,
	devoe => ww_devoe,
	o => \H1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\H1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F4|U0:2:AN9|O0~0_combout\,
	devoe => ww_devoe,
	o => \H1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\H1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F4|OR3|O0~combout\,
	devoe => ww_devoe,
	o => \H1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\H1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F4|OR6|O0~0_combout\,
	devoe => ww_devoe,
	o => \H1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\H1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F4|OR10|O0~0_combout\,
	devoe => ww_devoe,
	o => \H1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\H1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F4|OR12|O0~0_combout\,
	devoe => ww_devoe,
	o => \H1[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\H2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F5|OR1|O0~0_combout\,
	devoe => ww_devoe,
	o => \H2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\H2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F5|OR2|O0~0_combout\,
	devoe => ww_devoe,
	o => \H2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\H2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F5|U0:2:AN9|O0~0_combout\,
	devoe => ww_devoe,
	o => \H2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\H2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F5|OR3|O0~combout\,
	devoe => ww_devoe,
	o => \H2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\H2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F5|OR6|O0~0_combout\,
	devoe => ww_devoe,
	o => \H2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\H2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F5|OR10|O0~0_combout\,
	devoe => ww_devoe,
	o => \H2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\H2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F5|OR12|O0~combout\,
	devoe => ww_devoe,
	o => \H2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\H3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F6|OR1|ALT_INV_O0~0_combout\,
	devoe => ww_devoe,
	o => \H3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\H3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F6|OR2|O0~0_combout\,
	devoe => ww_devoe,
	o => \H3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\H3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F6|U0:2:AN9|O0~0_combout\,
	devoe => ww_devoe,
	o => \H3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\H3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F6|OR3|O0~combout\,
	devoe => ww_devoe,
	o => \H3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\H3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F6|OR6|O0~0_combout\,
	devoe => ww_devoe,
	o => \H3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\H3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F6|OR10|O0~0_combout\,
	devoe => ww_devoe,
	o => \H3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\H3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F6|OR12|O0~0_combout\,
	devoe => ww_devoe,
	o => \H3[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\H4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F7|OR1|O0~0_combout\,
	devoe => ww_devoe,
	o => \H4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\H4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F7|OR2|O0~0_combout\,
	devoe => ww_devoe,
	o => \H4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\H4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F7|U0:2:AN9|O0~0_combout\,
	devoe => ww_devoe,
	o => \H4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\H4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F7|OR3|O0~combout\,
	devoe => ww_devoe,
	o => \H4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\H4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F7|OR6|O0~0_combout\,
	devoe => ww_devoe,
	o => \H4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\H4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F7|OR10|O0~0_combout\,
	devoe => ww_devoe,
	o => \H4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\H4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F7|OR12|O0~combout\,
	devoe => ww_devoe,
	o => \H4[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\H5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F8|OR1|ALT_INV_O0~0_combout\,
	devoe => ww_devoe,
	o => \H5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\H5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F8|OR2|O0~0_combout\,
	devoe => ww_devoe,
	o => \H5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\H5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F8|U0:2:AN9|O0~combout\,
	devoe => ww_devoe,
	o => \H5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\H5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F8|OR3|O0~combout\,
	devoe => ww_devoe,
	o => \H5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\H5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F8|OR6|O0~0_combout\,
	devoe => ww_devoe,
	o => \H5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\H5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F8|OR10|O0~0_combout\,
	devoe => ww_devoe,
	o => \H5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\H5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \F8|OR12|O0~0_combout\,
	devoe => ww_devoe,
	o => \H5[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\BUZZER~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_L~3_combout\,
	devoe => ww_devoe,
	o => \BUZZER~output_o\);

-- Location: IOIBUF_X51_Y54_N22
\RS~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS,
	o => \RS~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X43_Y3_N14
\U4|CLKDIV|TEMP~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|CLKDIV|TEMP~0_combout\ = !\U4|CLKDIV|TEMP~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CLKDIV|TEMP~q\,
	combout => \U4|CLKDIV|TEMP~0_combout\);

-- Location: LCCOMB_X41_Y3_N0
\U5|CLKDIV|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~0_combout\ = \U5|CLKDIV|CNT\(0) $ (VCC)
-- \U5|CLKDIV|Add0~1\ = CARRY(\U5|CLKDIV|CNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(0),
	datad => VCC,
	combout => \U5|CLKDIV|Add0~0_combout\,
	cout => \U5|CLKDIV|Add0~1\);

-- Location: LCCOMB_X42_Y3_N14
\U5|CLKDIV|CNT~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|CNT~12_combout\ = (\U5|CLKDIV|Add0~0_combout\ & !\U4|CLKDIV|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|CLKDIV|Add0~0_combout\,
	datad => \U4|CLKDIV|Equal0~10_combout\,
	combout => \U5|CLKDIV|CNT~12_combout\);

-- Location: FF_X41_Y3_N27
\U5|CLKDIV|CNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U5|CLKDIV|CNT~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(0));

-- Location: LCCOMB_X41_Y3_N2
\U5|CLKDIV|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~2_combout\ = (\U5|CLKDIV|CNT\(1) & (!\U5|CLKDIV|Add0~1\)) # (!\U5|CLKDIV|CNT\(1) & ((\U5|CLKDIV|Add0~1\) # (GND)))
-- \U5|CLKDIV|Add0~3\ = CARRY((!\U5|CLKDIV|Add0~1\) # (!\U5|CLKDIV|CNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|CLKDIV|CNT\(1),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~1\,
	combout => \U5|CLKDIV|Add0~2_combout\,
	cout => \U5|CLKDIV|Add0~3\);

-- Location: FF_X41_Y3_N3
\U5|CLKDIV|CNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(1));

-- Location: LCCOMB_X41_Y3_N4
\U5|CLKDIV|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~4_combout\ = (\U5|CLKDIV|CNT\(2) & (\U5|CLKDIV|Add0~3\ $ (GND))) # (!\U5|CLKDIV|CNT\(2) & (!\U5|CLKDIV|Add0~3\ & VCC))
-- \U5|CLKDIV|Add0~5\ = CARRY((\U5|CLKDIV|CNT\(2) & !\U5|CLKDIV|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|CLKDIV|CNT\(2),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~3\,
	combout => \U5|CLKDIV|Add0~4_combout\,
	cout => \U5|CLKDIV|Add0~5\);

-- Location: FF_X41_Y3_N5
\U5|CLKDIV|CNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(2));

-- Location: LCCOMB_X41_Y3_N6
\U5|CLKDIV|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~6_combout\ = (\U5|CLKDIV|CNT\(3) & (!\U5|CLKDIV|Add0~5\)) # (!\U5|CLKDIV|CNT\(3) & ((\U5|CLKDIV|Add0~5\) # (GND)))
-- \U5|CLKDIV|Add0~7\ = CARRY((!\U5|CLKDIV|Add0~5\) # (!\U5|CLKDIV|CNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(3),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~5\,
	combout => \U5|CLKDIV|Add0~6_combout\,
	cout => \U5|CLKDIV|Add0~7\);

-- Location: FF_X41_Y3_N7
\U5|CLKDIV|CNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(3));

-- Location: LCCOMB_X41_Y3_N8
\U5|CLKDIV|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~8_combout\ = (\U5|CLKDIV|CNT\(4) & (\U5|CLKDIV|Add0~7\ $ (GND))) # (!\U5|CLKDIV|CNT\(4) & (!\U5|CLKDIV|Add0~7\ & VCC))
-- \U5|CLKDIV|Add0~9\ = CARRY((\U5|CLKDIV|CNT\(4) & !\U5|CLKDIV|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|CLKDIV|CNT\(4),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~7\,
	combout => \U5|CLKDIV|Add0~8_combout\,
	cout => \U5|CLKDIV|Add0~9\);

-- Location: FF_X41_Y3_N9
\U5|CLKDIV|CNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(4));

-- Location: LCCOMB_X41_Y3_N10
\U5|CLKDIV|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~10_combout\ = (\U5|CLKDIV|CNT\(5) & (!\U5|CLKDIV|Add0~9\)) # (!\U5|CLKDIV|CNT\(5) & ((\U5|CLKDIV|Add0~9\) # (GND)))
-- \U5|CLKDIV|Add0~11\ = CARRY((!\U5|CLKDIV|Add0~9\) # (!\U5|CLKDIV|CNT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(5),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~9\,
	combout => \U5|CLKDIV|Add0~10_combout\,
	cout => \U5|CLKDIV|Add0~11\);

-- Location: FF_X41_Y3_N11
\U5|CLKDIV|CNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(5));

-- Location: LCCOMB_X41_Y3_N12
\U5|CLKDIV|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~12_combout\ = (\U5|CLKDIV|CNT\(6) & (\U5|CLKDIV|Add0~11\ $ (GND))) # (!\U5|CLKDIV|CNT\(6) & (!\U5|CLKDIV|Add0~11\ & VCC))
-- \U5|CLKDIV|Add0~13\ = CARRY((\U5|CLKDIV|CNT\(6) & !\U5|CLKDIV|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(6),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~11\,
	combout => \U5|CLKDIV|Add0~12_combout\,
	cout => \U5|CLKDIV|Add0~13\);

-- Location: LCCOMB_X42_Y3_N8
\U5|CLKDIV|CNT~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|CNT~11_combout\ = (\U5|CLKDIV|Add0~12_combout\ & !\U4|CLKDIV|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|Add0~12_combout\,
	datad => \U4|CLKDIV|Equal0~10_combout\,
	combout => \U5|CLKDIV|CNT~11_combout\);

-- Location: FF_X41_Y3_N13
\U5|CLKDIV|CNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U5|CLKDIV|CNT~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(6));

-- Location: LCCOMB_X41_Y3_N14
\U5|CLKDIV|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~14_combout\ = (\U5|CLKDIV|CNT\(7) & (!\U5|CLKDIV|Add0~13\)) # (!\U5|CLKDIV|CNT\(7) & ((\U5|CLKDIV|Add0~13\) # (GND)))
-- \U5|CLKDIV|Add0~15\ = CARRY((!\U5|CLKDIV|Add0~13\) # (!\U5|CLKDIV|CNT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|CLKDIV|CNT\(7),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~13\,
	combout => \U5|CLKDIV|Add0~14_combout\,
	cout => \U5|CLKDIV|Add0~15\);

-- Location: FF_X41_Y3_N15
\U5|CLKDIV|CNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(7));

-- Location: LCCOMB_X41_Y3_N16
\U5|CLKDIV|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~16_combout\ = (\U5|CLKDIV|CNT\(8) & (\U5|CLKDIV|Add0~15\ $ (GND))) # (!\U5|CLKDIV|CNT\(8) & (!\U5|CLKDIV|Add0~15\ & VCC))
-- \U5|CLKDIV|Add0~17\ = CARRY((\U5|CLKDIV|CNT\(8) & !\U5|CLKDIV|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|CLKDIV|CNT\(8),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~15\,
	combout => \U5|CLKDIV|Add0~16_combout\,
	cout => \U5|CLKDIV|Add0~17\);

-- Location: FF_X41_Y3_N17
\U5|CLKDIV|CNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(8));

-- Location: LCCOMB_X41_Y3_N18
\U5|CLKDIV|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~18_combout\ = (\U5|CLKDIV|CNT\(9) & (!\U5|CLKDIV|Add0~17\)) # (!\U5|CLKDIV|CNT\(9) & ((\U5|CLKDIV|Add0~17\) # (GND)))
-- \U5|CLKDIV|Add0~19\ = CARRY((!\U5|CLKDIV|Add0~17\) # (!\U5|CLKDIV|CNT\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|CLKDIV|CNT\(9),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~17\,
	combout => \U5|CLKDIV|Add0~18_combout\,
	cout => \U5|CLKDIV|Add0~19\);

-- Location: FF_X41_Y3_N19
\U5|CLKDIV|CNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(9));

-- Location: LCCOMB_X41_Y3_N20
\U5|CLKDIV|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~20_combout\ = (\U5|CLKDIV|CNT\(10) & (\U5|CLKDIV|Add0~19\ $ (GND))) # (!\U5|CLKDIV|CNT\(10) & (!\U5|CLKDIV|Add0~19\ & VCC))
-- \U5|CLKDIV|Add0~21\ = CARRY((\U5|CLKDIV|CNT\(10) & !\U5|CLKDIV|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|CLKDIV|CNT\(10),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~19\,
	combout => \U5|CLKDIV|Add0~20_combout\,
	cout => \U5|CLKDIV|Add0~21\);

-- Location: FF_X41_Y3_N21
\U5|CLKDIV|CNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(10));

-- Location: LCCOMB_X41_Y3_N22
\U5|CLKDIV|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~22_combout\ = (\U5|CLKDIV|CNT\(11) & (!\U5|CLKDIV|Add0~21\)) # (!\U5|CLKDIV|CNT\(11) & ((\U5|CLKDIV|Add0~21\) # (GND)))
-- \U5|CLKDIV|Add0~23\ = CARRY((!\U5|CLKDIV|Add0~21\) # (!\U5|CLKDIV|CNT\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(11),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~21\,
	combout => \U5|CLKDIV|Add0~22_combout\,
	cout => \U5|CLKDIV|Add0~23\);

-- Location: LCCOMB_X42_Y3_N20
\U5|CLKDIV|CNT~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|CNT~10_combout\ = (!\U4|CLKDIV|Equal0~10_combout\ & \U5|CLKDIV|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CLKDIV|Equal0~10_combout\,
	datad => \U5|CLKDIV|Add0~22_combout\,
	combout => \U5|CLKDIV|CNT~10_combout\);

-- Location: FF_X42_Y3_N21
\U5|CLKDIV|CNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|CNT~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(11));

-- Location: LCCOMB_X42_Y3_N26
\U4|CLKDIV|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|CLKDIV|Equal0~6_combout\ = (\U5|CLKDIV|CNT\(11) & !\U5|CLKDIV|CNT\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|CLKDIV|CNT\(11),
	datad => \U5|CLKDIV|CNT\(10),
	combout => \U4|CLKDIV|Equal0~6_combout\);

-- Location: LCCOMB_X41_Y3_N24
\U5|CLKDIV|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~24_combout\ = (\U5|CLKDIV|CNT\(12) & (\U5|CLKDIV|Add0~23\ $ (GND))) # (!\U5|CLKDIV|CNT\(12) & (!\U5|CLKDIV|Add0~23\ & VCC))
-- \U5|CLKDIV|Add0~25\ = CARRY((\U5|CLKDIV|CNT\(12) & !\U5|CLKDIV|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|CLKDIV|CNT\(12),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~23\,
	combout => \U5|CLKDIV|Add0~24_combout\,
	cout => \U5|CLKDIV|Add0~25\);

-- Location: LCCOMB_X42_Y3_N24
\U5|CLKDIV|CNT~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|CNT~9_combout\ = (!\U4|CLKDIV|Equal0~10_combout\ & \U5|CLKDIV|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CLKDIV|Equal0~10_combout\,
	datad => \U5|CLKDIV|Add0~24_combout\,
	combout => \U5|CLKDIV|CNT~9_combout\);

-- Location: FF_X42_Y3_N25
\U5|CLKDIV|CNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|CNT~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(12));

-- Location: LCCOMB_X41_Y3_N26
\U5|CLKDIV|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~26_combout\ = (\U5|CLKDIV|CNT\(13) & (!\U5|CLKDIV|Add0~25\)) # (!\U5|CLKDIV|CNT\(13) & ((\U5|CLKDIV|Add0~25\) # (GND)))
-- \U5|CLKDIV|Add0~27\ = CARRY((!\U5|CLKDIV|Add0~25\) # (!\U5|CLKDIV|CNT\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(13),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~25\,
	combout => \U5|CLKDIV|Add0~26_combout\,
	cout => \U5|CLKDIV|Add0~27\);

-- Location: LCCOMB_X42_Y3_N30
\U5|CLKDIV|CNT~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|CNT~8_combout\ = (\U5|CLKDIV|Add0~26_combout\ & !\U4|CLKDIV|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|CLKDIV|Add0~26_combout\,
	datad => \U4|CLKDIV|Equal0~10_combout\,
	combout => \U5|CLKDIV|CNT~8_combout\);

-- Location: FF_X42_Y3_N31
\U5|CLKDIV|CNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|CNT~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(13));

-- Location: LCCOMB_X41_Y3_N28
\U5|CLKDIV|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~28_combout\ = (\U5|CLKDIV|CNT\(14) & (\U5|CLKDIV|Add0~27\ $ (GND))) # (!\U5|CLKDIV|CNT\(14) & (!\U5|CLKDIV|Add0~27\ & VCC))
-- \U5|CLKDIV|Add0~29\ = CARRY((\U5|CLKDIV|CNT\(14) & !\U5|CLKDIV|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|CLKDIV|CNT\(14),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~27\,
	combout => \U5|CLKDIV|Add0~28_combout\,
	cout => \U5|CLKDIV|Add0~29\);

-- Location: LCCOMB_X42_Y3_N16
\U5|CLKDIV|CNT~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|CNT~7_combout\ = (!\U4|CLKDIV|Equal0~10_combout\ & \U5|CLKDIV|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CLKDIV|Equal0~10_combout\,
	datad => \U5|CLKDIV|Add0~28_combout\,
	combout => \U5|CLKDIV|CNT~7_combout\);

-- Location: FF_X42_Y3_N17
\U5|CLKDIV|CNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|CNT~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(14));

-- Location: LCCOMB_X41_Y3_N30
\U5|CLKDIV|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~30_combout\ = (\U5|CLKDIV|CNT\(15) & (!\U5|CLKDIV|Add0~29\)) # (!\U5|CLKDIV|CNT\(15) & ((\U5|CLKDIV|Add0~29\) # (GND)))
-- \U5|CLKDIV|Add0~31\ = CARRY((!\U5|CLKDIV|Add0~29\) # (!\U5|CLKDIV|CNT\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(15),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~29\,
	combout => \U5|CLKDIV|Add0~30_combout\,
	cout => \U5|CLKDIV|Add0~31\);

-- Location: FF_X41_Y3_N31
\U5|CLKDIV|CNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(15));

-- Location: LCCOMB_X42_Y3_N18
\U4|CLKDIV|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|CLKDIV|Equal0~5_combout\ = (\U5|CLKDIV|CNT\(13) & (\U5|CLKDIV|CNT\(14) & (\U5|CLKDIV|CNT\(12) & !\U5|CLKDIV|CNT\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(13),
	datab => \U5|CLKDIV|CNT\(14),
	datac => \U5|CLKDIV|CNT\(12),
	datad => \U5|CLKDIV|CNT\(15),
	combout => \U4|CLKDIV|Equal0~5_combout\);

-- Location: LCCOMB_X42_Y3_N12
\U4|CLKDIV|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|CLKDIV|Equal0~7_combout\ = (!\U5|CLKDIV|CNT\(8) & (!\U5|CLKDIV|CNT\(9) & (\U4|CLKDIV|Equal0~6_combout\ & \U4|CLKDIV|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(8),
	datab => \U5|CLKDIV|CNT\(9),
	datac => \U4|CLKDIV|Equal0~6_combout\,
	datad => \U4|CLKDIV|Equal0~5_combout\,
	combout => \U4|CLKDIV|Equal0~7_combout\);

-- Location: LCCOMB_X42_Y3_N28
\U4|CLKDIV|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|CLKDIV|Equal0~9_combout\ = (!\U5|CLKDIV|CNT\(0) & (!\U5|CLKDIV|CNT\(2) & (!\U5|CLKDIV|CNT\(3) & !\U5|CLKDIV|CNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(0),
	datab => \U5|CLKDIV|CNT\(2),
	datac => \U5|CLKDIV|CNT\(3),
	datad => \U5|CLKDIV|CNT\(1),
	combout => \U4|CLKDIV|Equal0~9_combout\);

-- Location: LCCOMB_X42_Y3_N22
\U4|CLKDIV|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|CLKDIV|Equal0~8_combout\ = (!\U5|CLKDIV|CNT\(5) & (!\U5|CLKDIV|CNT\(4) & (\U5|CLKDIV|CNT\(6) & !\U5|CLKDIV|CNT\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(5),
	datab => \U5|CLKDIV|CNT\(4),
	datac => \U5|CLKDIV|CNT\(6),
	datad => \U5|CLKDIV|CNT\(7),
	combout => \U4|CLKDIV|Equal0~8_combout\);

-- Location: LCCOMB_X41_Y2_N0
\U5|CLKDIV|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~32_combout\ = (\U5|CLKDIV|CNT\(16) & (\U5|CLKDIV|Add0~31\ $ (GND))) # (!\U5|CLKDIV|CNT\(16) & (!\U5|CLKDIV|Add0~31\ & VCC))
-- \U5|CLKDIV|Add0~33\ = CARRY((\U5|CLKDIV|CNT\(16) & !\U5|CLKDIV|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(16),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~31\,
	combout => \U5|CLKDIV|Add0~32_combout\,
	cout => \U5|CLKDIV|Add0~33\);

-- Location: LCCOMB_X42_Y2_N6
\U5|CLKDIV|CNT~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|CNT~6_combout\ = (\U5|CLKDIV|Add0~32_combout\ & !\U4|CLKDIV|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|CLKDIV|Add0~32_combout\,
	datad => \U4|CLKDIV|Equal0~10_combout\,
	combout => \U5|CLKDIV|CNT~6_combout\);

-- Location: FF_X42_Y2_N7
\U5|CLKDIV|CNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|CNT~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(16));

-- Location: LCCOMB_X41_Y2_N2
\U5|CLKDIV|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~34_combout\ = (\U5|CLKDIV|CNT\(17) & (!\U5|CLKDIV|Add0~33\)) # (!\U5|CLKDIV|CNT\(17) & ((\U5|CLKDIV|Add0~33\) # (GND)))
-- \U5|CLKDIV|Add0~35\ = CARRY((!\U5|CLKDIV|Add0~33\) # (!\U5|CLKDIV|CNT\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|CLKDIV|CNT\(17),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~33\,
	combout => \U5|CLKDIV|Add0~34_combout\,
	cout => \U5|CLKDIV|Add0~35\);

-- Location: FF_X41_Y2_N3
\U5|CLKDIV|CNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(17));

-- Location: LCCOMB_X41_Y2_N4
\U5|CLKDIV|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~36_combout\ = (\U5|CLKDIV|CNT\(18) & (\U5|CLKDIV|Add0~35\ $ (GND))) # (!\U5|CLKDIV|CNT\(18) & (!\U5|CLKDIV|Add0~35\ & VCC))
-- \U5|CLKDIV|Add0~37\ = CARRY((\U5|CLKDIV|CNT\(18) & !\U5|CLKDIV|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(18),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~35\,
	combout => \U5|CLKDIV|Add0~36_combout\,
	cout => \U5|CLKDIV|Add0~37\);

-- Location: LCCOMB_X42_Y2_N4
\U5|CLKDIV|CNT~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|CNT~5_combout\ = (\U5|CLKDIV|Add0~36_combout\ & !\U4|CLKDIV|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|CLKDIV|Add0~36_combout\,
	datad => \U4|CLKDIV|Equal0~10_combout\,
	combout => \U5|CLKDIV|CNT~5_combout\);

-- Location: FF_X42_Y2_N5
\U5|CLKDIV|CNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|CNT~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(18));

-- Location: LCCOMB_X41_Y2_N6
\U5|CLKDIV|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~38_combout\ = (\U5|CLKDIV|CNT\(19) & (!\U5|CLKDIV|Add0~37\)) # (!\U5|CLKDIV|CNT\(19) & ((\U5|CLKDIV|Add0~37\) # (GND)))
-- \U5|CLKDIV|Add0~39\ = CARRY((!\U5|CLKDIV|Add0~37\) # (!\U5|CLKDIV|CNT\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|CLKDIV|CNT\(19),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~37\,
	combout => \U5|CLKDIV|Add0~38_combout\,
	cout => \U5|CLKDIV|Add0~39\);

-- Location: LCCOMB_X42_Y2_N18
\U5|CLKDIV|CNT~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|CNT~4_combout\ = (\U5|CLKDIV|Add0~38_combout\ & !\U4|CLKDIV|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|CLKDIV|Add0~38_combout\,
	datad => \U4|CLKDIV|Equal0~10_combout\,
	combout => \U5|CLKDIV|CNT~4_combout\);

-- Location: FF_X42_Y2_N19
\U5|CLKDIV|CNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|CNT~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(19));

-- Location: LCCOMB_X41_Y2_N8
\U5|CLKDIV|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~40_combout\ = (\U5|CLKDIV|CNT\(20) & (\U5|CLKDIV|Add0~39\ $ (GND))) # (!\U5|CLKDIV|CNT\(20) & (!\U5|CLKDIV|Add0~39\ & VCC))
-- \U5|CLKDIV|Add0~41\ = CARRY((\U5|CLKDIV|CNT\(20) & !\U5|CLKDIV|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|CLKDIV|CNT\(20),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~39\,
	combout => \U5|CLKDIV|Add0~40_combout\,
	cout => \U5|CLKDIV|Add0~41\);

-- Location: LCCOMB_X42_Y2_N14
\U5|CLKDIV|CNT~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|CNT~3_combout\ = (!\U4|CLKDIV|Equal0~10_combout\ & \U5|CLKDIV|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|CLKDIV|Equal0~10_combout\,
	datad => \U5|CLKDIV|Add0~40_combout\,
	combout => \U5|CLKDIV|CNT~3_combout\);

-- Location: FF_X42_Y2_N15
\U5|CLKDIV|CNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|CNT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(20));

-- Location: LCCOMB_X41_Y2_N10
\U5|CLKDIV|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~42_combout\ = (\U5|CLKDIV|CNT\(21) & (!\U5|CLKDIV|Add0~41\)) # (!\U5|CLKDIV|CNT\(21) & ((\U5|CLKDIV|Add0~41\) # (GND)))
-- \U5|CLKDIV|Add0~43\ = CARRY((!\U5|CLKDIV|Add0~41\) # (!\U5|CLKDIV|CNT\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|CLKDIV|CNT\(21),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~41\,
	combout => \U5|CLKDIV|Add0~42_combout\,
	cout => \U5|CLKDIV|Add0~43\);

-- Location: LCCOMB_X42_Y2_N24
\U5|CLKDIV|CNT~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|CNT~2_combout\ = (!\U4|CLKDIV|Equal0~10_combout\ & \U5|CLKDIV|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|CLKDIV|Equal0~10_combout\,
	datad => \U5|CLKDIV|Add0~42_combout\,
	combout => \U5|CLKDIV|CNT~2_combout\);

-- Location: FF_X42_Y2_N25
\U5|CLKDIV|CNT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|CNT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(21));

-- Location: LCCOMB_X41_Y2_N12
\U5|CLKDIV|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~44_combout\ = (\U5|CLKDIV|CNT\(22) & (\U5|CLKDIV|Add0~43\ $ (GND))) # (!\U5|CLKDIV|CNT\(22) & (!\U5|CLKDIV|Add0~43\ & VCC))
-- \U5|CLKDIV|Add0~45\ = CARRY((\U5|CLKDIV|CNT\(22) & !\U5|CLKDIV|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(22),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~43\,
	combout => \U5|CLKDIV|Add0~44_combout\,
	cout => \U5|CLKDIV|Add0~45\);

-- Location: LCCOMB_X42_Y2_N26
\U5|CLKDIV|CNT~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|CNT~1_combout\ = (!\U4|CLKDIV|Equal0~10_combout\ & \U5|CLKDIV|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|CLKDIV|Equal0~10_combout\,
	datad => \U5|CLKDIV|Add0~44_combout\,
	combout => \U5|CLKDIV|CNT~1_combout\);

-- Location: FF_X42_Y2_N27
\U5|CLKDIV|CNT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|CNT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(22));

-- Location: LCCOMB_X41_Y2_N14
\U5|CLKDIV|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~46_combout\ = (\U5|CLKDIV|CNT\(23) & (!\U5|CLKDIV|Add0~45\)) # (!\U5|CLKDIV|CNT\(23) & ((\U5|CLKDIV|Add0~45\) # (GND)))
-- \U5|CLKDIV|Add0~47\ = CARRY((!\U5|CLKDIV|Add0~45\) # (!\U5|CLKDIV|CNT\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|CLKDIV|CNT\(23),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~45\,
	combout => \U5|CLKDIV|Add0~46_combout\,
	cout => \U5|CLKDIV|Add0~47\);

-- Location: FF_X41_Y2_N15
\U5|CLKDIV|CNT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(23));

-- Location: LCCOMB_X42_Y2_N12
\U4|CLKDIV|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|CLKDIV|Equal0~2_combout\ = (\U5|CLKDIV|CNT\(22) & (\U5|CLKDIV|CNT\(21) & (\U5|CLKDIV|CNT\(20) & !\U5|CLKDIV|CNT\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(22),
	datab => \U5|CLKDIV|CNT\(21),
	datac => \U5|CLKDIV|CNT\(20),
	datad => \U5|CLKDIV|CNT\(23),
	combout => \U4|CLKDIV|Equal0~2_combout\);

-- Location: LCCOMB_X41_Y2_N16
\U5|CLKDIV|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~48_combout\ = (\U5|CLKDIV|CNT\(24) & (\U5|CLKDIV|Add0~47\ $ (GND))) # (!\U5|CLKDIV|CNT\(24) & (!\U5|CLKDIV|Add0~47\ & VCC))
-- \U5|CLKDIV|Add0~49\ = CARRY((\U5|CLKDIV|CNT\(24) & !\U5|CLKDIV|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(24),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~47\,
	combout => \U5|CLKDIV|Add0~48_combout\,
	cout => \U5|CLKDIV|Add0~49\);

-- Location: LCCOMB_X42_Y2_N22
\U5|CLKDIV|CNT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|CNT~0_combout\ = (\U5|CLKDIV|Add0~48_combout\ & !\U4|CLKDIV|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|CLKDIV|Add0~48_combout\,
	datad => \U4|CLKDIV|Equal0~10_combout\,
	combout => \U5|CLKDIV|CNT~0_combout\);

-- Location: FF_X42_Y2_N23
\U5|CLKDIV|CNT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|CNT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(24));

-- Location: LCCOMB_X41_Y2_N18
\U5|CLKDIV|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~50_combout\ = (\U5|CLKDIV|CNT\(25) & (!\U5|CLKDIV|Add0~49\)) # (!\U5|CLKDIV|CNT\(25) & ((\U5|CLKDIV|Add0~49\) # (GND)))
-- \U5|CLKDIV|Add0~51\ = CARRY((!\U5|CLKDIV|Add0~49\) # (!\U5|CLKDIV|CNT\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|CLKDIV|CNT\(25),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~49\,
	combout => \U5|CLKDIV|Add0~50_combout\,
	cout => \U5|CLKDIV|Add0~51\);

-- Location: FF_X41_Y2_N19
\U5|CLKDIV|CNT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(25));

-- Location: LCCOMB_X41_Y2_N20
\U5|CLKDIV|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~52_combout\ = (\U5|CLKDIV|CNT\(26) & (\U5|CLKDIV|Add0~51\ $ (GND))) # (!\U5|CLKDIV|CNT\(26) & (!\U5|CLKDIV|Add0~51\ & VCC))
-- \U5|CLKDIV|Add0~53\ = CARRY((\U5|CLKDIV|CNT\(26) & !\U5|CLKDIV|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|CLKDIV|CNT\(26),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~51\,
	combout => \U5|CLKDIV|Add0~52_combout\,
	cout => \U5|CLKDIV|Add0~53\);

-- Location: FF_X41_Y2_N21
\U5|CLKDIV|CNT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(26));

-- Location: LCCOMB_X41_Y2_N22
\U5|CLKDIV|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~54_combout\ = (\U5|CLKDIV|CNT\(27) & (!\U5|CLKDIV|Add0~53\)) # (!\U5|CLKDIV|CNT\(27) & ((\U5|CLKDIV|Add0~53\) # (GND)))
-- \U5|CLKDIV|Add0~55\ = CARRY((!\U5|CLKDIV|Add0~53\) # (!\U5|CLKDIV|CNT\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(27),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~53\,
	combout => \U5|CLKDIV|Add0~54_combout\,
	cout => \U5|CLKDIV|Add0~55\);

-- Location: FF_X41_Y2_N23
\U5|CLKDIV|CNT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(27));

-- Location: LCCOMB_X42_Y2_N28
\U4|CLKDIV|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|CLKDIV|Equal0~1_combout\ = (\U5|CLKDIV|CNT\(24) & (!\U5|CLKDIV|CNT\(26) & (!\U5|CLKDIV|CNT\(27) & !\U5|CLKDIV|CNT\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(24),
	datab => \U5|CLKDIV|CNT\(26),
	datac => \U5|CLKDIV|CNT\(27),
	datad => \U5|CLKDIV|CNT\(25),
	combout => \U4|CLKDIV|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y2_N8
\U4|CLKDIV|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|CLKDIV|Equal0~3_combout\ = (\U5|CLKDIV|CNT\(16) & (\U5|CLKDIV|CNT\(19) & (\U5|CLKDIV|CNT\(18) & !\U5|CLKDIV|CNT\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(16),
	datab => \U5|CLKDIV|CNT\(19),
	datac => \U5|CLKDIV|CNT\(18),
	datad => \U5|CLKDIV|CNT\(17),
	combout => \U4|CLKDIV|Equal0~3_combout\);

-- Location: LCCOMB_X41_Y2_N24
\U5|CLKDIV|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~56_combout\ = (\U5|CLKDIV|CNT\(28) & (\U5|CLKDIV|Add0~55\ $ (GND))) # (!\U5|CLKDIV|CNT\(28) & (!\U5|CLKDIV|Add0~55\ & VCC))
-- \U5|CLKDIV|Add0~57\ = CARRY((\U5|CLKDIV|CNT\(28) & !\U5|CLKDIV|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|CLKDIV|CNT\(28),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~55\,
	combout => \U5|CLKDIV|Add0~56_combout\,
	cout => \U5|CLKDIV|Add0~57\);

-- Location: FF_X41_Y2_N25
\U5|CLKDIV|CNT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(28));

-- Location: LCCOMB_X41_Y2_N26
\U5|CLKDIV|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~58_combout\ = (\U5|CLKDIV|CNT\(29) & (!\U5|CLKDIV|Add0~57\)) # (!\U5|CLKDIV|CNT\(29) & ((\U5|CLKDIV|Add0~57\) # (GND)))
-- \U5|CLKDIV|Add0~59\ = CARRY((!\U5|CLKDIV|Add0~57\) # (!\U5|CLKDIV|CNT\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(29),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~57\,
	combout => \U5|CLKDIV|Add0~58_combout\,
	cout => \U5|CLKDIV|Add0~59\);

-- Location: FF_X41_Y2_N27
\U5|CLKDIV|CNT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(29));

-- Location: LCCOMB_X41_Y2_N28
\U5|CLKDIV|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~60_combout\ = (\U5|CLKDIV|CNT\(30) & (\U5|CLKDIV|Add0~59\ $ (GND))) # (!\U5|CLKDIV|CNT\(30) & (!\U5|CLKDIV|Add0~59\ & VCC))
-- \U5|CLKDIV|Add0~61\ = CARRY((\U5|CLKDIV|CNT\(30) & !\U5|CLKDIV|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|CLKDIV|CNT\(30),
	datad => VCC,
	cin => \U5|CLKDIV|Add0~59\,
	combout => \U5|CLKDIV|Add0~60_combout\,
	cout => \U5|CLKDIV|Add0~61\);

-- Location: FF_X41_Y2_N29
\U5|CLKDIV|CNT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(30));

-- Location: LCCOMB_X41_Y2_N30
\U5|CLKDIV|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|Add0~62_combout\ = \U5|CLKDIV|CNT\(31) $ (\U5|CLKDIV|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(31),
	cin => \U5|CLKDIV|Add0~61\,
	combout => \U5|CLKDIV|Add0~62_combout\);

-- Location: FF_X41_Y2_N31
\U5|CLKDIV|CNT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|CNT\(31));

-- Location: LCCOMB_X42_Y2_N16
\U4|CLKDIV|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|CLKDIV|Equal0~0_combout\ = (!\U5|CLKDIV|CNT\(29) & (!\U5|CLKDIV|CNT\(28) & (!\U5|CLKDIV|CNT\(31) & !\U5|CLKDIV|CNT\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|CNT\(29),
	datab => \U5|CLKDIV|CNT\(28),
	datac => \U5|CLKDIV|CNT\(31),
	datad => \U5|CLKDIV|CNT\(30),
	combout => \U4|CLKDIV|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y2_N2
\U4|CLKDIV|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|CLKDIV|Equal0~4_combout\ = (\U4|CLKDIV|Equal0~2_combout\ & (\U4|CLKDIV|Equal0~1_combout\ & (\U4|CLKDIV|Equal0~3_combout\ & \U4|CLKDIV|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CLKDIV|Equal0~2_combout\,
	datab => \U4|CLKDIV|Equal0~1_combout\,
	datac => \U4|CLKDIV|Equal0~3_combout\,
	datad => \U4|CLKDIV|Equal0~0_combout\,
	combout => \U4|CLKDIV|Equal0~4_combout\);

-- Location: LCCOMB_X42_Y3_N10
\U4|CLKDIV|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|CLKDIV|Equal0~10_combout\ = (\U4|CLKDIV|Equal0~7_combout\ & (\U4|CLKDIV|Equal0~9_combout\ & (\U4|CLKDIV|Equal0~8_combout\ & \U4|CLKDIV|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CLKDIV|Equal0~7_combout\,
	datab => \U4|CLKDIV|Equal0~9_combout\,
	datac => \U4|CLKDIV|Equal0~8_combout\,
	datad => \U4|CLKDIV|Equal0~4_combout\,
	combout => \U4|CLKDIV|Equal0~10_combout\);

-- Location: FF_X43_Y3_N13
\U4|CLKDIV|TEMP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U4|CLKDIV|TEMP~0_combout\,
	sload => VCC,
	ena => \U4|CLKDIV|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|CLKDIV|TEMP~q\);

-- Location: CLKCTRL_G17
\U4|CLKDIV|TEMP~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U4|CLKDIV|TEMP~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U4|CLKDIV|TEMP~clkctrl_outclk\);

-- Location: LCCOMB_X47_Y49_N12
\U2|Qs.s9~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s9~feeder_combout\ = \U2|Qs.s8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s8~q\,
	combout => \U2|Qs.s9~feeder_combout\);

-- Location: IOIBUF_X51_Y54_N29
\R~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R,
	o => \R~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\M~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: FF_X47_Y49_N13
\U2|Qs.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s9~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s9~q\);

-- Location: LCCOMB_X47_Y49_N20
\U2|Qs.s10~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s10~feeder_combout\ = \U2|Qs.s9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s9~q\,
	combout => \U2|Qs.s10~feeder_combout\);

-- Location: FF_X47_Y49_N21
\U2|Qs.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s10~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s10~q\);

-- Location: LCCOMB_X47_Y49_N10
\U2|Qs.s11~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s11~feeder_combout\ = \U2|Qs.s10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Qs.s10~q\,
	combout => \U2|Qs.s11~feeder_combout\);

-- Location: FF_X47_Y49_N11
\U2|Qs.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s11~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s11~q\);

-- Location: FF_X50_Y49_N27
\U2|Qs.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s11~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s12~q\);

-- Location: FF_X49_Y49_N13
\U2|Qs.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s12~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s13~q\);

-- Location: LCCOMB_X49_Y49_N26
\U2|Qs.s14~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s14~feeder_combout\ = \U2|Qs.s13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s13~q\,
	combout => \U2|Qs.s14~feeder_combout\);

-- Location: FF_X49_Y49_N27
\U2|Qs.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s14~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s14~q\);

-- Location: FF_X49_Y49_N7
\U2|Qs.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s14~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s15~q\);

-- Location: LCCOMB_X49_Y49_N14
\U2|Qs.s16~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s16~feeder_combout\ = \U2|Qs.s15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Qs.s15~q\,
	combout => \U2|Qs.s16~feeder_combout\);

-- Location: FF_X49_Y49_N15
\U2|Qs.s16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s16~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s16~q\);

-- Location: FF_X49_Y49_N9
\U2|Qs.s17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s16~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s17~q\);

-- Location: FF_X49_Y49_N31
\U2|Qs.s18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s17~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s18~q\);

-- Location: FF_X49_Y49_N23
\U2|Qs.s19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s18~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s19~q\);

-- Location: FF_X49_Y49_N11
\U2|Qs.s20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s19~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s20~q\);

-- Location: LCCOMB_X49_Y49_N20
\U2|Qs.s21~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s21~feeder_combout\ = \U2|Qs.s20~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s20~q\,
	combout => \U2|Qs.s21~feeder_combout\);

-- Location: FF_X49_Y49_N21
\U2|Qs.s21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s21~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s21~q\);

-- Location: LCCOMB_X49_Y49_N4
\U2|Qs.s22~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s22~feeder_combout\ = \U2|Qs.s21~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s21~q\,
	combout => \U2|Qs.s22~feeder_combout\);

-- Location: FF_X49_Y49_N5
\U2|Qs.s22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s22~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s22~q\);

-- Location: FF_X49_Y49_N3
\U2|Qs.s23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s22~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s23~q\);

-- Location: FF_X45_Y49_N5
\U2|Qs.s24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s23~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s24~q\);

-- Location: LCCOMB_X45_Y49_N16
\U2|Qs.s25~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s25~feeder_combout\ = \U2|Qs.s24~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Qs.s24~q\,
	combout => \U2|Qs.s25~feeder_combout\);

-- Location: FF_X45_Y49_N17
\U2|Qs.s25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s25~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s25~q\);

-- Location: LCCOMB_X45_Y49_N22
\U2|Qs.s26~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s26~feeder_combout\ = \U2|Qs.s25~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Qs.s25~q\,
	combout => \U2|Qs.s26~feeder_combout\);

-- Location: FF_X45_Y49_N23
\U2|Qs.s26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s26~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s26~q\);

-- Location: LCCOMB_X44_Y49_N30
\U2|Qs.s27~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s27~feeder_combout\ = \U2|Qs.s26~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s26~q\,
	combout => \U2|Qs.s27~feeder_combout\);

-- Location: FF_X44_Y49_N31
\U2|Qs.s27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s27~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s27~q\);

-- Location: LCCOMB_X44_Y49_N12
\U2|Qs.s28~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s28~feeder_combout\ = \U2|Qs.s27~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s27~q\,
	combout => \U2|Qs.s28~feeder_combout\);

-- Location: FF_X44_Y49_N13
\U2|Qs.s28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s28~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s28~q\);

-- Location: LCCOMB_X44_Y49_N14
\U2|Qs.s29~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s29~feeder_combout\ = \U2|Qs.s28~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s28~q\,
	combout => \U2|Qs.s29~feeder_combout\);

-- Location: FF_X44_Y49_N15
\U2|Qs.s29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s29~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s29~q\);

-- Location: LCCOMB_X44_Y49_N8
\U2|Qs.s30~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s30~feeder_combout\ = \U2|Qs.s29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s29~q\,
	combout => \U2|Qs.s30~feeder_combout\);

-- Location: FF_X44_Y49_N9
\U2|Qs.s30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s30~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s30~q\);

-- Location: LCCOMB_X44_Y49_N26
\U2|Qs.s31~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s31~feeder_combout\ = \U2|Qs.s30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s30~q\,
	combout => \U2|Qs.s31~feeder_combout\);

-- Location: FF_X44_Y49_N27
\U2|Qs.s31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s31~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s31~q\);

-- Location: LCCOMB_X44_Y49_N2
\U2|Qs.s32~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s32~feeder_combout\ = \U2|Qs.s31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s31~q\,
	combout => \U2|Qs.s32~feeder_combout\);

-- Location: FF_X44_Y49_N3
\U2|Qs.s32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s32~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s32~q\);

-- Location: FF_X47_Y49_N23
\U2|Qs.s33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s32~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s33~q\);

-- Location: FF_X47_Y49_N5
\U2|Qs.s34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s33~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s34~q\);

-- Location: FF_X47_Y49_N7
\U2|Qs.s35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s34~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s35~q\);

-- Location: FF_X46_Y49_N21
\U2|Qs.s36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s35~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s36~q\);

-- Location: FF_X46_Y49_N23
\U2|Qs.s37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s36~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s37~q\);

-- Location: FF_X46_Y49_N5
\U2|Qs.s38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s37~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s38~q\);

-- Location: FF_X46_Y49_N31
\U2|Qs.s39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s38~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s39~q\);

-- Location: FF_X46_Y49_N7
\U2|Qs.s40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s39~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s40~q\);

-- Location: FF_X47_Y49_N25
\U2|Qs.s41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s40~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s41~q\);

-- Location: LCCOMB_X47_Y49_N14
\U2|Qs.s42~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s42~feeder_combout\ = \U2|Qs.s41~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s41~q\,
	combout => \U2|Qs.s42~feeder_combout\);

-- Location: FF_X47_Y49_N15
\U2|Qs.s42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s42~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s42~q\);

-- Location: FF_X47_Y49_N19
\U2|Qs.s43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s42~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s43~q\);

-- Location: LCCOMB_X46_Y49_N12
\U2|Qs.s44~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s44~feeder_combout\ = \U2|Qs.s43~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Qs.s43~q\,
	combout => \U2|Qs.s44~feeder_combout\);

-- Location: FF_X46_Y49_N13
\U2|Qs.s44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s44~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s44~q\);

-- Location: FF_X46_Y49_N27
\U2|Qs.s45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s44~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s45~q\);

-- Location: FF_X46_Y49_N9
\U2|Qs.s46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s45~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s46~q\);

-- Location: FF_X46_Y49_N11
\U2|Qs.s47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s46~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s47~q\);

-- Location: FF_X47_Y49_N27
\U2|Qs.s48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s47~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s48~q\);

-- Location: LCCOMB_X47_Y49_N2
\U2|Qs.s49~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s49~feeder_combout\ = \U2|Qs.s48~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Qs.s48~q\,
	combout => \U2|Qs.s49~feeder_combout\);

-- Location: FF_X47_Y49_N3
\U2|Qs.s49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s49~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s49~q\);

-- Location: LCCOMB_X47_Y49_N16
\U2|Qs.s50~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s50~feeder_combout\ = \U2|Qs.s49~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s49~q\,
	combout => \U2|Qs.s50~feeder_combout\);

-- Location: FF_X47_Y49_N17
\U2|Qs.s50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s50~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s50~q\);

-- Location: FF_X46_Y49_N29
\U2|Qs.s51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s50~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s51~q\);

-- Location: LCCOMB_X46_Y49_N2
\U2|Qs.s52~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s52~feeder_combout\ = \U2|Qs.s51~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s51~q\,
	combout => \U2|Qs.s52~feeder_combout\);

-- Location: FF_X46_Y49_N3
\U2|Qs.s52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s52~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s52~q\);

-- Location: LCCOMB_X46_Y49_N16
\U2|Qs.s53~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s53~feeder_combout\ = \U2|Qs.s52~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Qs.s52~q\,
	combout => \U2|Qs.s53~feeder_combout\);

-- Location: FF_X46_Y49_N17
\U2|Qs.s53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s53~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s53~q\);

-- Location: LCCOMB_X46_Y49_N14
\U2|Qs.s54~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s54~feeder_combout\ = \U2|Qs.s53~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s53~q\,
	combout => \U2|Qs.s54~feeder_combout\);

-- Location: FF_X46_Y49_N15
\U2|Qs.s54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s54~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s54~q\);

-- Location: FF_X46_Y49_N25
\U2|Qs.s55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s54~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s55~q\);

-- Location: LCCOMB_X45_Y49_N12
\U2|Qs.s56~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s56~feeder_combout\ = \U2|Qs.s55~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s55~q\,
	combout => \U2|Qs.s56~feeder_combout\);

-- Location: FF_X45_Y49_N13
\U2|Qs.s56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s56~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s56~q\);

-- Location: LCCOMB_X44_Y49_N28
\U2|Qs.s57~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s57~feeder_combout\ = \U2|Qs.s56~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s56~q\,
	combout => \U2|Qs.s57~feeder_combout\);

-- Location: FF_X44_Y49_N29
\U2|Qs.s57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s57~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s57~q\);

-- Location: LCCOMB_X44_Y49_N0
\U2|Qs.s58~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s58~feeder_combout\ = \U2|Qs.s57~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Qs.s57~q\,
	combout => \U2|Qs.s58~feeder_combout\);

-- Location: FF_X44_Y49_N1
\U2|Qs.s58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s58~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s58~q\);

-- Location: LCCOMB_X44_Y49_N20
\U2|Qs.s59~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s59~feeder_combout\ = \U2|Qs.s58~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Qs.s58~q\,
	combout => \U2|Qs.s59~feeder_combout\);

-- Location: FF_X44_Y49_N21
\U2|Qs.s59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s59~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s59~q\);

-- Location: LCCOMB_X45_Y49_N14
\U2|Qs.s0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s0~0_combout\ = !\U2|Qs.s59~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s59~q\,
	combout => \U2|Qs.s0~0_combout\);

-- Location: FF_X45_Y49_N15
\U2|Qs.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s0~0_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s0~q\);

-- Location: LCCOMB_X45_Y49_N10
\U2|Qs.s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s1~0_combout\ = !\U2|Qs.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Qs.s0~q\,
	combout => \U2|Qs.s1~0_combout\);

-- Location: FF_X45_Y49_N11
\U2|Qs.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s1~0_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s1~q\);

-- Location: LCCOMB_X45_Y49_N20
\U2|Qs.s2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s2~feeder_combout\ = \U2|Qs.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s1~q\,
	combout => \U2|Qs.s2~feeder_combout\);

-- Location: FF_X45_Y49_N21
\U2|Qs.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s2~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s2~q\);

-- Location: LCCOMB_X45_Y49_N28
\U2|Qs.s3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s3~feeder_combout\ = \U2|Qs.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s2~q\,
	combout => \U2|Qs.s3~feeder_combout\);

-- Location: FF_X45_Y49_N29
\U2|Qs.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s3~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s3~q\);

-- Location: FF_X45_Y49_N27
\U2|Qs.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s3~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s4~q\);

-- Location: FF_X45_Y49_N31
\U2|Qs.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s4~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s5~q\);

-- Location: FF_X45_Y49_N1
\U2|Qs.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s5~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s6~q\);

-- Location: FF_X45_Y49_N3
\U2|Qs.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U2|Qs.s6~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s7~q\);

-- Location: LCCOMB_X45_Y49_N18
\U2|Qs.s8~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Qs.s8~feeder_combout\ = \U2|Qs.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|Qs.s7~q\,
	combout => \U2|Qs.s8~feeder_combout\);

-- Location: FF_X45_Y49_N19
\U2|Qs.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U2|Qs.s8~feeder_combout\,
	clrn => \R~input_o\,
	ena => \M~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Qs.s8~q\);

-- Location: LCCOMB_X45_Y49_N26
\U2|WideOr64~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr64~5_combout\ = (!\U2|Qs.s8~q\ & (!\U2|Qs.s24~q\ & (!\U2|Qs.s4~q\ & !\U2|Qs.s28~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s8~q\,
	datab => \U2|Qs.s24~q\,
	datac => \U2|Qs.s4~q\,
	datad => \U2|Qs.s28~q\,
	combout => \U2|WideOr64~5_combout\);

-- Location: LCCOMB_X46_Y49_N26
\U2|WideOr64~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr64~4_combout\ = (!\U2|Qs.s36~q\ & (!\U2|Qs.s52~q\ & (!\U2|Qs.s44~q\ & \U2|Qs.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s36~q\,
	datab => \U2|Qs.s52~q\,
	datac => \U2|Qs.s44~q\,
	datad => \U2|Qs.s0~q\,
	combout => \U2|WideOr64~4_combout\);

-- Location: LCCOMB_X49_Y49_N10
\U2|WideOr64~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr64~6_combout\ = (!\U2|Qs.s16~q\ & (!\U2|Qs.s20~q\ & !\U2|Qs.s12~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|Qs.s16~q\,
	datac => \U2|Qs.s20~q\,
	datad => \U2|Qs.s12~q\,
	combout => \U2|WideOr64~6_combout\);

-- Location: LCCOMB_X46_Y49_N6
\U2|WideOr60~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr60~3_combout\ = (!\U2|Qs.s56~q\ & (!\U2|Qs.s48~q\ & (!\U2|Qs.s40~q\ & !\U2|Qs.s32~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s56~q\,
	datab => \U2|Qs.s48~q\,
	datac => \U2|Qs.s40~q\,
	datad => \U2|Qs.s32~q\,
	combout => \U2|WideOr60~3_combout\);

-- Location: LCCOMB_X45_Y49_N8
\U2|WideOr64~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr64~7_combout\ = (\U2|WideOr64~5_combout\ & (\U2|WideOr64~4_combout\ & (\U2|WideOr64~6_combout\ & \U2|WideOr60~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr64~5_combout\,
	datab => \U2|WideOr64~4_combout\,
	datac => \U2|WideOr64~6_combout\,
	datad => \U2|WideOr60~3_combout\,
	combout => \U2|WideOr64~7_combout\);

-- Location: LCCOMB_X46_Y49_N30
\U2|WideOr65~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr65~0_combout\ = (\U2|Qs.s46~q\) # ((\U2|Qs.s54~q\) # ((\U2|Qs.s38~q\) # (\U2|Qs.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s46~q\,
	datab => \U2|Qs.s54~q\,
	datac => \U2|Qs.s38~q\,
	datad => \U2|Qs.s2~q\,
	combout => \U2|WideOr65~0_combout\);

-- Location: LCCOMB_X45_Y49_N0
\U2|WideOr65~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr65~1_combout\ = (\U2|Qs.s26~q\) # ((\U2|Qs.s30~q\) # ((\U2|Qs.s6~q\) # (\U2|Qs.s58~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s26~q\,
	datab => \U2|Qs.s30~q\,
	datac => \U2|Qs.s6~q\,
	datad => \U2|Qs.s58~q\,
	combout => \U2|WideOr65~1_combout\);

-- Location: LCCOMB_X47_Y49_N6
\U2|WideOr65~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr65~2_combout\ = (\U2|Qs.s42~q\) # ((\U2|Qs.s10~q\) # ((\U2|Qs.s34~q\) # (\U2|Qs.s50~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s42~q\,
	datab => \U2|Qs.s10~q\,
	datac => \U2|Qs.s34~q\,
	datad => \U2|Qs.s50~q\,
	combout => \U2|WideOr65~2_combout\);

-- Location: LCCOMB_X49_Y49_N22
\U2|WideOr65~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr65~3_combout\ = (\U2|Qs.s14~q\) # ((\U2|Qs.s22~q\) # ((\U2|Qs.s18~q\) # (\U2|WideOr65~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s14~q\,
	datab => \U2|Qs.s22~q\,
	datac => \U2|Qs.s18~q\,
	datad => \U2|WideOr65~2_combout\,
	combout => \U2|WideOr65~3_combout\);

-- Location: LCCOMB_X45_Y49_N24
\U2|WideOr65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr65~combout\ = ((\U2|WideOr65~0_combout\) # ((\U2|WideOr65~1_combout\) # (\U2|WideOr65~3_combout\))) # (!\U2|WideOr64~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr64~7_combout\,
	datab => \U2|WideOr65~0_combout\,
	datac => \U2|WideOr65~1_combout\,
	datad => \U2|WideOr65~3_combout\,
	combout => \U2|WideOr65~combout\);

-- Location: LCCOMB_X46_Y49_N8
\U2|WideOr64~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr64~0_combout\ = (\U2|Qs.s1~q\) # ((\U2|Qs.s53~q\) # ((\U2|Qs.s45~q\) # (\U2|Qs.s37~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s1~q\,
	datab => \U2|Qs.s53~q\,
	datac => \U2|Qs.s45~q\,
	datad => \U2|Qs.s37~q\,
	combout => \U2|WideOr64~0_combout\);

-- Location: LCCOMB_X45_Y49_N30
\U2|WideOr64~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr64~1_combout\ = (\U2|Qs.s25~q\) # ((\U2|Qs.s57~q\) # ((\U2|Qs.s5~q\) # (\U2|Qs.s29~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s25~q\,
	datab => \U2|Qs.s57~q\,
	datac => \U2|Qs.s5~q\,
	datad => \U2|Qs.s29~q\,
	combout => \U2|WideOr64~1_combout\);

-- Location: LCCOMB_X47_Y49_N22
\U2|WideOr64~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr64~2_combout\ = (\U2|Qs.s9~q\) # ((\U2|Qs.s41~q\) # ((\U2|Qs.s33~q\) # (\U2|Qs.s49~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s9~q\,
	datab => \U2|Qs.s41~q\,
	datac => \U2|Qs.s33~q\,
	datad => \U2|Qs.s49~q\,
	combout => \U2|WideOr64~2_combout\);

-- Location: LCCOMB_X49_Y49_N8
\U2|WideOr64~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr64~3_combout\ = (\U2|Qs.s13~q\) # ((\U2|Qs.s21~q\) # ((\U2|Qs.s17~q\) # (\U2|WideOr64~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s13~q\,
	datab => \U2|Qs.s21~q\,
	datac => \U2|Qs.s17~q\,
	datad => \U2|WideOr64~2_combout\,
	combout => \U2|WideOr64~3_combout\);

-- Location: LCCOMB_X45_Y49_N6
\U2|WideOr64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr64~combout\ = (\U2|WideOr64~0_combout\) # ((\U2|WideOr64~1_combout\) # ((\U2|WideOr64~3_combout\) # (!\U2|WideOr64~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr64~0_combout\,
	datab => \U2|WideOr64~1_combout\,
	datac => \U2|WideOr64~3_combout\,
	datad => \U2|WideOr64~7_combout\,
	combout => \U2|WideOr64~combout\);

-- Location: LCCOMB_X46_Y49_N24
\U2|WideOr61~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr61~6_combout\ = (\U2|Qs.s52~q\) # ((\U2|Qs.s54~q\) # ((\U2|Qs.s55~q\) # (\U2|Qs.s53~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s52~q\,
	datab => \U2|Qs.s54~q\,
	datac => \U2|Qs.s55~q\,
	datad => \U2|Qs.s53~q\,
	combout => \U2|WideOr61~6_combout\);

-- Location: LCCOMB_X49_Y49_N30
\U2|WideOr61~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr61~4_combout\ = (\U2|Qs.s19~q\) # ((\U2|Qs.s17~q\) # ((\U2|Qs.s18~q\) # (\U2|Qs.s16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s19~q\,
	datab => \U2|Qs.s17~q\,
	datac => \U2|Qs.s18~q\,
	datad => \U2|Qs.s16~q\,
	combout => \U2|WideOr61~4_combout\);

-- Location: LCCOMB_X47_Y49_N26
\U2|WideOr61~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr61~5_combout\ = (\U2|Qs.s50~q\) # ((\U2|Qs.s49~q\) # ((\U2|Qs.s48~q\) # (\U2|Qs.s51~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s50~q\,
	datab => \U2|Qs.s49~q\,
	datac => \U2|Qs.s48~q\,
	datad => \U2|Qs.s51~q\,
	combout => \U2|WideOr61~5_combout\);

-- Location: LCCOMB_X44_Y49_N10
\U2|WideOr61~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr61~1_combout\ = (!\U2|Qs.s31~q\ & (!\U2|Qs.s58~q\ & (!\U2|Qs.s30~q\ & !\U2|Qs.s26~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s31~q\,
	datab => \U2|Qs.s58~q\,
	datac => \U2|Qs.s30~q\,
	datad => \U2|Qs.s26~q\,
	combout => \U2|WideOr61~1_combout\);

-- Location: LCCOMB_X49_Y49_N2
\U2|WideOr63~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr63~0_combout\ = (!\U2|Qs.s20~q\ & (!\U2|Qs.s22~q\ & (!\U2|Qs.s23~q\ & !\U2|Qs.s21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s20~q\,
	datab => \U2|Qs.s22~q\,
	datac => \U2|Qs.s23~q\,
	datad => \U2|Qs.s21~q\,
	combout => \U2|WideOr63~0_combout\);

-- Location: LCCOMB_X45_Y49_N4
\U2|WideOr61~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr61~2_combout\ = (!\U2|Qs.s28~q\ & (!\U2|Qs.s56~q\ & (!\U2|Qs.s24~q\ & !\U2|Qs.s59~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s28~q\,
	datab => \U2|Qs.s56~q\,
	datac => \U2|Qs.s24~q\,
	datad => \U2|Qs.s59~q\,
	combout => \U2|WideOr61~2_combout\);

-- Location: LCCOMB_X44_Y49_N22
\U2|WideOr61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr61~0_combout\ = (!\U2|Qs.s27~q\ & (!\U2|Qs.s57~q\ & (!\U2|Qs.s29~q\ & !\U2|Qs.s25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s27~q\,
	datab => \U2|Qs.s57~q\,
	datac => \U2|Qs.s29~q\,
	datad => \U2|Qs.s25~q\,
	combout => \U2|WideOr61~0_combout\);

-- Location: LCCOMB_X49_Y49_N18
\U2|WideOr61~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr61~3_combout\ = (((!\U2|WideOr61~0_combout\) # (!\U2|WideOr61~2_combout\)) # (!\U2|WideOr63~0_combout\)) # (!\U2|WideOr61~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr61~1_combout\,
	datab => \U2|WideOr63~0_combout\,
	datac => \U2|WideOr61~2_combout\,
	datad => \U2|WideOr61~0_combout\,
	combout => \U2|WideOr61~3_combout\);

-- Location: LCCOMB_X49_Y49_N0
\U2|WideOr61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr61~combout\ = (\U2|WideOr61~6_combout\) # ((\U2|WideOr61~4_combout\) # ((\U2|WideOr61~5_combout\) # (\U2|WideOr61~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr61~6_combout\,
	datab => \U2|WideOr61~4_combout\,
	datac => \U2|WideOr61~5_combout\,
	datad => \U2|WideOr61~3_combout\,
	combout => \U2|WideOr61~combout\);

-- Location: LCCOMB_X49_Y49_N6
\U2|WideOr62~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr62~0_combout\ = (!\U2|Qs.s13~q\ & (!\U2|Qs.s14~q\ & (!\U2|Qs.s15~q\ & !\U2|Qs.s12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s13~q\,
	datab => \U2|Qs.s14~q\,
	datac => \U2|Qs.s15~q\,
	datad => \U2|Qs.s12~q\,
	combout => \U2|WideOr62~0_combout\);

-- Location: LCCOMB_X45_Y49_N2
\U2|WideOr63~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr63~2_combout\ = (\U2|Qs.s5~q\) # ((\U2|Qs.s6~q\) # ((\U2|Qs.s7~q\) # (\U2|Qs.s4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s5~q\,
	datab => \U2|Qs.s6~q\,
	datac => \U2|Qs.s7~q\,
	datad => \U2|Qs.s4~q\,
	combout => \U2|WideOr63~2_combout\);

-- Location: LCCOMB_X44_Y49_N16
\U2|WideOr63~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr63~3_combout\ = (\U2|Qs.s31~q\) # ((\U2|Qs.s28~q\) # ((\U2|Qs.s29~q\) # (\U2|Qs.s30~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s31~q\,
	datab => \U2|Qs.s28~q\,
	datac => \U2|Qs.s29~q\,
	datad => \U2|Qs.s30~q\,
	combout => \U2|WideOr63~3_combout\);

-- Location: LCCOMB_X46_Y49_N22
\U2|WideOr60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr60~0_combout\ = (!\U2|Qs.s39~q\ & (!\U2|Qs.s45~q\ & (!\U2|Qs.s37~q\ & !\U2|Qs.s53~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s39~q\,
	datab => \U2|Qs.s45~q\,
	datac => \U2|Qs.s37~q\,
	datad => \U2|Qs.s53~q\,
	combout => \U2|WideOr60~0_combout\);

-- Location: LCCOMB_X46_Y49_N20
\U2|WideOr60~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr60~2_combout\ = (!\U2|Qs.s44~q\ & (!\U2|Qs.s55~q\ & (!\U2|Qs.s36~q\ & !\U2|Qs.s52~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s44~q\,
	datab => \U2|Qs.s55~q\,
	datac => \U2|Qs.s36~q\,
	datad => \U2|Qs.s52~q\,
	combout => \U2|WideOr60~2_combout\);

-- Location: LCCOMB_X46_Y49_N4
\U2|WideOr60~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr60~1_combout\ = (!\U2|Qs.s47~q\ & (!\U2|Qs.s54~q\ & (!\U2|Qs.s38~q\ & !\U2|Qs.s46~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s47~q\,
	datab => \U2|Qs.s54~q\,
	datac => \U2|Qs.s38~q\,
	datad => \U2|Qs.s46~q\,
	combout => \U2|WideOr60~1_combout\);

-- Location: LCCOMB_X49_Y49_N16
\U2|WideOr63~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr63~1_combout\ = (((!\U2|WideOr60~1_combout\) # (!\U2|WideOr63~0_combout\)) # (!\U2|WideOr60~2_combout\)) # (!\U2|WideOr60~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr60~0_combout\,
	datab => \U2|WideOr60~2_combout\,
	datac => \U2|WideOr63~0_combout\,
	datad => \U2|WideOr60~1_combout\,
	combout => \U2|WideOr63~1_combout\);

-- Location: LCCOMB_X49_Y49_N24
\U2|WideOr63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr63~combout\ = ((\U2|WideOr63~2_combout\) # ((\U2|WideOr63~3_combout\) # (\U2|WideOr63~1_combout\))) # (!\U2|WideOr62~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr62~0_combout\,
	datab => \U2|WideOr63~2_combout\,
	datac => \U2|WideOr63~3_combout\,
	datad => \U2|WideOr63~1_combout\,
	combout => \U2|WideOr63~combout\);

-- Location: LCCOMB_X46_Y49_N10
\U2|WideOr62~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr62~4_combout\ = (\U2|Qs.s44~q\) # ((\U2|Qs.s46~q\) # ((\U2|Qs.s47~q\) # (\U2|Qs.s45~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s44~q\,
	datab => \U2|Qs.s46~q\,
	datac => \U2|Qs.s47~q\,
	datad => \U2|Qs.s45~q\,
	combout => \U2|WideOr62~4_combout\);

-- Location: LCCOMB_X47_Y49_N24
\U2|WideOr62~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr62~3_combout\ = (\U2|Qs.s42~q\) # ((\U2|Qs.s40~q\) # ((\U2|Qs.s41~q\) # (\U2|Qs.s43~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s42~q\,
	datab => \U2|Qs.s40~q\,
	datac => \U2|Qs.s41~q\,
	datad => \U2|Qs.s43~q\,
	combout => \U2|WideOr62~3_combout\);

-- Location: LCCOMB_X47_Y49_N30
\U2|WideOr62~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr62~2_combout\ = (\U2|Qs.s11~q\) # ((\U2|Qs.s9~q\) # ((\U2|Qs.s10~q\) # (\U2|Qs.s8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s11~q\,
	datab => \U2|Qs.s9~q\,
	datac => \U2|Qs.s10~q\,
	datad => \U2|Qs.s8~q\,
	combout => \U2|WideOr62~2_combout\);

-- Location: LCCOMB_X47_Y49_N28
\U2|WideOr62~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr62~1_combout\ = (((!\U2|WideOr61~1_combout\) # (!\U2|WideOr61~2_combout\)) # (!\U2|WideOr62~0_combout\)) # (!\U2|WideOr61~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr61~0_combout\,
	datab => \U2|WideOr62~0_combout\,
	datac => \U2|WideOr61~2_combout\,
	datad => \U2|WideOr61~1_combout\,
	combout => \U2|WideOr62~1_combout\);

-- Location: LCCOMB_X47_Y49_N0
\U2|WideOr62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr62~combout\ = (\U2|WideOr62~4_combout\) # ((\U2|WideOr62~3_combout\) # ((\U2|WideOr62~2_combout\) # (\U2|WideOr62~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr62~4_combout\,
	datab => \U2|WideOr62~3_combout\,
	datac => \U2|WideOr62~2_combout\,
	datad => \U2|WideOr62~1_combout\,
	combout => \U2|WideOr62~combout\);

-- Location: LCCOMB_X47_Y49_N4
\U2|WideOr60~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr60~5_combout\ = (\U2|Qs.s35~q\) # ((\U2|Qs.s49~q\) # ((\U2|Qs.s33~q\) # (\U2|Qs.s41~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s35~q\,
	datab => \U2|Qs.s49~q\,
	datac => \U2|Qs.s33~q\,
	datad => \U2|Qs.s41~q\,
	combout => \U2|WideOr60~5_combout\);

-- Location: LCCOMB_X47_Y49_N18
\U2|WideOr60~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr60~6_combout\ = (\U2|Qs.s34~q\) # ((\U2|Qs.s42~q\) # ((\U2|Qs.s43~q\) # (\U2|Qs.s50~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s34~q\,
	datab => \U2|Qs.s42~q\,
	datac => \U2|Qs.s43~q\,
	datad => \U2|Qs.s50~q\,
	combout => \U2|WideOr60~6_combout\);

-- Location: LCCOMB_X46_Y49_N28
\U2|WideOr60~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr60~7_combout\ = (\U2|Qs.s57~q\) # ((\U2|Qs.s58~q\) # ((\U2|Qs.s51~q\) # (\U2|Qs.s59~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Qs.s57~q\,
	datab => \U2|Qs.s58~q\,
	datac => \U2|Qs.s51~q\,
	datad => \U2|Qs.s59~q\,
	combout => \U2|WideOr60~7_combout\);

-- Location: LCCOMB_X46_Y49_N18
\U2|WideOr60~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr60~4_combout\ = (((!\U2|WideOr60~3_combout\) # (!\U2|WideOr60~1_combout\)) # (!\U2|WideOr60~2_combout\)) # (!\U2|WideOr60~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr60~0_combout\,
	datab => \U2|WideOr60~2_combout\,
	datac => \U2|WideOr60~1_combout\,
	datad => \U2|WideOr60~3_combout\,
	combout => \U2|WideOr60~4_combout\);

-- Location: LCCOMB_X46_Y49_N0
\U2|WideOr60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|WideOr60~combout\ = (\U2|WideOr60~5_combout\) # ((\U2|WideOr60~6_combout\) # ((\U2|WideOr60~7_combout\) # (\U2|WideOr60~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr60~5_combout\,
	datab => \U2|WideOr60~6_combout\,
	datac => \U2|WideOr60~7_combout\,
	datad => \U2|WideOr60~4_combout\,
	combout => \U2|WideOr60~combout\);

-- Location: LCCOMB_X50_Y49_N16
\U3|Ram0~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~112_combout\ = (!\U2|WideOr61~combout\ & (!\U2|WideOr63~combout\ & (\U2|WideOr62~combout\ & \U2|WideOr60~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr61~combout\,
	datab => \U2|WideOr63~combout\,
	datac => \U2|WideOr62~combout\,
	datad => \U2|WideOr60~combout\,
	combout => \U3|Ram0~112_combout\);

-- Location: LCCOMB_X49_Y48_N28
\U3|Ram0~181\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~181_combout\ = (!\U2|WideOr65~combout\ & (!\U2|WideOr64~combout\ & \U3|Ram0~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~112_combout\,
	combout => \U3|Ram0~181_combout\);

-- Location: LCCOMB_X49_Y48_N26
\U3|Qs.s43~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s43~1_combout\ = (\RS~input_o\ & (\U3|Qs.s43~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s43~1_combout\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~181_combout\,
	combout => \U3|Qs.s43~1_combout\);

-- Location: LCCOMB_X43_Y3_N6
\U3|CLKDIV|TEMP~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|CLKDIV|TEMP~0_combout\ = !\U3|CLKDIV|TEMP~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|CLKDIV|TEMP~q\,
	combout => \U3|CLKDIV|TEMP~0_combout\);

-- Location: LCCOMB_X43_Y3_N26
\U3|CLKDIV|TEMP~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|CLKDIV|TEMP~feeder_combout\ = \U3|CLKDIV|TEMP~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|CLKDIV|TEMP~0_combout\,
	combout => \U3|CLKDIV|TEMP~feeder_combout\);

-- Location: FF_X43_Y3_N27
\U3|CLKDIV|TEMP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U3|CLKDIV|TEMP~feeder_combout\,
	ena => \U4|CLKDIV|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|CLKDIV|TEMP~q\);

-- Location: CLKCTRL_G16
\U3|CLKDIV|TEMP~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U3|CLKDIV|TEMP~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U3|CLKDIV|TEMP~clkctrl_outclk\);

-- Location: LCCOMB_X47_Y49_N8
\U3|Ram0~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~118_combout\ = (\U2|WideOr63~combout\ & (\U2|WideOr62~combout\ & (\U2|WideOr60~combout\ & !\U2|WideOr61~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr63~combout\,
	datab => \U2|WideOr62~combout\,
	datac => \U2|WideOr60~combout\,
	datad => \U2|WideOr61~combout\,
	combout => \U3|Ram0~118_combout\);

-- Location: LCCOMB_X50_Y47_N16
\U3|Ram0~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~144_combout\ = (\U2|WideOr65~combout\ & (\U3|Ram0~118_combout\ & \U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U3|Ram0~118_combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~144_combout\);

-- Location: LCCOMB_X50_Y47_N28
\U3|Qs.s44~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s44~1_combout\ = (\RS~input_o\ & (\U3|Qs.s44~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~144_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s44~1_combout\,
	datad => \U3|Ram0~144_combout\,
	combout => \U3|Qs.s44~1_combout\);

-- Location: LCCOMB_X50_Y47_N20
\U3|Ram0~174\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~174_combout\ = (!\U2|WideOr65~combout\ & (\U3|Ram0~118_combout\ & \U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U3|Ram0~118_combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~174_combout\);

-- Location: LCCOMB_X50_Y47_N0
\U3|Qs.s45~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s45~1_combout\ = (\RS~input_o\ & (\U3|Qs.s45~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~174_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s45~1_combout\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~174_combout\,
	combout => \U3|Qs.s45~1_combout\);

-- Location: LCCOMB_X50_Y47_N26
\U3|Ram0~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~160_combout\ = (\U2|WideOr65~combout\ & (\U3|Ram0~118_combout\ & !\U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U3|Ram0~118_combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~160_combout\);

-- Location: LCCOMB_X50_Y47_N22
\U3|Qs.s46~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s46~1_combout\ = (\RS~input_o\ & (\U3|Qs.s46~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~160_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s46~1_combout\,
	datac => \U3|Ram0~160_combout\,
	datad => \RS~input_o\,
	combout => \U3|Qs.s46~1_combout\);

-- Location: LCCOMB_X50_Y47_N6
\U3|Ram0~176\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~176_combout\ = (!\U2|WideOr65~combout\ & (\U3|Ram0~118_combout\ & !\U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U3|Ram0~118_combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~176_combout\);

-- Location: LCCOMB_X50_Y47_N18
\U3|Qs.s47~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s47~1_combout\ = (\RS~input_o\ & (\U3|Qs.s47~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~176_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s47~1_combout\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~176_combout\,
	combout => \U3|Qs.s47~1_combout\);

-- Location: LCCOMB_X51_Y46_N30
\U3|Ram0~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~121_combout\ = (!\U2|WideOr62~combout\ & (!\U2|WideOr63~combout\ & (\U2|WideOr61~combout\ & \U2|WideOr60~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr62~combout\,
	datab => \U2|WideOr63~combout\,
	datac => \U2|WideOr61~combout\,
	datad => \U2|WideOr60~combout\,
	combout => \U3|Ram0~121_combout\);

-- Location: LCCOMB_X51_Y46_N20
\U3|Ram0~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~147_combout\ = (\U2|WideOr65~combout\ & (\U3|Ram0~121_combout\ & \U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U3|Ram0~121_combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~147_combout\);

-- Location: LCCOMB_X51_Y46_N28
\U3|Qs.s48~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s48~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s48~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Ram0~147_combout\,
	datac => \U3|Qs.s48~1_combout\,
	datad => \RS~input_o\,
	combout => \U3|Qs.s48~1_combout\);

-- Location: LCCOMB_X51_Y46_N4
\U3|Ram0~175\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~175_combout\ = (\U2|WideOr64~combout\ & (\U3|Ram0~121_combout\ & !\U2|WideOr65~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|WideOr64~combout\,
	datac => \U3|Ram0~121_combout\,
	datad => \U2|WideOr65~combout\,
	combout => \U3|Ram0~175_combout\);

-- Location: LCCOMB_X51_Y46_N24
\U3|Qs.s49~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s49~1_combout\ = (\RS~input_o\ & (\U3|Qs.s49~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~175_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s49~1_combout\,
	datac => \U3|Ram0~175_combout\,
	datad => \RS~input_o\,
	combout => \U3|Qs.s49~1_combout\);

-- Location: LCCOMB_X51_Y46_N26
\U3|Ram0~161\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~161_combout\ = (\U2|WideOr65~combout\ & (\U3|Ram0~121_combout\ & !\U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U3|Ram0~121_combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~161_combout\);

-- Location: LCCOMB_X51_Y46_N14
\U3|Qs.s50~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s50~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s50~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~161_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Ram0~161_combout\,
	datac => \U3|Qs.s50~1_combout\,
	datad => \RS~input_o\,
	combout => \U3|Qs.s50~1_combout\);

-- Location: LCCOMB_X49_Y53_N28
\U3|Ram0~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~109_combout\ = (!\U2|WideOr62~combout\ & (\U2|WideOr63~combout\ & (\U2|WideOr60~combout\ & \U2|WideOr61~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr62~combout\,
	datab => \U2|WideOr63~combout\,
	datac => \U2|WideOr60~combout\,
	datad => \U2|WideOr61~combout\,
	combout => \U3|Ram0~109_combout\);

-- Location: LCCOMB_X49_Y53_N24
\U3|Ram0~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~137_combout\ = (\U2|WideOr65~combout\ & (\U2|WideOr64~combout\ & \U3|Ram0~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~109_combout\,
	combout => \U3|Ram0~137_combout\);

-- Location: LCCOMB_X49_Y53_N4
\U3|Qs.s52~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s52~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s52~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~137_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Ram0~137_combout\,
	datac => \U3|Qs.s52~1_combout\,
	datad => \RS~input_o\,
	combout => \U3|Qs.s52~1_combout\);

-- Location: LCCOMB_X50_Y51_N10
\U3|Ram0~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~164_combout\ = (!\U2|WideOr65~combout\ & (\U3|Ram0~109_combout\ & \U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U3|Ram0~109_combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~164_combout\);

-- Location: LCCOMB_X50_Y51_N24
\U3|Qs.s53~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s53~1_combout\ = (\RS~input_o\ & (\U3|Qs.s53~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~164_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s53~1_combout\,
	datad => \U3|Ram0~164_combout\,
	combout => \U3|Qs.s53~1_combout\);

-- Location: LCCOMB_X49_Y53_N20
\U3|Ram0~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~151_combout\ = (\U2|WideOr65~combout\ & (!\U2|WideOr64~combout\ & \U3|Ram0~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~109_combout\,
	combout => \U3|Ram0~151_combout\);

-- Location: LCCOMB_X49_Y53_N12
\U3|Qs.s54~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s54~1_combout\ = (\RS~input_o\ & (\U3|Qs.s54~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~151_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s54~1_combout\,
	datab => \U3|Ram0~151_combout\,
	datad => \RS~input_o\,
	combout => \U3|Qs.s54~1_combout\);

-- Location: LCCOMB_X52_Y49_N6
\U3|Ram0~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~129_combout\ = (\U2|WideOr63~combout\ & (!\U2|WideOr62~combout\ & !\U2|WideOr65~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr63~combout\,
	datac => \U2|WideOr62~combout\,
	datad => \U2|WideOr65~combout\,
	combout => \U3|Ram0~129_combout\);

-- Location: LCCOMB_X52_Y49_N18
\U3|Ram0~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~131_combout\ = (\U2|WideOr61~combout\ & (\U2|WideOr60~combout\ & (!\U2|WideOr64~combout\ & \U3|Ram0~129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr61~combout\,
	datab => \U2|WideOr60~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~129_combout\,
	combout => \U3|Ram0~131_combout\);

-- Location: LCCOMB_X52_Y49_N8
\U3|Qs.s55~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s55~1_combout\ = (\RS~input_o\ & (\U3|Qs.s55~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s55~1_combout\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~131_combout\,
	combout => \U3|Qs.s55~1_combout\);

-- Location: LCCOMB_X47_Y51_N24
\U3|Ram0~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~113_combout\ = (\U2|WideOr60~combout\ & (\U2|WideOr62~combout\ & (!\U2|WideOr63~combout\ & \U2|WideOr61~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr60~combout\,
	datab => \U2|WideOr62~combout\,
	datac => \U2|WideOr63~combout\,
	datad => \U2|WideOr61~combout\,
	combout => \U3|Ram0~113_combout\);

-- Location: LCCOMB_X47_Y51_N22
\U3|Ram0~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~141_combout\ = (\U2|WideOr65~combout\ & (\U2|WideOr64~combout\ & \U3|Ram0~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~113_combout\,
	combout => \U3|Ram0~141_combout\);

-- Location: LCCOMB_X47_Y51_N14
\U3|Qs.s56~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s56~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s56~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~141_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Ram0~141_combout\,
	datab => \U3|Qs.s56~1_combout\,
	datac => \RS~input_o\,
	combout => \U3|Qs.s56~1_combout\);

-- Location: LCCOMB_X47_Y51_N26
\U3|Ram0~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~168_combout\ = (!\U2|WideOr65~combout\ & (\U2|WideOr64~combout\ & \U3|Ram0~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~113_combout\,
	combout => \U3|Ram0~168_combout\);

-- Location: LCCOMB_X47_Y51_N10
\U3|Qs.s57~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s57~1_combout\ = (\RS~input_o\ & (\U3|Qs.s57~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~168_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s57~1_combout\,
	datac => \U3|Ram0~168_combout\,
	datad => \RS~input_o\,
	combout => \U3|Qs.s57~1_combout\);

-- Location: LCCOMB_X47_Y51_N12
\U3|Ram0~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~155_combout\ = (\U2|WideOr65~combout\ & (!\U2|WideOr64~combout\ & \U3|Ram0~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~113_combout\,
	combout => \U3|Ram0~155_combout\);

-- Location: LCCOMB_X47_Y51_N4
\U3|Qs.s58~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s58~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s58~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~155_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Ram0~155_combout\,
	datac => \U3|Qs.s58~1_combout\,
	datad => \RS~input_o\,
	combout => \U3|Qs.s58~1_combout\);

-- Location: LCCOMB_X47_Y51_N28
\U3|Ram0~182\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~182_combout\ = (!\U2|WideOr65~combout\ & (!\U2|WideOr64~combout\ & \U3|Ram0~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~113_combout\,
	combout => \U3|Ram0~182_combout\);

-- Location: LCCOMB_X47_Y51_N0
\U3|Qs.s59~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s59~1_combout\ = (\RS~input_o\ & (\U3|Qs.s59~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s59~1_combout\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~182_combout\,
	combout => \U3|Qs.s59~1_combout\);

-- Location: LCCOMB_X51_Y48_N2
\U3|Ram0~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~114_combout\ = (\U2|WideOr60~combout\) # ((!\U2|WideOr63~combout\ & ((!\U2|WideOr64~combout\) # (!\U2|WideOr65~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr60~combout\,
	datab => \U2|WideOr63~combout\,
	datac => \U2|WideOr65~combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~114_combout\);

-- Location: LCCOMB_X51_Y48_N4
\U3|Ram0~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~115_combout\ = (\U2|WideOr62~combout\ & (\U2|WideOr63~combout\ & (\U2|WideOr61~combout\ & \U3|Ram0~114_combout\))) # (!\U2|WideOr62~combout\ & (!\U2|WideOr63~combout\ & (!\U2|WideOr61~combout\ & !\U3|Ram0~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr62~combout\,
	datab => \U2|WideOr63~combout\,
	datac => \U2|WideOr61~combout\,
	datad => \U3|Ram0~114_combout\,
	combout => \U3|Ram0~115_combout\);

-- Location: LCCOMB_X51_Y48_N14
\U3|Qs.s0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s0~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s0~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Ram0~115_combout\,
	datac => \U3|Qs.s0~1_combout\,
	combout => \U3|Qs.s0~1_combout\);

-- Location: LCCOMB_X51_Y47_N24
\U3|Ram0~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~122_combout\ = (!\U2|WideOr60~combout\ & (!\U2|WideOr62~combout\ & (!\U2|WideOr63~combout\ & !\U2|WideOr61~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr60~combout\,
	datab => \U2|WideOr62~combout\,
	datac => \U2|WideOr63~combout\,
	datad => \U2|WideOr61~combout\,
	combout => \U3|Ram0~122_combout\);

-- Location: LCCOMB_X51_Y47_N22
\U3|Ram0~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~156_combout\ = (\U2|WideOr65~combout\ & (!\U2|WideOr64~combout\ & \U3|Ram0~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|WideOr65~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~122_combout\,
	combout => \U3|Ram0~156_combout\);

-- Location: LCCOMB_X51_Y47_N6
\U3|Qs.s2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s2~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s2~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~156_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Ram0~156_combout\,
	datab => \RS~input_o\,
	datad => \U3|Qs.s2~1_combout\,
	combout => \U3|Qs.s2~1_combout\);

-- Location: LCCOMB_X51_Y47_N10
\U3|Ram0~186\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~186_combout\ = (!\U2|WideOr65~combout\ & (!\U2|WideOr64~combout\ & \U3|Ram0~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|WideOr65~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~122_combout\,
	combout => \U3|Ram0~186_combout\);

-- Location: LCCOMB_X51_Y47_N26
\U3|Qs.s3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s3~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s3~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~186_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Ram0~186_combout\,
	datab => \RS~input_o\,
	datac => \U3|Qs.s3~1_combout\,
	combout => \U3|Qs.s3~1_combout\);

-- Location: LCCOMB_X49_Y51_N14
\U3|Ram0~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~106_combout\ = (!\U2|WideOr62~combout\ & (\U2|WideOr63~combout\ & (!\U2|WideOr60~combout\ & !\U2|WideOr61~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr62~combout\,
	datab => \U2|WideOr63~combout\,
	datac => \U2|WideOr60~combout\,
	datad => \U2|WideOr61~combout\,
	combout => \U3|Ram0~106_combout\);

-- Location: LCCOMB_X50_Y48_N0
\U3|Ram0~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~134_combout\ = (\U2|WideOr65~combout\ & (\U3|Ram0~106_combout\ & \U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|WideOr65~combout\,
	datac => \U3|Ram0~106_combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~134_combout\);

-- Location: LCCOMB_X50_Y48_N14
\U3|Qs.s4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s4~1_combout\ = (\RS~input_o\ & (\U3|Qs.s4~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RS~input_o\,
	datac => \U3|Qs.s4~1_combout\,
	datad => \U3|Ram0~134_combout\,
	combout => \U3|Qs.s4~1_combout\);

-- Location: LCCOMB_X49_Y51_N22
\U3|Ram0~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~162_combout\ = (!\U2|WideOr65~combout\ & (\U2|WideOr64~combout\ & \U3|Ram0~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|WideOr65~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~106_combout\,
	combout => \U3|Ram0~162_combout\);

-- Location: LCCOMB_X49_Y51_N8
\U3|Qs.s5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s5~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s5~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~162_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Ram0~162_combout\,
	datab => \U3|Qs.s5~1_combout\,
	datac => \RS~input_o\,
	combout => \U3|Qs.s5~1_combout\);

-- Location: LCCOMB_X49_Y51_N16
\U3|Ram0~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~148_combout\ = (!\U2|WideOr64~combout\ & (\U3|Ram0~106_combout\ & \U2|WideOr65~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|WideOr64~combout\,
	datac => \U3|Ram0~106_combout\,
	datad => \U2|WideOr65~combout\,
	combout => \U3|Ram0~148_combout\);

-- Location: LCCOMB_X49_Y51_N26
\U3|Qs.s6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s6~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s6~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~148_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Ram0~148_combout\,
	datac => \U3|Qs.s6~1_combout\,
	combout => \U3|Qs.s6~1_combout\);

-- Location: LCCOMB_X49_Y51_N4
\U3|Ram0~178\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~178_combout\ = (!\U2|WideOr64~combout\ & (\U3|Ram0~106_combout\ & !\U2|WideOr65~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|WideOr64~combout\,
	datac => \U3|Ram0~106_combout\,
	datad => \U2|WideOr65~combout\,
	combout => \U3|Ram0~178_combout\);

-- Location: LCCOMB_X49_Y51_N28
\U3|Qs.s7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s7~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s7~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~178_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RS~input_o\,
	datac => \U3|Ram0~178_combout\,
	datad => \U3|Qs.s7~1_combout\,
	combout => \U3|Qs.s7~1_combout\);

-- Location: LCCOMB_X49_Y53_N6
\U3|Ram0~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~110_combout\ = (\U2|WideOr62~combout\ & (!\U2|WideOr63~combout\ & (!\U2|WideOr60~combout\ & !\U2|WideOr61~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr62~combout\,
	datab => \U2|WideOr63~combout\,
	datac => \U2|WideOr60~combout\,
	datad => \U2|WideOr61~combout\,
	combout => \U3|Ram0~110_combout\);

-- Location: LCCOMB_X49_Y53_N30
\U3|Ram0~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~138_combout\ = (\U2|WideOr65~combout\ & (\U2|WideOr64~combout\ & \U3|Ram0~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~110_combout\,
	combout => \U3|Ram0~138_combout\);

-- Location: LCCOMB_X49_Y53_N26
\U3|Qs.s8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s8~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s8~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Ram0~138_combout\,
	datac => \U3|Qs.s8~1_combout\,
	datad => \RS~input_o\,
	combout => \U3|Qs.s8~1_combout\);

-- Location: LCCOMB_X49_Y49_N28
\U3|Ram0~165\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~165_combout\ = (\U2|WideOr64~combout\ & (!\U2|WideOr65~combout\ & \U3|Ram0~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr64~combout\,
	datab => \U2|WideOr65~combout\,
	datad => \U3|Ram0~110_combout\,
	combout => \U3|Ram0~165_combout\);

-- Location: LCCOMB_X49_Y49_N12
\U3|Qs.s9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s9~1_combout\ = (\RS~input_o\ & (\U3|Qs.s9~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~165_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s9~1_combout\,
	datad => \U3|Ram0~165_combout\,
	combout => \U3|Qs.s9~1_combout\);

-- Location: LCCOMB_X49_Y53_N22
\U3|Ram0~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~152_combout\ = (\U2|WideOr65~combout\ & (!\U2|WideOr64~combout\ & \U3|Ram0~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~110_combout\,
	combout => \U3|Ram0~152_combout\);

-- Location: LCCOMB_X49_Y53_N10
\U3|Qs.s10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s10~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s10~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datac => \U3|Ram0~152_combout\,
	datad => \U3|Qs.s10~1_combout\,
	combout => \U3|Qs.s10~1_combout\);

-- Location: LCCOMB_X52_Y49_N12
\U3|Ram0~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~132_combout\ = (!\U2|WideOr61~combout\ & (\U2|WideOr62~combout\ & !\U2|WideOr65~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr61~combout\,
	datac => \U2|WideOr62~combout\,
	datad => \U2|WideOr65~combout\,
	combout => \U3|Ram0~132_combout\);

-- Location: LCCOMB_X52_Y49_N10
\U3|Ram0~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~133_combout\ = (!\U2|WideOr64~combout\ & (!\U2|WideOr60~combout\ & (!\U2|WideOr63~combout\ & \U3|Ram0~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr64~combout\,
	datab => \U2|WideOr60~combout\,
	datac => \U2|WideOr63~combout\,
	datad => \U3|Ram0~132_combout\,
	combout => \U3|Ram0~133_combout\);

-- Location: LCCOMB_X52_Y49_N22
\U3|Qs.s11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s11~1_combout\ = (\RS~input_o\ & (\U3|Qs.s11~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RS~input_o\,
	datac => \U3|Qs.s11~1_combout\,
	datad => \U3|Ram0~133_combout\,
	combout => \U3|Qs.s11~1_combout\);

-- Location: LCCOMB_X47_Y50_N8
\U3|Ram0~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~116_combout\ = (!\U2|WideOr60~combout\ & (\U2|WideOr62~combout\ & (\U2|WideOr63~combout\ & !\U2|WideOr61~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr60~combout\,
	datab => \U2|WideOr62~combout\,
	datac => \U2|WideOr63~combout\,
	datad => \U2|WideOr61~combout\,
	combout => \U3|Ram0~116_combout\);

-- Location: LCCOMB_X47_Y50_N6
\U3|Ram0~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~142_combout\ = (\U3|Ram0~116_combout\ & (\U2|WideOr65~combout\ & \U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Ram0~116_combout\,
	datac => \U2|WideOr65~combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~142_combout\);

-- Location: LCCOMB_X47_Y50_N22
\U3|Qs.s12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s12~1_combout\ = (\RS~input_o\ & (\U3|Qs.s12~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~142_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s12~1_combout\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~142_combout\,
	combout => \U3|Qs.s12~1_combout\);

-- Location: LCCOMB_X47_Y50_N14
\U3|Ram0~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~170_combout\ = (\U3|Ram0~116_combout\ & (!\U2|WideOr65~combout\ & \U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Ram0~116_combout\,
	datac => \U2|WideOr65~combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~170_combout\);

-- Location: LCCOMB_X47_Y50_N18
\U3|Qs.s13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s13~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s13~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~170_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Ram0~170_combout\,
	datac => \RS~input_o\,
	datad => \U3|Qs.s13~1_combout\,
	combout => \U3|Qs.s13~1_combout\);

-- Location: LCCOMB_X47_Y50_N4
\U3|Ram0~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~157_combout\ = (\U3|Ram0~116_combout\ & (\U2|WideOr65~combout\ & !\U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Ram0~116_combout\,
	datac => \U2|WideOr65~combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~157_combout\);

-- Location: LCCOMB_X47_Y50_N16
\U3|Qs.s14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s14~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s14~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~157_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Ram0~157_combout\,
	datac => \RS~input_o\,
	datad => \U3|Qs.s14~1_combout\,
	combout => \U3|Qs.s14~1_combout\);

-- Location: LCCOMB_X47_Y50_N0
\U3|Ram0~177\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~177_combout\ = (\U3|Ram0~116_combout\ & (!\U2|WideOr65~combout\ & !\U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Ram0~116_combout\,
	datac => \U2|WideOr65~combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~177_combout\);

-- Location: LCCOMB_X46_Y50_N14
\U3|Qs.s15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s15~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s15~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~177_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Ram0~177_combout\,
	datac => \U3|Qs.s15~1_combout\,
	datad => \RS~input_o\,
	combout => \U3|Qs.s15~1_combout\);

-- Location: LCCOMB_X50_Y49_N22
\U3|Ram0~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~119_combout\ = (\U2|WideOr61~combout\ & (!\U2|WideOr63~combout\ & (!\U2|WideOr62~combout\ & !\U2|WideOr60~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr61~combout\,
	datab => \U2|WideOr63~combout\,
	datac => \U2|WideOr62~combout\,
	datad => \U2|WideOr60~combout\,
	combout => \U3|Ram0~119_combout\);

-- Location: LCCOMB_X51_Y51_N30
\U3|Ram0~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~145_combout\ = (\U2|WideOr65~combout\ & (\U2|WideOr64~combout\ & \U3|Ram0~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~119_combout\,
	combout => \U3|Ram0~145_combout\);

-- Location: LCCOMB_X51_Y51_N4
\U3|Qs.s16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s16~1_combout\ = (\RS~input_o\ & (\U3|Qs.s16~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s16~1_combout\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~145_combout\,
	combout => \U3|Qs.s16~1_combout\);

-- Location: LCCOMB_X50_Y49_N4
\U3|Ram0~171\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~171_combout\ = (\U2|WideOr64~combout\ & (\U3|Ram0~119_combout\ & !\U2|WideOr65~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|WideOr64~combout\,
	datac => \U3|Ram0~119_combout\,
	datad => \U2|WideOr65~combout\,
	combout => \U3|Ram0~171_combout\);

-- Location: LCCOMB_X50_Y49_N18
\U3|Qs.s17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s17~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s17~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~171_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Ram0~171_combout\,
	datac => \RS~input_o\,
	datad => \U3|Qs.s17~1_combout\,
	combout => \U3|Qs.s17~1_combout\);

-- Location: LCCOMB_X51_Y51_N16
\U3|Ram0~185\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~185_combout\ = (!\U2|WideOr65~combout\ & (!\U2|WideOr64~combout\ & \U3|Ram0~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~119_combout\,
	combout => \U3|Ram0~185_combout\);

-- Location: LCCOMB_X51_Y51_N26
\U3|Qs.s19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s19~1_combout\ = (\RS~input_o\ & (\U3|Qs.s19~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datac => \U3|Qs.s19~1_combout\,
	datad => \U3|Ram0~185_combout\,
	combout => \U3|Qs.s19~1_combout\);

-- Location: LCCOMB_X51_Y49_N30
\U3|Ram0~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~107_combout\ = (!\U2|WideOr62~combout\ & (\U2|WideOr61~combout\ & (!\U2|WideOr60~combout\ & \U2|WideOr63~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr62~combout\,
	datab => \U2|WideOr61~combout\,
	datac => \U2|WideOr60~combout\,
	datad => \U2|WideOr63~combout\,
	combout => \U3|Ram0~107_combout\);

-- Location: LCCOMB_X50_Y48_N26
\U3|Ram0~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~135_combout\ = (\U2|WideOr65~combout\ & (\U3|Ram0~107_combout\ & \U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|WideOr65~combout\,
	datac => \U3|Ram0~107_combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~135_combout\);

-- Location: LCCOMB_X50_Y48_N12
\U3|Qs.s20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s20~1_combout\ = (\RS~input_o\ & (\U3|Qs.s20~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s20~1_combout\,
	datac => \U3|Ram0~135_combout\,
	datad => \RS~input_o\,
	combout => \U3|Qs.s20~1_combout\);

-- Location: LCCOMB_X50_Y48_N24
\U3|Ram0~163\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~163_combout\ = (\U3|Ram0~107_combout\ & (!\U2|WideOr65~combout\ & \U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Ram0~107_combout\,
	datac => \U2|WideOr65~combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~163_combout\);

-- Location: LCCOMB_X50_Y48_N10
\U3|Qs.s21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s21~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s21~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~163_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Ram0~163_combout\,
	datad => \U3|Qs.s21~1_combout\,
	combout => \U3|Qs.s21~1_combout\);

-- Location: LCCOMB_X51_Y48_N30
\U3|Ram0~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~149_combout\ = (\U3|Ram0~107_combout\ & (\U2|WideOr65~combout\ & !\U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Ram0~107_combout\,
	datac => \U2|WideOr65~combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~149_combout\);

-- Location: LCCOMB_X51_Y48_N16
\U3|Qs.s22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s22~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s22~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~149_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RS~input_o\,
	datac => \U3|Ram0~149_combout\,
	datad => \U3|Qs.s22~1_combout\,
	combout => \U3|Qs.s22~1_combout\);

-- Location: LCCOMB_X51_Y48_N24
\U3|Ram0~179\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~179_combout\ = (\U3|Ram0~107_combout\ & (!\U2|WideOr65~combout\ & !\U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Ram0~107_combout\,
	datac => \U2|WideOr65~combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~179_combout\);

-- Location: LCCOMB_X51_Y48_N18
\U3|Qs.s23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s23~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s23~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~179_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Ram0~179_combout\,
	datad => \U3|Qs.s23~1_combout\,
	combout => \U3|Qs.s23~1_combout\);

-- Location: LCCOMB_X49_Y52_N16
\U3|Ram0~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~111_combout\ = (!\U2|WideOr60~combout\ & (!\U2|WideOr63~combout\ & (\U2|WideOr61~combout\ & \U2|WideOr62~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr60~combout\,
	datab => \U2|WideOr63~combout\,
	datac => \U2|WideOr61~combout\,
	datad => \U2|WideOr62~combout\,
	combout => \U3|Ram0~111_combout\);

-- Location: LCCOMB_X51_Y51_N20
\U3|Ram0~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~139_combout\ = (\U2|WideOr65~combout\ & (\U2|WideOr64~combout\ & \U3|Ram0~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~111_combout\,
	combout => \U3|Ram0~139_combout\);

-- Location: LCCOMB_X51_Y51_N22
\U3|Qs.s24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s24~1_combout\ = (\RS~input_o\ & (\U3|Qs.s24~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datac => \U3|Qs.s24~1_combout\,
	datad => \U3|Ram0~139_combout\,
	combout => \U3|Qs.s24~1_combout\);

-- Location: LCCOMB_X49_Y52_N18
\U3|Ram0~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~166_combout\ = (!\U2|WideOr65~combout\ & (\U2|WideOr64~combout\ & \U3|Ram0~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~111_combout\,
	combout => \U3|Ram0~166_combout\);

-- Location: LCCOMB_X49_Y52_N12
\U3|Qs.s25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s25~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s25~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~166_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Ram0~166_combout\,
	datac => \RS~input_o\,
	datad => \U3|Qs.s25~1_combout\,
	combout => \U3|Qs.s25~1_combout\);

-- Location: LCCOMB_X49_Y52_N24
\U3|Ram0~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~153_combout\ = (\U3|Ram0~111_combout\ & (\U2|WideOr65~combout\ & !\U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Ram0~111_combout\,
	datac => \U2|WideOr65~combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~153_combout\);

-- Location: LCCOMB_X49_Y52_N2
\U3|Qs.s26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s26~1_combout\ = (\RS~input_o\ & (\U3|Qs.s26~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s26~1_combout\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~153_combout\,
	combout => \U3|Qs.s26~1_combout\);

-- Location: LCCOMB_X49_Y52_N20
\U3|Ram0~180\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~180_combout\ = (\U3|Ram0~111_combout\ & (!\U2|WideOr65~combout\ & !\U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Ram0~111_combout\,
	datac => \U2|WideOr65~combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~180_combout\);

-- Location: LCCOMB_X49_Y52_N30
\U3|Qs.s27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s27~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s27~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~180_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Ram0~180_combout\,
	datac => \U3|Qs.s27~1_combout\,
	datad => \RS~input_o\,
	combout => \U3|Qs.s27~1_combout\);

-- Location: LCCOMB_X46_Y50_N30
\U3|Ram0~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~117_combout\ = (\U2|WideOr61~combout\ & (!\U2|WideOr60~combout\ & (\U2|WideOr62~combout\ & \U2|WideOr63~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr61~combout\,
	datab => \U2|WideOr60~combout\,
	datac => \U2|WideOr62~combout\,
	datad => \U2|WideOr63~combout\,
	combout => \U3|Ram0~117_combout\);

-- Location: LCCOMB_X46_Y50_N24
\U3|Ram0~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~143_combout\ = (\U2|WideOr64~combout\ & (\U2|WideOr65~combout\ & \U3|Ram0~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr64~combout\,
	datab => \U2|WideOr65~combout\,
	datac => \U3|Ram0~117_combout\,
	combout => \U3|Ram0~143_combout\);

-- Location: LCCOMB_X46_Y50_N4
\U3|Qs.s28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s28~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s28~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~143_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Ram0~143_combout\,
	datac => \U3|Qs.s28~1_combout\,
	datad => \RS~input_o\,
	combout => \U3|Qs.s28~1_combout\);

-- Location: LCCOMB_X46_Y50_N6
\U3|Ram0~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~172_combout\ = (\U2|WideOr64~combout\ & (!\U2|WideOr65~combout\ & \U3|Ram0~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr64~combout\,
	datab => \U2|WideOr65~combout\,
	datac => \U3|Ram0~117_combout\,
	combout => \U3|Ram0~172_combout\);

-- Location: LCCOMB_X46_Y50_N8
\U3|Qs.s29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s29~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s29~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~172_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Ram0~172_combout\,
	datac => \U3|Qs.s29~1_combout\,
	datad => \RS~input_o\,
	combout => \U3|Qs.s29~1_combout\);

-- Location: LCCOMB_X46_Y50_N20
\U3|Ram0~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~123_combout\ = (!\U2|WideOr64~combout\ & (\U2|WideOr62~combout\ & \U2|WideOr65~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr64~combout\,
	datab => \U2|WideOr62~combout\,
	datac => \U2|WideOr65~combout\,
	combout => \U3|Ram0~123_combout\);

-- Location: LCCOMB_X46_Y50_N2
\U3|Ram0~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~124_combout\ = (\U2|WideOr63~combout\ & (\U2|WideOr61~combout\ & (!\U2|WideOr60~combout\ & \U3|Ram0~123_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr63~combout\,
	datab => \U2|WideOr61~combout\,
	datac => \U2|WideOr60~combout\,
	datad => \U3|Ram0~123_combout\,
	combout => \U3|Ram0~124_combout\);

-- Location: LCCOMB_X46_Y50_N22
\U3|Qs.s30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s30~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s30~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Ram0~124_combout\,
	datac => \U3|Qs.s30~1_combout\,
	datad => \RS~input_o\,
	combout => \U3|Qs.s30~1_combout\);

-- Location: LCCOMB_X49_Y51_N0
\U3|Ram0~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~127_combout\ = (\U2|WideOr62~combout\ & (\U2|WideOr61~combout\ & !\U2|WideOr65~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr62~combout\,
	datac => \U2|WideOr61~combout\,
	datad => \U2|WideOr65~combout\,
	combout => \U3|Ram0~127_combout\);

-- Location: LCCOMB_X49_Y51_N6
\U3|Ram0~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~128_combout\ = (!\U2|WideOr60~combout\ & (\U2|WideOr63~combout\ & (!\U2|WideOr64~combout\ & \U3|Ram0~127_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr60~combout\,
	datab => \U2|WideOr63~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~127_combout\,
	combout => \U3|Ram0~128_combout\);

-- Location: LCCOMB_X49_Y51_N10
\U3|Qs.s31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s31~1_combout\ = (\RS~input_o\ & (\U3|Qs.s31~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s31~1_combout\,
	datac => \U3|Ram0~128_combout\,
	datad => \RS~input_o\,
	combout => \U3|Qs.s31~1_combout\);

-- Location: LCCOMB_X50_Y46_N24
\U3|Ram0~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~120_combout\ = (!\U2|WideOr61~combout\ & (!\U2|WideOr63~combout\ & (\U2|WideOr60~combout\ & !\U2|WideOr62~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr61~combout\,
	datab => \U2|WideOr63~combout\,
	datac => \U2|WideOr60~combout\,
	datad => \U2|WideOr62~combout\,
	combout => \U3|Ram0~120_combout\);

-- Location: LCCOMB_X51_Y47_N28
\U3|Ram0~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~146_combout\ = (\U2|WideOr64~combout\ & (\U3|Ram0~120_combout\ & \U2|WideOr65~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr64~combout\,
	datac => \U3|Ram0~120_combout\,
	datad => \U2|WideOr65~combout\,
	combout => \U3|Ram0~146_combout\);

-- Location: LCCOMB_X51_Y47_N12
\U3|Qs.s32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s32~1_combout\ = (\RS~input_o\ & (\U3|Qs.s32~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s32~1_combout\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~146_combout\,
	combout => \U3|Qs.s32~1_combout\);

-- Location: LCCOMB_X51_Y49_N2
\U3|Ram0~173\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~173_combout\ = (!\U2|WideOr65~combout\ & (\U3|Ram0~120_combout\ & \U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|WideOr65~combout\,
	datac => \U3|Ram0~120_combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~173_combout\);

-- Location: LCCOMB_X51_Y49_N16
\U3|Qs.s33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s33~1_combout\ = (\RS~input_o\ & (\U3|Qs.s33~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s33~1_combout\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~173_combout\,
	combout => \U3|Qs.s33~1_combout\);

-- Location: LCCOMB_X51_Y49_N20
\U3|Ram0~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~159_combout\ = (\U2|WideOr65~combout\ & (\U3|Ram0~120_combout\ & !\U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|WideOr65~combout\,
	datac => \U3|Ram0~120_combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~159_combout\);

-- Location: LCCOMB_X51_Y49_N18
\U3|Qs.s34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s34~1_combout\ = (\RS~input_o\ & (\U3|Qs.s34~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~159_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s34~1_combout\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~159_combout\,
	combout => \U3|Qs.s34~1_combout\);

-- Location: LCCOMB_X51_Y49_N12
\U3|Ram0~183\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~183_combout\ = (!\U2|WideOr65~combout\ & (\U3|Ram0~120_combout\ & !\U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|WideOr65~combout\,
	datac => \U3|Ram0~120_combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~183_combout\);

-- Location: LCCOMB_X51_Y49_N10
\U3|Qs.s35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s35~1_combout\ = (\RS~input_o\ & (\U3|Qs.s35~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~183_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s35~1_combout\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~183_combout\,
	combout => \U3|Qs.s35~1_combout\);

-- Location: LCCOMB_X50_Y52_N16
\U3|Ram0~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~108_combout\ = (\U2|WideOr63~combout\ & (\U2|WideOr60~combout\ & (!\U2|WideOr61~combout\ & !\U2|WideOr62~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr63~combout\,
	datab => \U2|WideOr60~combout\,
	datac => \U2|WideOr61~combout\,
	datad => \U2|WideOr62~combout\,
	combout => \U3|Ram0~108_combout\);

-- Location: LCCOMB_X50_Y52_N22
\U3|Ram0~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~136_combout\ = (\U2|WideOr65~combout\ & (\U3|Ram0~108_combout\ & \U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|WideOr65~combout\,
	datac => \U3|Ram0~108_combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~136_combout\);

-- Location: LCCOMB_X50_Y52_N14
\U3|Qs.s36~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s36~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s36~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~136_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Ram0~136_combout\,
	datab => \U3|Qs.s36~1_combout\,
	datac => \RS~input_o\,
	combout => \U3|Qs.s36~1_combout\);

-- Location: LCCOMB_X52_Y49_N2
\U3|Ram0~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~125_combout\ = (\U2|WideOr64~combout\ & (!\U2|WideOr62~combout\ & !\U2|WideOr65~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr64~combout\,
	datac => \U2|WideOr62~combout\,
	datad => \U2|WideOr65~combout\,
	combout => \U3|Ram0~125_combout\);

-- Location: LCCOMB_X52_Y49_N28
\U3|Ram0~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~126_combout\ = (!\U2|WideOr61~combout\ & (\U2|WideOr60~combout\ & (\U2|WideOr63~combout\ & \U3|Ram0~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr61~combout\,
	datab => \U2|WideOr60~combout\,
	datac => \U2|WideOr63~combout\,
	datad => \U3|Ram0~125_combout\,
	combout => \U3|Ram0~126_combout\);

-- Location: LCCOMB_X52_Y49_N4
\U3|Qs.s37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s37~1_combout\ = (\RS~input_o\ & (\U3|Qs.s37~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s37~1_combout\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~126_combout\,
	combout => \U3|Qs.s37~1_combout\);

-- Location: LCCOMB_X50_Y52_N0
\U3|Ram0~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~150_combout\ = (\U2|WideOr65~combout\ & (\U3|Ram0~108_combout\ & !\U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|WideOr65~combout\,
	datac => \U3|Ram0~108_combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~150_combout\);

-- Location: LCCOMB_X50_Y52_N4
\U3|Qs.s38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s38~1_combout\ = (\RS~input_o\ & (\U3|Qs.s38~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~150_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s38~1_combout\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~150_combout\,
	combout => \U3|Qs.s38~1_combout\);

-- Location: LCCOMB_X52_Y49_N16
\U3|Ram0~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~130_combout\ = (!\U2|WideOr61~combout\ & (\U2|WideOr60~combout\ & (!\U2|WideOr64~combout\ & \U3|Ram0~129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr61~combout\,
	datab => \U2|WideOr60~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~129_combout\,
	combout => \U3|Ram0~130_combout\);

-- Location: LCCOMB_X52_Y49_N14
\U3|Qs.s39~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s39~1_combout\ = (\RS~input_o\ & (\U3|Qs.s39~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RS~input_o\,
	datac => \U3|Qs.s39~1_combout\,
	datad => \U3|Ram0~130_combout\,
	combout => \U3|Qs.s39~1_combout\);

-- Location: LCCOMB_X50_Y49_N8
\U3|Ram0~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~140_combout\ = (\U2|WideOr65~combout\ & (\U2|WideOr64~combout\ & \U3|Ram0~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|WideOr65~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~112_combout\,
	combout => \U3|Ram0~140_combout\);

-- Location: LCCOMB_X50_Y49_N10
\U3|Qs.s40~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s40~1_combout\ = (\RS~input_o\ & (\U3|Qs.s40~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s40~1_combout\,
	datac => \U3|Ram0~140_combout\,
	datad => \RS~input_o\,
	combout => \U3|Qs.s40~1_combout\);

-- Location: LCCOMB_X49_Y48_N30
\U3|Ram0~167\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~167_combout\ = (!\U2|WideOr65~combout\ & (\U2|WideOr64~combout\ & \U3|Ram0~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~112_combout\,
	combout => \U3|Ram0~167_combout\);

-- Location: LCCOMB_X49_Y48_N24
\U3|Qs.s41~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s41~1_combout\ = (\RS~input_o\ & (\U3|Qs.s41~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~167_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s41~1_combout\,
	datac => \U3|Ram0~167_combout\,
	datad => \RS~input_o\,
	combout => \U3|Qs.s41~1_combout\);

-- Location: LCCOMB_X49_Y48_N12
\U3|Ram0~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~154_combout\ = (\U2|WideOr65~combout\ & (!\U2|WideOr64~combout\ & \U3|Ram0~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U2|WideOr64~combout\,
	datad => \U3|Ram0~112_combout\,
	combout => \U3|Ram0~154_combout\);

-- Location: LCCOMB_X49_Y48_N22
\U3|Qs.s42~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s42~1_combout\ = (\RS~input_o\ & (\U3|Qs.s42~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datac => \U3|Qs.s42~1_combout\,
	datad => \U3|Ram0~154_combout\,
	combout => \U3|Qs.s42~1_combout\);

-- Location: LCCOMB_X49_Y48_N18
\U3|Qs.s42~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s42~3_combout\ = \U3|Qs.s43~2_combout\ $ (\U3|Qs.s42~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Qs.s43~2_combout\,
	datad => \U3|Qs.s42~1_combout\,
	combout => \U3|Qs.s42~3_combout\);

-- Location: IOIBUF_X49_Y54_N1
\K~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K,
	o => \K~input_o\);

-- Location: LCCOMB_X50_Y48_N20
\U3|WideOr64~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr64~4_combout\ = (!\U3|Qs.s53~2_combout\ & (!\U3|Qs.s5~2_combout\ & (!\U3|Qs.s21~2_combout\ & !\U3|Qs.s37~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s53~2_combout\,
	datab => \U3|Qs.s5~2_combout\,
	datac => \U3|Qs.s21~2_combout\,
	datad => \U3|Qs.s37~2_combout\,
	combout => \U3|WideOr64~4_combout\);

-- Location: LCCOMB_X50_Y52_N28
\U3|WideOr64~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr64~0_combout\ = (!\U3|Qs.s36~2_combout\ & (!\U3|Qs.s20~2_combout\ & (!\U3|Qs.s52~2_combout\ & !\U3|Qs.s4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s36~2_combout\,
	datab => \U3|Qs.s20~2_combout\,
	datac => \U3|Qs.s52~2_combout\,
	datad => \U3|Qs.s4~2_combout\,
	combout => \U3|WideOr64~0_combout\);

-- Location: LCCOMB_X51_Y51_N28
\U3|WideOr63~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr63~4_combout\ = (\U3|Qs.s7~2_combout\) # ((\U3|Qs.s55~2_combout\) # ((\U3|Qs.s23~2_combout\) # (\U3|Qs.s39~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s7~2_combout\,
	datab => \U3|Qs.s55~2_combout\,
	datac => \U3|Qs.s23~2_combout\,
	datad => \U3|Qs.s39~2_combout\,
	combout => \U3|WideOr63~4_combout\);

-- Location: LCCOMB_X50_Y50_N10
\U3|WideOr63~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr63~0_combout\ = (!\U3|Qs.s14~2_combout\ & (!\U3|Qs.s28~2_combout\ & (!\U3|Qs.s12~2_combout\ & !\U3|Qs.s44~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s14~2_combout\,
	datab => \U3|Qs.s28~2_combout\,
	datac => \U3|Qs.s12~2_combout\,
	datad => \U3|Qs.s44~2_combout\,
	combout => \U3|WideOr63~0_combout\);

-- Location: LCCOMB_X50_Y50_N28
\U3|WideOr63~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr63~1_combout\ = (!\U3|Qs.s45~2_combout\ & (!\U3|Qs.s46~2_combout\ & (!\U3|Qs.s47~2_combout\ & !\U3|Qs.s13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s45~2_combout\,
	datab => \U3|Qs.s46~2_combout\,
	datac => \U3|Qs.s47~2_combout\,
	datad => \U3|Qs.s13~2_combout\,
	combout => \U3|WideOr63~1_combout\);

-- Location: LCCOMB_X50_Y50_N26
\U3|WideOr65~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr65~0_combout\ = (!\U3|Qs.s54~2_combout\ & (!\U3|Qs.s38~2_combout\ & (!\U3|Qs.s22~2_combout\ & !\U3|Qs.s6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s54~2_combout\,
	datab => \U3|Qs.s38~2_combout\,
	datac => \U3|Qs.s22~2_combout\,
	datad => \U3|Qs.s6~2_combout\,
	combout => \U3|WideOr65~0_combout\);

-- Location: LCCOMB_X46_Y50_N16
\U3|WideOr63~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr63~2_combout\ = (!\U3|Qs.s29~2_combout\ & (!\U3|Qs.s30~2_combout\ & (!\U3|Qs.s15~2_combout\ & !\U3|Qs.s31~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s29~2_combout\,
	datab => \U3|Qs.s30~2_combout\,
	datac => \U3|Qs.s15~2_combout\,
	datad => \U3|Qs.s31~2_combout\,
	combout => \U3|WideOr63~2_combout\);

-- Location: LCCOMB_X50_Y50_N14
\U3|WideOr63~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr63~3_combout\ = (((!\U3|WideOr63~2_combout\) # (!\U3|WideOr65~0_combout\)) # (!\U3|WideOr63~1_combout\)) # (!\U3|WideOr63~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|WideOr63~0_combout\,
	datab => \U3|WideOr63~1_combout\,
	datac => \U3|WideOr65~0_combout\,
	datad => \U3|WideOr63~2_combout\,
	combout => \U3|WideOr63~3_combout\);

-- Location: LCCOMB_X51_Y50_N28
\U3|WideOr63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr63~combout\ = (((\U3|WideOr63~4_combout\) # (\U3|WideOr63~3_combout\)) # (!\U3|WideOr64~0_combout\)) # (!\U3|WideOr64~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|WideOr64~4_combout\,
	datab => \U3|WideOr64~0_combout\,
	datac => \U3|WideOr63~4_combout\,
	datad => \U3|WideOr63~3_combout\,
	combout => \U3|WideOr63~combout\);

-- Location: IOIBUF_X54_Y54_N22
\H~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H,
	o => \H~input_o\);

-- Location: FF_X46_Y53_N23
\U4|Qs.s17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U4|Qs.s16~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s17~q\);

-- Location: FF_X46_Y53_N15
\U4|Qs.s18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U4|Qs.s17~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s18~q\);

-- Location: FF_X46_Y53_N7
\U4|Qs.s19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U4|Qs.s18~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s19~q\);

-- Location: LCCOMB_X46_Y53_N2
\U4|Qs.s20~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Qs.s20~feeder_combout\ = \U4|Qs.s19~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|Qs.s19~q\,
	combout => \U4|Qs.s20~feeder_combout\);

-- Location: FF_X46_Y53_N3
\U4|Qs.s20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U4|Qs.s20~feeder_combout\,
	clrn => \R~input_o\,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s20~q\);

-- Location: FF_X46_Y53_N5
\U4|Qs.s21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U4|Qs.s20~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s21~q\);

-- Location: LCCOMB_X46_Y53_N28
\U4|Qs.s22~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Qs.s22~feeder_combout\ = \U4|Qs.s21~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|Qs.s21~q\,
	combout => \U4|Qs.s22~feeder_combout\);

-- Location: FF_X46_Y53_N29
\U4|Qs.s22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U4|Qs.s22~feeder_combout\,
	clrn => \R~input_o\,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s22~q\);

-- Location: FF_X46_Y53_N1
\U4|Qs.s23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U4|Qs.s22~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s23~q\);

-- Location: LCCOMB_X45_Y53_N24
\U4|Qs.s0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Qs.s0~0_combout\ = !\U4|Qs.s23~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|Qs.s23~q\,
	combout => \U4|Qs.s0~0_combout\);

-- Location: FF_X45_Y53_N25
\U4|Qs.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U4|Qs.s0~0_combout\,
	clrn => \R~input_o\,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s0~q\);

-- Location: LCCOMB_X45_Y53_N26
\U4|Qs.s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Qs.s1~0_combout\ = !\U4|Qs.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|Qs.s0~q\,
	combout => \U4|Qs.s1~0_combout\);

-- Location: FF_X45_Y53_N27
\U4|Qs.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U4|Qs.s1~0_combout\,
	clrn => \R~input_o\,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s1~q\);

-- Location: FF_X45_Y53_N15
\U4|Qs.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U4|Qs.s1~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s2~q\);

-- Location: FF_X45_Y53_N19
\U4|Qs.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U4|Qs.s2~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s3~q\);

-- Location: LCCOMB_X45_Y53_N0
\U4|Qs.s4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Qs.s4~feeder_combout\ = \U4|Qs.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|Qs.s3~q\,
	combout => \U4|Qs.s4~feeder_combout\);

-- Location: FF_X45_Y53_N1
\U4|Qs.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U4|Qs.s4~feeder_combout\,
	clrn => \R~input_o\,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s4~q\);

-- Location: LCCOMB_X45_Y53_N30
\U4|Qs.s5~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Qs.s5~feeder_combout\ = \U4|Qs.s4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|Qs.s4~q\,
	combout => \U4|Qs.s5~feeder_combout\);

-- Location: FF_X45_Y53_N31
\U4|Qs.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U4|Qs.s5~feeder_combout\,
	clrn => \R~input_o\,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s5~q\);

-- Location: FF_X45_Y53_N5
\U4|Qs.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U4|Qs.s5~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s6~q\);

-- Location: FF_X45_Y53_N17
\U4|Qs.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U4|Qs.s6~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s7~q\);

-- Location: LCCOMB_X45_Y53_N10
\U4|Qs.s8~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Qs.s8~feeder_combout\ = \U4|Qs.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|Qs.s7~q\,
	combout => \U4|Qs.s8~feeder_combout\);

-- Location: FF_X45_Y53_N11
\U4|Qs.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U4|Qs.s8~feeder_combout\,
	clrn => \R~input_o\,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s8~q\);

-- Location: LCCOMB_X45_Y53_N8
\U4|Qs.s9~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Qs.s9~feeder_combout\ = \U4|Qs.s8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|Qs.s8~q\,
	combout => \U4|Qs.s9~feeder_combout\);

-- Location: FF_X45_Y53_N9
\U4|Qs.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U4|Qs.s9~feeder_combout\,
	clrn => \R~input_o\,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s9~q\);

-- Location: FF_X45_Y53_N21
\U4|Qs.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U4|Qs.s9~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s10~q\);

-- Location: LCCOMB_X45_Y53_N12
\U4|Qs.s11~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Qs.s11~feeder_combout\ = \U4|Qs.s10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|Qs.s10~q\,
	combout => \U4|Qs.s11~feeder_combout\);

-- Location: FF_X45_Y53_N13
\U4|Qs.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U4|Qs.s11~feeder_combout\,
	clrn => \R~input_o\,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s11~q\);

-- Location: LCCOMB_X45_Y53_N22
\U4|Qs.s12~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Qs.s12~feeder_combout\ = \U4|Qs.s11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|Qs.s11~q\,
	combout => \U4|Qs.s12~feeder_combout\);

-- Location: FF_X45_Y53_N23
\U4|Qs.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U4|Qs.s12~feeder_combout\,
	clrn => \R~input_o\,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s12~q\);

-- Location: FF_X45_Y53_N29
\U4|Qs.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U4|Qs.s12~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s13~q\);

-- Location: LCCOMB_X45_Y53_N2
\U4|Qs.s14~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Qs.s14~feeder_combout\ = \U4|Qs.s13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|Qs.s13~q\,
	combout => \U4|Qs.s14~feeder_combout\);

-- Location: FF_X45_Y53_N3
\U4|Qs.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U4|Qs.s14~feeder_combout\,
	clrn => \R~input_o\,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s14~q\);

-- Location: LCCOMB_X45_Y53_N6
\U4|Qs.s15~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Qs.s15~feeder_combout\ = \U4|Qs.s14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|Qs.s14~q\,
	combout => \U4|Qs.s15~feeder_combout\);

-- Location: FF_X45_Y53_N7
\U4|Qs.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U4|Qs.s15~feeder_combout\,
	clrn => \R~input_o\,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s15~q\);

-- Location: FF_X46_Y53_N25
\U4|Qs.s16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U4|Qs.s15~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \H~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|Qs.s16~q\);

-- Location: LCCOMB_X46_Y53_N14
\U4|WideOr28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|WideOr28~0_combout\ = (!\U4|Qs.s16~q\ & (!\U4|Qs.s20~q\ & (!\U4|Qs.s18~q\ & !\U4|Qs.s22~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Qs.s16~q\,
	datab => \U4|Qs.s20~q\,
	datac => \U4|Qs.s18~q\,
	datad => \U4|Qs.s22~q\,
	combout => \U4|WideOr28~0_combout\);

-- Location: LCCOMB_X46_Y53_N30
\U4|WideOr24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|WideOr24~0_combout\ = (\U4|Qs.s19~q\) # ((\U4|Qs.s23~q\) # ((\U4|Qs.s21~q\) # (\U4|Qs.s17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Qs.s19~q\,
	datab => \U4|Qs.s23~q\,
	datac => \U4|Qs.s21~q\,
	datad => \U4|Qs.s17~q\,
	combout => \U4|WideOr24~0_combout\);

-- Location: LCCOMB_X46_Y53_N12
\U4|WideOr24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|WideOr24~combout\ = (\U4|WideOr24~0_combout\) # (!\U4|WideOr28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|WideOr28~0_combout\,
	datad => \U4|WideOr24~0_combout\,
	combout => \U4|WideOr24~combout\);

-- Location: LCCOMB_X46_Y53_N22
\U4|WideOr27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|WideOr27~1_combout\ = (\U4|Qs.s16~q\) # ((\U4|Qs.s20~q\) # (\U4|Qs.s17~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Qs.s16~q\,
	datab => \U4|Qs.s20~q\,
	datac => \U4|Qs.s17~q\,
	combout => \U4|WideOr27~1_combout\);

-- Location: LCCOMB_X45_Y53_N4
\U4|WideOr27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|WideOr27~0_combout\ = (\U4|Qs.s12~q\) # ((\U4|Qs.s4~q\) # ((\U4|Qs.s5~q\) # (\U4|Qs.s13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Qs.s12~q\,
	datab => \U4|Qs.s4~q\,
	datac => \U4|Qs.s5~q\,
	datad => \U4|Qs.s13~q\,
	combout => \U4|WideOr27~0_combout\);

-- Location: LCCOMB_X45_Y53_N14
\U4|WideOr26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|WideOr26~0_combout\ = (!\U4|Qs.s8~q\ & (\U4|Qs.s0~q\ & (!\U4|Qs.s1~q\ & !\U4|Qs.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Qs.s8~q\,
	datab => \U4|Qs.s0~q\,
	datac => \U4|Qs.s1~q\,
	datad => \U4|Qs.s9~q\,
	combout => \U4|WideOr26~0_combout\);

-- Location: LCCOMB_X46_Y53_N4
\U4|WideOr27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|WideOr27~2_combout\ = (\U4|WideOr27~1_combout\) # ((\U4|WideOr27~0_combout\) # ((\U4|Qs.s21~q\) # (!\U4|WideOr26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr27~1_combout\,
	datab => \U4|WideOr27~0_combout\,
	datac => \U4|Qs.s21~q\,
	datad => \U4|WideOr26~0_combout\,
	combout => \U4|WideOr27~2_combout\);

-- Location: LCCOMB_X45_Y53_N16
\U4|WideOr28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|WideOr28~1_combout\ = (\U4|Qs.s4~q\) # ((\U4|Qs.s2~q\) # ((\U4|Qs.s6~q\) # (!\U4|Qs.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Qs.s4~q\,
	datab => \U4|Qs.s2~q\,
	datac => \U4|Qs.s6~q\,
	datad => \U4|Qs.s0~q\,
	combout => \U4|WideOr28~1_combout\);

-- Location: LCCOMB_X45_Y53_N20
\U4|WideOr25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|WideOr25~1_combout\ = (!\U4|Qs.s8~q\ & (!\U4|Qs.s14~q\ & (!\U4|Qs.s10~q\ & !\U4|Qs.s12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Qs.s8~q\,
	datab => \U4|Qs.s14~q\,
	datac => \U4|Qs.s10~q\,
	datad => \U4|Qs.s12~q\,
	combout => \U4|WideOr25~1_combout\);

-- Location: LCCOMB_X46_Y53_N26
\U4|WideOr28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|WideOr28~2_combout\ = (\U4|WideOr28~1_combout\) # ((!\U4|WideOr25~1_combout\) # (!\U4|WideOr28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr28~1_combout\,
	datac => \U4|WideOr28~0_combout\,
	datad => \U4|WideOr25~1_combout\,
	combout => \U4|WideOr28~2_combout\);

-- Location: LCCOMB_X45_Y53_N28
\U4|WideOr25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|WideOr25~0_combout\ = (\U4|Qs.s15~q\) # ((\U4|Qs.s9~q\) # ((\U4|Qs.s13~q\) # (\U4|Qs.s11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Qs.s15~q\,
	datab => \U4|Qs.s9~q\,
	datac => \U4|Qs.s13~q\,
	datad => \U4|Qs.s11~q\,
	combout => \U4|WideOr25~0_combout\);

-- Location: LCCOMB_X47_Y53_N20
\U4|WideOr25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|WideOr25~combout\ = (\U4|WideOr25~0_combout\) # (!\U4|WideOr25~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|WideOr25~0_combout\,
	datad => \U4|WideOr25~1_combout\,
	combout => \U4|WideOr25~combout\);

-- Location: LCCOMB_X51_Y53_N4
\U5|Mux7~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~28_combout\ = (!\U4|WideOr24~combout\ & (!\U4|WideOr27~2_combout\ & (!\U4|WideOr28~2_combout\ & \U4|WideOr25~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr24~combout\,
	datab => \U4|WideOr27~2_combout\,
	datac => \U4|WideOr28~2_combout\,
	datad => \U4|WideOr25~combout\,
	combout => \U5|Mux7~28_combout\);

-- Location: LCCOMB_X46_Y53_N24
\U4|WideOr26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|WideOr26~2_combout\ = (\U4|Qs.s17~q\) # ((\U4|Qs.s16~q\) # (\U4|Qs.s18~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|Qs.s17~q\,
	datac => \U4|Qs.s16~q\,
	datad => \U4|Qs.s18~q\,
	combout => \U4|WideOr26~2_combout\);

-- Location: LCCOMB_X45_Y53_N18
\U4|WideOr26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|WideOr26~1_combout\ = (\U4|Qs.s11~q\) # ((\U4|Qs.s2~q\) # ((\U4|Qs.s3~q\) # (\U4|Qs.s10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Qs.s11~q\,
	datab => \U4|Qs.s2~q\,
	datac => \U4|Qs.s3~q\,
	datad => \U4|Qs.s10~q\,
	combout => \U4|WideOr26~1_combout\);

-- Location: LCCOMB_X46_Y53_N6
\U4|WideOr26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|WideOr26~3_combout\ = ((\U4|WideOr26~2_combout\) # ((\U4|Qs.s19~q\) # (\U4|WideOr26~1_combout\))) # (!\U4|WideOr26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr26~0_combout\,
	datab => \U4|WideOr26~2_combout\,
	datac => \U4|Qs.s19~q\,
	datad => \U4|WideOr26~1_combout\,
	combout => \U4|WideOr26~3_combout\);

-- Location: LCCOMB_X51_Y53_N0
\U5|Mux7~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~32_combout\ = (\U5|Mux7~28_combout\ & !\U4|WideOr26~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|Mux7~28_combout\,
	datad => \U4|WideOr26~3_combout\,
	combout => \U5|Mux7~32_combout\);

-- Location: LCCOMB_X51_Y53_N6
\U5|Qs.s15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s15~1_combout\ = (\RS~input_o\ & (\U5|Qs.s15~1_combout\)) # (!\RS~input_o\ & ((\U5|Mux7~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s15~1_combout\,
	datab => \RS~input_o\,
	datad => \U5|Mux7~32_combout\,
	combout => \U5|Qs.s15~1_combout\);

-- Location: LCCOMB_X43_Y3_N16
\U5|CLKDIV|TEMP~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|TEMP~0_combout\ = !\U5|CLKDIV|TEMP~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U5|CLKDIV|TEMP~q\,
	combout => \U5|CLKDIV|TEMP~0_combout\);

-- Location: LCCOMB_X43_Y3_N30
\U5|CLKDIV|TEMP~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CLKDIV|TEMP~feeder_combout\ = \U5|CLKDIV|TEMP~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CLKDIV|TEMP~0_combout\,
	combout => \U5|CLKDIV|TEMP~feeder_combout\);

-- Location: FF_X43_Y3_N31
\U5|CLKDIV|TEMP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U5|CLKDIV|TEMP~feeder_combout\,
	ena => \U4|CLKDIV|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CLKDIV|TEMP~q\);

-- Location: CLKCTRL_G18
\U5|CLKDIV|TEMP~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U5|CLKDIV|TEMP~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U5|CLKDIV|TEMP~clkctrl_outclk\);

-- Location: LCCOMB_X45_Y50_N12
\U5|Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~4_combout\ = (\U4|WideOr27~2_combout\ & (\U4|WideOr28~2_combout\ & (\U4|WideOr24~combout\ & !\U4|WideOr25~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr27~2_combout\,
	datab => \U4|WideOr28~2_combout\,
	datac => \U4|WideOr24~combout\,
	datad => \U4|WideOr25~combout\,
	combout => \U5|Mux7~4_combout\);

-- Location: LCCOMB_X45_Y50_N2
\U5|Mux7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~5_combout\ = (\U4|WideOr26~3_combout\ & \U5|Mux7~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr26~3_combout\,
	datad => \U5|Mux7~4_combout\,
	combout => \U5|Mux7~5_combout\);

-- Location: LCCOMB_X45_Y50_N6
\U5|Qs.s16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s16~1_combout\ = (\RS~input_o\ & ((\U5|Qs.s16~1_combout\))) # (!\RS~input_o\ & (\U5|Mux7~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Mux7~5_combout\,
	datac => \RS~input_o\,
	datad => \U5|Qs.s16~1_combout\,
	combout => \U5|Qs.s16~1_combout\);

-- Location: LCCOMB_X50_Y53_N26
\U5|Mux7~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~20_combout\ = (\U4|WideOr24~combout\ & (\U4|WideOr27~2_combout\ & (!\U4|WideOr25~combout\ & !\U4|WideOr28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr24~combout\,
	datab => \U4|WideOr27~2_combout\,
	datac => \U4|WideOr25~combout\,
	datad => \U4|WideOr28~2_combout\,
	combout => \U5|Mux7~20_combout\);

-- Location: LCCOMB_X50_Y53_N20
\U5|Mux7~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~21_combout\ = (\U5|Mux7~20_combout\ & \U4|WideOr26~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|Mux7~20_combout\,
	datad => \U4|WideOr26~3_combout\,
	combout => \U5|Mux7~21_combout\);

-- Location: LCCOMB_X50_Y53_N2
\U5|Qs.s17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s17~1_combout\ = (\RS~input_o\ & (\U5|Qs.s17~1_combout\)) # (!\RS~input_o\ & ((\U5|Mux7~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Qs.s17~1_combout\,
	datac => \U5|Mux7~21_combout\,
	datad => \RS~input_o\,
	combout => \U5|Qs.s17~1_combout\);

-- Location: LCCOMB_X47_Y53_N6
\U5|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~0_combout\ = (\U4|WideOr28~2_combout\ & (\U4|WideOr24~combout\ & (!\U4|WideOr27~2_combout\ & !\U4|WideOr25~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr28~2_combout\,
	datab => \U4|WideOr24~combout\,
	datac => \U4|WideOr27~2_combout\,
	datad => \U4|WideOr25~combout\,
	combout => \U5|Mux7~0_combout\);

-- Location: LCCOMB_X47_Y53_N16
\U5|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~1_combout\ = (\U4|WideOr26~3_combout\ & \U5|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|WideOr26~3_combout\,
	datad => \U5|Mux7~0_combout\,
	combout => \U5|Mux7~1_combout\);

-- Location: LCCOMB_X47_Y53_N8
\U5|Qs.s18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s18~1_combout\ = (\RS~input_o\ & ((\U5|Qs.s18~1_combout\))) # (!\RS~input_o\ & (\U5|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U5|Mux7~1_combout\,
	datac => \U5|Qs.s18~1_combout\,
	combout => \U5|Qs.s18~1_combout\);

-- Location: LCCOMB_X47_Y52_N26
\U5|Mux7~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~30_combout\ = (\U4|WideOr24~combout\ & (!\U4|WideOr27~2_combout\ & (!\U4|WideOr25~combout\ & !\U4|WideOr28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr24~combout\,
	datab => \U4|WideOr27~2_combout\,
	datac => \U4|WideOr25~combout\,
	datad => \U4|WideOr28~2_combout\,
	combout => \U5|Mux7~30_combout\);

-- Location: LCCOMB_X47_Y52_N28
\U5|Mux7~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~31_combout\ = (\U4|WideOr26~3_combout\ & \U5|Mux7~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr26~3_combout\,
	datac => \U5|Mux7~30_combout\,
	combout => \U5|Mux7~31_combout\);

-- Location: LCCOMB_X45_Y50_N22
\U5|Mux7~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~15_combout\ = (!\U4|WideOr26~3_combout\ & \U5|Mux7~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr26~3_combout\,
	datad => \U5|Mux7~4_combout\,
	combout => \U5|Mux7~15_combout\);

-- Location: LCCOMB_X45_Y50_N24
\U5|Qs.s20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s20~1_combout\ = (\RS~input_o\ & ((\U5|Qs.s20~1_combout\))) # (!\RS~input_o\ & (\U5|Mux7~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux7~15_combout\,
	datac => \RS~input_o\,
	datad => \U5|Qs.s20~1_combout\,
	combout => \U5|Qs.s20~1_combout\);

-- Location: LCCOMB_X50_Y53_N18
\U5|Mux7~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~22_combout\ = (\U5|Mux7~20_combout\ & !\U4|WideOr26~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|Mux7~20_combout\,
	datad => \U4|WideOr26~3_combout\,
	combout => \U5|Mux7~22_combout\);

-- Location: LCCOMB_X50_Y53_N8
\U5|Qs.s21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s21~1_combout\ = (\RS~input_o\ & ((\U5|Qs.s21~1_combout\))) # (!\RS~input_o\ & (\U5|Mux7~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Mux7~22_combout\,
	datac => \U5|Qs.s21~1_combout\,
	datad => \RS~input_o\,
	combout => \U5|Qs.s21~1_combout\);

-- Location: LCCOMB_X47_Y53_N2
\U5|Mux7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~16_combout\ = (!\U4|WideOr26~3_combout\ & \U5|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|WideOr26~3_combout\,
	datad => \U5|Mux7~0_combout\,
	combout => \U5|Mux7~16_combout\);

-- Location: LCCOMB_X47_Y53_N0
\U5|Qs.s22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s22~1_combout\ = (\RS~input_o\ & ((\U5|Qs.s22~1_combout\))) # (!\RS~input_o\ & (\U5|Mux7~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Mux7~16_combout\,
	datac => \RS~input_o\,
	datad => \U5|Qs.s22~1_combout\,
	combout => \U5|Qs.s22~1_combout\);

-- Location: LCCOMB_X47_Y52_N18
\U5|Mux7~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~33_combout\ = (!\U4|WideOr26~3_combout\ & \U5|Mux7~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr26~3_combout\,
	datac => \U5|Mux7~30_combout\,
	combout => \U5|Mux7~33_combout\);

-- Location: LCCOMB_X47_Y52_N20
\U5|Qs.s23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s23~1_combout\ = (\RS~input_o\ & ((\U5|Qs.s23~1_combout\))) # (!\RS~input_o\ & (\U5|Mux7~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Mux7~33_combout\,
	datac => \RS~input_o\,
	datad => \U5|Qs.s23~1_combout\,
	combout => \U5|Qs.s23~1_combout\);

-- Location: LCCOMB_X50_Y51_N16
\U3|WideOr61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr61~0_combout\ = (!\U3|Qs.s58~2_combout\ & (!\U3|Qs.s53~2_combout\ & (!\U3|Qs.s49~2_combout\ & !\U3|Qs.s56~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s58~2_combout\,
	datab => \U3|Qs.s53~2_combout\,
	datac => \U3|Qs.s49~2_combout\,
	datad => \U3|Qs.s56~2_combout\,
	combout => \U3|WideOr61~0_combout\);

-- Location: LCCOMB_X51_Y49_N0
\U3|WideOr60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr60~0_combout\ = (\U3|Qs.s42~2_combout\) # ((\U3|Qs.s33~2_combout\) # ((\U3|Qs.s37~2_combout\) # (\U3|Qs.s44~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s42~2_combout\,
	datab => \U3|Qs.s33~2_combout\,
	datac => \U3|Qs.s37~2_combout\,
	datad => \U3|Qs.s44~2_combout\,
	combout => \U3|WideOr60~0_combout\);

-- Location: LCCOMB_X51_Y49_N26
\U3|WideOr60~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr60~1_combout\ = (\U3|Qs.s34~2_combout\) # ((\U3|Qs.s35~2_combout\) # ((\U3|Qs.s39~2_combout\) # (\U3|Qs.s43~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s34~2_combout\,
	datab => \U3|Qs.s35~2_combout\,
	datac => \U3|Qs.s39~2_combout\,
	datad => \U3|Qs.s43~2_combout\,
	combout => \U3|WideOr60~1_combout\);

-- Location: LCCOMB_X50_Y51_N12
\U3|WideOr60~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr60~3_combout\ = (\U3|Qs.s36~2_combout\) # ((\U3|Qs.s38~2_combout\) # ((\U3|Qs.s41~2_combout\) # (\U3|Qs.s40~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s36~2_combout\,
	datab => \U3|Qs.s38~2_combout\,
	datac => \U3|Qs.s41~2_combout\,
	datad => \U3|Qs.s40~2_combout\,
	combout => \U3|WideOr60~3_combout\);

-- Location: LCCOMB_X50_Y51_N4
\U3|WideOr61~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr61~1_combout\ = (!\U3|Qs.s52~2_combout\ & (!\U3|Qs.s54~2_combout\ & (!\U3|Qs.s48~2_combout\ & !\U3|Qs.s50~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s52~2_combout\,
	datab => \U3|Qs.s54~2_combout\,
	datac => \U3|Qs.s48~2_combout\,
	datad => \U3|Qs.s50~2_combout\,
	combout => \U3|WideOr61~1_combout\);

-- Location: LCCOMB_X50_Y51_N26
\U3|WideOr60~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr60~2_combout\ = (\U3|Qs.s45~2_combout\) # ((\U3|Qs.s46~2_combout\) # ((\U3|Qs.s32~2_combout\) # (\U3|Qs.s47~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s45~2_combout\,
	datab => \U3|Qs.s46~2_combout\,
	datac => \U3|Qs.s32~2_combout\,
	datad => \U3|Qs.s47~2_combout\,
	combout => \U3|WideOr60~2_combout\);

-- Location: LCCOMB_X50_Y51_N2
\U3|WideOr61~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr61~2_combout\ = (!\U3|Qs.s57~2_combout\ & (!\U3|Qs.s51~2_combout\ & (!\U3|Qs.s55~2_combout\ & !\U3|Qs.s59~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s57~2_combout\,
	datab => \U3|Qs.s51~2_combout\,
	datac => \U3|Qs.s55~2_combout\,
	datad => \U3|Qs.s59~2_combout\,
	combout => \U3|WideOr61~2_combout\);

-- Location: LCCOMB_X50_Y51_N18
\U3|WideOr60~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr60~4_combout\ = (\U3|WideOr60~3_combout\) # (((\U3|WideOr60~2_combout\) # (!\U3|WideOr61~2_combout\)) # (!\U3|WideOr61~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|WideOr60~3_combout\,
	datab => \U3|WideOr61~1_combout\,
	datac => \U3|WideOr60~2_combout\,
	datad => \U3|WideOr61~2_combout\,
	combout => \U3|WideOr60~4_combout\);

-- Location: LCCOMB_X51_Y50_N12
\U3|WideOr60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr60~combout\ = ((\U3|WideOr60~0_combout\) # ((\U3|WideOr60~1_combout\) # (\U3|WideOr60~4_combout\))) # (!\U3|WideOr61~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|WideOr61~0_combout\,
	datab => \U3|WideOr60~0_combout\,
	datac => \U3|WideOr60~1_combout\,
	datad => \U3|WideOr60~4_combout\,
	combout => \U3|WideOr60~combout\);

-- Location: LCCOMB_X50_Y50_N30
\U3|WideOr65~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr65~2_combout\ = (!\U3|Qs.s30~2_combout\ & (!\U3|Qs.s2~2_combout\ & (!\U3|Qs.s18~2_combout\ & !\U3|Qs.s14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s30~2_combout\,
	datab => \U3|Qs.s2~2_combout\,
	datac => \U3|Qs.s18~2_combout\,
	datad => \U3|Qs.s14~2_combout\,
	combout => \U3|WideOr65~2_combout\);

-- Location: LCCOMB_X50_Y50_N20
\U3|WideOr65~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr65~3_combout\ = (\U3|WideOr65~2_combout\ & (!\U3|Qs.s50~2_combout\ & (!\U3|Qs.s46~2_combout\ & !\U3|Qs.s34~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|WideOr65~2_combout\,
	datab => \U3|Qs.s50~2_combout\,
	datac => \U3|Qs.s46~2_combout\,
	datad => \U3|Qs.s34~2_combout\,
	combout => \U3|WideOr65~3_combout\);

-- Location: LCCOMB_X50_Y50_N4
\U3|WideOr65~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr65~1_combout\ = (!\U3|Qs.s26~2_combout\ & (!\U3|Qs.s42~2_combout\ & (!\U3|Qs.s58~2_combout\ & !\U3|Qs.s10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s26~2_combout\,
	datab => \U3|Qs.s42~2_combout\,
	datac => \U3|Qs.s58~2_combout\,
	datad => \U3|Qs.s10~2_combout\,
	combout => \U3|WideOr65~1_combout\);

-- Location: LCCOMB_X50_Y50_N6
\U3|WideOr64~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr64~1_combout\ = (!\U3|Qs.s12~2_combout\ & (!\U3|Qs.s28~2_combout\ & (!\U3|Qs.s0~2_combout\ & !\U3|Qs.s44~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s12~2_combout\,
	datab => \U3|Qs.s28~2_combout\,
	datac => \U3|Qs.s0~2_combout\,
	datad => \U3|Qs.s44~2_combout\,
	combout => \U3|WideOr64~1_combout\);

-- Location: LCCOMB_X50_Y50_N8
\U3|WideOr62~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr62~0_combout\ = (!\U3|Qs.s56~2_combout\ & (!\U3|Qs.s8~2_combout\ & (!\U3|Qs.s40~2_combout\ & !\U3|Qs.s24~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s56~2_combout\,
	datab => \U3|Qs.s8~2_combout\,
	datac => \U3|Qs.s40~2_combout\,
	datad => \U3|Qs.s24~2_combout\,
	combout => \U3|WideOr62~0_combout\);

-- Location: LCCOMB_X51_Y46_N16
\U3|WideOr64~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr64~2_combout\ = (!\U3|Qs.s48~2_combout\ & (!\U3|Qs.s32~2_combout\ & !\U3|Qs.s16~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s48~2_combout\,
	datac => \U3|Qs.s32~2_combout\,
	datad => \U3|Qs.s16~2_combout\,
	combout => \U3|WideOr64~2_combout\);

-- Location: LCCOMB_X50_Y50_N24
\U3|WideOr64~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr64~3_combout\ = (\U3|WideOr64~1_combout\ & (\U3|WideOr62~0_combout\ & (\U3|WideOr64~0_combout\ & \U3|WideOr64~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|WideOr64~1_combout\,
	datab => \U3|WideOr62~0_combout\,
	datac => \U3|WideOr64~0_combout\,
	datad => \U3|WideOr64~2_combout\,
	combout => \U3|WideOr64~3_combout\);

-- Location: LCCOMB_X50_Y50_N22
\U3|WideOr65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr65~combout\ = (\U3|WideOr65~0_combout\ & (\U3|WideOr65~3_combout\ & (\U3|WideOr65~1_combout\ & \U3|WideOr64~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|WideOr65~0_combout\,
	datab => \U3|WideOr65~3_combout\,
	datac => \U3|WideOr65~1_combout\,
	datad => \U3|WideOr64~3_combout\,
	combout => \U3|WideOr65~combout\);

-- Location: LCCOMB_X49_Y48_N16
\U3|WideOr64~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr64~5_combout\ = (!\U3|Qs.s9~2_combout\ & (!\U3|Qs.s41~2_combout\ & (!\U3|Qs.s57~2_combout\ & !\U3|Qs.s25~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s9~2_combout\,
	datab => \U3|Qs.s41~2_combout\,
	datac => \U3|Qs.s57~2_combout\,
	datad => \U3|Qs.s25~2_combout\,
	combout => \U3|WideOr64~5_combout\);

-- Location: LCCOMB_X50_Y50_N0
\U3|WideOr64~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr64~6_combout\ = (!\U3|Qs.s13~2_combout\ & (!\U3|Qs.s17~2_combout\ & (!\U3|Qs.s29~2_combout\ & !\U3|Qs.s1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s13~2_combout\,
	datab => \U3|Qs.s17~2_combout\,
	datac => \U3|Qs.s29~2_combout\,
	datad => \U3|Qs.s1~2_combout\,
	combout => \U3|WideOr64~6_combout\);

-- Location: LCCOMB_X50_Y50_N18
\U3|WideOr64~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr64~7_combout\ = (!\U3|Qs.s45~2_combout\ & (!\U3|Qs.s33~2_combout\ & (!\U3|Qs.s49~2_combout\ & \U3|WideOr64~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s45~2_combout\,
	datab => \U3|Qs.s33~2_combout\,
	datac => \U3|Qs.s49~2_combout\,
	datad => \U3|WideOr64~6_combout\,
	combout => \U3|WideOr64~7_combout\);

-- Location: LCCOMB_X50_Y50_N16
\U3|WideOr64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr64~combout\ = (\U3|WideOr64~5_combout\ & (\U3|WideOr64~7_combout\ & (\U3|WideOr64~4_combout\ & \U3|WideOr64~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|WideOr64~5_combout\,
	datab => \U3|WideOr64~7_combout\,
	datac => \U3|WideOr64~4_combout\,
	datad => \U3|WideOr64~3_combout\,
	combout => \U3|WideOr64~combout\);

-- Location: LCCOMB_X50_Y48_N22
\U3|WideOr61~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr61~5_combout\ = (\U3|Qs.s22~2_combout\) # ((\U3|Qs.s20~2_combout\) # ((\U3|Qs.s24~2_combout\) # (\U3|Qs.s18~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s22~2_combout\,
	datab => \U3|Qs.s20~2_combout\,
	datac => \U3|Qs.s24~2_combout\,
	datad => \U3|Qs.s18~2_combout\,
	combout => \U3|WideOr61~5_combout\);

-- Location: LCCOMB_X50_Y48_N16
\U3|WideOr61~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr61~6_combout\ = (\U3|Qs.s26~2_combout\) # ((\U3|Qs.s21~2_combout\) # ((\U3|Qs.s28~2_combout\) # (\U3|Qs.s17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s26~2_combout\,
	datab => \U3|Qs.s21~2_combout\,
	datac => \U3|Qs.s28~2_combout\,
	datad => \U3|Qs.s17~2_combout\,
	combout => \U3|WideOr61~6_combout\);

-- Location: LCCOMB_X51_Y48_N12
\U3|WideOr61~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr61~7_combout\ = (\U3|Qs.s19~2_combout\) # ((\U3|Qs.s23~2_combout\) # ((\U3|Qs.s25~2_combout\) # (\U3|Qs.s27~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s19~2_combout\,
	datab => \U3|Qs.s23~2_combout\,
	datac => \U3|Qs.s25~2_combout\,
	datad => \U3|Qs.s27~2_combout\,
	combout => \U3|WideOr61~7_combout\);

-- Location: LCCOMB_X50_Y51_N8
\U3|WideOr61~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr61~3_combout\ = (\U3|Qs.s31~2_combout\) # ((\U3|Qs.s16~2_combout\) # ((\U3|Qs.s29~2_combout\) # (\U3|Qs.s30~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s31~2_combout\,
	datab => \U3|Qs.s16~2_combout\,
	datac => \U3|Qs.s29~2_combout\,
	datad => \U3|Qs.s30~2_combout\,
	combout => \U3|WideOr61~3_combout\);

-- Location: LCCOMB_X50_Y51_N6
\U3|WideOr61~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr61~4_combout\ = (((\U3|WideOr61~3_combout\) # (!\U3|WideOr61~2_combout\)) # (!\U3|WideOr61~0_combout\)) # (!\U3|WideOr61~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|WideOr61~1_combout\,
	datab => \U3|WideOr61~0_combout\,
	datac => \U3|WideOr61~3_combout\,
	datad => \U3|WideOr61~2_combout\,
	combout => \U3|WideOr61~4_combout\);

-- Location: LCCOMB_X51_Y50_N10
\U3|WideOr61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr61~combout\ = (\U3|WideOr61~5_combout\) # ((\U3|WideOr61~6_combout\) # ((\U3|WideOr61~7_combout\) # (\U3|WideOr61~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|WideOr61~5_combout\,
	datab => \U3|WideOr61~6_combout\,
	datac => \U3|WideOr61~7_combout\,
	datad => \U3|WideOr61~4_combout\,
	combout => \U3|WideOr61~combout\);

-- Location: LCCOMB_X51_Y50_N24
\O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \O~0_combout\ = (\U3|WideOr60~combout\) # ((\U3|WideOr65~combout\) # ((\U3|WideOr64~combout\) # (\U3|WideOr61~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|WideOr60~combout\,
	datab => \U3|WideOr65~combout\,
	datac => \U3|WideOr64~combout\,
	datad => \U3|WideOr61~combout\,
	combout => \O~0_combout\);

-- Location: LCCOMB_X51_Y50_N8
\O~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \O~1_combout\ = (\U3|WideOr63~combout\) # ((\U3|WideOr62~combout\) # (\O~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|WideOr63~combout\,
	datac => \U3|WideOr62~combout\,
	datad => \O~0_combout\,
	combout => \O~1_combout\);

-- Location: LCCOMB_X43_Y3_N24
\U1|CLKDIV|TEMP~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|CLKDIV|TEMP~0_combout\ = !\U1|CLKDIV|TEMP~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|CLKDIV|TEMP~q\,
	combout => \U1|CLKDIV|TEMP~0_combout\);

-- Location: LCCOMB_X43_Y3_N4
\U1|CLKDIV|TEMP~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|CLKDIV|TEMP~feeder_combout\ = \U1|CLKDIV|TEMP~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CLKDIV|TEMP~0_combout\,
	combout => \U1|CLKDIV|TEMP~feeder_combout\);

-- Location: FF_X43_Y3_N5
\U1|CLKDIV|TEMP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1|CLKDIV|TEMP~feeder_combout\,
	ena => \U4|CLKDIV|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CLKDIV|TEMP~q\);

-- Location: CLKCTRL_G15
\U1|CLKDIV|TEMP~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|CLKDIV|TEMP~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|CLKDIV|TEMP~clkctrl_outclk\);

-- Location: LCCOMB_X58_Y51_N18
\U0|Qs.s45~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s45~feeder_combout\ = \U0|Qs.s44~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Qs.s44~q\,
	combout => \U0|Qs.s45~feeder_combout\);

-- Location: IOIBUF_X51_Y54_N1
\S~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S,
	o => \S~input_o\);

-- Location: FF_X58_Y51_N19
\U0|Qs.s45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s45~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s45~q\);

-- Location: FF_X58_Y51_N13
\U0|Qs.s46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s45~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s46~q\);

-- Location: FF_X58_Y51_N5
\U0|Qs.s47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s46~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s47~q\);

-- Location: FF_X55_Y51_N5
\U0|Qs.s48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s47~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s48~q\);

-- Location: FF_X55_Y51_N21
\U0|Qs.s49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s48~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s49~q\);

-- Location: LCCOMB_X55_Y51_N30
\U0|Qs.s50~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s50~feeder_combout\ = \U0|Qs.s49~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s49~q\,
	combout => \U0|Qs.s50~feeder_combout\);

-- Location: FF_X55_Y51_N31
\U0|Qs.s50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s50~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s50~q\);

-- Location: FF_X55_Y51_N17
\U0|Qs.s51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s50~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s51~q\);

-- Location: LCCOMB_X59_Y51_N6
\U0|Qs.s52~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s52~feeder_combout\ = \U0|Qs.s51~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Qs.s51~q\,
	combout => \U0|Qs.s52~feeder_combout\);

-- Location: FF_X59_Y51_N7
\U0|Qs.s52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s52~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s52~q\);

-- Location: LCCOMB_X59_Y51_N30
\U0|Qs.s53~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s53~feeder_combout\ = \U0|Qs.s52~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Qs.s52~q\,
	combout => \U0|Qs.s53~feeder_combout\);

-- Location: FF_X59_Y51_N31
\U0|Qs.s53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s53~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s53~q\);

-- Location: FF_X59_Y51_N11
\U0|Qs.s54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s53~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s54~q\);

-- Location: LCCOMB_X59_Y51_N28
\U0|Qs.s55~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s55~feeder_combout\ = \U0|Qs.s54~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s54~q\,
	combout => \U0|Qs.s55~feeder_combout\);

-- Location: FF_X59_Y51_N29
\U0|Qs.s55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s55~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s55~q\);

-- Location: LCCOMB_X57_Y51_N24
\U0|Qs.s56~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s56~feeder_combout\ = \U0|Qs.s55~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s55~q\,
	combout => \U0|Qs.s56~feeder_combout\);

-- Location: FF_X57_Y51_N25
\U0|Qs.s56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s56~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s56~q\);

-- Location: LCCOMB_X57_Y51_N30
\U0|Qs.s57~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s57~feeder_combout\ = \U0|Qs.s56~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s56~q\,
	combout => \U0|Qs.s57~feeder_combout\);

-- Location: FF_X57_Y51_N31
\U0|Qs.s57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s57~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s57~q\);

-- Location: FF_X57_Y51_N21
\U0|Qs.s58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s57~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s58~q\);

-- Location: LCCOMB_X57_Y51_N16
\U0|Qs.s59~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s59~feeder_combout\ = \U0|Qs.s58~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s58~q\,
	combout => \U0|Qs.s59~feeder_combout\);

-- Location: FF_X57_Y51_N17
\U0|Qs.s59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s59~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s59~q\);

-- Location: LCCOMB_X56_Y51_N12
\U0|Qs.s0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s0~0_combout\ = !\U0|Qs.s59~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s59~q\,
	combout => \U0|Qs.s0~0_combout\);

-- Location: FF_X56_Y51_N13
\U0|Qs.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s0~0_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s0~q\);

-- Location: LCCOMB_X56_Y51_N16
\U0|Qs.s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s1~0_combout\ = !\U0|Qs.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s0~q\,
	combout => \U0|Qs.s1~0_combout\);

-- Location: FF_X56_Y51_N17
\U0|Qs.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s1~0_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s1~q\);

-- Location: LCCOMB_X56_Y51_N24
\U0|Qs.s2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s2~feeder_combout\ = \U0|Qs.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Qs.s1~q\,
	combout => \U0|Qs.s2~feeder_combout\);

-- Location: FF_X56_Y51_N25
\U0|Qs.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s2~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s2~q\);

-- Location: FF_X58_Y51_N9
\U0|Qs.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s2~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s3~q\);

-- Location: LCCOMB_X59_Y51_N14
\U0|Qs.s4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s4~feeder_combout\ = \U0|Qs.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s3~q\,
	combout => \U0|Qs.s4~feeder_combout\);

-- Location: FF_X59_Y51_N15
\U0|Qs.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s4~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s4~q\);

-- Location: LCCOMB_X60_Y51_N18
\U0|Qs.s5~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s5~feeder_combout\ = \U0|Qs.s4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s4~q\,
	combout => \U0|Qs.s5~feeder_combout\);

-- Location: FF_X60_Y51_N19
\U0|Qs.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s5~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s5~q\);

-- Location: LCCOMB_X59_Y51_N8
\U0|Qs.s6~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s6~feeder_combout\ = \U0|Qs.s5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s5~q\,
	combout => \U0|Qs.s6~feeder_combout\);

-- Location: FF_X59_Y51_N9
\U0|Qs.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s6~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s6~q\);

-- Location: FF_X59_Y51_N23
\U0|Qs.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s6~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s7~q\);

-- Location: LCCOMB_X60_Y51_N24
\U0|Qs.s8~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s8~feeder_combout\ = \U0|Qs.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s7~q\,
	combout => \U0|Qs.s8~feeder_combout\);

-- Location: FF_X60_Y51_N25
\U0|Qs.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s8~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s8~q\);

-- Location: FF_X57_Y51_N15
\U0|Qs.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s8~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s9~q\);

-- Location: FF_X57_Y51_N9
\U0|Qs.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s9~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s10~q\);

-- Location: FF_X57_Y51_N5
\U0|Qs.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s10~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s11~q\);

-- Location: FF_X56_Y51_N11
\U0|Qs.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s11~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s12~q\);

-- Location: FF_X58_Y51_N31
\U0|Qs.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s12~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s13~q\);

-- Location: FF_X58_Y51_N29
\U0|Qs.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s13~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s14~q\);

-- Location: FF_X58_Y51_N15
\U0|Qs.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s14~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s15~q\);

-- Location: LCCOMB_X58_Y51_N16
\U0|Qs.s16~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s16~feeder_combout\ = \U0|Qs.s15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s15~q\,
	combout => \U0|Qs.s16~feeder_combout\);

-- Location: FF_X58_Y51_N17
\U0|Qs.s16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s16~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s16~q\);

-- Location: LCCOMB_X58_Y51_N10
\U0|Qs.s17~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s17~feeder_combout\ = \U0|Qs.s16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s16~q\,
	combout => \U0|Qs.s17~feeder_combout\);

-- Location: FF_X58_Y51_N11
\U0|Qs.s17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s17~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s17~q\);

-- Location: FF_X55_Y51_N27
\U0|Qs.s18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s17~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s18~q\);

-- Location: FF_X55_Y51_N29
\U0|Qs.s19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s18~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s19~q\);

-- Location: FF_X59_Y51_N13
\U0|Qs.s20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s19~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s20~q\);

-- Location: FF_X59_Y51_N21
\U0|Qs.s21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s20~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s21~q\);

-- Location: FF_X59_Y51_N5
\U0|Qs.s22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s21~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s22~q\);

-- Location: FF_X59_Y51_N3
\U0|Qs.s23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s22~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s23~q\);

-- Location: LCCOMB_X59_Y51_N26
\U0|Qs.s24~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s24~feeder_combout\ = \U0|Qs.s23~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s23~q\,
	combout => \U0|Qs.s24~feeder_combout\);

-- Location: FF_X59_Y51_N27
\U0|Qs.s24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s24~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s24~q\);

-- Location: LCCOMB_X57_Y51_N22
\U0|Qs.s25~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s25~feeder_combout\ = \U0|Qs.s24~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s24~q\,
	combout => \U0|Qs.s25~feeder_combout\);

-- Location: FF_X57_Y51_N23
\U0|Qs.s25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s25~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s25~q\);

-- Location: LCCOMB_X57_Y51_N12
\U0|Qs.s26~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s26~feeder_combout\ = \U0|Qs.s25~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s25~q\,
	combout => \U0|Qs.s26~feeder_combout\);

-- Location: FF_X57_Y51_N13
\U0|Qs.s26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s26~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s26~q\);

-- Location: FF_X57_Y51_N27
\U0|Qs.s27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s26~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s27~q\);

-- Location: FF_X58_Y51_N23
\U0|Qs.s28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s27~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s28~q\);

-- Location: LCCOMB_X58_Y51_N24
\U0|Qs.s29~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s29~feeder_combout\ = \U0|Qs.s28~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Qs.s28~q\,
	combout => \U0|Qs.s29~feeder_combout\);

-- Location: FF_X58_Y51_N25
\U0|Qs.s29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s29~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s29~q\);

-- Location: LCCOMB_X58_Y51_N26
\U0|Qs.s30~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s30~feeder_combout\ = \U0|Qs.s29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s29~q\,
	combout => \U0|Qs.s30~feeder_combout\);

-- Location: FF_X58_Y51_N27
\U0|Qs.s30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s30~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s30~q\);

-- Location: FF_X58_Y51_N3
\U0|Qs.s31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s30~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s31~q\);

-- Location: LCCOMB_X58_Y51_N6
\U0|Qs.s32~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s32~feeder_combout\ = \U0|Qs.s31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s31~q\,
	combout => \U0|Qs.s32~feeder_combout\);

-- Location: FF_X58_Y51_N7
\U0|Qs.s32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s32~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s32~q\);

-- Location: FF_X56_Y51_N7
\U0|Qs.s33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s32~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s33~q\);

-- Location: FF_X55_Y51_N15
\U0|Qs.s34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s33~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s34~q\);

-- Location: FF_X55_Y51_N9
\U0|Qs.s35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s34~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s35~q\);

-- Location: LCCOMB_X55_Y51_N2
\U0|Qs.s36~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s36~feeder_combout\ = \U0|Qs.s35~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Qs.s35~q\,
	combout => \U0|Qs.s36~feeder_combout\);

-- Location: FF_X55_Y51_N3
\U0|Qs.s36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s36~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s36~q\);

-- Location: LCCOMB_X59_Y51_N0
\U0|Qs.s37~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s37~feeder_combout\ = \U0|Qs.s36~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s36~q\,
	combout => \U0|Qs.s37~feeder_combout\);

-- Location: FF_X59_Y51_N1
\U0|Qs.s37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s37~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s37~q\);

-- Location: LCCOMB_X59_Y51_N18
\U0|Qs.s38~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s38~feeder_combout\ = \U0|Qs.s37~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s37~q\,
	combout => \U0|Qs.s38~feeder_combout\);

-- Location: FF_X59_Y51_N19
\U0|Qs.s38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s38~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s38~q\);

-- Location: FF_X59_Y51_N17
\U0|Qs.s39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s38~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s39~q\);

-- Location: FF_X59_Y51_N25
\U0|Qs.s40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s39~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s40~q\);

-- Location: LCCOMB_X57_Y51_N10
\U0|Qs.s41~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s41~feeder_combout\ = \U0|Qs.s40~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Qs.s40~q\,
	combout => \U0|Qs.s41~feeder_combout\);

-- Location: FF_X57_Y51_N11
\U0|Qs.s41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s41~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s41~q\);

-- Location: LCCOMB_X57_Y51_N28
\U0|Qs.s42~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Qs.s42~feeder_combout\ = \U0|Qs.s41~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Qs.s41~q\,
	combout => \U0|Qs.s42~feeder_combout\);

-- Location: FF_X57_Y51_N29
\U0|Qs.s42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U0|Qs.s42~feeder_combout\,
	clrn => \R~input_o\,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s42~q\);

-- Location: FF_X57_Y51_N19
\U0|Qs.s43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s42~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s43~q\);

-- Location: FF_X57_Y51_N7
\U0|Qs.s44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U4|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U0|Qs.s43~q\,
	clrn => \R~input_o\,
	sload => VCC,
	ena => \S~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|Qs.s44~q\);

-- Location: LCCOMB_X57_Y51_N18
\U0|WideOr60~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr60~4_combout\ = (\U0|Qs.s44~q\) # ((\U0|Qs.s42~q\) # ((\U0|Qs.s43~q\) # (\U0|Qs.s41~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s44~q\,
	datab => \U0|Qs.s42~q\,
	datac => \U0|Qs.s43~q\,
	datad => \U0|Qs.s41~q\,
	combout => \U0|WideOr60~4_combout\);

-- Location: LCCOMB_X55_Y51_N8
\U0|WideOr60~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr60~2_combout\ = (\U0|Qs.s36~q\) # ((\U0|Qs.s34~q\) # ((\U0|Qs.s35~q\) # (\U0|Qs.s33~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s36~q\,
	datab => \U0|Qs.s34~q\,
	datac => \U0|Qs.s35~q\,
	datad => \U0|Qs.s33~q\,
	combout => \U0|WideOr60~2_combout\);

-- Location: LCCOMB_X59_Y51_N16
\U0|WideOr60~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr60~3_combout\ = (\U0|Qs.s38~q\) # ((\U0|Qs.s40~q\) # ((\U0|Qs.s39~q\) # (\U0|Qs.s37~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s38~q\,
	datab => \U0|Qs.s40~q\,
	datac => \U0|Qs.s39~q\,
	datad => \U0|Qs.s37~q\,
	combout => \U0|WideOr60~3_combout\);

-- Location: LCCOMB_X57_Y51_N20
\U0|WideOr61~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr61~2_combout\ = (!\U0|Qs.s57~q\ & (!\U0|Qs.s59~q\ & (!\U0|Qs.s58~q\ & !\U0|Qs.s56~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s57~q\,
	datab => \U0|Qs.s59~q\,
	datac => \U0|Qs.s58~q\,
	datad => \U0|Qs.s56~q\,
	combout => \U0|WideOr61~2_combout\);

-- Location: LCCOMB_X55_Y51_N20
\U0|WideOr61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr61~0_combout\ = (!\U0|Qs.s50~q\ & (!\U0|Qs.s48~q\ & (!\U0|Qs.s49~q\ & !\U0|Qs.s51~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s50~q\,
	datab => \U0|Qs.s48~q\,
	datac => \U0|Qs.s49~q\,
	datad => \U0|Qs.s51~q\,
	combout => \U0|WideOr61~0_combout\);

-- Location: LCCOMB_X58_Y51_N4
\U0|WideOr60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr60~0_combout\ = (\U0|Qs.s32~q\) # ((\U0|Qs.s46~q\) # ((\U0|Qs.s47~q\) # (\U0|Qs.s45~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s32~q\,
	datab => \U0|Qs.s46~q\,
	datac => \U0|Qs.s47~q\,
	datad => \U0|Qs.s45~q\,
	combout => \U0|WideOr60~0_combout\);

-- Location: LCCOMB_X59_Y51_N10
\U0|WideOr61~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr61~1_combout\ = (!\U0|Qs.s53~q\ & (!\U0|Qs.s55~q\ & (!\U0|Qs.s54~q\ & !\U0|Qs.s52~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s53~q\,
	datab => \U0|Qs.s55~q\,
	datac => \U0|Qs.s54~q\,
	datad => \U0|Qs.s52~q\,
	combout => \U0|WideOr61~1_combout\);

-- Location: LCCOMB_X55_Y51_N6
\U0|WideOr60~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr60~1_combout\ = (((\U0|WideOr60~0_combout\) # (!\U0|WideOr61~1_combout\)) # (!\U0|WideOr61~0_combout\)) # (!\U0|WideOr61~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr61~2_combout\,
	datab => \U0|WideOr61~0_combout\,
	datac => \U0|WideOr60~0_combout\,
	datad => \U0|WideOr61~1_combout\,
	combout => \U0|WideOr60~1_combout\);

-- Location: LCCOMB_X55_Y51_N10
\U0|WideOr60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr60~combout\ = (\U0|WideOr60~4_combout\) # ((\U0|WideOr60~2_combout\) # ((\U0|WideOr60~3_combout\) # (\U0|WideOr60~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr60~4_combout\,
	datab => \U0|WideOr60~2_combout\,
	datac => \U0|WideOr60~3_combout\,
	datad => \U0|WideOr60~1_combout\,
	combout => \U0|WideOr60~combout\);

-- Location: LCCOMB_X59_Y51_N2
\U0|WideOr61~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr61~6_combout\ = (\U0|Qs.s24~q\) # ((\U0|Qs.s22~q\) # ((\U0|Qs.s23~q\) # (\U0|Qs.s21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s24~q\,
	datab => \U0|Qs.s22~q\,
	datac => \U0|Qs.s23~q\,
	datad => \U0|Qs.s21~q\,
	combout => \U0|WideOr61~6_combout\);

-- Location: LCCOMB_X55_Y51_N24
\U0|WideOr61~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr61~5_combout\ = (\U0|Qs.s20~q\) # ((\U0|Qs.s19~q\) # ((\U0|Qs.s18~q\) # (\U0|Qs.s17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s20~q\,
	datab => \U0|Qs.s19~q\,
	datac => \U0|Qs.s18~q\,
	datad => \U0|Qs.s17~q\,
	combout => \U0|WideOr61~5_combout\);

-- Location: LCCOMB_X57_Y51_N26
\U0|WideOr61~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr61~7_combout\ = (\U0|Qs.s25~q\) # ((\U0|Qs.s26~q\) # ((\U0|Qs.s27~q\) # (\U0|Qs.s28~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s25~q\,
	datab => \U0|Qs.s26~q\,
	datac => \U0|Qs.s27~q\,
	datad => \U0|Qs.s28~q\,
	combout => \U0|WideOr61~7_combout\);

-- Location: LCCOMB_X58_Y51_N2
\U0|WideOr61~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr61~3_combout\ = (\U0|Qs.s30~q\) # ((\U0|Qs.s16~q\) # ((\U0|Qs.s31~q\) # (\U0|Qs.s29~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s30~q\,
	datab => \U0|Qs.s16~q\,
	datac => \U0|Qs.s31~q\,
	datad => \U0|Qs.s29~q\,
	combout => \U0|WideOr61~3_combout\);

-- Location: LCCOMB_X55_Y51_N12
\U0|WideOr61~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr61~4_combout\ = (((\U0|WideOr61~3_combout\) # (!\U0|WideOr61~1_combout\)) # (!\U0|WideOr61~0_combout\)) # (!\U0|WideOr61~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr61~2_combout\,
	datab => \U0|WideOr61~0_combout\,
	datac => \U0|WideOr61~3_combout\,
	datad => \U0|WideOr61~1_combout\,
	combout => \U0|WideOr61~4_combout\);

-- Location: LCCOMB_X55_Y51_N0
\U0|WideOr61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr61~combout\ = (\U0|WideOr61~6_combout\) # ((\U0|WideOr61~5_combout\) # ((\U0|WideOr61~7_combout\) # (\U0|WideOr61~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr61~6_combout\,
	datab => \U0|WideOr61~5_combout\,
	datac => \U0|WideOr61~7_combout\,
	datad => \U0|WideOr61~4_combout\,
	combout => \U0|WideOr61~combout\);

-- Location: LCCOMB_X59_Y51_N4
\U0|WideOr64~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr64~4_combout\ = (!\U0|Qs.s53~q\ & (!\U0|Qs.s37~q\ & (!\U0|Qs.s21~q\ & !\U0|Qs.s5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s53~q\,
	datab => \U0|Qs.s37~q\,
	datac => \U0|Qs.s21~q\,
	datad => \U0|Qs.s5~q\,
	combout => \U0|WideOr64~4_combout\);

-- Location: LCCOMB_X59_Y51_N24
\U0|WideOr63~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr63~4_combout\ = (\U0|Qs.s7~q\) # ((\U0|Qs.s23~q\) # ((\U0|Qs.s39~q\) # (\U0|Qs.s55~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s7~q\,
	datab => \U0|Qs.s23~q\,
	datac => \U0|Qs.s39~q\,
	datad => \U0|Qs.s55~q\,
	combout => \U0|WideOr63~4_combout\);

-- Location: LCCOMB_X59_Y51_N12
\U0|WideOr64~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr64~0_combout\ = (!\U0|Qs.s52~q\ & (!\U0|Qs.s4~q\ & (!\U0|Qs.s20~q\ & !\U0|Qs.s36~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s52~q\,
	datab => \U0|Qs.s4~q\,
	datac => \U0|Qs.s20~q\,
	datad => \U0|Qs.s36~q\,
	combout => \U0|WideOr64~0_combout\);

-- Location: LCCOMB_X58_Y51_N12
\U0|WideOr63~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr63~1_combout\ = (!\U0|Qs.s14~q\ & (!\U0|Qs.s47~q\ & (!\U0|Qs.s46~q\ & !\U0|Qs.s45~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s14~q\,
	datab => \U0|Qs.s47~q\,
	datac => \U0|Qs.s46~q\,
	datad => \U0|Qs.s45~q\,
	combout => \U0|WideOr63~1_combout\);

-- Location: LCCOMB_X59_Y51_N22
\U0|WideOr65~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr65~0_combout\ = (!\U0|Qs.s54~q\ & (!\U0|Qs.s22~q\ & (!\U0|Qs.s6~q\ & !\U0|Qs.s38~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s54~q\,
	datab => \U0|Qs.s22~q\,
	datac => \U0|Qs.s6~q\,
	datad => \U0|Qs.s38~q\,
	combout => \U0|WideOr65~0_combout\);

-- Location: LCCOMB_X58_Y51_N14
\U0|WideOr63~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr63~2_combout\ = (!\U0|Qs.s30~q\ & (!\U0|Qs.s29~q\ & (!\U0|Qs.s15~q\ & !\U0|Qs.s31~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s30~q\,
	datab => \U0|Qs.s29~q\,
	datac => \U0|Qs.s15~q\,
	datad => \U0|Qs.s31~q\,
	combout => \U0|WideOr63~2_combout\);

-- Location: LCCOMB_X58_Y51_N22
\U0|WideOr63~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr63~0_combout\ = (!\U0|Qs.s13~q\ & (!\U0|Qs.s44~q\ & (!\U0|Qs.s28~q\ & !\U0|Qs.s12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s13~q\,
	datab => \U0|Qs.s44~q\,
	datac => \U0|Qs.s28~q\,
	datad => \U0|Qs.s12~q\,
	combout => \U0|WideOr63~0_combout\);

-- Location: LCCOMB_X58_Y51_N20
\U0|WideOr63~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr63~3_combout\ = (((!\U0|WideOr63~0_combout\) # (!\U0|WideOr63~2_combout\)) # (!\U0|WideOr65~0_combout\)) # (!\U0|WideOr63~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr63~1_combout\,
	datab => \U0|WideOr65~0_combout\,
	datac => \U0|WideOr63~2_combout\,
	datad => \U0|WideOr63~0_combout\,
	combout => \U0|WideOr63~3_combout\);

-- Location: LCCOMB_X58_Y51_N0
\U0|WideOr63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr63~combout\ = ((\U0|WideOr63~4_combout\) # ((\U0|WideOr63~3_combout\) # (!\U0|WideOr64~0_combout\))) # (!\U0|WideOr64~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr64~4_combout\,
	datab => \U0|WideOr63~4_combout\,
	datac => \U0|WideOr64~0_combout\,
	datad => \U0|WideOr63~3_combout\,
	combout => \U0|WideOr63~combout\);

-- Location: LCCOMB_X57_Y51_N8
\U0|WideOr64~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr64~5_combout\ = (!\U0|Qs.s25~q\ & (!\U0|Qs.s57~q\ & (!\U0|Qs.s9~q\ & !\U0|Qs.s41~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s25~q\,
	datab => \U0|Qs.s57~q\,
	datac => \U0|Qs.s9~q\,
	datad => \U0|Qs.s41~q\,
	combout => \U0|WideOr64~5_combout\);

-- Location: LCCOMB_X57_Y51_N4
\U0|WideOr65~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr65~1_combout\ = (!\U0|Qs.s26~q\ & (!\U0|Qs.s42~q\ & (!\U0|Qs.s10~q\ & !\U0|Qs.s58~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s26~q\,
	datab => \U0|Qs.s42~q\,
	datac => \U0|Qs.s10~q\,
	datad => \U0|Qs.s58~q\,
	combout => \U0|WideOr65~1_combout\);

-- Location: LCCOMB_X57_Y51_N6
\U0|WideOr62~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr62~2_combout\ = (\U0|Qs.s27~q\) # ((\U0|Qs.s59~q\) # ((\U0|Qs.s43~q\) # (\U0|Qs.s11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s27~q\,
	datab => \U0|Qs.s59~q\,
	datac => \U0|Qs.s43~q\,
	datad => \U0|Qs.s11~q\,
	combout => \U0|WideOr62~2_combout\);

-- Location: LCCOMB_X57_Y51_N14
\U0|WideOr62~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr62~0_combout\ = (!\U0|Qs.s40~q\ & (!\U0|Qs.s56~q\ & (!\U0|Qs.s8~q\ & !\U0|Qs.s24~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s40~q\,
	datab => \U0|Qs.s56~q\,
	datac => \U0|Qs.s8~q\,
	datad => \U0|Qs.s24~q\,
	combout => \U0|WideOr62~0_combout\);

-- Location: LCCOMB_X57_Y51_N2
\U0|WideOr62~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr62~1_combout\ = (((!\U0|WideOr63~0_combout\) # (!\U0|WideOr63~1_combout\)) # (!\U0|WideOr63~2_combout\)) # (!\U0|WideOr62~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr62~0_combout\,
	datab => \U0|WideOr63~2_combout\,
	datac => \U0|WideOr63~1_combout\,
	datad => \U0|WideOr63~0_combout\,
	combout => \U0|WideOr62~1_combout\);

-- Location: LCCOMB_X57_Y51_N0
\U0|WideOr62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr62~combout\ = (((\U0|WideOr62~2_combout\) # (\U0|WideOr62~1_combout\)) # (!\U0|WideOr65~1_combout\)) # (!\U0|WideOr64~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr64~5_combout\,
	datab => \U0|WideOr65~1_combout\,
	datac => \U0|WideOr62~2_combout\,
	datad => \U0|WideOr62~1_combout\,
	combout => \U0|WideOr62~combout\);

-- Location: LCCOMB_X52_Y51_N20
\U1|Ram0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~62_combout\ = (!\U0|WideOr60~combout\ & (!\U0|WideOr61~combout\ & (!\U0|WideOr63~combout\ & \U0|WideOr62~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr60~combout\,
	datab => \U0|WideOr61~combout\,
	datac => \U0|WideOr63~combout\,
	datad => \U0|WideOr62~combout\,
	combout => \U1|Ram0~62_combout\);

-- Location: LCCOMB_X58_Y51_N28
\U0|WideOr64~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr64~7_combout\ = (!\U0|Qs.s17~q\ & (!\U0|Qs.s29~q\ & (!\U0|Qs.s13~q\ & !\U0|Qs.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s17~q\,
	datab => \U0|Qs.s29~q\,
	datac => \U0|Qs.s13~q\,
	datad => \U0|Qs.s1~q\,
	combout => \U0|WideOr64~7_combout\);

-- Location: LCCOMB_X56_Y51_N6
\U0|WideOr64~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr64~8_combout\ = (!\U0|Qs.s45~q\ & (!\U0|Qs.s49~q\ & (!\U0|Qs.s33~q\ & \U0|WideOr64~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s45~q\,
	datab => \U0|Qs.s49~q\,
	datac => \U0|Qs.s33~q\,
	datad => \U0|WideOr64~7_combout\,
	combout => \U0|WideOr64~8_combout\);

-- Location: LCCOMB_X56_Y51_N28
\U0|WideOr64~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr64~1_combout\ = (!\U0|Qs.s12~q\ & (!\U0|Qs.s44~q\ & (\U0|Qs.s0~q\ & !\U0|Qs.s28~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s12~q\,
	datab => \U0|Qs.s44~q\,
	datac => \U0|Qs.s0~q\,
	datad => \U0|Qs.s28~q\,
	combout => \U0|WideOr64~1_combout\);

-- Location: LCCOMB_X58_Y51_N30
\U0|WideOr64~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr64~2_combout\ = (!\U0|Qs.s32~q\ & (!\U0|Qs.s16~q\ & !\U0|Qs.s48~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s32~q\,
	datab => \U0|Qs.s16~q\,
	datad => \U0|Qs.s48~q\,
	combout => \U0|WideOr64~2_combout\);

-- Location: LCCOMB_X56_Y51_N14
\U0|WideOr64~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr64~3_combout\ = (\U0|WideOr64~1_combout\ & (\U0|WideOr62~0_combout\ & (\U0|WideOr64~0_combout\ & \U0|WideOr64~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr64~1_combout\,
	datab => \U0|WideOr62~0_combout\,
	datac => \U0|WideOr64~0_combout\,
	datad => \U0|WideOr64~2_combout\,
	combout => \U0|WideOr64~3_combout\);

-- Location: LCCOMB_X58_Y51_N8
\U0|WideOr65~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr65~2_combout\ = (!\U0|Qs.s30~q\ & (!\U0|Qs.s14~q\ & (!\U0|Qs.s2~q\ & !\U0|Qs.s18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s30~q\,
	datab => \U0|Qs.s14~q\,
	datac => \U0|Qs.s2~q\,
	datad => \U0|Qs.s18~q\,
	combout => \U0|WideOr65~2_combout\);

-- Location: LCCOMB_X55_Y51_N14
\U0|WideOr65~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr65~3_combout\ = (!\U0|Qs.s50~q\ & (!\U0|Qs.s46~q\ & (!\U0|Qs.s34~q\ & \U0|WideOr65~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Qs.s50~q\,
	datab => \U0|Qs.s46~q\,
	datac => \U0|Qs.s34~q\,
	datad => \U0|WideOr65~2_combout\,
	combout => \U0|WideOr65~3_combout\);

-- Location: LCCOMB_X56_Y51_N18
\U1|Ram0~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~74_combout\ = (\U0|WideOr64~5_combout\ & (((!\U0|WideOr65~3_combout\) # (!\U0|WideOr65~0_combout\)) # (!\U0|WideOr65~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr65~1_combout\,
	datab => \U0|WideOr64~5_combout\,
	datac => \U0|WideOr65~0_combout\,
	datad => \U0|WideOr65~3_combout\,
	combout => \U1|Ram0~74_combout\);

-- Location: LCCOMB_X56_Y51_N20
\U1|Ram0~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~75_combout\ = (\U0|WideOr64~8_combout\ & (\U0|WideOr64~4_combout\ & (\U0|WideOr64~3_combout\ & \U1|Ram0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr64~8_combout\,
	datab => \U0|WideOr64~4_combout\,
	datac => \U0|WideOr64~3_combout\,
	datad => \U1|Ram0~74_combout\,
	combout => \U1|Ram0~75_combout\);

-- Location: LCCOMB_X52_Y48_N24
\U1|Ram0~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~80_combout\ = (\U1|Ram0~62_combout\ & \U1|Ram0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Ram0~62_combout\,
	datad => \U1|Ram0~75_combout\,
	combout => \U1|Ram0~80_combout\);

-- Location: LCCOMB_X52_Y48_N20
\U1|Qs.s10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s10~1_combout\ = (\RS~input_o\ & (\U1|Qs.s10~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s10~1_combout\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~80_combout\,
	combout => \U1|Qs.s10~1_combout\);

-- Location: LCCOMB_X56_Y51_N0
\U0|WideOr64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr64~combout\ = (\U0|WideOr64~5_combout\ & (\U0|WideOr64~4_combout\ & (\U0|WideOr64~3_combout\ & \U0|WideOr64~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr64~5_combout\,
	datab => \U0|WideOr64~4_combout\,
	datac => \U0|WideOr64~3_combout\,
	datad => \U0|WideOr64~8_combout\,
	combout => \U0|WideOr64~combout\);

-- Location: LCCOMB_X56_Y51_N26
\U0|WideOr65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr65~combout\ = (\U0|WideOr65~1_combout\ & (\U0|WideOr64~3_combout\ & (\U0|WideOr65~0_combout\ & \U0|WideOr65~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr65~1_combout\,
	datab => \U0|WideOr64~3_combout\,
	datac => \U0|WideOr65~0_combout\,
	datad => \U0|WideOr65~3_combout\,
	combout => \U0|WideOr65~combout\);

-- Location: LCCOMB_X52_Y51_N26
\U1|Ram0~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~130_combout\ = (\U0|WideOr64~combout\ & (\U0|WideOr65~combout\ & \U1|Ram0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr64~combout\,
	datac => \U0|WideOr65~combout\,
	datad => \U1|Ram0~62_combout\,
	combout => \U1|Ram0~130_combout\);

-- Location: LCCOMB_X52_Y51_N8
\U1|Qs.s11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s11~1_combout\ = (\RS~input_o\ & (\U1|Qs.s11~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RS~input_o\,
	datac => \U1|Qs.s11~1_combout\,
	datad => \U1|Ram0~130_combout\,
	combout => \U1|Qs.s11~1_combout\);

-- Location: LCCOMB_X55_Y51_N18
\U1|Ram0~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~68_combout\ = (!\U0|WideOr60~combout\ & (!\U0|WideOr61~combout\ & (\U0|WideOr63~combout\ & \U0|WideOr62~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr60~combout\,
	datab => \U0|WideOr61~combout\,
	datac => \U0|WideOr63~combout\,
	datad => \U0|WideOr62~combout\,
	combout => \U1|Ram0~68_combout\);

-- Location: LCCOMB_X55_Y49_N10
\U1|Ram0~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~117_combout\ = (!\U0|WideOr65~combout\ & (\U1|Ram0~68_combout\ & !\U0|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr65~combout\,
	datac => \U1|Ram0~68_combout\,
	datad => \U0|WideOr64~combout\,
	combout => \U1|Ram0~117_combout\);

-- Location: LCCOMB_X55_Y49_N14
\U1|Qs.s12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s12~1_combout\ = (\RS~input_o\ & (\U1|Qs.s12~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s12~1_combout\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~117_combout\,
	combout => \U1|Qs.s12~1_combout\);

-- Location: LCCOMB_X56_Y51_N2
\U1|Ram0~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~92_combout\ = (\U0|WideOr65~1_combout\ & (((!\U0|WideOr64~8_combout\) # (!\U0|WideOr64~5_combout\)) # (!\U0|WideOr64~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr65~1_combout\,
	datab => \U0|WideOr64~4_combout\,
	datac => \U0|WideOr64~5_combout\,
	datad => \U0|WideOr64~8_combout\,
	combout => \U1|Ram0~92_combout\);

-- Location: LCCOMB_X56_Y51_N4
\U1|Ram0~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~93_combout\ = (\U0|WideOr65~3_combout\ & (\U0|WideOr64~3_combout\ & (\U0|WideOr65~0_combout\ & \U1|Ram0~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr65~3_combout\,
	datab => \U0|WideOr64~3_combout\,
	datac => \U0|WideOr65~0_combout\,
	datad => \U1|Ram0~92_combout\,
	combout => \U1|Ram0~93_combout\);

-- Location: LCCOMB_X55_Y49_N30
\U1|Ram0~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~103_combout\ = (\U1|Ram0~93_combout\ & \U1|Ram0~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~93_combout\,
	datac => \U1|Ram0~68_combout\,
	combout => \U1|Ram0~103_combout\);

-- Location: LCCOMB_X55_Y49_N18
\U1|Qs.s13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s13~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s13~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~103_combout\,
	datac => \RS~input_o\,
	datad => \U1|Qs.s13~1_combout\,
	combout => \U1|Qs.s13~1_combout\);

-- Location: LCCOMB_X52_Y47_N26
\U1|Ram0~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~71_combout\ = (!\U0|WideOr60~combout\ & (!\U0|WideOr62~combout\ & (!\U0|WideOr63~combout\ & \U0|WideOr61~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr60~combout\,
	datab => \U0|WideOr62~combout\,
	datac => \U0|WideOr63~combout\,
	datad => \U0|WideOr61~combout\,
	combout => \U1|Ram0~71_combout\);

-- Location: LCCOMB_X52_Y47_N24
\U1|Ram0~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~120_combout\ = (\U1|Ram0~71_combout\ & (!\U0|WideOr65~combout\ & !\U0|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~71_combout\,
	datab => \U0|WideOr65~combout\,
	datad => \U0|WideOr64~combout\,
	combout => \U1|Ram0~120_combout\);

-- Location: LCCOMB_X52_Y47_N4
\U1|Qs.s16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s16~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s16~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~120_combout\,
	datac => \U1|Qs.s16~1_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s16~1_combout\);

-- Location: LCCOMB_X52_Y47_N2
\U1|Ram0~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~104_combout\ = (\U1|Ram0~71_combout\ & \U1|Ram0~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Ram0~71_combout\,
	datad => \U1|Ram0~93_combout\,
	combout => \U1|Ram0~104_combout\);

-- Location: LCCOMB_X52_Y47_N28
\U1|Qs.s17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s17~1_combout\ = (\RS~input_o\ & (\U1|Qs.s17~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s17~1_combout\,
	datac => \U1|Ram0~104_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s17~1_combout\);

-- Location: LCCOMB_X52_Y47_N20
\U1|Ram0~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~87_combout\ = (\U1|Ram0~71_combout\ & \U1|Ram0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Ram0~71_combout\,
	datad => \U1|Ram0~75_combout\,
	combout => \U1|Ram0~87_combout\);

-- Location: LCCOMB_X52_Y47_N14
\U1|Qs.s18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s18~1_combout\ = (\RS~input_o\ & (\U1|Qs.s18~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s18~1_combout\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~87_combout\,
	combout => \U1|Qs.s18~1_combout\);

-- Location: LCCOMB_X52_Y47_N22
\U1|Ram0~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~136_combout\ = (\U0|WideOr64~combout\ & (\U1|Ram0~71_combout\ & \U0|WideOr65~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr64~combout\,
	datac => \U1|Ram0~71_combout\,
	datad => \U0|WideOr65~combout\,
	combout => \U1|Ram0~136_combout\);

-- Location: LCCOMB_X52_Y47_N6
\U1|Qs.s19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s19~1_combout\ = (\RS~input_o\ & (\U1|Qs.s19~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~136_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s19~1_combout\,
	datac => \U1|Ram0~136_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s19~1_combout\);

-- Location: LCCOMB_X54_Y51_N28
\U1|Ram0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~59_combout\ = (!\U0|WideOr60~combout\ & (\U0|WideOr63~combout\ & (\U0|WideOr61~combout\ & !\U0|WideOr62~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr60~combout\,
	datab => \U0|WideOr63~combout\,
	datac => \U0|WideOr61~combout\,
	datad => \U0|WideOr62~combout\,
	combout => \U1|Ram0~59_combout\);

-- Location: LCCOMB_X54_Y51_N4
\U1|Ram0~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~110_combout\ = (!\U0|WideOr64~combout\ & (!\U0|WideOr65~combout\ & \U1|Ram0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr64~combout\,
	datac => \U0|WideOr65~combout\,
	datad => \U1|Ram0~59_combout\,
	combout => \U1|Ram0~110_combout\);

-- Location: LCCOMB_X54_Y51_N6
\U1|Qs.s20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s20~1_combout\ = (\RS~input_o\ & (\U1|Qs.s20~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s20~1_combout\,
	datac => \U1|Ram0~110_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s20~1_combout\);

-- Location: LCCOMB_X55_Y53_N12
\U1|Ram0~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~95_combout\ = (\U1|Ram0~93_combout\ & \U1|Ram0~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Ram0~93_combout\,
	datad => \U1|Ram0~59_combout\,
	combout => \U1|Ram0~95_combout\);

-- Location: LCCOMB_X55_Y53_N28
\U1|Qs.s21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s21~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s21~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~95_combout\,
	datac => \RS~input_o\,
	datad => \U1|Qs.s21~1_combout\,
	combout => \U1|Qs.s21~1_combout\);

-- Location: LCCOMB_X54_Y51_N8
\U1|Ram0~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~77_combout\ = (\U1|Ram0~59_combout\ & \U1|Ram0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~59_combout\,
	datad => \U1|Ram0~75_combout\,
	combout => \U1|Ram0~77_combout\);

-- Location: LCCOMB_X54_Y51_N14
\U1|Qs.s22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s22~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s22~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~77_combout\,
	datac => \U1|Qs.s22~1_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s22~1_combout\);

-- Location: LCCOMB_X54_Y51_N0
\U1|Ram0~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~127_combout\ = (\U0|WideOr64~combout\ & (\U0|WideOr65~combout\ & \U1|Ram0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr64~combout\,
	datac => \U0|WideOr65~combout\,
	datad => \U1|Ram0~59_combout\,
	combout => \U1|Ram0~127_combout\);

-- Location: LCCOMB_X54_Y51_N2
\U1|Qs.s23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s23~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s23~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~127_combout\,
	datac => \RS~input_o\,
	datad => \U1|Qs.s23~1_combout\,
	combout => \U1|Qs.s23~1_combout\);

-- Location: LCCOMB_X55_Y52_N28
\U1|Ram0~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~63_combout\ = (\U0|WideOr62~combout\ & (!\U0|WideOr63~combout\ & (\U0|WideOr61~combout\ & !\U0|WideOr60~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr62~combout\,
	datab => \U0|WideOr63~combout\,
	datac => \U0|WideOr61~combout\,
	datad => \U0|WideOr60~combout\,
	combout => \U1|Ram0~63_combout\);

-- Location: LCCOMB_X55_Y52_N6
\U1|Ram0~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~99_combout\ = (\U1|Ram0~63_combout\ & \U1|Ram0~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~63_combout\,
	datad => \U1|Ram0~93_combout\,
	combout => \U1|Ram0~99_combout\);

-- Location: LCCOMB_X55_Y52_N24
\U1|Qs.s25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s25~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s25~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~99_combout\,
	datab => \U1|Qs.s25~1_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s25~1_combout\);

-- Location: LCCOMB_X55_Y52_N22
\U1|Ram0~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~81_combout\ = (\U1|Ram0~75_combout\ & \U1|Ram0~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Ram0~75_combout\,
	datad => \U1|Ram0~63_combout\,
	combout => \U1|Ram0~81_combout\);

-- Location: LCCOMB_X55_Y52_N10
\U1|Qs.s26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s26~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s26~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~81_combout\,
	datac => \RS~input_o\,
	datad => \U1|Qs.s26~1_combout\,
	combout => \U1|Qs.s26~1_combout\);

-- Location: LCCOMB_X52_Y52_N26
\U1|Ram0~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~131_combout\ = (\U0|WideOr64~combout\ & (\U0|WideOr65~combout\ & \U1|Ram0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr64~combout\,
	datac => \U0|WideOr65~combout\,
	datad => \U1|Ram0~63_combout\,
	combout => \U1|Ram0~131_combout\);

-- Location: LCCOMB_X52_Y52_N2
\U1|Qs.s27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s27~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s27~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~131_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datac => \U1|Ram0~131_combout\,
	datad => \U1|Qs.s27~1_combout\,
	combout => \U1|Qs.s27~1_combout\);

-- Location: LCCOMB_X55_Y51_N22
\U1|Ram0~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~69_combout\ = (!\U0|WideOr60~combout\ & (\U0|WideOr61~combout\ & (\U0|WideOr63~combout\ & \U0|WideOr62~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr60~combout\,
	datab => \U0|WideOr61~combout\,
	datac => \U0|WideOr63~combout\,
	datad => \U0|WideOr62~combout\,
	combout => \U1|Ram0~69_combout\);

-- Location: LCCOMB_X56_Y50_N16
\U1|Ram0~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~118_combout\ = (!\U0|WideOr65~combout\ & (!\U0|WideOr64~combout\ & \U1|Ram0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|WideOr65~combout\,
	datac => \U0|WideOr64~combout\,
	datad => \U1|Ram0~69_combout\,
	combout => \U1|Ram0~118_combout\);

-- Location: LCCOMB_X56_Y50_N26
\U1|Qs.s28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s28~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s28~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~118_combout\,
	datac => \U1|Qs.s28~1_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s28~1_combout\);

-- Location: LCCOMB_X56_Y51_N10
\U1|Ram0~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~105_combout\ = (\U1|Ram0~93_combout\ & \U1|Ram0~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~93_combout\,
	datad => \U1|Ram0~69_combout\,
	combout => \U1|Ram0~105_combout\);

-- Location: LCCOMB_X56_Y51_N22
\U1|Qs.s29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s29~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s29~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~105_combout\,
	datac => \U1|Qs.s29~1_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s29~1_combout\);

-- Location: LCCOMB_X54_Y49_N28
\U1|Ram0~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~88_combout\ = (\U1|Ram0~75_combout\ & \U1|Ram0~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Ram0~75_combout\,
	datad => \U1|Ram0~69_combout\,
	combout => \U1|Ram0~88_combout\);

-- Location: LCCOMB_X54_Y49_N20
\U1|Qs.s30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s30~1_combout\ = (\RS~input_o\ & (\U1|Qs.s30~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s30~1_combout\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~88_combout\,
	combout => \U1|Qs.s30~1_combout\);

-- Location: LCCOMB_X54_Y49_N4
\U1|Ram0~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~125_combout\ = (\U0|WideOr64~combout\ & (\U0|WideOr65~combout\ & \U1|Ram0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr64~combout\,
	datac => \U0|WideOr65~combout\,
	datad => \U1|Ram0~69_combout\,
	combout => \U1|Ram0~125_combout\);

-- Location: LCCOMB_X54_Y49_N24
\U1|Qs.s31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s31~1_combout\ = (\RS~input_o\ & (\U1|Qs.s31~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RS~input_o\,
	datac => \U1|Qs.s31~1_combout\,
	datad => \U1|Ram0~125_combout\,
	combout => \U1|Qs.s31~1_combout\);

-- Location: LCCOMB_X54_Y52_N30
\U1|Ram0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~72_combout\ = (!\U0|WideOr62~combout\ & (!\U0|WideOr61~combout\ & (\U0|WideOr60~combout\ & !\U0|WideOr63~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr62~combout\,
	datab => \U0|WideOr61~combout\,
	datac => \U0|WideOr60~combout\,
	datad => \U0|WideOr63~combout\,
	combout => \U1|Ram0~72_combout\);

-- Location: LCCOMB_X54_Y52_N0
\U1|Ram0~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~121_combout\ = (!\U0|WideOr64~combout\ & (\U1|Ram0~72_combout\ & !\U0|WideOr65~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr64~combout\,
	datac => \U1|Ram0~72_combout\,
	datad => \U0|WideOr65~combout\,
	combout => \U1|Ram0~121_combout\);

-- Location: LCCOMB_X54_Y53_N4
\U1|Qs.s32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s32~1_combout\ = (\RS~input_o\ & (\U1|Qs.s32~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s32~1_combout\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~121_combout\,
	combout => \U1|Qs.s32~1_combout\);

-- Location: LCCOMB_X52_Y48_N18
\U1|Ram0~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~106_combout\ = (\U1|Ram0~93_combout\ & \U1|Ram0~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~93_combout\,
	datad => \U1|Ram0~72_combout\,
	combout => \U1|Ram0~106_combout\);

-- Location: LCCOMB_X52_Y48_N30
\U1|Qs.s33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s33~1_combout\ = (\RS~input_o\ & (\U1|Qs.s33~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RS~input_o\,
	datac => \U1|Qs.s33~1_combout\,
	datad => \U1|Ram0~106_combout\,
	combout => \U1|Qs.s33~1_combout\);

-- Location: LCCOMB_X52_Y48_N6
\U1|Ram0~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~89_combout\ = (\U1|Ram0~75_combout\ & \U1|Ram0~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Ram0~75_combout\,
	datad => \U1|Ram0~72_combout\,
	combout => \U1|Ram0~89_combout\);

-- Location: LCCOMB_X52_Y48_N26
\U1|Qs.s34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s34~1_combout\ = (\RS~input_o\ & (\U1|Qs.s34~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s34~1_combout\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~89_combout\,
	combout => \U1|Qs.s34~1_combout\);

-- Location: LCCOMB_X57_Y50_N0
\U1|Ram0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~60_combout\ = (\U0|WideOr63~combout\ & (!\U0|WideOr62~combout\ & (!\U0|WideOr61~combout\ & \U0|WideOr60~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr63~combout\,
	datab => \U0|WideOr62~combout\,
	datac => \U0|WideOr61~combout\,
	datad => \U0|WideOr60~combout\,
	combout => \U1|Ram0~60_combout\);

-- Location: LCCOMB_X55_Y48_N28
\U1|Ram0~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~111_combout\ = (\U1|Ram0~60_combout\ & (!\U0|WideOr64~combout\ & !\U0|WideOr65~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~60_combout\,
	datac => \U0|WideOr64~combout\,
	datad => \U0|WideOr65~combout\,
	combout => \U1|Ram0~111_combout\);

-- Location: LCCOMB_X55_Y48_N18
\U1|Qs.s36~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s36~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s36~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Ram0~111_combout\,
	datad => \U1|Qs.s36~1_combout\,
	combout => \U1|Qs.s36~1_combout\);

-- Location: LCCOMB_X57_Y50_N6
\U1|Ram0~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~78_combout\ = (\U1|Ram0~75_combout\ & \U1|Ram0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~75_combout\,
	datac => \U1|Ram0~60_combout\,
	combout => \U1|Ram0~78_combout\);

-- Location: LCCOMB_X57_Y50_N10
\U1|Qs.s38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s38~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s38~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~78_combout\,
	datac => \U1|Qs.s38~1_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s38~1_combout\);

-- Location: LCCOMB_X54_Y48_N18
\U1|Ram0~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~128_combout\ = (\U0|WideOr65~combout\ & (\U0|WideOr64~combout\ & \U1|Ram0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr65~combout\,
	datac => \U0|WideOr64~combout\,
	datad => \U1|Ram0~60_combout\,
	combout => \U1|Ram0~128_combout\);

-- Location: LCCOMB_X54_Y48_N16
\U1|Qs.s39~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s39~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s39~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Ram0~128_combout\,
	datad => \U1|Qs.s39~1_combout\,
	combout => \U1|Qs.s39~1_combout\);

-- Location: LCCOMB_X54_Y52_N16
\U1|Ram0~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~64_combout\ = (\U0|WideOr62~combout\ & (\U0|WideOr60~combout\ & (!\U0|WideOr63~combout\ & !\U0|WideOr61~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr62~combout\,
	datab => \U0|WideOr60~combout\,
	datac => \U0|WideOr63~combout\,
	datad => \U0|WideOr61~combout\,
	combout => \U1|Ram0~64_combout\);

-- Location: LCCOMB_X54_Y52_N6
\U1|Ram0~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~115_combout\ = (\U1|Ram0~64_combout\ & (!\U0|WideOr64~combout\ & !\U0|WideOr65~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~64_combout\,
	datac => \U0|WideOr64~combout\,
	datad => \U0|WideOr65~combout\,
	combout => \U1|Ram0~115_combout\);

-- Location: LCCOMB_X54_Y52_N26
\U1|Qs.s40~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s40~1_combout\ = (\RS~input_o\ & (\U1|Qs.s40~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s40~1_combout\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~115_combout\,
	combout => \U1|Qs.s40~1_combout\);

-- Location: LCCOMB_X54_Y52_N20
\U1|Ram0~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~100_combout\ = (\U1|Ram0~93_combout\ & \U1|Ram0~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Ram0~93_combout\,
	datad => \U1|Ram0~64_combout\,
	combout => \U1|Ram0~100_combout\);

-- Location: LCCOMB_X54_Y52_N14
\U1|Qs.s41~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s41~1_combout\ = (\RS~input_o\ & (\U1|Qs.s41~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s41~1_combout\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~100_combout\,
	combout => \U1|Qs.s41~1_combout\);

-- Location: LCCOMB_X55_Y53_N4
\U1|Ram0~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~132_combout\ = (\U0|WideOr64~combout\ & (\U0|WideOr65~combout\ & \U1|Ram0~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|WideOr64~combout\,
	datac => \U0|WideOr65~combout\,
	datad => \U1|Ram0~64_combout\,
	combout => \U1|Ram0~132_combout\);

-- Location: LCCOMB_X55_Y53_N2
\U1|Qs.s43~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s43~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s43~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~132_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~132_combout\,
	datac => \RS~input_o\,
	datad => \U1|Qs.s43~1_combout\,
	combout => \U1|Qs.s43~1_combout\);

-- Location: LCCOMB_X54_Y53_N16
\U1|Ram0~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~70_combout\ = (\U0|WideOr63~combout\ & (!\U0|WideOr61~combout\ & (\U0|WideOr60~combout\ & \U0|WideOr62~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr63~combout\,
	datab => \U0|WideOr61~combout\,
	datac => \U0|WideOr60~combout\,
	datad => \U0|WideOr62~combout\,
	combout => \U1|Ram0~70_combout\);

-- Location: LCCOMB_X55_Y53_N14
\U1|Ram0~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~119_combout\ = (!\U0|WideOr64~combout\ & (\U1|Ram0~70_combout\ & !\U0|WideOr65~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|WideOr64~combout\,
	datac => \U1|Ram0~70_combout\,
	datad => \U0|WideOr65~combout\,
	combout => \U1|Ram0~119_combout\);

-- Location: LCCOMB_X55_Y53_N30
\U1|Qs.s44~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s44~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s44~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~119_combout\,
	datac => \U1|Qs.s44~1_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s44~1_combout\);

-- Location: LCCOMB_X54_Y53_N20
\U1|Ram0~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~107_combout\ = (\U1|Ram0~93_combout\ & \U1|Ram0~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~93_combout\,
	datad => \U1|Ram0~70_combout\,
	combout => \U1|Ram0~107_combout\);

-- Location: LCCOMB_X54_Y53_N0
\U1|Qs.s45~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s45~1_combout\ = (\RS~input_o\ & (\U1|Qs.s45~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s45~1_combout\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~107_combout\,
	combout => \U1|Qs.s45~1_combout\);

-- Location: LCCOMB_X54_Y53_N22
\U1|Ram0~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~90_combout\ = (\U1|Ram0~75_combout\ & \U1|Ram0~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Ram0~75_combout\,
	datad => \U1|Ram0~70_combout\,
	combout => \U1|Ram0~90_combout\);

-- Location: LCCOMB_X54_Y53_N26
\U1|Qs.s46~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s46~1_combout\ = (\RS~input_o\ & (\U1|Qs.s46~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datac => \U1|Qs.s46~1_combout\,
	datad => \U1|Ram0~90_combout\,
	combout => \U1|Qs.s46~1_combout\);

-- Location: LCCOMB_X56_Y52_N6
\U1|Ram0~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~73_combout\ = (\U0|WideOr61~combout\ & (!\U0|WideOr63~combout\ & (!\U0|WideOr62~combout\ & \U0|WideOr60~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr61~combout\,
	datab => \U0|WideOr63~combout\,
	datac => \U0|WideOr62~combout\,
	datad => \U0|WideOr60~combout\,
	combout => \U1|Ram0~73_combout\);

-- Location: LCCOMB_X56_Y52_N30
\U1|Ram0~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~122_combout\ = (!\U0|WideOr64~combout\ & (!\U0|WideOr65~combout\ & \U1|Ram0~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|WideOr64~combout\,
	datac => \U0|WideOr65~combout\,
	datad => \U1|Ram0~73_combout\,
	combout => \U1|Ram0~122_combout\);

-- Location: LCCOMB_X56_Y52_N10
\U1|Qs.s48~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s48~1_combout\ = (\RS~input_o\ & (\U1|Qs.s48~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s48~1_combout\,
	datac => \U1|Ram0~122_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s48~1_combout\);

-- Location: LCCOMB_X51_Y52_N8
\U1|Ram0~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~108_combout\ = (\U1|Ram0~73_combout\ & \U1|Ram0~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Ram0~73_combout\,
	datad => \U1|Ram0~93_combout\,
	combout => \U1|Ram0~108_combout\);

-- Location: LCCOMB_X51_Y52_N2
\U1|Qs.s49~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s49~1_combout\ = (\RS~input_o\ & (\U1|Qs.s49~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s49~1_combout\,
	datac => \U1|Ram0~108_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s49~1_combout\);

-- Location: LCCOMB_X56_Y52_N18
\U1|Ram0~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~91_combout\ = (\U1|Ram0~73_combout\ & \U1|Ram0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~73_combout\,
	datad => \U1|Ram0~75_combout\,
	combout => \U1|Ram0~91_combout\);

-- Location: LCCOMB_X54_Y50_N0
\U1|Ram0~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~134_combout\ = (\U0|WideOr65~combout\ & (\U1|Ram0~73_combout\ & \U0|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|WideOr65~combout\,
	datac => \U1|Ram0~73_combout\,
	datad => \U0|WideOr64~combout\,
	combout => \U1|Ram0~134_combout\);

-- Location: LCCOMB_X56_Y52_N16
\U1|Ram0~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~61_combout\ = (\U0|WideOr61~combout\ & (\U0|WideOr63~combout\ & (!\U0|WideOr62~combout\ & \U0|WideOr60~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr61~combout\,
	datab => \U0|WideOr63~combout\,
	datac => \U0|WideOr62~combout\,
	datad => \U0|WideOr60~combout\,
	combout => \U1|Ram0~61_combout\);

-- Location: LCCOMB_X56_Y52_N12
\U1|Ram0~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~112_combout\ = (!\U0|WideOr64~combout\ & (!\U0|WideOr65~combout\ & \U1|Ram0~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|WideOr64~combout\,
	datac => \U0|WideOr65~combout\,
	datad => \U1|Ram0~61_combout\,
	combout => \U1|Ram0~112_combout\);

-- Location: LCCOMB_X56_Y52_N20
\U1|Qs.s52~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s52~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s52~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~112_combout\,
	datab => \U1|Qs.s52~1_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s52~1_combout\);

-- Location: LCCOMB_X57_Y50_N14
\U1|Ram0~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~97_combout\ = (\U1|Ram0~93_combout\ & \U1|Ram0~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Ram0~93_combout\,
	datad => \U1|Ram0~61_combout\,
	combout => \U1|Ram0~97_combout\);

-- Location: LCCOMB_X57_Y50_N30
\U1|Qs.s53~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s53~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s53~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~97_combout\,
	datac => \U1|Qs.s53~1_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s53~1_combout\);

-- Location: LCCOMB_X56_Y52_N4
\U1|Ram0~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~79_combout\ = (\U1|Ram0~61_combout\ & \U1|Ram0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~61_combout\,
	datad => \U1|Ram0~75_combout\,
	combout => \U1|Ram0~79_combout\);

-- Location: LCCOMB_X56_Y52_N24
\U1|Qs.s54~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s54~1_combout\ = (\RS~input_o\ & (\U1|Qs.s54~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s54~1_combout\,
	datac => \U1|Ram0~79_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s54~1_combout\);

-- Location: LCCOMB_X54_Y48_N12
\U1|Ram0~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~129_combout\ = (\U0|WideOr64~combout\ & (\U0|WideOr65~combout\ & \U1|Ram0~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|WideOr64~combout\,
	datac => \U0|WideOr65~combout\,
	datad => \U1|Ram0~61_combout\,
	combout => \U1|Ram0~129_combout\);

-- Location: LCCOMB_X54_Y48_N2
\U1|Qs.s55~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s55~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s55~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~129_combout\,
	datab => \U1|Qs.s55~1_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s55~1_combout\);

-- Location: LCCOMB_X54_Y51_N22
\U1|Ram0~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~65_combout\ = (\U0|WideOr60~combout\ & (!\U0|WideOr63~combout\ & (\U0|WideOr61~combout\ & \U0|WideOr62~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr60~combout\,
	datab => \U0|WideOr63~combout\,
	datac => \U0|WideOr61~combout\,
	datad => \U0|WideOr62~combout\,
	combout => \U1|Ram0~65_combout\);

-- Location: LCCOMB_X54_Y51_N18
\U1|Ram0~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~116_combout\ = (!\U0|WideOr65~combout\ & (\U1|Ram0~65_combout\ & !\U0|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr65~combout\,
	datac => \U1|Ram0~65_combout\,
	datad => \U0|WideOr64~combout\,
	combout => \U1|Ram0~116_combout\);

-- Location: LCCOMB_X54_Y51_N20
\U1|Qs.s56~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s56~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s56~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~116_combout\,
	datac => \RS~input_o\,
	datad => \U1|Qs.s56~1_combout\,
	combout => \U1|Qs.s56~1_combout\);

-- Location: LCCOMB_X55_Y52_N12
\U1|Ram0~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~101_combout\ = (\U1|Ram0~65_combout\ & \U1|Ram0~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Ram0~65_combout\,
	datad => \U1|Ram0~93_combout\,
	combout => \U1|Ram0~101_combout\);

-- Location: LCCOMB_X55_Y52_N14
\U1|Qs.s57~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s57~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s57~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~101_combout\,
	datac => \U1|Qs.s57~1_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s57~1_combout\);

-- Location: LCCOMB_X54_Y51_N30
\U1|Ram0~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~83_combout\ = (\U1|Ram0~65_combout\ & \U1|Ram0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Ram0~65_combout\,
	datad => \U1|Ram0~75_combout\,
	combout => \U1|Ram0~83_combout\);

-- Location: LCCOMB_X54_Y51_N24
\U1|Qs.s58~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s58~1_combout\ = (\RS~input_o\ & (\U1|Qs.s58~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s58~1_combout\,
	datac => \U1|Ram0~83_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s58~1_combout\);

-- Location: LCCOMB_X55_Y51_N16
\U1|Ram0~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~133_combout\ = (\U0|WideOr65~combout\ & (\U0|WideOr64~combout\ & \U1|Ram0~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr65~combout\,
	datab => \U0|WideOr64~combout\,
	datad => \U1|Ram0~65_combout\,
	combout => \U1|Ram0~133_combout\);

-- Location: LCCOMB_X56_Y50_N30
\U1|Qs.s59~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s59~1_combout\ = (\RS~input_o\ & (\U1|Qs.s59~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s59~1_combout\,
	datac => \U1|Ram0~133_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s59~1_combout\);

-- Location: LCCOMB_X54_Y52_N10
\U1|Ram0~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~66_combout\ = (\U0|WideOr61~combout\) # ((!\U0|WideOr63~combout\ & ((\U0|WideOr64~combout\) # (\U0|WideOr65~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr63~combout\,
	datab => \U0|WideOr61~combout\,
	datac => \U0|WideOr64~combout\,
	datad => \U0|WideOr65~combout\,
	combout => \U1|Ram0~66_combout\);

-- Location: LCCOMB_X54_Y52_N12
\U1|Ram0~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~67_combout\ = (\U0|WideOr63~combout\ & (\U0|WideOr60~combout\ & (\U0|WideOr62~combout\ & \U1|Ram0~66_combout\))) # (!\U0|WideOr63~combout\ & (!\U0|WideOr60~combout\ & (!\U0|WideOr62~combout\ & !\U1|Ram0~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr63~combout\,
	datab => \U0|WideOr60~combout\,
	datac => \U0|WideOr62~combout\,
	datad => \U1|Ram0~66_combout\,
	combout => \U1|Ram0~67_combout\);

-- Location: LCCOMB_X54_Y52_N28
\U1|Qs.s0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s0~1_combout\ = (\RS~input_o\ & (\U1|Qs.s0~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s0~1_combout\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~67_combout\,
	combout => \U1|Qs.s0~1_combout\);

-- Location: LCCOMB_X55_Y52_N20
\U1|Ram0~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~84_combout\ = (!\U0|WideOr62~combout\ & (!\U0|WideOr63~combout\ & (!\U0|WideOr60~combout\ & !\U0|WideOr61~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr62~combout\,
	datab => \U0|WideOr63~combout\,
	datac => \U0|WideOr60~combout\,
	datad => \U0|WideOr61~combout\,
	combout => \U1|Ram0~84_combout\);

-- Location: LCCOMB_X51_Y52_N30
\U1|Ram0~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~102_combout\ = (\U1|Ram0~93_combout\ & \U1|Ram0~84_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~93_combout\,
	datad => \U1|Ram0~84_combout\,
	combout => \U1|Ram0~102_combout\);

-- Location: LCCOMB_X51_Y52_N28
\U1|Qs.s1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s1~1_combout\ = (\RS~input_o\ & (\U1|Qs.s1~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s1~1_combout\,
	datac => \U1|Ram0~102_combout\,
	combout => \U1|Qs.s1~1_combout\);

-- Location: LCCOMB_X55_Y50_N2
\U1|Ram0~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~85_combout\ = (\U1|Ram0~84_combout\ & \U1|Ram0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Ram0~84_combout\,
	datad => \U1|Ram0~75_combout\,
	combout => \U1|Ram0~85_combout\);

-- Location: LCCOMB_X56_Y50_N12
\U1|Qs.s2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s2~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s2~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~85_combout\,
	datac => \RS~input_o\,
	datad => \U1|Qs.s2~1_combout\,
	combout => \U1|Qs.s2~1_combout\);

-- Location: LCCOMB_X51_Y52_N22
\U1|Ram0~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~137_combout\ = (\U0|WideOr64~combout\ & (\U0|WideOr65~combout\ & \U1|Ram0~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr64~combout\,
	datac => \U0|WideOr65~combout\,
	datad => \U1|Ram0~84_combout\,
	combout => \U1|Ram0~137_combout\);

-- Location: LCCOMB_X54_Y48_N8
\U1|Ram0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~58_combout\ = (\U0|WideOr63~combout\ & (!\U0|WideOr60~combout\ & (!\U0|WideOr61~combout\ & !\U0|WideOr62~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr63~combout\,
	datab => \U0|WideOr60~combout\,
	datac => \U0|WideOr61~combout\,
	datad => \U0|WideOr62~combout\,
	combout => \U1|Ram0~58_combout\);

-- Location: LCCOMB_X55_Y49_N28
\U1|Ram0~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~109_combout\ = (!\U0|WideOr64~combout\ & (!\U0|WideOr65~combout\ & \U1|Ram0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|WideOr64~combout\,
	datac => \U0|WideOr65~combout\,
	datad => \U1|Ram0~58_combout\,
	combout => \U1|Ram0~109_combout\);

-- Location: LCCOMB_X55_Y49_N24
\U1|Qs.s4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s4~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s4~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~109_combout\,
	datac => \RS~input_o\,
	datad => \U1|Qs.s4~1_combout\,
	combout => \U1|Qs.s4~1_combout\);

-- Location: LCCOMB_X55_Y49_N20
\U1|Ram0~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~94_combout\ = (\U1|Ram0~93_combout\ & \U1|Ram0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Ram0~93_combout\,
	datad => \U1|Ram0~58_combout\,
	combout => \U1|Ram0~94_combout\);

-- Location: LCCOMB_X55_Y49_N8
\U1|Qs.s5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s5~1_combout\ = (\RS~input_o\ & (\U1|Qs.s5~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s5~1_combout\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~94_combout\,
	combout => \U1|Qs.s5~1_combout\);

-- Location: LCCOMB_X54_Y48_N14
\U1|Ram0~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~76_combout\ = (\U1|Ram0~58_combout\ & \U1|Ram0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Ram0~58_combout\,
	datad => \U1|Ram0~75_combout\,
	combout => \U1|Ram0~76_combout\);

-- Location: LCCOMB_X57_Y50_N4
\U1|Qs.s6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s6~1_combout\ = (\RS~input_o\ & (\U1|Qs.s6~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s6~1_combout\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~76_combout\,
	combout => \U1|Qs.s6~1_combout\);

-- Location: LCCOMB_X54_Y48_N24
\U1|Ram0~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~126_combout\ = (\U0|WideOr65~combout\ & (\U1|Ram0~58_combout\ & \U0|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr65~combout\,
	datab => \U1|Ram0~58_combout\,
	datac => \U0|WideOr64~combout\,
	combout => \U1|Ram0~126_combout\);

-- Location: LCCOMB_X54_Y48_N6
\U1|Qs.s7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s7~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s7~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Ram0~126_combout\,
	datad => \U1|Qs.s7~1_combout\,
	combout => \U1|Qs.s7~1_combout\);

-- Location: LCCOMB_X52_Y51_N4
\U1|Ram0~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~113_combout\ = (!\U0|WideOr64~combout\ & (!\U0|WideOr65~combout\ & \U1|Ram0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr64~combout\,
	datac => \U0|WideOr65~combout\,
	datad => \U1|Ram0~62_combout\,
	combout => \U1|Ram0~113_combout\);

-- Location: LCCOMB_X52_Y51_N22
\U1|Qs.s8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s8~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s8~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~113_combout\,
	datac => \U1|Qs.s8~1_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s8~1_combout\);

-- Location: LCCOMB_X52_Y48_N0
\U1|Ram0~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~98_combout\ = (\U1|Ram0~62_combout\ & \U1|Ram0~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Ram0~62_combout\,
	datad => \U1|Ram0~93_combout\,
	combout => \U1|Ram0~98_combout\);

-- Location: LCCOMB_X52_Y48_N28
\U1|Qs.s9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s9~1_combout\ = (\RS~input_o\ & (\U1|Qs.s9~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s9~1_combout\,
	datac => \U1|Ram0~98_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s9~1_combout\);

-- Location: LCCOMB_X52_Y48_N8
\U1|Qs.s9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s9~3_combout\ = \U1|Qs.s9~1_combout\ $ (\U1|Qs.s10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s9~1_combout\,
	datad => \U1|Qs.s10~2_combout\,
	combout => \U1|Qs.s9~3_combout\);

-- Location: FF_X52_Y48_N9
\U1|Qs.s9~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s9~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s9~_emulated_q\);

-- Location: LCCOMB_X52_Y48_N10
\U1|Qs.s9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s9~2_combout\ = (\RS~input_o\ & (\U1|Qs.s9~1_combout\ $ ((\U1|Qs.s9~_emulated_q\)))) # (!\RS~input_o\ & (((\U1|Ram0~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s9~1_combout\,
	datab => \U1|Qs.s9~_emulated_q\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~98_combout\,
	combout => \U1|Qs.s9~2_combout\);

-- Location: LCCOMB_X52_Y51_N2
\U1|Qs.s8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s8~3_combout\ = \U1|Qs.s9~2_combout\ $ (\U1|Qs.s8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s9~2_combout\,
	datab => \U1|Qs.s8~1_combout\,
	combout => \U1|Qs.s8~3_combout\);

-- Location: FF_X52_Y51_N3
\U1|Qs.s8~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s8~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s8~_emulated_q\);

-- Location: LCCOMB_X52_Y51_N24
\U1|Qs.s8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s8~2_combout\ = (\RS~input_o\ & (\U1|Qs.s8~1_combout\ $ (((\U1|Qs.s8~_emulated_q\))))) # (!\RS~input_o\ & (((\U1|Ram0~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s8~1_combout\,
	datab => \RS~input_o\,
	datac => \U1|Ram0~113_combout\,
	datad => \U1|Qs.s8~_emulated_q\,
	combout => \U1|Qs.s8~2_combout\);

-- Location: LCCOMB_X54_Y48_N26
\U1|Qs.s7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s7~3_combout\ = \U1|Qs.s7~1_combout\ $ (\U1|Qs.s8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s7~1_combout\,
	datad => \U1|Qs.s8~2_combout\,
	combout => \U1|Qs.s7~3_combout\);

-- Location: FF_X54_Y48_N27
\U1|Qs.s7~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s7~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s7~_emulated_q\);

-- Location: LCCOMB_X54_Y48_N28
\U1|Qs.s7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s7~2_combout\ = (\RS~input_o\ & ((\U1|Qs.s7~_emulated_q\ $ (\U1|Qs.s7~1_combout\)))) # (!\RS~input_o\ & (\U1|Ram0~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Ram0~126_combout\,
	datac => \U1|Qs.s7~_emulated_q\,
	datad => \U1|Qs.s7~1_combout\,
	combout => \U1|Qs.s7~2_combout\);

-- Location: LCCOMB_X52_Y47_N16
\U1|Qs.s6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s6~3_combout\ = \U1|Qs.s6~1_combout\ $ (\U1|Qs.s7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s6~1_combout\,
	datad => \U1|Qs.s7~2_combout\,
	combout => \U1|Qs.s6~3_combout\);

-- Location: FF_X52_Y47_N17
\U1|Qs.s6~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s6~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s6~_emulated_q\);

-- Location: LCCOMB_X57_Y50_N2
\U1|Qs.s6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s6~2_combout\ = (\RS~input_o\ & (\U1|Qs.s6~1_combout\ $ ((\U1|Qs.s6~_emulated_q\)))) # (!\RS~input_o\ & (((\U1|Ram0~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s6~1_combout\,
	datac => \U1|Qs.s6~_emulated_q\,
	datad => \U1|Ram0~76_combout\,
	combout => \U1|Qs.s6~2_combout\);

-- Location: LCCOMB_X56_Y50_N10
\U1|Qs.s5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s5~3_combout\ = \U1|Qs.s5~1_combout\ $ (\U1|Qs.s6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s5~1_combout\,
	datad => \U1|Qs.s6~2_combout\,
	combout => \U1|Qs.s5~3_combout\);

-- Location: FF_X56_Y50_N11
\U1|Qs.s5~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s5~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s5~_emulated_q\);

-- Location: LCCOMB_X55_Y49_N6
\U1|Qs.s5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s5~2_combout\ = (\RS~input_o\ & (\U1|Qs.s5~1_combout\ $ ((\U1|Qs.s5~_emulated_q\)))) # (!\RS~input_o\ & (((\U1|Ram0~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s5~1_combout\,
	datac => \U1|Qs.s5~_emulated_q\,
	datad => \U1|Ram0~94_combout\,
	combout => \U1|Qs.s5~2_combout\);

-- Location: LCCOMB_X55_Y49_N22
\U1|Qs.s4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s4~3_combout\ = \U1|Qs.s4~1_combout\ $ (\U1|Qs.s5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Qs.s4~1_combout\,
	datad => \U1|Qs.s5~2_combout\,
	combout => \U1|Qs.s4~3_combout\);

-- Location: FF_X55_Y49_N23
\U1|Qs.s4~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s4~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s4~_emulated_q\);

-- Location: LCCOMB_X55_Y49_N4
\U1|Qs.s4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s4~2_combout\ = (\RS~input_o\ & (\U1|Qs.s4~_emulated_q\ $ ((\U1|Qs.s4~1_combout\)))) # (!\RS~input_o\ & (((\U1|Ram0~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s4~_emulated_q\,
	datab => \U1|Qs.s4~1_combout\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~109_combout\,
	combout => \U1|Qs.s4~2_combout\);

-- Location: LCCOMB_X51_Y52_N16
\U1|Qs.s3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s3~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s3~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~137_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datac => \U1|Ram0~137_combout\,
	datad => \U1|Qs.s3~1_combout\,
	combout => \U1|Qs.s3~1_combout\);

-- Location: LCCOMB_X51_Y52_N14
\U1|Qs.s3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s3~3_combout\ = \U1|Qs.s4~2_combout\ $ (\U1|Qs.s3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s4~2_combout\,
	datad => \U1|Qs.s3~1_combout\,
	combout => \U1|Qs.s3~3_combout\);

-- Location: FF_X51_Y52_N15
\U1|Qs.s3~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s3~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s3~_emulated_q\);

-- Location: LCCOMB_X51_Y52_N12
\U1|Qs.s3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s3~2_combout\ = (\RS~input_o\ & ((\U1|Qs.s3~_emulated_q\ $ (\U1|Qs.s3~1_combout\)))) # (!\RS~input_o\ & (\U1|Ram0~137_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~137_combout\,
	datab => \U1|Qs.s3~_emulated_q\,
	datac => \RS~input_o\,
	datad => \U1|Qs.s3~1_combout\,
	combout => \U1|Qs.s3~2_combout\);

-- Location: LCCOMB_X52_Y52_N6
\U1|Qs.s2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s2~3_combout\ = \U1|Qs.s3~2_combout\ $ (\U1|Qs.s2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Qs.s3~2_combout\,
	datad => \U1|Qs.s2~1_combout\,
	combout => \U1|Qs.s2~3_combout\);

-- Location: FF_X52_Y52_N7
\U1|Qs.s2~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s2~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s2~_emulated_q\);

-- Location: LCCOMB_X55_Y50_N22
\U1|Qs.s2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s2~2_combout\ = (\RS~input_o\ & ((\U1|Qs.s2~1_combout\ $ (\U1|Qs.s2~_emulated_q\)))) # (!\RS~input_o\ & (\U1|Ram0~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Ram0~85_combout\,
	datac => \U1|Qs.s2~1_combout\,
	datad => \U1|Qs.s2~_emulated_q\,
	combout => \U1|Qs.s2~2_combout\);

-- Location: LCCOMB_X51_Y52_N26
\U1|Qs.s1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s1~3_combout\ = \U1|Qs.s2~2_combout\ $ (\U1|Qs.s1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Qs.s2~2_combout\,
	datad => \U1|Qs.s1~1_combout\,
	combout => \U1|Qs.s1~3_combout\);

-- Location: FF_X51_Y52_N27
\U1|Qs.s1~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s1~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s1~_emulated_q\);

-- Location: LCCOMB_X51_Y52_N4
\U1|Qs.s1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s1~2_combout\ = (\RS~input_o\ & ((\U1|Qs.s1~1_combout\ $ (\U1|Qs.s1~_emulated_q\)))) # (!\RS~input_o\ & (\U1|Ram0~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~102_combout\,
	datab => \U1|Qs.s1~1_combout\,
	datac => \U1|Qs.s1~_emulated_q\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s1~2_combout\);

-- Location: LCCOMB_X54_Y52_N8
\U1|Qs.s0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s0~3_combout\ = \U1|Qs.s0~1_combout\ $ (\U1|Qs.s1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s0~1_combout\,
	datac => \U1|Qs.s1~2_combout\,
	combout => \U1|Qs.s0~3_combout\);

-- Location: FF_X54_Y52_N9
\U1|Qs.s0~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s0~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s0~_emulated_q\);

-- Location: LCCOMB_X54_Y52_N22
\U1|Qs.s0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s0~2_combout\ = (\RS~input_o\ & (\U1|Qs.s0~1_combout\ $ ((\U1|Qs.s0~_emulated_q\)))) # (!\RS~input_o\ & (((\U1|Ram0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s0~1_combout\,
	datac => \U1|Qs.s0~_emulated_q\,
	datad => \U1|Ram0~67_combout\,
	combout => \U1|Qs.s0~2_combout\);

-- Location: LCCOMB_X56_Y50_N8
\U1|Qs.s59~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s59~3_combout\ = \U1|Qs.s0~2_combout\ $ (\U1|Qs.s59~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Qs.s0~2_combout\,
	datad => \U1|Qs.s59~1_combout\,
	combout => \U1|Qs.s59~3_combout\);

-- Location: FF_X56_Y50_N9
\U1|Qs.s59~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s59~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s59~_emulated_q\);

-- Location: LCCOMB_X56_Y50_N22
\U1|Qs.s59~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s59~2_combout\ = (\RS~input_o\ & (\U1|Qs.s59~1_combout\ $ (((\U1|Qs.s59~_emulated_q\))))) # (!\RS~input_o\ & (((\U1|Ram0~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s59~1_combout\,
	datab => \U1|Ram0~133_combout\,
	datac => \U1|Qs.s59~_emulated_q\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s59~2_combout\);

-- Location: LCCOMB_X56_Y50_N4
\U1|Qs.s58~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s58~3_combout\ = \U1|Qs.s58~1_combout\ $ (\U1|Qs.s59~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s58~1_combout\,
	datad => \U1|Qs.s59~2_combout\,
	combout => \U1|Qs.s58~3_combout\);

-- Location: FF_X56_Y50_N5
\U1|Qs.s58~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s58~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s58~_emulated_q\);

-- Location: LCCOMB_X54_Y50_N8
\U1|Qs.s58~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s58~2_combout\ = (\RS~input_o\ & (\U1|Qs.s58~_emulated_q\ $ (((\U1|Qs.s58~1_combout\))))) # (!\RS~input_o\ & (((\U1|Ram0~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s58~_emulated_q\,
	datab => \RS~input_o\,
	datac => \U1|Ram0~83_combout\,
	datad => \U1|Qs.s58~1_combout\,
	combout => \U1|Qs.s58~2_combout\);

-- Location: LCCOMB_X55_Y52_N8
\U1|Qs.s57~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s57~3_combout\ = \U1|Qs.s57~1_combout\ $ (\U1|Qs.s58~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Qs.s57~1_combout\,
	datad => \U1|Qs.s58~2_combout\,
	combout => \U1|Qs.s57~3_combout\);

-- Location: FF_X55_Y52_N9
\U1|Qs.s57~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s57~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s57~_emulated_q\);

-- Location: LCCOMB_X55_Y52_N26
\U1|Qs.s57~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s57~2_combout\ = (\RS~input_o\ & ((\U1|Qs.s57~1_combout\ $ (\U1|Qs.s57~_emulated_q\)))) # (!\RS~input_o\ & (\U1|Ram0~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~101_combout\,
	datab => \U1|Qs.s57~1_combout\,
	datac => \U1|Qs.s57~_emulated_q\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s57~2_combout\);

-- Location: LCCOMB_X54_Y50_N28
\U1|Qs.s56~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s56~3_combout\ = \U1|Qs.s56~1_combout\ $ (\U1|Qs.s57~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s56~1_combout\,
	datac => \U1|Qs.s57~2_combout\,
	combout => \U1|Qs.s56~3_combout\);

-- Location: FF_X54_Y50_N29
\U1|Qs.s56~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s56~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s56~_emulated_q\);

-- Location: LCCOMB_X54_Y50_N18
\U1|Qs.s56~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s56~2_combout\ = (\RS~input_o\ & ((\U1|Qs.s56~1_combout\ $ (\U1|Qs.s56~_emulated_q\)))) # (!\RS~input_o\ & (\U1|Ram0~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~116_combout\,
	datab => \RS~input_o\,
	datac => \U1|Qs.s56~1_combout\,
	datad => \U1|Qs.s56~_emulated_q\,
	combout => \U1|Qs.s56~2_combout\);

-- Location: LCCOMB_X54_Y48_N4
\U1|Qs.s55~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s55~3_combout\ = \U1|Qs.s55~1_combout\ $ (\U1|Qs.s56~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s55~1_combout\,
	datad => \U1|Qs.s56~2_combout\,
	combout => \U1|Qs.s55~3_combout\);

-- Location: FF_X54_Y48_N5
\U1|Qs.s55~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s55~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s55~_emulated_q\);

-- Location: LCCOMB_X54_Y48_N10
\U1|Qs.s55~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s55~2_combout\ = (\RS~input_o\ & (\U1|Qs.s55~1_combout\ $ ((\U1|Qs.s55~_emulated_q\)))) # (!\RS~input_o\ & (((\U1|Ram0~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s55~1_combout\,
	datab => \U1|Qs.s55~_emulated_q\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~129_combout\,
	combout => \U1|Qs.s55~2_combout\);

-- Location: LCCOMB_X52_Y52_N4
\U1|Qs.s54~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s54~3_combout\ = \U1|Qs.s55~2_combout\ $ (\U1|Qs.s54~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s55~2_combout\,
	datac => \U1|Qs.s54~1_combout\,
	combout => \U1|Qs.s54~3_combout\);

-- Location: FF_X52_Y52_N5
\U1|Qs.s54~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s54~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s54~_emulated_q\);

-- Location: LCCOMB_X56_Y52_N2
\U1|Qs.s54~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s54~2_combout\ = (\RS~input_o\ & (\U1|Qs.s54~1_combout\ $ (((\U1|Qs.s54~_emulated_q\))))) # (!\RS~input_o\ & (((\U1|Ram0~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s54~1_combout\,
	datab => \RS~input_o\,
	datac => \U1|Ram0~79_combout\,
	datad => \U1|Qs.s54~_emulated_q\,
	combout => \U1|Qs.s54~2_combout\);

-- Location: LCCOMB_X57_Y50_N16
\U1|Qs.s53~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s53~3_combout\ = \U1|Qs.s53~1_combout\ $ (\U1|Qs.s54~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s53~1_combout\,
	datab => \U1|Qs.s54~2_combout\,
	combout => \U1|Qs.s53~3_combout\);

-- Location: FF_X57_Y50_N17
\U1|Qs.s53~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s53~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s53~_emulated_q\);

-- Location: LCCOMB_X57_Y50_N18
\U1|Qs.s53~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s53~2_combout\ = (\RS~input_o\ & (\U1|Qs.s53~1_combout\ $ ((\U1|Qs.s53~_emulated_q\)))) # (!\RS~input_o\ & (((\U1|Ram0~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s53~1_combout\,
	datab => \U1|Qs.s53~_emulated_q\,
	datac => \U1|Ram0~97_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s53~2_combout\);

-- Location: LCCOMB_X52_Y52_N18
\U1|Qs.s52~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s52~3_combout\ = \U1|Qs.s53~2_combout\ $ (\U1|Qs.s52~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s53~2_combout\,
	datad => \U1|Qs.s52~1_combout\,
	combout => \U1|Qs.s52~3_combout\);

-- Location: FF_X52_Y52_N19
\U1|Qs.s52~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s52~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s52~_emulated_q\);

-- Location: LCCOMB_X56_Y52_N22
\U1|Qs.s52~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s52~2_combout\ = (\RS~input_o\ & ((\U1|Qs.s52~1_combout\ $ (\U1|Qs.s52~_emulated_q\)))) # (!\RS~input_o\ & (\U1|Ram0~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~112_combout\,
	datab => \U1|Qs.s52~1_combout\,
	datac => \RS~input_o\,
	datad => \U1|Qs.s52~_emulated_q\,
	combout => \U1|Qs.s52~2_combout\);

-- Location: LCCOMB_X54_Y50_N2
\U1|Qs.s51~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s51~1_combout\ = (\RS~input_o\ & (\U1|Qs.s51~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datac => \U1|Qs.s51~1_combout\,
	datad => \U1|Ram0~134_combout\,
	combout => \U1|Qs.s51~1_combout\);

-- Location: LCCOMB_X54_Y50_N30
\U1|Qs.s51~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s51~3_combout\ = \U1|Qs.s52~2_combout\ $ (\U1|Qs.s51~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s52~2_combout\,
	datac => \U1|Qs.s51~1_combout\,
	combout => \U1|Qs.s51~3_combout\);

-- Location: FF_X54_Y50_N31
\U1|Qs.s51~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s51~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s51~_emulated_q\);

-- Location: LCCOMB_X54_Y50_N4
\U1|Qs.s51~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s51~2_combout\ = (\RS~input_o\ & ((\U1|Qs.s51~_emulated_q\ $ (\U1|Qs.s51~1_combout\)))) # (!\RS~input_o\ & (\U1|Ram0~134_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Ram0~134_combout\,
	datac => \U1|Qs.s51~_emulated_q\,
	datad => \U1|Qs.s51~1_combout\,
	combout => \U1|Qs.s51~2_combout\);

-- Location: LCCOMB_X56_Y52_N14
\U1|Qs.s50~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s50~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s50~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~91_combout\,
	datac => \U1|Qs.s50~1_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s50~1_combout\);

-- Location: LCCOMB_X56_Y52_N28
\U1|Qs.s50~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s50~3_combout\ = \U1|Qs.s51~2_combout\ $ (\U1|Qs.s50~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s51~2_combout\,
	datac => \U1|Qs.s50~1_combout\,
	combout => \U1|Qs.s50~3_combout\);

-- Location: FF_X56_Y52_N29
\U1|Qs.s50~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s50~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s50~_emulated_q\);

-- Location: LCCOMB_X56_Y52_N26
\U1|Qs.s50~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s50~2_combout\ = (\RS~input_o\ & ((\U1|Qs.s50~_emulated_q\ $ (\U1|Qs.s50~1_combout\)))) # (!\RS~input_o\ & (\U1|Ram0~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~91_combout\,
	datab => \U1|Qs.s50~_emulated_q\,
	datac => \U1|Qs.s50~1_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s50~2_combout\);

-- Location: LCCOMB_X51_Y52_N6
\U1|Qs.s49~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s49~3_combout\ = \U1|Qs.s50~2_combout\ $ (\U1|Qs.s49~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s50~2_combout\,
	datac => \U1|Qs.s49~1_combout\,
	combout => \U1|Qs.s49~3_combout\);

-- Location: FF_X51_Y52_N7
\U1|Qs.s49~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s49~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s49~_emulated_q\);

-- Location: LCCOMB_X51_Y52_N0
\U1|Qs.s49~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s49~2_combout\ = (\RS~input_o\ & (\U1|Qs.s49~1_combout\ $ (((\U1|Qs.s49~_emulated_q\))))) # (!\RS~input_o\ & (((\U1|Ram0~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s49~1_combout\,
	datac => \U1|Ram0~108_combout\,
	datad => \U1|Qs.s49~_emulated_q\,
	combout => \U1|Qs.s49~2_combout\);

-- Location: LCCOMB_X51_Y52_N20
\U1|Qs.s48~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s48~3_combout\ = \U1|Qs.s48~1_combout\ $ (\U1|Qs.s49~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s48~1_combout\,
	datad => \U1|Qs.s49~2_combout\,
	combout => \U1|Qs.s48~3_combout\);

-- Location: FF_X51_Y52_N21
\U1|Qs.s48~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s48~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s48~_emulated_q\);

-- Location: LCCOMB_X56_Y52_N8
\U1|Qs.s48~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s48~2_combout\ = (\RS~input_o\ & (\U1|Qs.s48~1_combout\ $ (((\U1|Qs.s48~_emulated_q\))))) # (!\RS~input_o\ & (((\U1|Ram0~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s48~1_combout\,
	datab => \RS~input_o\,
	datac => \U1|Ram0~122_combout\,
	datad => \U1|Qs.s48~_emulated_q\,
	combout => \U1|Qs.s48~2_combout\);

-- Location: LCCOMB_X54_Y53_N6
\U1|Ram0~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~123_combout\ = (\U0|WideOr65~combout\ & (\U0|WideOr64~combout\ & \U1|Ram0~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr65~combout\,
	datac => \U0|WideOr64~combout\,
	datad => \U1|Ram0~70_combout\,
	combout => \U1|Ram0~123_combout\);

-- Location: LCCOMB_X54_Y53_N10
\U1|Qs.s47~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s47~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s47~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~123_combout\,
	datac => \U1|Qs.s47~1_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s47~1_combout\);

-- Location: LCCOMB_X54_Y53_N12
\U1|Qs.s47~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s47~3_combout\ = \U1|Qs.s48~2_combout\ $ (\U1|Qs.s47~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s48~2_combout\,
	datad => \U1|Qs.s47~1_combout\,
	combout => \U1|Qs.s47~3_combout\);

-- Location: FF_X54_Y53_N13
\U1|Qs.s47~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s47~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s47~_emulated_q\);

-- Location: LCCOMB_X54_Y53_N30
\U1|Qs.s47~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s47~2_combout\ = (\RS~input_o\ & (\U1|Qs.s47~_emulated_q\ $ ((\U1|Qs.s47~1_combout\)))) # (!\RS~input_o\ & (((\U1|Ram0~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s47~_emulated_q\,
	datab => \RS~input_o\,
	datac => \U1|Qs.s47~1_combout\,
	datad => \U1|Ram0~123_combout\,
	combout => \U1|Qs.s47~2_combout\);

-- Location: LCCOMB_X54_Y53_N24
\U1|Qs.s46~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s46~3_combout\ = \U1|Qs.s46~1_combout\ $ (\U1|Qs.s47~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Qs.s46~1_combout\,
	datad => \U1|Qs.s47~2_combout\,
	combout => \U1|Qs.s46~3_combout\);

-- Location: FF_X54_Y53_N25
\U1|Qs.s46~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s46~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s46~_emulated_q\);

-- Location: LCCOMB_X54_Y53_N2
\U1|Qs.s46~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s46~2_combout\ = (\RS~input_o\ & (\U1|Qs.s46~1_combout\ $ (((\U1|Qs.s46~_emulated_q\))))) # (!\RS~input_o\ & (((\U1|Ram0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s46~1_combout\,
	datab => \RS~input_o\,
	datac => \U1|Ram0~90_combout\,
	datad => \U1|Qs.s46~_emulated_q\,
	combout => \U1|Qs.s46~2_combout\);

-- Location: LCCOMB_X54_Y53_N28
\U1|Qs.s45~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s45~3_combout\ = \U1|Qs.s45~1_combout\ $ (\U1|Qs.s46~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s45~1_combout\,
	datad => \U1|Qs.s46~2_combout\,
	combout => \U1|Qs.s45~3_combout\);

-- Location: FF_X54_Y53_N29
\U1|Qs.s45~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s45~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s45~_emulated_q\);

-- Location: LCCOMB_X54_Y53_N14
\U1|Qs.s45~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s45~2_combout\ = (\RS~input_o\ & (\U1|Qs.s45~1_combout\ $ ((\U1|Qs.s45~_emulated_q\)))) # (!\RS~input_o\ & (((\U1|Ram0~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s45~1_combout\,
	datac => \U1|Qs.s45~_emulated_q\,
	datad => \U1|Ram0~107_combout\,
	combout => \U1|Qs.s45~2_combout\);

-- Location: LCCOMB_X55_Y53_N0
\U1|Qs.s44~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s44~3_combout\ = \U1|Qs.s44~1_combout\ $ (\U1|Qs.s45~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s44~1_combout\,
	datac => \U1|Qs.s45~2_combout\,
	combout => \U1|Qs.s44~3_combout\);

-- Location: FF_X55_Y53_N1
\U1|Qs.s44~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s44~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s44~_emulated_q\);

-- Location: LCCOMB_X55_Y53_N10
\U1|Qs.s44~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s44~2_combout\ = (\RS~input_o\ & (\U1|Qs.s44~1_combout\ $ (((\U1|Qs.s44~_emulated_q\))))) # (!\RS~input_o\ & (((\U1|Ram0~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s44~1_combout\,
	datab => \RS~input_o\,
	datac => \U1|Ram0~119_combout\,
	datad => \U1|Qs.s44~_emulated_q\,
	combout => \U1|Qs.s44~2_combout\);

-- Location: LCCOMB_X55_Y53_N24
\U1|Qs.s43~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s43~3_combout\ = \U1|Qs.s43~1_combout\ $ (\U1|Qs.s44~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Qs.s43~1_combout\,
	datad => \U1|Qs.s44~2_combout\,
	combout => \U1|Qs.s43~3_combout\);

-- Location: FF_X55_Y53_N25
\U1|Qs.s43~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s43~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s43~_emulated_q\);

-- Location: LCCOMB_X55_Y53_N26
\U1|Qs.s43~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s43~2_combout\ = (\RS~input_o\ & (\U1|Qs.s43~1_combout\ $ (((\U1|Qs.s43~_emulated_q\))))) # (!\RS~input_o\ & (((\U1|Ram0~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s43~1_combout\,
	datac => \U1|Ram0~132_combout\,
	datad => \U1|Qs.s43~_emulated_q\,
	combout => \U1|Qs.s43~2_combout\);

-- Location: LCCOMB_X54_Y49_N10
\U1|Ram0~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~82_combout\ = (\U1|Ram0~64_combout\ & \U1|Ram0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Ram0~64_combout\,
	datad => \U1|Ram0~75_combout\,
	combout => \U1|Ram0~82_combout\);

-- Location: LCCOMB_X54_Y49_N30
\U1|Qs.s42~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s42~1_combout\ = (\RS~input_o\ & (\U1|Qs.s42~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RS~input_o\,
	datac => \U1|Qs.s42~1_combout\,
	datad => \U1|Ram0~82_combout\,
	combout => \U1|Qs.s42~1_combout\);

-- Location: LCCOMB_X54_Y49_N16
\U1|Qs.s42~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s42~3_combout\ = \U1|Qs.s43~2_combout\ $ (\U1|Qs.s42~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s43~2_combout\,
	datac => \U1|Qs.s42~1_combout\,
	combout => \U1|Qs.s42~3_combout\);

-- Location: FF_X54_Y49_N17
\U1|Qs.s42~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s42~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s42~_emulated_q\);

-- Location: LCCOMB_X54_Y49_N22
\U1|Qs.s42~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s42~2_combout\ = (\RS~input_o\ & (\U1|Qs.s42~_emulated_q\ $ ((\U1|Qs.s42~1_combout\)))) # (!\RS~input_o\ & (((\U1|Ram0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s42~_emulated_q\,
	datac => \U1|Qs.s42~1_combout\,
	datad => \U1|Ram0~82_combout\,
	combout => \U1|Qs.s42~2_combout\);

-- Location: LCCOMB_X54_Y52_N4
\U1|Qs.s41~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s41~3_combout\ = \U1|Qs.s42~2_combout\ $ (\U1|Qs.s41~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s42~2_combout\,
	datac => \U1|Qs.s41~1_combout\,
	combout => \U1|Qs.s41~3_combout\);

-- Location: FF_X54_Y52_N5
\U1|Qs.s41~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s41~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s41~_emulated_q\);

-- Location: LCCOMB_X54_Y52_N18
\U1|Qs.s41~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s41~2_combout\ = (\RS~input_o\ & (\U1|Qs.s41~1_combout\ $ ((\U1|Qs.s41~_emulated_q\)))) # (!\RS~input_o\ & (((\U1|Ram0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s41~1_combout\,
	datac => \U1|Qs.s41~_emulated_q\,
	datad => \U1|Ram0~100_combout\,
	combout => \U1|Qs.s41~2_combout\);

-- Location: LCCOMB_X54_Y52_N24
\U1|Qs.s40~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s40~3_combout\ = \U1|Qs.s40~1_combout\ $ (\U1|Qs.s41~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s40~1_combout\,
	datac => \U1|Qs.s41~2_combout\,
	combout => \U1|Qs.s40~3_combout\);

-- Location: FF_X54_Y52_N25
\U1|Qs.s40~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s40~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s40~_emulated_q\);

-- Location: LCCOMB_X54_Y52_N2
\U1|Qs.s40~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s40~2_combout\ = (\RS~input_o\ & (\U1|Qs.s40~_emulated_q\ $ ((\U1|Qs.s40~1_combout\)))) # (!\RS~input_o\ & (((\U1|Ram0~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s40~_emulated_q\,
	datac => \U1|Qs.s40~1_combout\,
	datad => \U1|Ram0~115_combout\,
	combout => \U1|Qs.s40~2_combout\);

-- Location: LCCOMB_X55_Y48_N14
\U1|Qs.s39~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s39~3_combout\ = \U1|Qs.s40~2_combout\ $ (\U1|Qs.s39~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s40~2_combout\,
	datad => \U1|Qs.s39~1_combout\,
	combout => \U1|Qs.s39~3_combout\);

-- Location: FF_X55_Y48_N15
\U1|Qs.s39~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s39~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s39~_emulated_q\);

-- Location: LCCOMB_X54_Y48_N22
\U1|Qs.s39~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s39~2_combout\ = (\RS~input_o\ & (\U1|Qs.s39~1_combout\ $ ((\U1|Qs.s39~_emulated_q\)))) # (!\RS~input_o\ & (((\U1|Ram0~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s39~1_combout\,
	datac => \U1|Qs.s39~_emulated_q\,
	datad => \U1|Ram0~128_combout\,
	combout => \U1|Qs.s39~2_combout\);

-- Location: LCCOMB_X54_Y48_N30
\U1|Qs.s38~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s38~3_combout\ = \U1|Qs.s38~1_combout\ $ (\U1|Qs.s39~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s38~1_combout\,
	datac => \U1|Qs.s39~2_combout\,
	combout => \U1|Qs.s38~3_combout\);

-- Location: FF_X54_Y48_N31
\U1|Qs.s38~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s38~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s38~_emulated_q\);

-- Location: LCCOMB_X57_Y50_N8
\U1|Qs.s38~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s38~2_combout\ = (\RS~input_o\ & (\U1|Qs.s38~1_combout\ $ ((\U1|Qs.s38~_emulated_q\)))) # (!\RS~input_o\ & (((\U1|Ram0~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s38~1_combout\,
	datac => \U1|Qs.s38~_emulated_q\,
	datad => \U1|Ram0~78_combout\,
	combout => \U1|Qs.s38~2_combout\);

-- Location: LCCOMB_X57_Y50_N28
\U1|Ram0~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~96_combout\ = (\U1|Ram0~93_combout\ & \U1|Ram0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Ram0~93_combout\,
	datad => \U1|Ram0~60_combout\,
	combout => \U1|Ram0~96_combout\);

-- Location: LCCOMB_X57_Y50_N24
\U1|Qs.s37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s37~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s37~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~96_combout\,
	datac => \U1|Qs.s37~1_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s37~1_combout\);

-- Location: LCCOMB_X57_Y50_N12
\U1|Qs.s37~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s37~3_combout\ = \U1|Qs.s38~2_combout\ $ (\U1|Qs.s37~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s38~2_combout\,
	datac => \U1|Qs.s37~1_combout\,
	combout => \U1|Qs.s37~3_combout\);

-- Location: FF_X57_Y50_N13
\U1|Qs.s37~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s37~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s37~_emulated_q\);

-- Location: LCCOMB_X57_Y50_N22
\U1|Qs.s37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s37~2_combout\ = (\RS~input_o\ & (\U1|Qs.s37~_emulated_q\ $ ((\U1|Qs.s37~1_combout\)))) # (!\RS~input_o\ & (((\U1|Ram0~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s37~_emulated_q\,
	datab => \U1|Qs.s37~1_combout\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~96_combout\,
	combout => \U1|Qs.s37~2_combout\);

-- Location: LCCOMB_X55_Y48_N30
\U1|Qs.s36~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s36~3_combout\ = \U1|Qs.s36~1_combout\ $ (\U1|Qs.s37~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s36~1_combout\,
	datac => \U1|Qs.s37~2_combout\,
	combout => \U1|Qs.s36~3_combout\);

-- Location: FF_X55_Y48_N31
\U1|Qs.s36~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s36~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s36~_emulated_q\);

-- Location: LCCOMB_X55_Y48_N0
\U1|Qs.s36~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s36~2_combout\ = (\RS~input_o\ & (\U1|Qs.s36~1_combout\ $ ((\U1|Qs.s36~_emulated_q\)))) # (!\RS~input_o\ & (((\U1|Ram0~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s36~1_combout\,
	datac => \U1|Qs.s36~_emulated_q\,
	datad => \U1|Ram0~111_combout\,
	combout => \U1|Qs.s36~2_combout\);

-- Location: LCCOMB_X52_Y51_N28
\U1|Ram0~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~135_combout\ = (\U0|WideOr64~combout\ & (\U0|WideOr65~combout\ & \U1|Ram0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr64~combout\,
	datac => \U0|WideOr65~combout\,
	datad => \U1|Ram0~72_combout\,
	combout => \U1|Ram0~135_combout\);

-- Location: LCCOMB_X52_Y51_N6
\U1|Qs.s35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s35~1_combout\ = (\RS~input_o\ & (\U1|Qs.s35~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s35~1_combout\,
	datab => \RS~input_o\,
	datad => \U1|Ram0~135_combout\,
	combout => \U1|Qs.s35~1_combout\);

-- Location: LCCOMB_X52_Y51_N30
\U1|Qs.s35~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s35~3_combout\ = \U1|Qs.s36~2_combout\ $ (\U1|Qs.s35~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s36~2_combout\,
	datac => \U1|Qs.s35~1_combout\,
	combout => \U1|Qs.s35~3_combout\);

-- Location: FF_X52_Y51_N31
\U1|Qs.s35~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s35~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s35~_emulated_q\);

-- Location: LCCOMB_X54_Y50_N22
\U1|Qs.s35~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s35~2_combout\ = (\RS~input_o\ & (\U1|Qs.s35~_emulated_q\ $ ((\U1|Qs.s35~1_combout\)))) # (!\RS~input_o\ & (((\U1|Ram0~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s35~_emulated_q\,
	datab => \RS~input_o\,
	datac => \U1|Qs.s35~1_combout\,
	datad => \U1|Ram0~135_combout\,
	combout => \U1|Qs.s35~2_combout\);

-- Location: LCCOMB_X52_Y48_N16
\U1|Qs.s34~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s34~3_combout\ = \U1|Qs.s34~1_combout\ $ (\U1|Qs.s35~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s34~1_combout\,
	datad => \U1|Qs.s35~2_combout\,
	combout => \U1|Qs.s34~3_combout\);

-- Location: FF_X52_Y48_N17
\U1|Qs.s34~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s34~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s34~_emulated_q\);

-- Location: LCCOMB_X52_Y48_N2
\U1|Qs.s34~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s34~2_combout\ = (\RS~input_o\ & (\U1|Qs.s34~1_combout\ $ ((\U1|Qs.s34~_emulated_q\)))) # (!\RS~input_o\ & (((\U1|Ram0~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s34~1_combout\,
	datab => \U1|Qs.s34~_emulated_q\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~89_combout\,
	combout => \U1|Qs.s34~2_combout\);

-- Location: LCCOMB_X52_Y48_N4
\U1|Qs.s33~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s33~3_combout\ = \U1|Qs.s34~2_combout\ $ (\U1|Qs.s33~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s34~2_combout\,
	datac => \U1|Qs.s33~1_combout\,
	combout => \U1|Qs.s33~3_combout\);

-- Location: FF_X52_Y48_N5
\U1|Qs.s33~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s33~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s33~_emulated_q\);

-- Location: LCCOMB_X52_Y48_N22
\U1|Qs.s33~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s33~2_combout\ = (\RS~input_o\ & (\U1|Qs.s33~1_combout\ $ ((\U1|Qs.s33~_emulated_q\)))) # (!\RS~input_o\ & (((\U1|Ram0~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s33~1_combout\,
	datab => \RS~input_o\,
	datac => \U1|Qs.s33~_emulated_q\,
	datad => \U1|Ram0~106_combout\,
	combout => \U1|Qs.s33~2_combout\);

-- Location: LCCOMB_X52_Y49_N20
\U1|Qs.s32~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s32~3_combout\ = \U1|Qs.s32~1_combout\ $ (\U1|Qs.s33~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Qs.s32~1_combout\,
	datad => \U1|Qs.s33~2_combout\,
	combout => \U1|Qs.s32~3_combout\);

-- Location: FF_X52_Y49_N21
\U1|Qs.s32~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s32~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s32~_emulated_q\);

-- Location: LCCOMB_X54_Y53_N18
\U1|Qs.s32~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s32~2_combout\ = (\RS~input_o\ & ((\U1|Qs.s32~1_combout\ $ (\U1|Qs.s32~_emulated_q\)))) # (!\RS~input_o\ & (\U1|Ram0~121_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Ram0~121_combout\,
	datac => \U1|Qs.s32~1_combout\,
	datad => \U1|Qs.s32~_emulated_q\,
	combout => \U1|Qs.s32~2_combout\);

-- Location: LCCOMB_X54_Y48_N0
\U1|Qs.s31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s31~3_combout\ = \U1|Qs.s31~1_combout\ $ (\U1|Qs.s32~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s31~1_combout\,
	datac => \U1|Qs.s32~2_combout\,
	combout => \U1|Qs.s31~3_combout\);

-- Location: FF_X54_Y48_N1
\U1|Qs.s31~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s31~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s31~_emulated_q\);

-- Location: LCCOMB_X54_Y49_N0
\U1|Qs.s31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s31~2_combout\ = (\RS~input_o\ & (\U1|Qs.s31~_emulated_q\ $ ((\U1|Qs.s31~1_combout\)))) # (!\RS~input_o\ & (((\U1|Ram0~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s31~_emulated_q\,
	datac => \U1|Qs.s31~1_combout\,
	datad => \U1|Ram0~125_combout\,
	combout => \U1|Qs.s31~2_combout\);

-- Location: LCCOMB_X54_Y49_N8
\U1|Qs.s30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s30~3_combout\ = \U1|Qs.s31~2_combout\ $ (\U1|Qs.s30~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s31~2_combout\,
	datad => \U1|Qs.s30~1_combout\,
	combout => \U1|Qs.s30~3_combout\);

-- Location: FF_X54_Y49_N9
\U1|Qs.s30~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s30~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s30~_emulated_q\);

-- Location: LCCOMB_X54_Y49_N26
\U1|Qs.s30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s30~2_combout\ = (\RS~input_o\ & (\U1|Qs.s30~1_combout\ $ ((\U1|Qs.s30~_emulated_q\)))) # (!\RS~input_o\ & (((\U1|Ram0~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s30~1_combout\,
	datac => \U1|Qs.s30~_emulated_q\,
	datad => \U1|Ram0~88_combout\,
	combout => \U1|Qs.s30~2_combout\);

-- Location: LCCOMB_X56_Y51_N8
\U1|Qs.s29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s29~3_combout\ = \U1|Qs.s29~1_combout\ $ (\U1|Qs.s30~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s29~1_combout\,
	datac => \U1|Qs.s30~2_combout\,
	combout => \U1|Qs.s29~3_combout\);

-- Location: FF_X56_Y51_N9
\U1|Qs.s29~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s29~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s29~_emulated_q\);

-- Location: LCCOMB_X56_Y51_N30
\U1|Qs.s29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s29~2_combout\ = (\RS~input_o\ & ((\U1|Qs.s29~_emulated_q\ $ (\U1|Qs.s29~1_combout\)))) # (!\RS~input_o\ & (\U1|Ram0~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~105_combout\,
	datab => \U1|Qs.s29~_emulated_q\,
	datac => \U1|Qs.s29~1_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s29~2_combout\);

-- Location: LCCOMB_X56_Y50_N28
\U1|Qs.s28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s28~3_combout\ = \U1|Qs.s28~1_combout\ $ (\U1|Qs.s29~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Qs.s28~1_combout\,
	datad => \U1|Qs.s29~2_combout\,
	combout => \U1|Qs.s28~3_combout\);

-- Location: FF_X56_Y50_N29
\U1|Qs.s28~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s28~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s28~_emulated_q\);

-- Location: LCCOMB_X56_Y50_N18
\U1|Qs.s28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s28~2_combout\ = (\RS~input_o\ & (\U1|Qs.s28~_emulated_q\ $ ((\U1|Qs.s28~1_combout\)))) # (!\RS~input_o\ & (((\U1|Ram0~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s28~_emulated_q\,
	datac => \U1|Qs.s28~1_combout\,
	datad => \U1|Ram0~118_combout\,
	combout => \U1|Qs.s28~2_combout\);

-- Location: LCCOMB_X52_Y52_N20
\U1|Qs.s27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s27~3_combout\ = \U1|Qs.s27~1_combout\ $ (\U1|Qs.s28~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s27~1_combout\,
	datac => \U1|Qs.s28~2_combout\,
	combout => \U1|Qs.s27~3_combout\);

-- Location: FF_X52_Y52_N21
\U1|Qs.s27~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s27~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s27~_emulated_q\);

-- Location: LCCOMB_X52_Y52_N30
\U1|Qs.s27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s27~2_combout\ = (\RS~input_o\ & (\U1|Qs.s27~1_combout\ $ (((\U1|Qs.s27~_emulated_q\))))) # (!\RS~input_o\ & (((\U1|Ram0~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s27~1_combout\,
	datac => \U1|Ram0~131_combout\,
	datad => \U1|Qs.s27~_emulated_q\,
	combout => \U1|Qs.s27~2_combout\);

-- Location: LCCOMB_X52_Y51_N0
\U1|Qs.s26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s26~3_combout\ = \U1|Qs.s27~2_combout\ $ (\U1|Qs.s26~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Qs.s27~2_combout\,
	datad => \U1|Qs.s26~1_combout\,
	combout => \U1|Qs.s26~3_combout\);

-- Location: FF_X52_Y51_N1
\U1|Qs.s26~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s26~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s26~_emulated_q\);

-- Location: LCCOMB_X55_Y52_N30
\U1|Qs.s26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s26~2_combout\ = (\RS~input_o\ & (\U1|Qs.s26~1_combout\ $ (((\U1|Qs.s26~_emulated_q\))))) # (!\RS~input_o\ & (((\U1|Ram0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s26~1_combout\,
	datab => \RS~input_o\,
	datac => \U1|Ram0~81_combout\,
	datad => \U1|Qs.s26~_emulated_q\,
	combout => \U1|Qs.s26~2_combout\);

-- Location: LCCOMB_X55_Y52_N16
\U1|Qs.s25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s25~3_combout\ = \U1|Qs.s25~1_combout\ $ (\U1|Qs.s26~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s25~1_combout\,
	datac => \U1|Qs.s26~2_combout\,
	combout => \U1|Qs.s25~3_combout\);

-- Location: FF_X55_Y52_N17
\U1|Qs.s25~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s25~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s25~_emulated_q\);

-- Location: LCCOMB_X55_Y52_N18
\U1|Qs.s25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s25~2_combout\ = (\RS~input_o\ & ((\U1|Qs.s25~1_combout\ $ (\U1|Qs.s25~_emulated_q\)))) # (!\RS~input_o\ & (\U1|Ram0~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~99_combout\,
	datab => \U1|Qs.s25~1_combout\,
	datac => \RS~input_o\,
	datad => \U1|Qs.s25~_emulated_q\,
	combout => \U1|Qs.s25~2_combout\);

-- Location: LCCOMB_X52_Y52_N28
\U1|Ram0~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~114_combout\ = (!\U0|WideOr64~combout\ & (!\U0|WideOr65~combout\ & \U1|Ram0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr64~combout\,
	datac => \U0|WideOr65~combout\,
	datad => \U1|Ram0~63_combout\,
	combout => \U1|Ram0~114_combout\);

-- Location: LCCOMB_X52_Y52_N0
\U1|Qs.s24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s24~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s24~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~114_combout\,
	datac => \RS~input_o\,
	datad => \U1|Qs.s24~1_combout\,
	combout => \U1|Qs.s24~1_combout\);

-- Location: LCCOMB_X52_Y52_N12
\U1|Qs.s24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s24~3_combout\ = \U1|Qs.s25~2_combout\ $ (\U1|Qs.s24~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s25~2_combout\,
	datac => \U1|Qs.s24~1_combout\,
	combout => \U1|Qs.s24~3_combout\);

-- Location: FF_X52_Y52_N13
\U1|Qs.s24~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s24~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s24~_emulated_q\);

-- Location: LCCOMB_X52_Y52_N22
\U1|Qs.s24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s24~2_combout\ = (\RS~input_o\ & (\U1|Qs.s24~_emulated_q\ $ ((\U1|Qs.s24~1_combout\)))) # (!\RS~input_o\ & (((\U1|Ram0~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s24~_emulated_q\,
	datab => \U1|Qs.s24~1_combout\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~114_combout\,
	combout => \U1|Qs.s24~2_combout\);

-- Location: LCCOMB_X52_Y52_N16
\U1|Qs.s23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s23~3_combout\ = \U1|Qs.s23~1_combout\ $ (\U1|Qs.s24~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Qs.s23~1_combout\,
	datad => \U1|Qs.s24~2_combout\,
	combout => \U1|Qs.s23~3_combout\);

-- Location: FF_X52_Y52_N17
\U1|Qs.s23~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s23~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s23~_emulated_q\);

-- Location: LCCOMB_X52_Y52_N14
\U1|Qs.s23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s23~2_combout\ = (\RS~input_o\ & (\U1|Qs.s23~_emulated_q\ $ (((\U1|Qs.s23~1_combout\))))) # (!\RS~input_o\ & (((\U1|Ram0~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s23~_emulated_q\,
	datac => \U1|Ram0~127_combout\,
	datad => \U1|Qs.s23~1_combout\,
	combout => \U1|Qs.s23~2_combout\);

-- Location: LCCOMB_X52_Y51_N18
\U1|Qs.s22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s22~3_combout\ = \U1|Qs.s23~2_combout\ $ (\U1|Qs.s22~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Qs.s23~2_combout\,
	datad => \U1|Qs.s22~1_combout\,
	combout => \U1|Qs.s22~3_combout\);

-- Location: FF_X52_Y51_N19
\U1|Qs.s22~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s22~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s22~_emulated_q\);

-- Location: LCCOMB_X54_Y51_N16
\U1|Qs.s22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s22~2_combout\ = (\RS~input_o\ & (\U1|Qs.s22~1_combout\ $ (((\U1|Qs.s22~_emulated_q\))))) # (!\RS~input_o\ & (((\U1|Ram0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s22~1_combout\,
	datab => \U1|Ram0~77_combout\,
	datac => \RS~input_o\,
	datad => \U1|Qs.s22~_emulated_q\,
	combout => \U1|Qs.s22~2_combout\);

-- Location: LCCOMB_X55_Y53_N8
\U1|Qs.s21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s21~3_combout\ = \U1|Qs.s22~2_combout\ $ (\U1|Qs.s21~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s22~2_combout\,
	datad => \U1|Qs.s21~1_combout\,
	combout => \U1|Qs.s21~3_combout\);

-- Location: FF_X55_Y53_N9
\U1|Qs.s21~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s21~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s21~_emulated_q\);

-- Location: LCCOMB_X55_Y53_N18
\U1|Qs.s21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s21~2_combout\ = (\RS~input_o\ & (\U1|Qs.s21~1_combout\ $ ((\U1|Qs.s21~_emulated_q\)))) # (!\RS~input_o\ & (((\U1|Ram0~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s21~1_combout\,
	datac => \U1|Qs.s21~_emulated_q\,
	datad => \U1|Ram0~95_combout\,
	combout => \U1|Qs.s21~2_combout\);

-- Location: LCCOMB_X54_Y51_N10
\U1|Qs.s20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s20~3_combout\ = \U1|Qs.s20~1_combout\ $ (\U1|Qs.s21~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s20~1_combout\,
	datad => \U1|Qs.s21~2_combout\,
	combout => \U1|Qs.s20~3_combout\);

-- Location: LCCOMB_X52_Y51_N16
\U1|Qs.s20~_emulatedfeeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s20~_emulatedfeeder_combout\ = \U1|Qs.s20~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s20~3_combout\,
	combout => \U1|Qs.s20~_emulatedfeeder_combout\);

-- Location: FF_X52_Y51_N17
\U1|Qs.s20~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s20~_emulatedfeeder_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s20~_emulated_q\);

-- Location: LCCOMB_X54_Y51_N26
\U1|Qs.s20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s20~2_combout\ = (\RS~input_o\ & (\U1|Qs.s20~1_combout\ $ (((\U1|Qs.s20~_emulated_q\))))) # (!\RS~input_o\ & (((\U1|Ram0~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s20~1_combout\,
	datab => \RS~input_o\,
	datac => \U1|Ram0~110_combout\,
	datad => \U1|Qs.s20~_emulated_q\,
	combout => \U1|Qs.s20~2_combout\);

-- Location: LCCOMB_X52_Y52_N24
\U1|Qs.s19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s19~3_combout\ = \U1|Qs.s19~1_combout\ $ (\U1|Qs.s20~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s19~1_combout\,
	datac => \U1|Qs.s20~2_combout\,
	combout => \U1|Qs.s19~3_combout\);

-- Location: FF_X52_Y52_N25
\U1|Qs.s19~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s19~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s19~_emulated_q\);

-- Location: LCCOMB_X52_Y52_N10
\U1|Qs.s19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s19~2_combout\ = (\RS~input_o\ & (\U1|Qs.s19~_emulated_q\ $ (((\U1|Qs.s19~1_combout\))))) # (!\RS~input_o\ & (((\U1|Ram0~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s19~_emulated_q\,
	datac => \U1|Ram0~136_combout\,
	datad => \U1|Qs.s19~1_combout\,
	combout => \U1|Qs.s19~2_combout\);

-- Location: LCCOMB_X52_Y47_N30
\U1|Qs.s18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s18~3_combout\ = \U1|Qs.s18~1_combout\ $ (\U1|Qs.s19~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s18~1_combout\,
	datac => \U1|Qs.s19~2_combout\,
	combout => \U1|Qs.s18~3_combout\);

-- Location: FF_X52_Y47_N31
\U1|Qs.s18~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s18~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s18~_emulated_q\);

-- Location: LCCOMB_X52_Y47_N12
\U1|Qs.s18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s18~2_combout\ = (\RS~input_o\ & (\U1|Qs.s18~1_combout\ $ ((\U1|Qs.s18~_emulated_q\)))) # (!\RS~input_o\ & (((\U1|Ram0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s18~1_combout\,
	datac => \U1|Qs.s18~_emulated_q\,
	datad => \U1|Ram0~87_combout\,
	combout => \U1|Qs.s18~2_combout\);

-- Location: LCCOMB_X52_Y47_N18
\U1|Qs.s17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s17~3_combout\ = \U1|Qs.s18~2_combout\ $ (\U1|Qs.s17~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Qs.s18~2_combout\,
	datad => \U1|Qs.s17~1_combout\,
	combout => \U1|Qs.s17~3_combout\);

-- Location: FF_X52_Y47_N19
\U1|Qs.s17~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s17~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s17~_emulated_q\);

-- Location: LCCOMB_X52_Y47_N0
\U1|Qs.s17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s17~2_combout\ = (\RS~input_o\ & (\U1|Qs.s17~1_combout\ $ ((\U1|Qs.s17~_emulated_q\)))) # (!\RS~input_o\ & (((\U1|Ram0~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s17~1_combout\,
	datab => \U1|Qs.s17~_emulated_q\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~104_combout\,
	combout => \U1|Qs.s17~2_combout\);

-- Location: LCCOMB_X52_Y47_N8
\U1|Qs.s16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s16~3_combout\ = \U1|Qs.s17~2_combout\ $ (\U1|Qs.s16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s17~2_combout\,
	datad => \U1|Qs.s16~1_combout\,
	combout => \U1|Qs.s16~3_combout\);

-- Location: FF_X52_Y47_N9
\U1|Qs.s16~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s16~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s16~_emulated_q\);

-- Location: LCCOMB_X52_Y47_N10
\U1|Qs.s16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s16~2_combout\ = (\RS~input_o\ & (\U1|Qs.s16~1_combout\ $ ((\U1|Qs.s16~_emulated_q\)))) # (!\RS~input_o\ & (((\U1|Ram0~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s16~1_combout\,
	datac => \U1|Qs.s16~_emulated_q\,
	datad => \U1|Ram0~120_combout\,
	combout => \U1|Qs.s16~2_combout\);

-- Location: LCCOMB_X54_Y49_N14
\U1|Ram0~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~124_combout\ = (\U0|WideOr64~combout\ & (\U0|WideOr65~combout\ & \U1|Ram0~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr64~combout\,
	datac => \U0|WideOr65~combout\,
	datad => \U1|Ram0~68_combout\,
	combout => \U1|Ram0~124_combout\);

-- Location: LCCOMB_X54_Y49_N18
\U1|Qs.s15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s15~1_combout\ = (\RS~input_o\ & ((\U1|Qs.s15~1_combout\))) # (!\RS~input_o\ & (\U1|Ram0~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RS~input_o\,
	datac => \U1|Ram0~124_combout\,
	datad => \U1|Qs.s15~1_combout\,
	combout => \U1|Qs.s15~1_combout\);

-- Location: LCCOMB_X54_Y49_N12
\U1|Qs.s15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s15~3_combout\ = \U1|Qs.s16~2_combout\ $ (\U1|Qs.s15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Qs.s16~2_combout\,
	datad => \U1|Qs.s15~1_combout\,
	combout => \U1|Qs.s15~3_combout\);

-- Location: FF_X54_Y49_N13
\U1|Qs.s15~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s15~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s15~_emulated_q\);

-- Location: LCCOMB_X54_Y49_N2
\U1|Qs.s15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s15~2_combout\ = (\RS~input_o\ & (\U1|Qs.s15~_emulated_q\ $ (((\U1|Qs.s15~1_combout\))))) # (!\RS~input_o\ & (((\U1|Ram0~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s15~_emulated_q\,
	datab => \RS~input_o\,
	datac => \U1|Ram0~124_combout\,
	datad => \U1|Qs.s15~1_combout\,
	combout => \U1|Qs.s15~2_combout\);

-- Location: LCCOMB_X55_Y51_N26
\U1|Ram0~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Ram0~86_combout\ = (\U1|Ram0~68_combout\ & \U1|Ram0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Ram0~68_combout\,
	datad => \U1|Ram0~75_combout\,
	combout => \U1|Ram0~86_combout\);

-- Location: LCCOMB_X55_Y51_N4
\U1|Qs.s14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s14~1_combout\ = (\RS~input_o\ & (\U1|Qs.s14~1_combout\)) # (!\RS~input_o\ & ((\U1|Ram0~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s14~1_combout\,
	datab => \U1|Ram0~86_combout\,
	datad => \RS~input_o\,
	combout => \U1|Qs.s14~1_combout\);

-- Location: LCCOMB_X57_Y50_N26
\U1|Qs.s14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s14~3_combout\ = \U1|Qs.s15~2_combout\ $ (\U1|Qs.s14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Qs.s15~2_combout\,
	datad => \U1|Qs.s14~1_combout\,
	combout => \U1|Qs.s14~3_combout\);

-- Location: FF_X57_Y50_N27
\U1|Qs.s14~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s14~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s14~_emulated_q\);

-- Location: LCCOMB_X55_Y50_N24
\U1|Qs.s14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s14~2_combout\ = (\RS~input_o\ & (\U1|Qs.s14~_emulated_q\ $ ((\U1|Qs.s14~1_combout\)))) # (!\RS~input_o\ & (((\U1|Ram0~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s14~_emulated_q\,
	datac => \U1|Qs.s14~1_combout\,
	datad => \U1|Ram0~86_combout\,
	combout => \U1|Qs.s14~2_combout\);

-- Location: LCCOMB_X55_Y49_N12
\U1|Qs.s13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s13~3_combout\ = \U1|Qs.s13~1_combout\ $ (\U1|Qs.s14~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s13~1_combout\,
	datad => \U1|Qs.s14~2_combout\,
	combout => \U1|Qs.s13~3_combout\);

-- Location: FF_X55_Y49_N13
\U1|Qs.s13~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s13~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s13~_emulated_q\);

-- Location: LCCOMB_X55_Y49_N26
\U1|Qs.s13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s13~2_combout\ = (\RS~input_o\ & (\U1|Qs.s13~_emulated_q\ $ (((\U1|Qs.s13~1_combout\))))) # (!\RS~input_o\ & (((\U1|Ram0~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s13~_emulated_q\,
	datab => \RS~input_o\,
	datac => \U1|Ram0~103_combout\,
	datad => \U1|Qs.s13~1_combout\,
	combout => \U1|Qs.s13~2_combout\);

-- Location: LCCOMB_X55_Y49_N2
\U1|Qs.s12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s12~3_combout\ = \U1|Qs.s13~2_combout\ $ (\U1|Qs.s12~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Qs.s13~2_combout\,
	datad => \U1|Qs.s12~1_combout\,
	combout => \U1|Qs.s12~3_combout\);

-- Location: FF_X55_Y49_N3
\U1|Qs.s12~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s12~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s12~_emulated_q\);

-- Location: LCCOMB_X55_Y49_N16
\U1|Qs.s12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s12~2_combout\ = (\RS~input_o\ & ((\U1|Qs.s12~1_combout\ $ (\U1|Qs.s12~_emulated_q\)))) # (!\RS~input_o\ & (\U1|Ram0~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Ram0~117_combout\,
	datab => \U1|Qs.s12~1_combout\,
	datac => \RS~input_o\,
	datad => \U1|Qs.s12~_emulated_q\,
	combout => \U1|Qs.s12~2_combout\);

-- Location: LCCOMB_X52_Y51_N14
\U1|Qs.s11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s11~3_combout\ = \U1|Qs.s12~2_combout\ $ (\U1|Qs.s11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s12~2_combout\,
	datac => \U1|Qs.s11~1_combout\,
	combout => \U1|Qs.s11~3_combout\);

-- Location: FF_X52_Y51_N15
\U1|Qs.s11~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s11~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s11~_emulated_q\);

-- Location: LCCOMB_X52_Y51_N12
\U1|Qs.s11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s11~2_combout\ = (\RS~input_o\ & (\U1|Qs.s11~1_combout\ $ (((\U1|Qs.s11~_emulated_q\))))) # (!\RS~input_o\ & (((\U1|Ram0~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U1|Qs.s11~1_combout\,
	datac => \U1|Ram0~130_combout\,
	datad => \U1|Qs.s11~_emulated_q\,
	combout => \U1|Qs.s11~2_combout\);

-- Location: LCCOMB_X52_Y48_N12
\U1|Qs.s10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s10~3_combout\ = \U1|Qs.s10~1_combout\ $ (\U1|Qs.s11~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s10~1_combout\,
	datab => \U1|Qs.s11~2_combout\,
	combout => \U1|Qs.s10~3_combout\);

-- Location: FF_X52_Y48_N13
\U1|Qs.s10~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U1|Qs.s10~3_combout\,
	clrn => \RS~input_o\,
	ena => \L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Qs.s10~_emulated_q\);

-- Location: LCCOMB_X52_Y48_N14
\U1|Qs.s10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Qs.s10~2_combout\ = (\RS~input_o\ & (\U1|Qs.s10~_emulated_q\ $ ((\U1|Qs.s10~1_combout\)))) # (!\RS~input_o\ & (((\U1|Ram0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s10~_emulated_q\,
	datab => \U1|Qs.s10~1_combout\,
	datac => \RS~input_o\,
	datad => \U1|Ram0~80_combout\,
	combout => \U1|Qs.s10~2_combout\);

-- Location: LCCOMB_X54_Y50_N16
\U1|WideOr65~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr65~1_combout\ = (!\U1|Qs.s10~2_combout\ & (!\U1|Qs.s58~2_combout\ & (!\U1|Qs.s42~2_combout\ & !\U1|Qs.s26~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s10~2_combout\,
	datab => \U1|Qs.s58~2_combout\,
	datac => \U1|Qs.s42~2_combout\,
	datad => \U1|Qs.s26~2_combout\,
	combout => \U1|WideOr65~1_combout\);

-- Location: LCCOMB_X55_Y50_N26
\U1|WideOr63~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr63~0_combout\ = (!\U1|Qs.s12~2_combout\ & (!\U1|Qs.s14~2_combout\ & (!\U1|Qs.s44~2_combout\ & !\U1|Qs.s28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s12~2_combout\,
	datab => \U1|Qs.s14~2_combout\,
	datac => \U1|Qs.s44~2_combout\,
	datad => \U1|Qs.s28~2_combout\,
	combout => \U1|WideOr63~0_combout\);

-- Location: LCCOMB_X55_Y50_N8
\U1|WideOr62~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr62~0_combout\ = (!\U1|Qs.s8~2_combout\ & (!\U1|Qs.s56~2_combout\ & (!\U1|Qs.s40~2_combout\ & !\U1|Qs.s24~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s8~2_combout\,
	datab => \U1|Qs.s56~2_combout\,
	datac => \U1|Qs.s40~2_combout\,
	datad => \U1|Qs.s24~2_combout\,
	combout => \U1|WideOr62~0_combout\);

-- Location: LCCOMB_X55_Y50_N4
\U1|WideOr63~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr63~1_combout\ = (!\U1|Qs.s45~2_combout\ & (!\U1|Qs.s13~2_combout\ & (!\U1|Qs.s47~2_combout\ & !\U1|Qs.s46~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s45~2_combout\,
	datab => \U1|Qs.s13~2_combout\,
	datac => \U1|Qs.s47~2_combout\,
	datad => \U1|Qs.s46~2_combout\,
	combout => \U1|WideOr63~1_combout\);

-- Location: LCCOMB_X55_Y50_N10
\U1|WideOr63~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr63~2_combout\ = (!\U1|Qs.s30~2_combout\ & (!\U1|Qs.s15~2_combout\ & (!\U1|Qs.s29~2_combout\ & !\U1|Qs.s31~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s30~2_combout\,
	datab => \U1|Qs.s15~2_combout\,
	datac => \U1|Qs.s29~2_combout\,
	datad => \U1|Qs.s31~2_combout\,
	combout => \U1|WideOr63~2_combout\);

-- Location: LCCOMB_X55_Y50_N14
\U1|WideOr62~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr62~1_combout\ = (((!\U1|WideOr63~2_combout\) # (!\U1|WideOr63~1_combout\)) # (!\U1|WideOr62~0_combout\)) # (!\U1|WideOr63~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr63~0_combout\,
	datab => \U1|WideOr62~0_combout\,
	datac => \U1|WideOr63~1_combout\,
	datad => \U1|WideOr63~2_combout\,
	combout => \U1|WideOr62~1_combout\);

-- Location: LCCOMB_X55_Y52_N4
\U1|WideOr64~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr64~5_combout\ = (!\U1|Qs.s57~2_combout\ & (!\U1|Qs.s25~2_combout\ & (!\U1|Qs.s9~2_combout\ & !\U1|Qs.s41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s57~2_combout\,
	datab => \U1|Qs.s25~2_combout\,
	datac => \U1|Qs.s9~2_combout\,
	datad => \U1|Qs.s41~2_combout\,
	combout => \U1|WideOr64~5_combout\);

-- Location: LCCOMB_X54_Y51_N12
\U1|WideOr62~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr62~2_combout\ = (\U1|Qs.s43~2_combout\) # ((\U1|Qs.s11~2_combout\) # ((\U1|Qs.s27~2_combout\) # (\U1|Qs.s59~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s43~2_combout\,
	datab => \U1|Qs.s11~2_combout\,
	datac => \U1|Qs.s27~2_combout\,
	datad => \U1|Qs.s59~2_combout\,
	combout => \U1|WideOr62~2_combout\);

-- Location: LCCOMB_X55_Y50_N0
\U1|WideOr62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr62~combout\ = ((\U1|WideOr62~1_combout\) # ((\U1|WideOr62~2_combout\) # (!\U1|WideOr64~5_combout\))) # (!\U1|WideOr65~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr65~1_combout\,
	datab => \U1|WideOr62~1_combout\,
	datac => \U1|WideOr64~5_combout\,
	datad => \U1|WideOr62~2_combout\,
	combout => \U1|WideOr62~combout\);

-- Location: LCCOMB_X56_Y50_N24
\U1|WideOr64~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr64~4_combout\ = (!\U1|Qs.s5~2_combout\ & (!\U1|Qs.s53~2_combout\ & (!\U1|Qs.s21~2_combout\ & !\U1|Qs.s37~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s5~2_combout\,
	datab => \U1|Qs.s53~2_combout\,
	datac => \U1|Qs.s21~2_combout\,
	datad => \U1|Qs.s37~2_combout\,
	combout => \U1|WideOr64~4_combout\);

-- Location: LCCOMB_X55_Y49_N0
\U1|WideOr64~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr64~0_combout\ = (!\U1|Qs.s20~2_combout\ & (!\U1|Qs.s36~2_combout\ & (!\U1|Qs.s4~2_combout\ & !\U1|Qs.s52~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s20~2_combout\,
	datab => \U1|Qs.s36~2_combout\,
	datac => \U1|Qs.s4~2_combout\,
	datad => \U1|Qs.s52~2_combout\,
	combout => \U1|WideOr64~0_combout\);

-- Location: LCCOMB_X54_Y48_N20
\U1|WideOr63~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr63~4_combout\ = (\U1|Qs.s55~2_combout\) # ((\U1|Qs.s7~2_combout\) # ((\U1|Qs.s39~2_combout\) # (\U1|Qs.s23~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s55~2_combout\,
	datab => \U1|Qs.s7~2_combout\,
	datac => \U1|Qs.s39~2_combout\,
	datad => \U1|Qs.s23~2_combout\,
	combout => \U1|WideOr63~4_combout\);

-- Location: LCCOMB_X57_Y50_N20
\U1|WideOr65~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr65~0_combout\ = (!\U1|Qs.s54~2_combout\ & (!\U1|Qs.s38~2_combout\ & (!\U1|Qs.s22~2_combout\ & !\U1|Qs.s6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s54~2_combout\,
	datab => \U1|Qs.s38~2_combout\,
	datac => \U1|Qs.s22~2_combout\,
	datad => \U1|Qs.s6~2_combout\,
	combout => \U1|WideOr65~0_combout\);

-- Location: LCCOMB_X55_Y50_N12
\U1|WideOr63~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr63~3_combout\ = (((!\U1|WideOr65~0_combout\) # (!\U1|WideOr63~0_combout\)) # (!\U1|WideOr63~1_combout\)) # (!\U1|WideOr63~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr63~2_combout\,
	datab => \U1|WideOr63~1_combout\,
	datac => \U1|WideOr63~0_combout\,
	datad => \U1|WideOr65~0_combout\,
	combout => \U1|WideOr63~3_combout\);

-- Location: LCCOMB_X51_Y50_N2
\U1|WideOr63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr63~combout\ = (((\U1|WideOr63~4_combout\) # (\U1|WideOr63~3_combout\)) # (!\U1|WideOr64~0_combout\)) # (!\U1|WideOr64~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr64~4_combout\,
	datab => \U1|WideOr64~0_combout\,
	datac => \U1|WideOr63~4_combout\,
	datad => \U1|WideOr63~3_combout\,
	combout => \U1|WideOr63~combout\);

-- Location: LCCOMB_X55_Y50_N30
\U1|WideOr64~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr64~1_combout\ = (!\U1|Qs.s0~2_combout\ & (!\U1|Qs.s28~2_combout\ & (!\U1|Qs.s44~2_combout\ & !\U1|Qs.s12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s0~2_combout\,
	datab => \U1|Qs.s28~2_combout\,
	datac => \U1|Qs.s44~2_combout\,
	datad => \U1|Qs.s12~2_combout\,
	combout => \U1|WideOr64~1_combout\);

-- Location: LCCOMB_X55_Y50_N20
\U1|WideOr64~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr64~2_combout\ = (!\U1|Qs.s16~2_combout\ & (!\U1|Qs.s48~2_combout\ & !\U1|Qs.s32~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Qs.s16~2_combout\,
	datac => \U1|Qs.s48~2_combout\,
	datad => \U1|Qs.s32~2_combout\,
	combout => \U1|WideOr64~2_combout\);

-- Location: LCCOMB_X55_Y50_N18
\U1|WideOr64~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr64~3_combout\ = (\U1|WideOr64~1_combout\ & (\U1|WideOr64~0_combout\ & (\U1|WideOr62~0_combout\ & \U1|WideOr64~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr64~1_combout\,
	datab => \U1|WideOr64~0_combout\,
	datac => \U1|WideOr62~0_combout\,
	datad => \U1|WideOr64~2_combout\,
	combout => \U1|WideOr64~3_combout\);

-- Location: LCCOMB_X55_Y50_N16
\U1|WideOr65~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr65~2_combout\ = (!\U1|Qs.s30~2_combout\ & (!\U1|Qs.s14~2_combout\ & (!\U1|Qs.s2~2_combout\ & !\U1|Qs.s18~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s30~2_combout\,
	datab => \U1|Qs.s14~2_combout\,
	datac => \U1|Qs.s2~2_combout\,
	datad => \U1|Qs.s18~2_combout\,
	combout => \U1|WideOr65~2_combout\);

-- Location: LCCOMB_X55_Y50_N6
\U1|WideOr65~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr65~3_combout\ = (!\U1|Qs.s46~2_combout\ & (!\U1|Qs.s50~2_combout\ & (!\U1|Qs.s34~2_combout\ & \U1|WideOr65~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s46~2_combout\,
	datab => \U1|Qs.s50~2_combout\,
	datac => \U1|Qs.s34~2_combout\,
	datad => \U1|WideOr65~2_combout\,
	combout => \U1|WideOr65~3_combout\);

-- Location: LCCOMB_X55_Y50_N28
\U1|WideOr65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr65~combout\ = (\U1|WideOr65~1_combout\ & (\U1|WideOr64~3_combout\ & (\U1|WideOr65~0_combout\ & \U1|WideOr65~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr65~1_combout\,
	datab => \U1|WideOr64~3_combout\,
	datac => \U1|WideOr65~0_combout\,
	datad => \U1|WideOr65~3_combout\,
	combout => \U1|WideOr65~combout\);

-- Location: LCCOMB_X51_Y52_N24
\U1|WideOr64~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr64~6_combout\ = (!\U1|Qs.s17~2_combout\ & (!\U1|Qs.s1~2_combout\ & (!\U1|Qs.s29~2_combout\ & !\U1|Qs.s13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s17~2_combout\,
	datab => \U1|Qs.s1~2_combout\,
	datac => \U1|Qs.s29~2_combout\,
	datad => \U1|Qs.s13~2_combout\,
	combout => \U1|WideOr64~6_combout\);

-- Location: LCCOMB_X51_Y52_N18
\U1|WideOr64~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr64~7_combout\ = (!\U1|Qs.s49~2_combout\ & (!\U1|Qs.s33~2_combout\ & (!\U1|Qs.s45~2_combout\ & \U1|WideOr64~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s49~2_combout\,
	datab => \U1|Qs.s33~2_combout\,
	datac => \U1|Qs.s45~2_combout\,
	datad => \U1|WideOr64~6_combout\,
	combout => \U1|WideOr64~7_combout\);

-- Location: LCCOMB_X51_Y50_N20
\U1|WideOr64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr64~combout\ = (\U1|WideOr64~4_combout\ & (\U1|WideOr64~5_combout\ & (\U1|WideOr64~3_combout\ & \U1|WideOr64~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr64~4_combout\,
	datab => \U1|WideOr64~5_combout\,
	datac => \U1|WideOr64~3_combout\,
	datad => \U1|WideOr64~7_combout\,
	combout => \U1|WideOr64~combout\);

-- Location: LCCOMB_X54_Y50_N12
\U1|WideOr60~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr60~2_combout\ = (\U1|Qs.s34~2_combout\) # ((\U1|Qs.s36~2_combout\) # ((\U1|Qs.s38~2_combout\) # (\U1|Qs.s40~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s34~2_combout\,
	datab => \U1|Qs.s36~2_combout\,
	datac => \U1|Qs.s38~2_combout\,
	datad => \U1|Qs.s40~2_combout\,
	combout => \U1|WideOr60~2_combout\);

-- Location: LCCOMB_X54_Y50_N24
\U1|WideOr60~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr60~4_combout\ = (\U1|Qs.s35~2_combout\) # ((\U1|Qs.s43~2_combout\) # ((\U1|Qs.s41~2_combout\) # (\U1|Qs.s39~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s35~2_combout\,
	datab => \U1|Qs.s43~2_combout\,
	datac => \U1|Qs.s41~2_combout\,
	datad => \U1|Qs.s39~2_combout\,
	combout => \U1|WideOr60~4_combout\);

-- Location: LCCOMB_X54_Y50_N14
\U1|WideOr60~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr60~3_combout\ = (\U1|Qs.s37~2_combout\) # ((\U1|Qs.s44~2_combout\) # ((\U1|Qs.s42~2_combout\) # (\U1|Qs.s33~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s37~2_combout\,
	datab => \U1|Qs.s44~2_combout\,
	datac => \U1|Qs.s42~2_combout\,
	datad => \U1|Qs.s33~2_combout\,
	combout => \U1|WideOr60~3_combout\);

-- Location: LCCOMB_X54_Y50_N26
\U1|WideOr61~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr61~1_combout\ = (!\U1|Qs.s53~2_combout\ & (!\U1|Qs.s56~2_combout\ & (!\U1|Qs.s58~2_combout\ & !\U1|Qs.s49~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s53~2_combout\,
	datab => \U1|Qs.s56~2_combout\,
	datac => \U1|Qs.s58~2_combout\,
	datad => \U1|Qs.s49~2_combout\,
	combout => \U1|WideOr61~1_combout\);

-- Location: LCCOMB_X54_Y50_N20
\U1|WideOr61~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr61~2_combout\ = (!\U1|Qs.s57~2_combout\ & (!\U1|Qs.s51~2_combout\ & (!\U1|Qs.s59~2_combout\ & !\U1|Qs.s55~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s57~2_combout\,
	datab => \U1|Qs.s51~2_combout\,
	datac => \U1|Qs.s59~2_combout\,
	datad => \U1|Qs.s55~2_combout\,
	combout => \U1|WideOr61~2_combout\);

-- Location: LCCOMB_X54_Y53_N8
\U1|WideOr60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr60~0_combout\ = (\U1|Qs.s47~2_combout\) # ((\U1|Qs.s46~2_combout\) # ((\U1|Qs.s45~2_combout\) # (\U1|Qs.s32~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s47~2_combout\,
	datab => \U1|Qs.s46~2_combout\,
	datac => \U1|Qs.s45~2_combout\,
	datad => \U1|Qs.s32~2_combout\,
	combout => \U1|WideOr60~0_combout\);

-- Location: LCCOMB_X56_Y52_N0
\U1|WideOr61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr61~0_combout\ = (!\U1|Qs.s52~2_combout\ & (!\U1|Qs.s50~2_combout\ & (!\U1|Qs.s48~2_combout\ & !\U1|Qs.s54~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s52~2_combout\,
	datab => \U1|Qs.s50~2_combout\,
	datac => \U1|Qs.s48~2_combout\,
	datad => \U1|Qs.s54~2_combout\,
	combout => \U1|WideOr61~0_combout\);

-- Location: LCCOMB_X54_Y50_N6
\U1|WideOr60~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr60~1_combout\ = (((\U1|WideOr60~0_combout\) # (!\U1|WideOr61~0_combout\)) # (!\U1|WideOr61~2_combout\)) # (!\U1|WideOr61~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr61~1_combout\,
	datab => \U1|WideOr61~2_combout\,
	datac => \U1|WideOr60~0_combout\,
	datad => \U1|WideOr61~0_combout\,
	combout => \U1|WideOr60~1_combout\);

-- Location: LCCOMB_X54_Y50_N10
\U1|WideOr60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr60~combout\ = (\U1|WideOr60~2_combout\) # ((\U1|WideOr60~4_combout\) # ((\U1|WideOr60~3_combout\) # (\U1|WideOr60~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr60~2_combout\,
	datab => \U1|WideOr60~4_combout\,
	datac => \U1|WideOr60~3_combout\,
	datad => \U1|WideOr60~1_combout\,
	combout => \U1|WideOr60~combout\);

-- Location: LCCOMB_X56_Y50_N6
\U1|WideOr61~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr61~5_combout\ = (\U1|Qs.s24~2_combout\) # ((\U1|Qs.s22~2_combout\) # ((\U1|Qs.s18~2_combout\) # (\U1|Qs.s20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s24~2_combout\,
	datab => \U1|Qs.s22~2_combout\,
	datac => \U1|Qs.s18~2_combout\,
	datad => \U1|Qs.s20~2_combout\,
	combout => \U1|WideOr61~5_combout\);

-- Location: LCCOMB_X56_Y50_N0
\U1|WideOr61~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr61~6_combout\ = (\U1|Qs.s21~2_combout\) # ((\U1|Qs.s28~2_combout\) # ((\U1|Qs.s17~2_combout\) # (\U1|Qs.s26~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s21~2_combout\,
	datab => \U1|Qs.s28~2_combout\,
	datac => \U1|Qs.s17~2_combout\,
	datad => \U1|Qs.s26~2_combout\,
	combout => \U1|WideOr61~6_combout\);

-- Location: LCCOMB_X52_Y52_N8
\U1|WideOr61~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr61~7_combout\ = (\U1|Qs.s27~2_combout\) # ((\U1|Qs.s25~2_combout\) # ((\U1|Qs.s23~2_combout\) # (\U1|Qs.s19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s27~2_combout\,
	datab => \U1|Qs.s25~2_combout\,
	datac => \U1|Qs.s23~2_combout\,
	datad => \U1|Qs.s19~2_combout\,
	combout => \U1|WideOr61~7_combout\);

-- Location: LCCOMB_X56_Y50_N14
\U1|WideOr61~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr61~3_combout\ = (\U1|Qs.s29~2_combout\) # ((\U1|Qs.s16~2_combout\) # ((\U1|Qs.s31~2_combout\) # (\U1|Qs.s30~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Qs.s29~2_combout\,
	datab => \U1|Qs.s16~2_combout\,
	datac => \U1|Qs.s31~2_combout\,
	datad => \U1|Qs.s30~2_combout\,
	combout => \U1|WideOr61~3_combout\);

-- Location: LCCOMB_X56_Y50_N20
\U1|WideOr61~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr61~4_combout\ = ((\U1|WideOr61~3_combout\) # ((!\U1|WideOr61~1_combout\) # (!\U1|WideOr61~2_combout\))) # (!\U1|WideOr61~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr61~0_combout\,
	datab => \U1|WideOr61~3_combout\,
	datac => \U1|WideOr61~2_combout\,
	datad => \U1|WideOr61~1_combout\,
	combout => \U1|WideOr61~4_combout\);

-- Location: LCCOMB_X56_Y50_N2
\U1|WideOr61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideOr61~combout\ = (\U1|WideOr61~5_combout\) # ((\U1|WideOr61~6_combout\) # ((\U1|WideOr61~7_combout\) # (\U1|WideOr61~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr61~5_combout\,
	datab => \U1|WideOr61~6_combout\,
	datac => \U1|WideOr61~7_combout\,
	datad => \U1|WideOr61~4_combout\,
	combout => \U1|WideOr61~combout\);

-- Location: LCCOMB_X51_Y50_N16
\N~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \N~0_combout\ = (\U1|WideOr65~combout\) # ((\U1|WideOr64~combout\) # ((\U1|WideOr60~combout\) # (\U1|WideOr61~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr65~combout\,
	datab => \U1|WideOr64~combout\,
	datac => \U1|WideOr60~combout\,
	datad => \U1|WideOr61~combout\,
	combout => \N~0_combout\);

-- Location: LCCOMB_X51_Y50_N6
\N~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \N~1_combout\ = (\U1|WideOr62~combout\) # ((\U1|WideOr63~combout\) # (\N~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr62~combout\,
	datab => \U1|WideOr63~combout\,
	datad => \N~0_combout\,
	combout => \N~1_combout\);

-- Location: LCCOMB_X51_Y50_N18
\E~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E~0_combout\ = ((!\O~1_combout\ & !\N~1_combout\)) # (!\K~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \K~input_o\,
	datac => \O~1_combout\,
	datad => \N~1_combout\,
	combout => \E~0_combout\);

-- Location: FF_X52_Y50_N27
\U5|Qs.s23~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U5|Qs.s23~1_combout\,
	clrn => \RS~input_o\,
	sload => VCC,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s23~_emulated_q\);

-- Location: LCCOMB_X52_Y50_N26
\U5|Qs.s23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s23~2_combout\ = (\RS~input_o\ & (\U5|Qs.s23~1_combout\ $ ((\U5|Qs.s23~_emulated_q\)))) # (!\RS~input_o\ & (((\U5|Mux7~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s23~1_combout\,
	datab => \RS~input_o\,
	datac => \U5|Qs.s23~_emulated_q\,
	datad => \U5|Mux7~33_combout\,
	combout => \U5|Qs.s23~2_combout\);

-- Location: LCCOMB_X52_Y50_N22
\U5|Qs.s22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s22~3_combout\ = \U5|Qs.s22~1_combout\ $ (\U5|Qs.s23~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Qs.s22~1_combout\,
	datad => \U5|Qs.s23~2_combout\,
	combout => \U5|Qs.s22~3_combout\);

-- Location: FF_X52_Y50_N23
\U5|Qs.s22~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s22~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s22~_emulated_q\);

-- Location: LCCOMB_X52_Y50_N8
\U5|Qs.s22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s22~2_combout\ = (\RS~input_o\ & ((\U5|Qs.s22~_emulated_q\ $ (\U5|Qs.s22~1_combout\)))) # (!\RS~input_o\ & (\U5|Mux7~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux7~16_combout\,
	datab => \RS~input_o\,
	datac => \U5|Qs.s22~_emulated_q\,
	datad => \U5|Qs.s22~1_combout\,
	combout => \U5|Qs.s22~2_combout\);

-- Location: LCCOMB_X52_Y50_N2
\U5|Qs.s21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s21~3_combout\ = \U5|Qs.s21~1_combout\ $ (\U5|Qs.s22~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s21~1_combout\,
	datac => \U5|Qs.s22~2_combout\,
	combout => \U5|Qs.s21~3_combout\);

-- Location: FF_X52_Y50_N3
\U5|Qs.s21~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s21~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s21~_emulated_q\);

-- Location: LCCOMB_X52_Y50_N0
\U5|Qs.s21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s21~2_combout\ = (\RS~input_o\ & ((\U5|Qs.s21~1_combout\ $ (\U5|Qs.s21~_emulated_q\)))) # (!\RS~input_o\ & (\U5|Mux7~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux7~22_combout\,
	datab => \RS~input_o\,
	datac => \U5|Qs.s21~1_combout\,
	datad => \U5|Qs.s21~_emulated_q\,
	combout => \U5|Qs.s21~2_combout\);

-- Location: LCCOMB_X52_Y50_N6
\U5|Qs.s20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s20~3_combout\ = \U5|Qs.s20~1_combout\ $ (\U5|Qs.s21~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Qs.s20~1_combout\,
	datac => \U5|Qs.s21~2_combout\,
	combout => \U5|Qs.s20~3_combout\);

-- Location: FF_X52_Y50_N7
\U5|Qs.s20~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s20~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s20~_emulated_q\);

-- Location: LCCOMB_X52_Y50_N16
\U5|Qs.s20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s20~2_combout\ = (\RS~input_o\ & ((\U5|Qs.s20~1_combout\ $ (\U5|Qs.s20~_emulated_q\)))) # (!\RS~input_o\ & (\U5|Mux7~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux7~15_combout\,
	datab => \RS~input_o\,
	datac => \U5|Qs.s20~1_combout\,
	datad => \U5|Qs.s20~_emulated_q\,
	combout => \U5|Qs.s20~2_combout\);

-- Location: LCCOMB_X47_Y52_N22
\U5|Qs.s19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s19~1_combout\ = (\RS~input_o\ & ((\U5|Qs.s19~1_combout\))) # (!\RS~input_o\ & (\U5|Mux7~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Mux7~31_combout\,
	datac => \U5|Qs.s19~1_combout\,
	datad => \RS~input_o\,
	combout => \U5|Qs.s19~1_combout\);

-- Location: LCCOMB_X52_Y50_N30
\U5|Qs.s19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s19~3_combout\ = \U5|Qs.s20~2_combout\ $ (\U5|Qs.s19~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|Qs.s20~2_combout\,
	datad => \U5|Qs.s19~1_combout\,
	combout => \U5|Qs.s19~3_combout\);

-- Location: FF_X52_Y50_N31
\U5|Qs.s19~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s19~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s19~_emulated_q\);

-- Location: LCCOMB_X52_Y50_N24
\U5|Qs.s19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s19~2_combout\ = (\RS~input_o\ & ((\U5|Qs.s19~_emulated_q\ $ (\U5|Qs.s19~1_combout\)))) # (!\RS~input_o\ & (\U5|Mux7~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux7~31_combout\,
	datab => \RS~input_o\,
	datac => \U5|Qs.s19~_emulated_q\,
	datad => \U5|Qs.s19~1_combout\,
	combout => \U5|Qs.s19~2_combout\);

-- Location: LCCOMB_X52_Y50_N18
\U5|Qs.s18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s18~3_combout\ = \U5|Qs.s19~2_combout\ $ (\U5|Qs.s18~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|Qs.s19~2_combout\,
	datad => \U5|Qs.s18~1_combout\,
	combout => \U5|Qs.s18~3_combout\);

-- Location: FF_X52_Y50_N19
\U5|Qs.s18~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s18~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s18~_emulated_q\);

-- Location: LCCOMB_X52_Y50_N20
\U5|Qs.s18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s18~2_combout\ = (\RS~input_o\ & ((\U5|Qs.s18~1_combout\ $ (\U5|Qs.s18~_emulated_q\)))) # (!\RS~input_o\ & (\U5|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux7~1_combout\,
	datab => \RS~input_o\,
	datac => \U5|Qs.s18~1_combout\,
	datad => \U5|Qs.s18~_emulated_q\,
	combout => \U5|Qs.s18~2_combout\);

-- Location: LCCOMB_X50_Y53_N28
\U5|Qs.s17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s17~3_combout\ = \U5|Qs.s17~1_combout\ $ (\U5|Qs.s18~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|Qs.s17~1_combout\,
	datad => \U5|Qs.s18~2_combout\,
	combout => \U5|Qs.s17~3_combout\);

-- Location: FF_X50_Y53_N29
\U5|Qs.s17~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s17~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s17~_emulated_q\);

-- Location: LCCOMB_X50_Y53_N22
\U5|Qs.s17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s17~2_combout\ = (\RS~input_o\ & (\U5|Qs.s17~1_combout\ $ (((\U5|Qs.s17~_emulated_q\))))) # (!\RS~input_o\ & (((\U5|Mux7~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U5|Qs.s17~1_combout\,
	datac => \U5|Mux7~21_combout\,
	datad => \U5|Qs.s17~_emulated_q\,
	combout => \U5|Qs.s17~2_combout\);

-- Location: LCCOMB_X50_Y53_N10
\U5|Qs.s16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s16~3_combout\ = \U5|Qs.s16~1_combout\ $ (\U5|Qs.s17~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s16~1_combout\,
	datab => \U5|Qs.s17~2_combout\,
	combout => \U5|Qs.s16~3_combout\);

-- Location: FF_X50_Y53_N11
\U5|Qs.s16~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s16~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s16~_emulated_q\);

-- Location: LCCOMB_X52_Y53_N30
\U5|Qs.s16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s16~2_combout\ = (\RS~input_o\ & ((\U5|Qs.s16~_emulated_q\ $ (\U5|Qs.s16~1_combout\)))) # (!\RS~input_o\ & (\U5|Mux7~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux7~5_combout\,
	datab => \RS~input_o\,
	datac => \U5|Qs.s16~_emulated_q\,
	datad => \U5|Qs.s16~1_combout\,
	combout => \U5|Qs.s16~2_combout\);

-- Location: LCCOMB_X51_Y53_N12
\U5|Qs.s15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s15~3_combout\ = \U5|Qs.s15~1_combout\ $ (\U5|Qs.s16~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|Qs.s15~1_combout\,
	datad => \U5|Qs.s16~2_combout\,
	combout => \U5|Qs.s15~3_combout\);

-- Location: FF_X51_Y53_N13
\U5|Qs.s15~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s15~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s15~_emulated_q\);

-- Location: LCCOMB_X51_Y53_N2
\U5|Qs.s15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s15~2_combout\ = (\RS~input_o\ & (\U5|Qs.s15~1_combout\ $ (((\U5|Qs.s15~_emulated_q\))))) # (!\RS~input_o\ & (((\U5|Mux7~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s15~1_combout\,
	datab => \U5|Mux7~32_combout\,
	datac => \RS~input_o\,
	datad => \U5|Qs.s15~_emulated_q\,
	combout => \U5|Qs.s15~2_combout\);

-- Location: LCCOMB_X47_Y53_N4
\U5|Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~2_combout\ = (\U4|WideOr28~2_combout\ & (!\U4|WideOr24~combout\ & (!\U4|WideOr27~2_combout\ & \U4|WideOr25~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr28~2_combout\,
	datab => \U4|WideOr24~combout\,
	datac => \U4|WideOr27~2_combout\,
	datad => \U4|WideOr25~combout\,
	combout => \U5|Mux7~2_combout\);

-- Location: LCCOMB_X47_Y53_N12
\U5|Mux7~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~14_combout\ = (!\U4|WideOr26~3_combout\ & \U5|Mux7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|WideOr26~3_combout\,
	datac => \U5|Mux7~2_combout\,
	combout => \U5|Mux7~14_combout\);

-- Location: LCCOMB_X47_Y53_N10
\U5|Qs.s14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s14~1_combout\ = (\RS~input_o\ & ((\U5|Qs.s14~1_combout\))) # (!\RS~input_o\ & (\U5|Mux7~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux7~14_combout\,
	datac => \RS~input_o\,
	datad => \U5|Qs.s14~1_combout\,
	combout => \U5|Qs.s14~1_combout\);

-- Location: LCCOMB_X51_Y53_N24
\U5|Qs.s14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s14~3_combout\ = \U5|Qs.s15~2_combout\ $ (\U5|Qs.s14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Qs.s15~2_combout\,
	datac => \U5|Qs.s14~1_combout\,
	combout => \U5|Qs.s14~3_combout\);

-- Location: FF_X51_Y53_N25
\U5|Qs.s14~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s14~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s14~_emulated_q\);

-- Location: LCCOMB_X51_Y53_N18
\U5|Qs.s14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s14~2_combout\ = (\RS~input_o\ & ((\U5|Qs.s14~1_combout\ $ (\U5|Qs.s14~_emulated_q\)))) # (!\RS~input_o\ & (\U5|Mux7~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U5|Mux7~14_combout\,
	datac => \U5|Qs.s14~1_combout\,
	datad => \U5|Qs.s14~_emulated_q\,
	combout => \U5|Qs.s14~2_combout\);

-- Location: LCCOMB_X47_Y53_N22
\U5|Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~3_combout\ = (\U5|Mux7~2_combout\ & \U4|WideOr26~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Mux7~2_combout\,
	datac => \U4|WideOr26~3_combout\,
	combout => \U5|Mux7~3_combout\);

-- Location: LCCOMB_X51_Y53_N26
\U5|Mux7~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~29_combout\ = (\U5|Mux7~28_combout\ & \U4|WideOr26~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|Mux7~28_combout\,
	datad => \U4|WideOr26~3_combout\,
	combout => \U5|Mux7~29_combout\);

-- Location: LCCOMB_X51_Y53_N8
\U5|Qs.s11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s11~1_combout\ = (\RS~input_o\ & ((\U5|Qs.s11~1_combout\))) # (!\RS~input_o\ & (\U5|Mux7~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux7~29_combout\,
	datab => \RS~input_o\,
	datac => \U5|Qs.s11~1_combout\,
	combout => \U5|Qs.s11~1_combout\);

-- Location: LCCOMB_X47_Y52_N0
\U5|Mux7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~8_combout\ = (!\U4|WideOr24~combout\ & (\U4|WideOr27~2_combout\ & (\U4|WideOr25~combout\ & \U4|WideOr28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr24~combout\,
	datab => \U4|WideOr27~2_combout\,
	datac => \U4|WideOr25~combout\,
	datad => \U4|WideOr28~2_combout\,
	combout => \U5|Mux7~8_combout\);

-- Location: LCCOMB_X47_Y52_N16
\U5|Mux7~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~13_combout\ = (!\U4|WideOr26~3_combout\ & \U5|Mux7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|WideOr26~3_combout\,
	datad => \U5|Mux7~8_combout\,
	combout => \U5|Mux7~13_combout\);

-- Location: LCCOMB_X47_Y52_N24
\U5|Qs.s12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s12~1_combout\ = (\RS~input_o\ & ((\U5|Qs.s12~1_combout\))) # (!\RS~input_o\ & (\U5|Mux7~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Mux7~13_combout\,
	datac => \RS~input_o\,
	datad => \U5|Qs.s12~1_combout\,
	combout => \U5|Qs.s12~1_combout\);

-- Location: LCCOMB_X46_Y53_N16
\U5|Mux7~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~17_combout\ = (!\U4|WideOr24~combout\ & (!\U4|WideOr28~2_combout\ & (\U4|WideOr25~combout\ & \U4|WideOr27~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr24~combout\,
	datab => \U4|WideOr28~2_combout\,
	datac => \U4|WideOr25~combout\,
	datad => \U4|WideOr27~2_combout\,
	combout => \U5|Mux7~17_combout\);

-- Location: LCCOMB_X50_Y53_N4
\U5|Mux7~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~19_combout\ = (!\U4|WideOr26~3_combout\ & \U5|Mux7~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr26~3_combout\,
	datad => \U5|Mux7~17_combout\,
	combout => \U5|Mux7~19_combout\);

-- Location: LCCOMB_X50_Y53_N24
\U5|Qs.s13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s13~1_combout\ = (\RS~input_o\ & ((\U5|Qs.s13~1_combout\))) # (!\RS~input_o\ & (\U5|Mux7~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datac => \U5|Mux7~19_combout\,
	datad => \U5|Qs.s13~1_combout\,
	combout => \U5|Qs.s13~1_combout\);

-- Location: LCCOMB_X51_Y53_N16
\U5|Qs.s13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s13~3_combout\ = \U5|Qs.s14~2_combout\ $ (\U5|Qs.s13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Qs.s14~2_combout\,
	datad => \U5|Qs.s13~1_combout\,
	combout => \U5|Qs.s13~3_combout\);

-- Location: FF_X51_Y53_N17
\U5|Qs.s13~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s13~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s13~_emulated_q\);

-- Location: LCCOMB_X51_Y53_N30
\U5|Qs.s13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s13~2_combout\ = (\RS~input_o\ & (\U5|Qs.s13~1_combout\ $ (((\U5|Qs.s13~_emulated_q\))))) # (!\RS~input_o\ & (((\U5|Mux7~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U5|Qs.s13~1_combout\,
	datac => \U5|Mux7~19_combout\,
	datad => \U5|Qs.s13~_emulated_q\,
	combout => \U5|Qs.s13~2_combout\);

-- Location: LCCOMB_X51_Y53_N28
\U5|Qs.s12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s12~3_combout\ = \U5|Qs.s13~2_combout\ $ (\U5|Qs.s12~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s13~2_combout\,
	datac => \U5|Qs.s12~1_combout\,
	combout => \U5|Qs.s12~3_combout\);

-- Location: FF_X51_Y53_N29
\U5|Qs.s12~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s12~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s12~_emulated_q\);

-- Location: LCCOMB_X51_Y53_N10
\U5|Qs.s12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s12~2_combout\ = (\RS~input_o\ & (\U5|Qs.s12~1_combout\ $ (((\U5|Qs.s12~_emulated_q\))))) # (!\RS~input_o\ & (((\U5|Mux7~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s12~1_combout\,
	datab => \U5|Mux7~13_combout\,
	datac => \RS~input_o\,
	datad => \U5|Qs.s12~_emulated_q\,
	combout => \U5|Qs.s12~2_combout\);

-- Location: LCCOMB_X51_Y53_N20
\U5|Qs.s11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s11~3_combout\ = \U5|Qs.s11~1_combout\ $ (\U5|Qs.s12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s11~1_combout\,
	datad => \U5|Qs.s12~2_combout\,
	combout => \U5|Qs.s11~3_combout\);

-- Location: FF_X51_Y53_N21
\U5|Qs.s11~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s11~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s11~_emulated_q\);

-- Location: LCCOMB_X51_Y53_N22
\U5|Qs.s11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s11~2_combout\ = (\RS~input_o\ & ((\U5|Qs.s11~1_combout\ $ (\U5|Qs.s11~_emulated_q\)))) # (!\RS~input_o\ & (\U5|Mux7~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux7~29_combout\,
	datab => \RS~input_o\,
	datac => \U5|Qs.s11~1_combout\,
	datad => \U5|Qs.s11~_emulated_q\,
	combout => \U5|Qs.s11~2_combout\);

-- Location: LCCOMB_X47_Y53_N28
\U5|Qs.s10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s10~1_combout\ = (\RS~input_o\ & ((\U5|Qs.s10~1_combout\))) # (!\RS~input_o\ & (\U5|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datac => \U5|Mux7~3_combout\,
	datad => \U5|Qs.s10~1_combout\,
	combout => \U5|Qs.s10~1_combout\);

-- Location: LCCOMB_X52_Y53_N14
\U5|Qs.s10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s10~3_combout\ = \U5|Qs.s11~2_combout\ $ (\U5|Qs.s10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s11~2_combout\,
	datac => \U5|Qs.s10~1_combout\,
	combout => \U5|Qs.s10~3_combout\);

-- Location: FF_X52_Y53_N15
\U5|Qs.s10~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s10~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s10~_emulated_q\);

-- Location: LCCOMB_X52_Y53_N4
\U5|Qs.s10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s10~2_combout\ = (\RS~input_o\ & ((\U5|Qs.s10~_emulated_q\ $ (\U5|Qs.s10~1_combout\)))) # (!\RS~input_o\ & (\U5|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U5|Mux7~3_combout\,
	datac => \U5|Qs.s10~_emulated_q\,
	datad => \U5|Qs.s10~1_combout\,
	combout => \U5|Qs.s10~2_combout\);

-- Location: LCCOMB_X52_Y53_N22
\U5|WideOr24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|WideOr24~0_combout\ = (\U5|Qs.s15~2_combout\) # ((\U5|Qs.s14~2_combout\) # ((\U5|Qs.s10~2_combout\) # (\U5|Qs.s11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s15~2_combout\,
	datab => \U5|Qs.s14~2_combout\,
	datac => \U5|Qs.s10~2_combout\,
	datad => \U5|Qs.s11~2_combout\,
	combout => \U5|WideOr24~0_combout\);

-- Location: LCCOMB_X46_Y53_N18
\U5|Mux7~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~18_combout\ = (\U4|WideOr26~3_combout\ & \U5|Mux7~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|WideOr26~3_combout\,
	datad => \U5|Mux7~17_combout\,
	combout => \U5|Mux7~18_combout\);

-- Location: LCCOMB_X51_Y53_N14
\U5|Qs.s9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s9~1_combout\ = (\RS~input_o\ & (\U5|Qs.s9~1_combout\)) # (!\RS~input_o\ & ((\U5|Mux7~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Qs.s9~1_combout\,
	datac => \RS~input_o\,
	datad => \U5|Mux7~18_combout\,
	combout => \U5|Qs.s9~1_combout\);

-- Location: LCCOMB_X52_Y53_N24
\U5|Qs.s9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s9~3_combout\ = \U5|Qs.s10~2_combout\ $ (\U5|Qs.s9~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s10~2_combout\,
	datad => \U5|Qs.s9~1_combout\,
	combout => \U5|Qs.s9~3_combout\);

-- Location: FF_X52_Y53_N25
\U5|Qs.s9~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s9~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s9~_emulated_q\);

-- Location: LCCOMB_X52_Y53_N26
\U5|Qs.s9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s9~2_combout\ = (\RS~input_o\ & (\U5|Qs.s9~1_combout\ $ (((\U5|Qs.s9~_emulated_q\))))) # (!\RS~input_o\ & (((\U5|Mux7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s9~1_combout\,
	datab => \RS~input_o\,
	datac => \U5|Mux7~18_combout\,
	datad => \U5|Qs.s9~_emulated_q\,
	combout => \U5|Qs.s9~2_combout\);

-- Location: LCCOMB_X47_Y52_N10
\U5|Mux7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~9_combout\ = (\U4|WideOr26~3_combout\ & \U5|Mux7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|WideOr26~3_combout\,
	datad => \U5|Mux7~8_combout\,
	combout => \U5|Mux7~9_combout\);

-- Location: LCCOMB_X47_Y52_N12
\U5|Qs.s8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s8~1_combout\ = (\RS~input_o\ & ((\U5|Qs.s8~1_combout\))) # (!\RS~input_o\ & (\U5|Mux7~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux7~9_combout\,
	datac => \RS~input_o\,
	datad => \U5|Qs.s8~1_combout\,
	combout => \U5|Qs.s8~1_combout\);

-- Location: LCCOMB_X52_Y50_N14
\U5|Qs.s8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s8~3_combout\ = \U5|Qs.s8~1_combout\ $ (\U5|Qs.s9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Qs.s8~1_combout\,
	datad => \U5|Qs.s9~2_combout\,
	combout => \U5|Qs.s8~3_combout\);

-- Location: FF_X52_Y50_N15
\U5|Qs.s8~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s8~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s8~_emulated_q\);

-- Location: LCCOMB_X52_Y50_N4
\U5|Qs.s8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s8~2_combout\ = (\RS~input_o\ & ((\U5|Qs.s8~_emulated_q\ $ (\U5|Qs.s8~1_combout\)))) # (!\RS~input_o\ & (\U5|Mux7~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux7~9_combout\,
	datab => \RS~input_o\,
	datac => \U5|Qs.s8~_emulated_q\,
	datad => \U5|Qs.s8~1_combout\,
	combout => \U5|Qs.s8~2_combout\);

-- Location: LCCOMB_X52_Y53_N0
\U5|WideOr26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|WideOr26~0_combout\ = (!\U5|Qs.s9~2_combout\ & (!\U5|Qs.s13~2_combout\ & (!\U5|Qs.s8~2_combout\ & !\U5|Qs.s12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s9~2_combout\,
	datab => \U5|Qs.s13~2_combout\,
	datac => \U5|Qs.s8~2_combout\,
	datad => \U5|Qs.s12~2_combout\,
	combout => \U5|WideOr26~0_combout\);

-- Location: LCCOMB_X52_Y50_N28
\U5|WideOr23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|WideOr23~0_combout\ = (\U5|Qs.s23~2_combout\) # ((\U5|Qs.s18~2_combout\) # ((\U5|Qs.s22~2_combout\) # (\U5|Qs.s19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s23~2_combout\,
	datab => \U5|Qs.s18~2_combout\,
	datac => \U5|Qs.s22~2_combout\,
	datad => \U5|Qs.s19~2_combout\,
	combout => \U5|WideOr23~0_combout\);

-- Location: LCCOMB_X52_Y53_N6
\U5|WideOr26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|WideOr26~1_combout\ = (!\U5|Qs.s16~2_combout\ & (!\U5|Qs.s17~2_combout\ & (!\U5|Qs.s21~2_combout\ & !\U5|Qs.s20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s16~2_combout\,
	datab => \U5|Qs.s17~2_combout\,
	datac => \U5|Qs.s21~2_combout\,
	datad => \U5|Qs.s20~2_combout\,
	combout => \U5|WideOr26~1_combout\);

-- Location: LCCOMB_X52_Y53_N20
\L~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \L~0_combout\ = (!\U5|WideOr24~0_combout\ & (\U5|WideOr26~0_combout\ & (!\U5|WideOr23~0_combout\ & \U5|WideOr26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|WideOr24~0_combout\,
	datab => \U5|WideOr26~0_combout\,
	datac => \U5|WideOr23~0_combout\,
	datad => \U5|WideOr26~1_combout\,
	combout => \L~0_combout\);

-- Location: LCCOMB_X47_Y53_N14
\U5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux0~0_combout\ = (!\U4|WideOr25~0_combout\ & (\U4|WideOr25~1_combout\ & ((\U4|WideOr28~1_combout\) # (!\U4|WideOr28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr28~0_combout\,
	datab => \U4|WideOr28~1_combout\,
	datac => \U4|WideOr25~0_combout\,
	datad => \U4|WideOr25~1_combout\,
	combout => \U5|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y53_N24
\U5|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux0~1_combout\ = (\U4|WideOr26~3_combout\ & ((\U4|WideOr24~combout\) # ((\U5|Mux0~0_combout\)))) # (!\U4|WideOr26~3_combout\ & (\U4|WideOr24~combout\ & ((\U4|WideOr28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr26~3_combout\,
	datab => \U4|WideOr24~combout\,
	datac => \U5|Mux0~0_combout\,
	datad => \U4|WideOr28~2_combout\,
	combout => \U5|Mux0~1_combout\);

-- Location: LCCOMB_X47_Y53_N30
\U5|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux0~2_combout\ = (\U4|WideOr24~combout\ & (\U4|WideOr25~combout\ & ((\U4|WideOr27~2_combout\) # (\U5|Mux0~1_combout\)))) # (!\U4|WideOr24~combout\ & (((\U4|WideOr27~2_combout\ & \U5|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr25~combout\,
	datab => \U4|WideOr24~combout\,
	datac => \U4|WideOr27~2_combout\,
	datad => \U5|Mux0~1_combout\,
	combout => \U5|Mux0~2_combout\);

-- Location: LCCOMB_X47_Y53_N18
\U5|Qs.s0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s0~1_combout\ = (\RS~input_o\ & ((\U5|Qs.s0~1_combout\))) # (!\RS~input_o\ & (\U5|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux0~2_combout\,
	datac => \RS~input_o\,
	datad => \U5|Qs.s0~1_combout\,
	combout => \U5|Qs.s0~1_combout\);

-- Location: LCCOMB_X45_Y50_N28
\U5|Mux7~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~23_combout\ = (\U4|WideOr27~2_combout\ & (!\U4|WideOr28~2_combout\ & (!\U4|WideOr24~combout\ & !\U4|WideOr25~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr27~2_combout\,
	datab => \U4|WideOr28~2_combout\,
	datac => \U4|WideOr24~combout\,
	datad => \U4|WideOr25~combout\,
	combout => \U5|Mux7~23_combout\);

-- Location: LCCOMB_X45_Y50_N26
\U5|Mux7~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~24_combout\ = (\U4|WideOr26~3_combout\ & \U5|Mux7~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr26~3_combout\,
	datad => \U5|Mux7~23_combout\,
	combout => \U5|Mux7~24_combout\);

-- Location: LCCOMB_X49_Y50_N12
\U5|Qs.s1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s1~1_combout\ = (\RS~input_o\ & (\U5|Qs.s1~1_combout\)) # (!\RS~input_o\ & ((\U5|Mux7~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s1~1_combout\,
	datac => \RS~input_o\,
	datad => \U5|Mux7~24_combout\,
	combout => \U5|Qs.s1~1_combout\);

-- Location: LCCOMB_X45_Y50_N8
\U5|Mux7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~6_combout\ = (!\U4|WideOr27~2_combout\ & (\U4|WideOr28~2_combout\ & (!\U4|WideOr24~combout\ & !\U4|WideOr25~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr27~2_combout\,
	datab => \U4|WideOr28~2_combout\,
	datac => \U4|WideOr24~combout\,
	datad => \U4|WideOr25~combout\,
	combout => \U5|Mux7~6_combout\);

-- Location: LCCOMB_X45_Y50_N14
\U5|Mux7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~7_combout\ = (\U5|Mux7~6_combout\ & \U4|WideOr26~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|Mux7~6_combout\,
	datad => \U4|WideOr26~3_combout\,
	combout => \U5|Mux7~7_combout\);

-- Location: LCCOMB_X45_Y50_N0
\U5|Qs.s2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s2~1_combout\ = (\RS~input_o\ & (\U5|Qs.s2~1_combout\)) # (!\RS~input_o\ & ((\U5|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Qs.s2~1_combout\,
	datac => \U5|Mux7~7_combout\,
	datad => \RS~input_o\,
	combout => \U5|Qs.s2~1_combout\);

-- Location: LCCOMB_X46_Y53_N10
\U5|Mux7~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~26_combout\ = (!\U4|WideOr27~2_combout\ & (!\U4|WideOr24~combout\ & (!\U4|WideOr25~combout\ & !\U4|WideOr28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr27~2_combout\,
	datab => \U4|WideOr24~combout\,
	datac => \U4|WideOr25~combout\,
	datad => \U4|WideOr28~2_combout\,
	combout => \U5|Mux7~26_combout\);

-- Location: LCCOMB_X46_Y53_N8
\U5|Mux7~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~27_combout\ = (\U4|WideOr26~3_combout\ & \U5|Mux7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|WideOr26~3_combout\,
	datad => \U5|Mux7~26_combout\,
	combout => \U5|Mux7~27_combout\);

-- Location: LCCOMB_X49_Y50_N2
\U5|Qs.s3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s3~1_combout\ = (\RS~input_o\ & (\U5|Qs.s3~1_combout\)) # (!\RS~input_o\ & ((\U5|Mux7~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Qs.s3~1_combout\,
	datac => \U5|Mux7~27_combout\,
	datad => \RS~input_o\,
	combout => \U5|Qs.s3~1_combout\);

-- Location: LCCOMB_X47_Y52_N4
\U5|Mux7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~10_combout\ = (!\U4|WideOr24~combout\ & (\U4|WideOr27~2_combout\ & (!\U4|WideOr25~combout\ & \U4|WideOr28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr24~combout\,
	datab => \U4|WideOr27~2_combout\,
	datac => \U4|WideOr25~combout\,
	datad => \U4|WideOr28~2_combout\,
	combout => \U5|Mux7~10_combout\);

-- Location: LCCOMB_X47_Y52_N30
\U5|Mux7~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~11_combout\ = (!\U4|WideOr26~3_combout\ & \U5|Mux7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr26~3_combout\,
	datac => \U5|Mux7~10_combout\,
	combout => \U5|Mux7~11_combout\);

-- Location: LCCOMB_X47_Y52_N14
\U5|Qs.s4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s4~1_combout\ = (\RS~input_o\ & ((\U5|Qs.s4~1_combout\))) # (!\RS~input_o\ & (\U5|Mux7~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux7~11_combout\,
	datab => \U5|Qs.s4~1_combout\,
	datac => \RS~input_o\,
	combout => \U5|Qs.s4~1_combout\);

-- Location: LCCOMB_X45_Y50_N4
\U5|Mux7~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~25_combout\ = (!\U4|WideOr26~3_combout\ & \U5|Mux7~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|WideOr26~3_combout\,
	datad => \U5|Mux7~23_combout\,
	combout => \U5|Mux7~25_combout\);

-- Location: LCCOMB_X45_Y50_N18
\U5|Qs.s5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s5~1_combout\ = (\RS~input_o\ & ((\U5|Qs.s5~1_combout\))) # (!\RS~input_o\ & (\U5|Mux7~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Mux7~25_combout\,
	datac => \RS~input_o\,
	datad => \U5|Qs.s5~1_combout\,
	combout => \U5|Qs.s5~1_combout\);

-- Location: LCCOMB_X45_Y50_N16
\U5|Mux7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~12_combout\ = (\U5|Mux7~6_combout\ & !\U4|WideOr26~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|Mux7~6_combout\,
	datad => \U4|WideOr26~3_combout\,
	combout => \U5|Mux7~12_combout\);

-- Location: LCCOMB_X45_Y50_N10
\U5|Qs.s6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s6~1_combout\ = (\RS~input_o\ & (\U5|Qs.s6~1_combout\)) # (!\RS~input_o\ & ((\U5|Mux7~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s6~1_combout\,
	datab => \U5|Mux7~12_combout\,
	datad => \RS~input_o\,
	combout => \U5|Qs.s6~1_combout\);

-- Location: LCCOMB_X46_Y53_N0
\U5|Mux7~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Mux7~34_combout\ = (!\U4|WideOr26~3_combout\ & \U5|Mux7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|WideOr26~3_combout\,
	datad => \U5|Mux7~26_combout\,
	combout => \U5|Mux7~34_combout\);

-- Location: LCCOMB_X46_Y53_N20
\U5|Qs.s7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s7~1_combout\ = (\RS~input_o\ & ((\U5|Qs.s7~1_combout\))) # (!\RS~input_o\ & (\U5|Mux7~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux7~34_combout\,
	datac => \RS~input_o\,
	datad => \U5|Qs.s7~1_combout\,
	combout => \U5|Qs.s7~1_combout\);

-- Location: LCCOMB_X52_Y50_N12
\U5|Qs.s7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s7~3_combout\ = \U5|Qs.s8~2_combout\ $ (\U5|Qs.s7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s8~2_combout\,
	datad => \U5|Qs.s7~1_combout\,
	combout => \U5|Qs.s7~3_combout\);

-- Location: FF_X52_Y50_N13
\U5|Qs.s7~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s7~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s7~_emulated_q\);

-- Location: LCCOMB_X52_Y50_N10
\U5|Qs.s7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s7~2_combout\ = (\RS~input_o\ & ((\U5|Qs.s7~1_combout\ $ (\U5|Qs.s7~_emulated_q\)))) # (!\RS~input_o\ & (\U5|Mux7~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux7~34_combout\,
	datab => \U5|Qs.s7~1_combout\,
	datac => \RS~input_o\,
	datad => \U5|Qs.s7~_emulated_q\,
	combout => \U5|Qs.s7~2_combout\);

-- Location: LCCOMB_X45_Y50_N20
\U5|Qs.s6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s6~3_combout\ = \U5|Qs.s6~1_combout\ $ (\U5|Qs.s7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|Qs.s6~1_combout\,
	datad => \U5|Qs.s7~2_combout\,
	combout => \U5|Qs.s6~3_combout\);

-- Location: FF_X45_Y50_N21
\U5|Qs.s6~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s6~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s6~_emulated_q\);

-- Location: LCCOMB_X45_Y50_N30
\U5|Qs.s6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s6~2_combout\ = (\RS~input_o\ & (\U5|Qs.s6~1_combout\ $ (((\U5|Qs.s6~_emulated_q\))))) # (!\RS~input_o\ & (((\U5|Mux7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s6~1_combout\,
	datab => \U5|Mux7~12_combout\,
	datac => \RS~input_o\,
	datad => \U5|Qs.s6~_emulated_q\,
	combout => \U5|Qs.s6~2_combout\);

-- Location: LCCOMB_X49_Y50_N28
\U5|Qs.s5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s5~3_combout\ = \U5|Qs.s6~2_combout\ $ (\U5|Qs.s5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Qs.s6~2_combout\,
	datad => \U5|Qs.s5~1_combout\,
	combout => \U5|Qs.s5~3_combout\);

-- Location: FF_X49_Y50_N29
\U5|Qs.s5~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s5~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s5~_emulated_q\);

-- Location: LCCOMB_X49_Y50_N30
\U5|Qs.s5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s5~2_combout\ = (\RS~input_o\ & ((\U5|Qs.s5~1_combout\ $ (\U5|Qs.s5~_emulated_q\)))) # (!\RS~input_o\ & (\U5|Mux7~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux7~25_combout\,
	datab => \RS~input_o\,
	datac => \U5|Qs.s5~1_combout\,
	datad => \U5|Qs.s5~_emulated_q\,
	combout => \U5|Qs.s5~2_combout\);

-- Location: LCCOMB_X49_Y50_N20
\U5|Qs.s4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s4~3_combout\ = \U5|Qs.s4~1_combout\ $ (\U5|Qs.s5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s4~1_combout\,
	datac => \U5|Qs.s5~2_combout\,
	combout => \U5|Qs.s4~3_combout\);

-- Location: FF_X49_Y50_N21
\U5|Qs.s4~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s4~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s4~_emulated_q\);

-- Location: LCCOMB_X49_Y50_N6
\U5|Qs.s4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s4~2_combout\ = (\RS~input_o\ & ((\U5|Qs.s4~1_combout\ $ (\U5|Qs.s4~_emulated_q\)))) # (!\RS~input_o\ & (\U5|Mux7~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux7~11_combout\,
	datab => \RS~input_o\,
	datac => \U5|Qs.s4~1_combout\,
	datad => \U5|Qs.s4~_emulated_q\,
	combout => \U5|Qs.s4~2_combout\);

-- Location: LCCOMB_X49_Y50_N0
\U5|Qs.s3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s3~3_combout\ = \U5|Qs.s3~1_combout\ $ (\U5|Qs.s4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s3~1_combout\,
	datac => \U5|Qs.s4~2_combout\,
	combout => \U5|Qs.s3~3_combout\);

-- Location: FF_X49_Y50_N1
\U5|Qs.s3~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s3~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s3~_emulated_q\);

-- Location: LCCOMB_X49_Y50_N10
\U5|Qs.s3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s3~2_combout\ = (\RS~input_o\ & ((\U5|Qs.s3~1_combout\ $ (\U5|Qs.s3~_emulated_q\)))) # (!\RS~input_o\ & (\U5|Mux7~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U5|Mux7~27_combout\,
	datac => \U5|Qs.s3~1_combout\,
	datad => \U5|Qs.s3~_emulated_q\,
	combout => \U5|Qs.s3~2_combout\);

-- Location: LCCOMB_X52_Y53_N12
\U5|Qs.s2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s2~3_combout\ = \U5|Qs.s2~1_combout\ $ (\U5|Qs.s3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Qs.s2~1_combout\,
	datac => \U5|Qs.s3~2_combout\,
	combout => \U5|Qs.s2~3_combout\);

-- Location: FF_X52_Y53_N13
\U5|Qs.s2~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s2~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s2~_emulated_q\);

-- Location: LCCOMB_X52_Y53_N2
\U5|Qs.s2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s2~2_combout\ = (\RS~input_o\ & ((\U5|Qs.s2~1_combout\ $ (\U5|Qs.s2~_emulated_q\)))) # (!\RS~input_o\ & (\U5|Mux7~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U5|Mux7~7_combout\,
	datac => \U5|Qs.s2~1_combout\,
	datad => \U5|Qs.s2~_emulated_q\,
	combout => \U5|Qs.s2~2_combout\);

-- Location: LCCOMB_X49_Y50_N16
\U5|Qs.s1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s1~3_combout\ = \U5|Qs.s1~1_combout\ $ (\U5|Qs.s2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s1~1_combout\,
	datad => \U5|Qs.s2~2_combout\,
	combout => \U5|Qs.s1~3_combout\);

-- Location: FF_X49_Y50_N17
\U5|Qs.s1~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s1~3_combout\,
	clrn => \RS~input_o\,
	ena => \E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s1~_emulated_q\);

-- Location: LCCOMB_X49_Y50_N26
\U5|Qs.s1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s1~2_combout\ = (\RS~input_o\ & (\U5|Qs.s1~1_combout\ $ (((\U5|Qs.s1~_emulated_q\))))) # (!\RS~input_o\ & (((\U5|Mux7~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s1~1_combout\,
	datab => \U5|Mux7~24_combout\,
	datac => \RS~input_o\,
	datad => \U5|Qs.s1~_emulated_q\,
	combout => \U5|Qs.s1~2_combout\);

-- Location: LCCOMB_X49_Y50_N24
\U5|Qs.s0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s0~3_combout\ = \U5|Qs.s0~1_combout\ $ (((\U5|Qs.s0~2_combout\) # ((\E~0_combout\ & \U5|Qs.s1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s0~1_combout\,
	datab => \U5|Qs.s0~2_combout\,
	datac => \E~0_combout\,
	datad => \U5|Qs.s1~2_combout\,
	combout => \U5|Qs.s0~3_combout\);

-- Location: FF_X49_Y50_N25
\U5|Qs.s0~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U5|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U5|Qs.s0~3_combout\,
	clrn => \RS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Qs.s0~_emulated_q\);

-- Location: LCCOMB_X49_Y50_N22
\U5|Qs.s0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Qs.s0~2_combout\ = (\RS~input_o\ & ((\U5|Qs.s0~1_combout\ $ (\U5|Qs.s0~_emulated_q\)))) # (!\RS~input_o\ & (\U5|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux0~2_combout\,
	datab => \RS~input_o\,
	datac => \U5|Qs.s0~1_combout\,
	datad => \U5|Qs.s0~_emulated_q\,
	combout => \U5|Qs.s0~2_combout\);

-- Location: LCCOMB_X49_Y50_N4
\U5|WideOr26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|WideOr26~2_combout\ = (!\U5|Qs.s0~2_combout\ & (!\U5|Qs.s1~2_combout\ & (!\U5|Qs.s5~2_combout\ & !\U5|Qs.s4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s0~2_combout\,
	datab => \U5|Qs.s1~2_combout\,
	datac => \U5|Qs.s5~2_combout\,
	datad => \U5|Qs.s4~2_combout\,
	combout => \U5|WideOr26~2_combout\);

-- Location: LCCOMB_X52_Y53_N8
\U5|WideOr27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|WideOr27~0_combout\ = (!\U5|Qs.s12~2_combout\ & (!\U5|Qs.s14~2_combout\ & (!\U5|Qs.s4~2_combout\ & !\U5|Qs.s6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s12~2_combout\,
	datab => \U5|Qs.s14~2_combout\,
	datac => \U5|Qs.s4~2_combout\,
	datad => \U5|Qs.s6~2_combout\,
	combout => \U5|WideOr27~0_combout\);

-- Location: LCCOMB_X52_Y53_N28
\U5|WideOr25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|WideOr25~0_combout\ = (!\U5|Qs.s16~2_combout\ & (!\U5|Qs.s8~2_combout\ & !\U5|Qs.s2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s16~2_combout\,
	datac => \U5|Qs.s8~2_combout\,
	datad => \U5|Qs.s2~2_combout\,
	combout => \U5|WideOr25~0_combout\);

-- Location: LCCOMB_X52_Y53_N18
\U5|WideOr25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|WideOr25~1_combout\ = (!\U5|Qs.s10~2_combout\ & (!\U5|Qs.s18~2_combout\ & (!\U5|Qs.s0~2_combout\ & \U5|WideOr25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s10~2_combout\,
	datab => \U5|Qs.s18~2_combout\,
	datac => \U5|Qs.s0~2_combout\,
	datad => \U5|WideOr25~0_combout\,
	combout => \U5|WideOr25~1_combout\);

-- Location: LCCOMB_X52_Y53_N10
\U5|WideOr27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|WideOr27~1_combout\ = (!\U5|Qs.s22~2_combout\ & (!\U5|Qs.s20~2_combout\ & (\U5|WideOr27~0_combout\ & \U5|WideOr25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s22~2_combout\,
	datab => \U5|Qs.s20~2_combout\,
	datac => \U5|WideOr27~0_combout\,
	datad => \U5|WideOr25~1_combout\,
	combout => \U5|WideOr27~1_combout\);

-- Location: LCCOMB_X49_Y50_N14
\U5|WideOr25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|WideOr25~2_combout\ = (!\U5|Qs.s1~2_combout\ & (!\U5|Qs.s17~2_combout\ & (!\U5|Qs.s3~2_combout\ & !\U5|Qs.s9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s1~2_combout\,
	datab => \U5|Qs.s17~2_combout\,
	datac => \U5|Qs.s3~2_combout\,
	datad => \U5|Qs.s9~2_combout\,
	combout => \U5|WideOr25~2_combout\);

-- Location: LCCOMB_X52_Y53_N16
\U5|WideOr25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|WideOr25~3_combout\ = (!\U5|Qs.s11~2_combout\ & (!\U5|Qs.s19~2_combout\ & (\U5|WideOr25~2_combout\ & \U5|WideOr25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Qs.s11~2_combout\,
	datab => \U5|Qs.s19~2_combout\,
	datac => \U5|WideOr25~2_combout\,
	datad => \U5|WideOr25~1_combout\,
	combout => \U5|WideOr25~3_combout\);

-- Location: LCCOMB_X51_Y50_N26
\L~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \L~1_combout\ = (\L~0_combout\ & (!\U5|WideOr26~2_combout\ & (!\U5|WideOr27~1_combout\ & !\U5|WideOr25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L~0_combout\,
	datab => \U5|WideOr26~2_combout\,
	datac => \U5|WideOr27~1_combout\,
	datad => \U5|WideOr25~3_combout\,
	combout => \L~1_combout\);

-- Location: LCCOMB_X51_Y50_N4
\L~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \L~4_combout\ = (!\U3|WideOr62~combout\ & (!\U3|WideOr63~combout\ & (\L~1_combout\ & !\O~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|WideOr62~combout\,
	datab => \U3|WideOr63~combout\,
	datac => \L~1_combout\,
	datad => \O~0_combout\,
	combout => \L~4_combout\);

-- Location: LCCOMB_X51_Y50_N14
\D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D~0_combout\ = (!\L~4_combout\ & ((!\N~1_combout\) # (!\K~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \K~input_o\,
	datac => \L~4_combout\,
	datad => \N~1_combout\,
	combout => \D~0_combout\);

-- Location: FF_X49_Y48_N19
\U3|Qs.s42~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s42~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s42~_emulated_q\);

-- Location: LCCOMB_X49_Y48_N0
\U3|Qs.s42~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s42~2_combout\ = (\RS~input_o\ & (\U3|Qs.s42~1_combout\ $ ((\U3|Qs.s42~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s42~1_combout\,
	datab => \U3|Qs.s42~_emulated_q\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~154_combout\,
	combout => \U3|Qs.s42~2_combout\);

-- Location: LCCOMB_X49_Y48_N8
\U3|Qs.s41~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s41~3_combout\ = \U3|Qs.s41~1_combout\ $ (\U3|Qs.s42~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s41~1_combout\,
	datac => \U3|Qs.s42~2_combout\,
	combout => \U3|Qs.s41~3_combout\);

-- Location: FF_X49_Y48_N9
\U3|Qs.s41~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s41~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s41~_emulated_q\);

-- Location: LCCOMB_X49_Y48_N10
\U3|Qs.s41~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s41~2_combout\ = (\RS~input_o\ & (\U3|Qs.s41~1_combout\ $ (((\U3|Qs.s41~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s41~1_combout\,
	datac => \U3|Ram0~167_combout\,
	datad => \U3|Qs.s41~_emulated_q\,
	combout => \U3|Qs.s41~2_combout\);

-- Location: LCCOMB_X50_Y49_N2
\U3|Qs.s40~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s40~3_combout\ = \U3|Qs.s40~1_combout\ $ (\U3|Qs.s41~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s40~1_combout\,
	datac => \U3|Qs.s41~2_combout\,
	combout => \U3|Qs.s40~3_combout\);

-- Location: FF_X50_Y49_N3
\U3|Qs.s40~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s40~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s40~_emulated_q\);

-- Location: LCCOMB_X50_Y49_N28
\U3|Qs.s40~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s40~2_combout\ = (\RS~input_o\ & (\U3|Qs.s40~1_combout\ $ (((\U3|Qs.s40~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s40~1_combout\,
	datab => \RS~input_o\,
	datac => \U3|Ram0~140_combout\,
	datad => \U3|Qs.s40~_emulated_q\,
	combout => \U3|Qs.s40~2_combout\);

-- Location: LCCOMB_X52_Y49_N30
\U3|Qs.s39~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s39~3_combout\ = \U3|Qs.s39~1_combout\ $ (\U3|Qs.s40~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s39~1_combout\,
	datad => \U3|Qs.s40~2_combout\,
	combout => \U3|Qs.s39~3_combout\);

-- Location: FF_X52_Y49_N31
\U3|Qs.s39~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s39~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s39~_emulated_q\);

-- Location: LCCOMB_X52_Y49_N0
\U3|Qs.s39~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s39~2_combout\ = (\RS~input_o\ & (\U3|Qs.s39~1_combout\ $ ((\U3|Qs.s39~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s39~1_combout\,
	datab => \RS~input_o\,
	datac => \U3|Qs.s39~_emulated_q\,
	datad => \U3|Ram0~130_combout\,
	combout => \U3|Qs.s39~2_combout\);

-- Location: LCCOMB_X50_Y52_N26
\U3|Qs.s38~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s38~3_combout\ = \U3|Qs.s39~2_combout\ $ (\U3|Qs.s38~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s39~2_combout\,
	datac => \U3|Qs.s38~1_combout\,
	combout => \U3|Qs.s38~3_combout\);

-- Location: FF_X50_Y52_N27
\U3|Qs.s38~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s38~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s38~_emulated_q\);

-- Location: LCCOMB_X50_Y52_N8
\U3|Qs.s38~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s38~2_combout\ = (\RS~input_o\ & (\U3|Qs.s38~1_combout\ $ ((\U3|Qs.s38~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s38~1_combout\,
	datac => \U3|Qs.s38~_emulated_q\,
	datad => \U3|Ram0~150_combout\,
	combout => \U3|Qs.s38~2_combout\);

-- Location: LCCOMB_X50_Y49_N26
\U3|Qs.s37~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s37~3_combout\ = \U3|Qs.s38~2_combout\ $ (\U3|Qs.s37~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s38~2_combout\,
	datad => \U3|Qs.s37~1_combout\,
	combout => \U3|Qs.s37~3_combout\);

-- Location: FF_X51_Y49_N9
\U3|Qs.s37~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U3|Qs.s37~3_combout\,
	clrn => \RS~input_o\,
	sload => VCC,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s37~_emulated_q\);

-- Location: LCCOMB_X51_Y49_N8
\U3|Qs.s37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s37~2_combout\ = (\RS~input_o\ & (\U3|Qs.s37~1_combout\ $ ((\U3|Qs.s37~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s37~1_combout\,
	datab => \RS~input_o\,
	datac => \U3|Qs.s37~_emulated_q\,
	datad => \U3|Ram0~126_combout\,
	combout => \U3|Qs.s37~2_combout\);

-- Location: LCCOMB_X50_Y52_N10
\U3|Qs.s36~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s36~3_combout\ = \U3|Qs.s37~2_combout\ $ (\U3|Qs.s36~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s37~2_combout\,
	datac => \U3|Qs.s36~1_combout\,
	combout => \U3|Qs.s36~3_combout\);

-- Location: FF_X50_Y52_N11
\U3|Qs.s36~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s36~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s36~_emulated_q\);

-- Location: LCCOMB_X50_Y52_N12
\U3|Qs.s36~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s36~2_combout\ = (\RS~input_o\ & (\U3|Qs.s36~1_combout\ $ (((\U3|Qs.s36~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s36~1_combout\,
	datac => \U3|Ram0~136_combout\,
	datad => \U3|Qs.s36~_emulated_q\,
	combout => \U3|Qs.s36~2_combout\);

-- Location: LCCOMB_X51_Y49_N6
\U3|Qs.s35~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s35~3_combout\ = \U3|Qs.s35~1_combout\ $ (\U3|Qs.s36~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s35~1_combout\,
	datac => \U3|Qs.s36~2_combout\,
	combout => \U3|Qs.s35~3_combout\);

-- Location: FF_X51_Y49_N7
\U3|Qs.s35~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s35~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s35~_emulated_q\);

-- Location: LCCOMB_X51_Y49_N28
\U3|Qs.s35~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s35~2_combout\ = (\RS~input_o\ & (\U3|Qs.s35~1_combout\ $ ((\U3|Qs.s35~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s35~1_combout\,
	datab => \RS~input_o\,
	datac => \U3|Qs.s35~_emulated_q\,
	datad => \U3|Ram0~183_combout\,
	combout => \U3|Qs.s35~2_combout\);

-- Location: LCCOMB_X51_Y49_N24
\U3|Qs.s34~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s34~3_combout\ = \U3|Qs.s35~2_combout\ $ (\U3|Qs.s34~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s35~2_combout\,
	datab => \U3|Qs.s34~1_combout\,
	combout => \U3|Qs.s34~3_combout\);

-- Location: FF_X51_Y49_N25
\U3|Qs.s34~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s34~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s34~_emulated_q\);

-- Location: LCCOMB_X51_Y49_N22
\U3|Qs.s34~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s34~2_combout\ = (\RS~input_o\ & (\U3|Qs.s34~1_combout\ $ ((\U3|Qs.s34~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s34~1_combout\,
	datab => \U3|Qs.s34~_emulated_q\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~159_combout\,
	combout => \U3|Qs.s34~2_combout\);

-- Location: LCCOMB_X51_Y49_N14
\U3|Qs.s33~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s33~3_combout\ = \U3|Qs.s33~1_combout\ $ (\U3|Qs.s34~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s33~1_combout\,
	datac => \U3|Qs.s34~2_combout\,
	combout => \U3|Qs.s33~3_combout\);

-- Location: FF_X51_Y49_N15
\U3|Qs.s33~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s33~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s33~_emulated_q\);

-- Location: LCCOMB_X51_Y49_N4
\U3|Qs.s33~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s33~2_combout\ = (\RS~input_o\ & (\U3|Qs.s33~1_combout\ $ ((\U3|Qs.s33~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s33~1_combout\,
	datac => \U3|Qs.s33~_emulated_q\,
	datad => \U3|Ram0~173_combout\,
	combout => \U3|Qs.s33~2_combout\);

-- Location: LCCOMB_X51_Y47_N4
\U3|Qs.s32~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s32~3_combout\ = \U3|Qs.s33~2_combout\ $ (\U3|Qs.s32~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s33~2_combout\,
	datab => \U3|Qs.s32~1_combout\,
	combout => \U3|Qs.s32~3_combout\);

-- Location: FF_X51_Y47_N5
\U3|Qs.s32~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s32~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s32~_emulated_q\);

-- Location: LCCOMB_X51_Y47_N30
\U3|Qs.s32~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s32~2_combout\ = (\RS~input_o\ & (\U3|Qs.s32~1_combout\ $ ((\U3|Qs.s32~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s32~1_combout\,
	datab => \RS~input_o\,
	datac => \U3|Qs.s32~_emulated_q\,
	datad => \U3|Ram0~146_combout\,
	combout => \U3|Qs.s32~2_combout\);

-- Location: LCCOMB_X50_Y51_N20
\U3|Qs.s31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s31~3_combout\ = \U3|Qs.s32~2_combout\ $ (\U3|Qs.s31~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s32~2_combout\,
	datab => \U3|Qs.s31~1_combout\,
	combout => \U3|Qs.s31~3_combout\);

-- Location: FF_X50_Y51_N21
\U3|Qs.s31~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s31~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s31~_emulated_q\);

-- Location: LCCOMB_X50_Y51_N30
\U3|Qs.s31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s31~2_combout\ = (\RS~input_o\ & ((\U3|Qs.s31~1_combout\ $ (\U3|Qs.s31~_emulated_q\)))) # (!\RS~input_o\ & (\U3|Ram0~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Ram0~128_combout\,
	datac => \U3|Qs.s31~1_combout\,
	datad => \U3|Qs.s31~_emulated_q\,
	combout => \U3|Qs.s31~2_combout\);

-- Location: LCCOMB_X46_Y50_N26
\U3|Qs.s30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s30~3_combout\ = \U3|Qs.s31~2_combout\ $ (\U3|Qs.s30~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s31~2_combout\,
	datad => \U3|Qs.s30~1_combout\,
	combout => \U3|Qs.s30~3_combout\);

-- Location: FF_X46_Y50_N27
\U3|Qs.s30~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s30~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s30~_emulated_q\);

-- Location: LCCOMB_X46_Y50_N28
\U3|Qs.s30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s30~2_combout\ = (\RS~input_o\ & (\U3|Qs.s30~1_combout\ $ ((\U3|Qs.s30~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s30~1_combout\,
	datab => \RS~input_o\,
	datac => \U3|Qs.s30~_emulated_q\,
	datad => \U3|Ram0~124_combout\,
	combout => \U3|Qs.s30~2_combout\);

-- Location: LCCOMB_X46_Y50_N18
\U3|Qs.s29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s29~3_combout\ = \U3|Qs.s29~1_combout\ $ (\U3|Qs.s30~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s29~1_combout\,
	datad => \U3|Qs.s30~2_combout\,
	combout => \U3|Qs.s29~3_combout\);

-- Location: FF_X46_Y50_N19
\U3|Qs.s29~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s29~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s29~_emulated_q\);

-- Location: LCCOMB_X46_Y50_N0
\U3|Qs.s29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s29~2_combout\ = (\RS~input_o\ & ((\U3|Qs.s29~1_combout\ $ (\U3|Qs.s29~_emulated_q\)))) # (!\RS~input_o\ & (\U3|Ram0~172_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Ram0~172_combout\,
	datab => \U3|Qs.s29~1_combout\,
	datac => \RS~input_o\,
	datad => \U3|Qs.s29~_emulated_q\,
	combout => \U3|Qs.s29~2_combout\);

-- Location: LCCOMB_X46_Y50_N10
\U3|Qs.s28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s28~3_combout\ = \U3|Qs.s29~2_combout\ $ (\U3|Qs.s28~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s29~2_combout\,
	datac => \U3|Qs.s28~1_combout\,
	combout => \U3|Qs.s28~3_combout\);

-- Location: FF_X46_Y50_N11
\U3|Qs.s28~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s28~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s28~_emulated_q\);

-- Location: LCCOMB_X46_Y50_N12
\U3|Qs.s28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s28~2_combout\ = (\RS~input_o\ & (\U3|Qs.s28~1_combout\ $ (((\U3|Qs.s28~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s28~1_combout\,
	datab => \U3|Ram0~143_combout\,
	datac => \RS~input_o\,
	datad => \U3|Qs.s28~_emulated_q\,
	combout => \U3|Qs.s28~2_combout\);

-- Location: LCCOMB_X49_Y52_N4
\U3|Qs.s27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s27~3_combout\ = \U3|Qs.s28~2_combout\ $ (\U3|Qs.s27~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s28~2_combout\,
	datad => \U3|Qs.s27~1_combout\,
	combout => \U3|Qs.s27~3_combout\);

-- Location: FF_X49_Y52_N5
\U3|Qs.s27~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s27~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s27~_emulated_q\);

-- Location: LCCOMB_X49_Y52_N10
\U3|Qs.s27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s27~2_combout\ = (\RS~input_o\ & (\U3|Qs.s27~1_combout\ $ ((\U3|Qs.s27~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s27~1_combout\,
	datab => \RS~input_o\,
	datac => \U3|Qs.s27~_emulated_q\,
	datad => \U3|Ram0~180_combout\,
	combout => \U3|Qs.s27~2_combout\);

-- Location: LCCOMB_X49_Y52_N8
\U3|Qs.s26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s26~3_combout\ = \U3|Qs.s26~1_combout\ $ (\U3|Qs.s27~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s26~1_combout\,
	datac => \U3|Qs.s27~2_combout\,
	combout => \U3|Qs.s26~3_combout\);

-- Location: FF_X49_Y52_N9
\U3|Qs.s26~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s26~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s26~_emulated_q\);

-- Location: LCCOMB_X49_Y52_N14
\U3|Qs.s26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s26~2_combout\ = (\RS~input_o\ & (\U3|Qs.s26~1_combout\ $ ((\U3|Qs.s26~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s26~1_combout\,
	datac => \U3|Qs.s26~_emulated_q\,
	datad => \U3|Ram0~153_combout\,
	combout => \U3|Qs.s26~2_combout\);

-- Location: LCCOMB_X49_Y52_N28
\U3|Qs.s25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s25~3_combout\ = \U3|Qs.s26~2_combout\ $ (\U3|Qs.s25~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s26~2_combout\,
	datad => \U3|Qs.s25~1_combout\,
	combout => \U3|Qs.s25~3_combout\);

-- Location: FF_X49_Y52_N29
\U3|Qs.s25~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s25~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s25~_emulated_q\);

-- Location: LCCOMB_X49_Y52_N26
\U3|Qs.s25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s25~2_combout\ = (\RS~input_o\ & (\U3|Qs.s25~1_combout\ $ ((\U3|Qs.s25~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s25~1_combout\,
	datab => \U3|Qs.s25~_emulated_q\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~166_combout\,
	combout => \U3|Qs.s25~2_combout\);

-- Location: LCCOMB_X52_Y51_N10
\U3|Qs.s24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s24~3_combout\ = \U3|Qs.s25~2_combout\ $ (\U3|Qs.s24~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Qs.s25~2_combout\,
	datad => \U3|Qs.s24~1_combout\,
	combout => \U3|Qs.s24~3_combout\);

-- Location: FF_X51_Y51_N11
\U3|Qs.s24~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U3|Qs.s24~3_combout\,
	clrn => \RS~input_o\,
	sload => VCC,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s24~_emulated_q\);

-- Location: LCCOMB_X51_Y51_N10
\U3|Qs.s24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s24~2_combout\ = (\RS~input_o\ & (\U3|Qs.s24~1_combout\ $ ((\U3|Qs.s24~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s24~1_combout\,
	datab => \RS~input_o\,
	datac => \U3|Qs.s24~_emulated_q\,
	datad => \U3|Ram0~139_combout\,
	combout => \U3|Qs.s24~2_combout\);

-- Location: LCCOMB_X51_Y48_N26
\U3|Qs.s23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s23~3_combout\ = \U3|Qs.s24~2_combout\ $ (\U3|Qs.s23~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s24~2_combout\,
	datad => \U3|Qs.s23~1_combout\,
	combout => \U3|Qs.s23~3_combout\);

-- Location: FF_X51_Y48_N27
\U3|Qs.s23~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s23~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s23~_emulated_q\);

-- Location: LCCOMB_X51_Y48_N0
\U3|Qs.s23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s23~2_combout\ = (\RS~input_o\ & (\U3|Qs.s23~1_combout\ $ ((\U3|Qs.s23~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~179_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s23~1_combout\,
	datac => \U3|Qs.s23~_emulated_q\,
	datad => \U3|Ram0~179_combout\,
	combout => \U3|Qs.s23~2_combout\);

-- Location: LCCOMB_X51_Y48_N10
\U3|Qs.s22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s22~3_combout\ = \U3|Qs.s22~1_combout\ $ (\U3|Qs.s23~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s22~1_combout\,
	datab => \U3|Qs.s23~2_combout\,
	combout => \U3|Qs.s22~3_combout\);

-- Location: FF_X51_Y48_N11
\U3|Qs.s22~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s22~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s22~_emulated_q\);

-- Location: LCCOMB_X51_Y48_N20
\U3|Qs.s22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s22~2_combout\ = (\RS~input_o\ & (\U3|Qs.s22~1_combout\ $ (((\U3|Qs.s22~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s22~1_combout\,
	datac => \U3|Ram0~149_combout\,
	datad => \U3|Qs.s22~_emulated_q\,
	combout => \U3|Qs.s22~2_combout\);

-- Location: LCCOMB_X50_Y48_N2
\U3|Qs.s21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s21~3_combout\ = \U3|Qs.s21~1_combout\ $ (\U3|Qs.s22~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s21~1_combout\,
	datab => \U3|Qs.s22~2_combout\,
	combout => \U3|Qs.s21~3_combout\);

-- Location: FF_X50_Y48_N3
\U3|Qs.s21~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s21~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s21~_emulated_q\);

-- Location: LCCOMB_X50_Y48_N4
\U3|Qs.s21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s21~2_combout\ = (\RS~input_o\ & (\U3|Qs.s21~1_combout\ $ (((\U3|Qs.s21~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s21~1_combout\,
	datab => \U3|Ram0~163_combout\,
	datac => \RS~input_o\,
	datad => \U3|Qs.s21~_emulated_q\,
	combout => \U3|Qs.s21~2_combout\);

-- Location: LCCOMB_X50_Y48_N18
\U3|Qs.s20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s20~3_combout\ = \U3|Qs.s20~1_combout\ $ (\U3|Qs.s21~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s20~1_combout\,
	datac => \U3|Qs.s21~2_combout\,
	combout => \U3|Qs.s20~3_combout\);

-- Location: FF_X50_Y48_N19
\U3|Qs.s20~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s20~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s20~_emulated_q\);

-- Location: LCCOMB_X50_Y48_N8
\U3|Qs.s20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s20~2_combout\ = (\RS~input_o\ & (\U3|Qs.s20~1_combout\ $ (((\U3|Qs.s20~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s20~1_combout\,
	datab => \RS~input_o\,
	datac => \U3|Ram0~135_combout\,
	datad => \U3|Qs.s20~_emulated_q\,
	combout => \U3|Qs.s20~2_combout\);

-- Location: LCCOMB_X51_Y51_N8
\U3|Qs.s19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s19~3_combout\ = \U3|Qs.s20~2_combout\ $ (\U3|Qs.s19~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s20~2_combout\,
	datad => \U3|Qs.s19~1_combout\,
	combout => \U3|Qs.s19~3_combout\);

-- Location: FF_X51_Y51_N9
\U3|Qs.s19~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s19~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s19~_emulated_q\);

-- Location: LCCOMB_X51_Y51_N6
\U3|Qs.s19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s19~2_combout\ = (\RS~input_o\ & (\U3|Qs.s19~1_combout\ $ ((\U3|Qs.s19~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s19~1_combout\,
	datab => \RS~input_o\,
	datac => \U3|Qs.s19~_emulated_q\,
	datad => \U3|Ram0~185_combout\,
	combout => \U3|Qs.s19~2_combout\);

-- Location: LCCOMB_X50_Y49_N14
\U3|Ram0~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~158_combout\ = (!\U2|WideOr64~combout\ & (\U3|Ram0~119_combout\ & \U2|WideOr65~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|WideOr64~combout\,
	datac => \U3|Ram0~119_combout\,
	datad => \U2|WideOr65~combout\,
	combout => \U3|Ram0~158_combout\);

-- Location: LCCOMB_X50_Y49_N24
\U3|Qs.s18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s18~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s18~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~158_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Ram0~158_combout\,
	datac => \RS~input_o\,
	datad => \U3|Qs.s18~1_combout\,
	combout => \U3|Qs.s18~1_combout\);

-- Location: LCCOMB_X50_Y49_N30
\U3|Qs.s18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s18~3_combout\ = \U3|Qs.s19~2_combout\ $ (\U3|Qs.s18~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s19~2_combout\,
	datac => \U3|Qs.s18~1_combout\,
	combout => \U3|Qs.s18~3_combout\);

-- Location: FF_X50_Y49_N31
\U3|Qs.s18~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s18~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s18~_emulated_q\);

-- Location: LCCOMB_X50_Y49_N20
\U3|Qs.s18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s18~2_combout\ = (\RS~input_o\ & (\U3|Qs.s18~_emulated_q\ $ (((\U3|Qs.s18~1_combout\))))) # (!\RS~input_o\ & (((\U3|Ram0~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s18~_emulated_q\,
	datab => \RS~input_o\,
	datac => \U3|Ram0~158_combout\,
	datad => \U3|Qs.s18~1_combout\,
	combout => \U3|Qs.s18~2_combout\);

-- Location: LCCOMB_X50_Y49_N6
\U3|Qs.s17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s17~3_combout\ = \U3|Qs.s18~2_combout\ $ (\U3|Qs.s17~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Qs.s18~2_combout\,
	datad => \U3|Qs.s17~1_combout\,
	combout => \U3|Qs.s17~3_combout\);

-- Location: FF_X50_Y49_N7
\U3|Qs.s17~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s17~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s17~_emulated_q\);

-- Location: LCCOMB_X50_Y49_N0
\U3|Qs.s17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s17~2_combout\ = (\RS~input_o\ & (\U3|Qs.s17~1_combout\ $ (((\U3|Qs.s17~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s17~1_combout\,
	datac => \U3|Ram0~171_combout\,
	datad => \U3|Qs.s17~_emulated_q\,
	combout => \U3|Qs.s17~2_combout\);

-- Location: LCCOMB_X51_Y51_N12
\U3|Qs.s16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s16~3_combout\ = \U3|Qs.s17~2_combout\ $ (\U3|Qs.s16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s17~2_combout\,
	datac => \U3|Qs.s16~1_combout\,
	combout => \U3|Qs.s16~3_combout\);

-- Location: FF_X51_Y51_N13
\U3|Qs.s16~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s16~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s16~_emulated_q\);

-- Location: LCCOMB_X51_Y51_N18
\U3|Qs.s16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s16~2_combout\ = (\RS~input_o\ & (\U3|Qs.s16~1_combout\ $ (((\U3|Qs.s16~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s16~1_combout\,
	datac => \U3|Ram0~145_combout\,
	datad => \U3|Qs.s16~_emulated_q\,
	combout => \U3|Qs.s16~2_combout\);

-- Location: LCCOMB_X47_Y50_N20
\U3|Qs.s15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s15~3_combout\ = \U3|Qs.s16~2_combout\ $ (\U3|Qs.s15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Qs.s16~2_combout\,
	datad => \U3|Qs.s15~1_combout\,
	combout => \U3|Qs.s15~3_combout\);

-- Location: FF_X47_Y50_N21
\U3|Qs.s15~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s15~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s15~_emulated_q\);

-- Location: LCCOMB_X47_Y50_N30
\U3|Qs.s15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s15~2_combout\ = (\RS~input_o\ & (\U3|Qs.s15~1_combout\ $ (((\U3|Qs.s15~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s15~1_combout\,
	datab => \U3|Ram0~177_combout\,
	datac => \RS~input_o\,
	datad => \U3|Qs.s15~_emulated_q\,
	combout => \U3|Qs.s15~2_combout\);

-- Location: LCCOMB_X47_Y50_N28
\U3|Qs.s14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s14~3_combout\ = \U3|Qs.s15~2_combout\ $ (\U3|Qs.s14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Qs.s15~2_combout\,
	datad => \U3|Qs.s14~1_combout\,
	combout => \U3|Qs.s14~3_combout\);

-- Location: FF_X47_Y50_N29
\U3|Qs.s14~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s14~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s14~_emulated_q\);

-- Location: LCCOMB_X47_Y50_N2
\U3|Qs.s14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s14~2_combout\ = (\RS~input_o\ & (\U3|Qs.s14~1_combout\ $ (((\U3|Qs.s14~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s14~1_combout\,
	datac => \U3|Ram0~157_combout\,
	datad => \U3|Qs.s14~_emulated_q\,
	combout => \U3|Qs.s14~2_combout\);

-- Location: LCCOMB_X47_Y50_N12
\U3|Qs.s13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s13~3_combout\ = \U3|Qs.s13~1_combout\ $ (\U3|Qs.s14~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Qs.s13~1_combout\,
	datad => \U3|Qs.s14~2_combout\,
	combout => \U3|Qs.s13~3_combout\);

-- Location: FF_X47_Y50_N13
\U3|Qs.s13~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s13~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s13~_emulated_q\);

-- Location: LCCOMB_X47_Y50_N10
\U3|Qs.s13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s13~2_combout\ = (\RS~input_o\ & (\U3|Qs.s13~1_combout\ $ (((\U3|Qs.s13~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s13~1_combout\,
	datac => \U3|Ram0~170_combout\,
	datad => \U3|Qs.s13~_emulated_q\,
	combout => \U3|Qs.s13~2_combout\);

-- Location: LCCOMB_X47_Y50_N24
\U3|Qs.s12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s12~3_combout\ = \U3|Qs.s12~1_combout\ $ (\U3|Qs.s13~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s12~1_combout\,
	datab => \U3|Qs.s13~2_combout\,
	combout => \U3|Qs.s12~3_combout\);

-- Location: FF_X47_Y50_N25
\U3|Qs.s12~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s12~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s12~_emulated_q\);

-- Location: LCCOMB_X47_Y50_N26
\U3|Qs.s12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s12~2_combout\ = (\RS~input_o\ & (\U3|Qs.s12~1_combout\ $ ((\U3|Qs.s12~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s12~1_combout\,
	datab => \U3|Qs.s12~_emulated_q\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~142_combout\,
	combout => \U3|Qs.s12~2_combout\);

-- Location: LCCOMB_X52_Y49_N26
\U3|Qs.s11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s11~3_combout\ = \U3|Qs.s11~1_combout\ $ (\U3|Qs.s12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s11~1_combout\,
	datad => \U3|Qs.s12~2_combout\,
	combout => \U3|Qs.s11~3_combout\);

-- Location: FF_X52_Y49_N27
\U3|Qs.s11~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s11~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s11~_emulated_q\);

-- Location: LCCOMB_X52_Y49_N24
\U3|Qs.s11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s11~2_combout\ = (\RS~input_o\ & (\U3|Qs.s11~1_combout\ $ ((\U3|Qs.s11~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s11~1_combout\,
	datab => \RS~input_o\,
	datac => \U3|Qs.s11~_emulated_q\,
	datad => \U3|Ram0~133_combout\,
	combout => \U3|Qs.s11~2_combout\);

-- Location: LCCOMB_X49_Y52_N22
\U3|Qs.s10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s10~3_combout\ = \U3|Qs.s11~2_combout\ $ (\U3|Qs.s10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s11~2_combout\,
	datad => \U3|Qs.s10~1_combout\,
	combout => \U3|Qs.s10~3_combout\);

-- Location: FF_X50_Y53_N1
\U3|Qs.s10~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	asdata => \U3|Qs.s10~3_combout\,
	clrn => \RS~input_o\,
	sload => VCC,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s10~_emulated_q\);

-- Location: LCCOMB_X50_Y53_N0
\U3|Qs.s10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s10~2_combout\ = (\RS~input_o\ & (\U3|Qs.s10~1_combout\ $ ((\U3|Qs.s10~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s10~1_combout\,
	datab => \RS~input_o\,
	datac => \U3|Qs.s10~_emulated_q\,
	datad => \U3|Ram0~152_combout\,
	combout => \U3|Qs.s10~2_combout\);

-- Location: LCCOMB_X50_Y52_N6
\U3|Qs.s9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s9~3_combout\ = \U3|Qs.s9~1_combout\ $ (\U3|Qs.s10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s9~1_combout\,
	datad => \U3|Qs.s10~2_combout\,
	combout => \U3|Qs.s9~3_combout\);

-- Location: FF_X50_Y52_N7
\U3|Qs.s9~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s9~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s9~_emulated_q\);

-- Location: LCCOMB_X49_Y48_N6
\U3|Qs.s9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s9~2_combout\ = (\RS~input_o\ & (\U3|Qs.s9~1_combout\ $ (((\U3|Qs.s9~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s9~1_combout\,
	datac => \U3|Ram0~165_combout\,
	datad => \U3|Qs.s9~_emulated_q\,
	combout => \U3|Qs.s9~2_combout\);

-- Location: LCCOMB_X50_Y52_N2
\U3|Qs.s8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s8~3_combout\ = \U3|Qs.s8~1_combout\ $ (\U3|Qs.s9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s8~1_combout\,
	datac => \U3|Qs.s9~2_combout\,
	combout => \U3|Qs.s8~3_combout\);

-- Location: FF_X50_Y52_N3
\U3|Qs.s8~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s8~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s8~_emulated_q\);

-- Location: LCCOMB_X50_Y52_N20
\U3|Qs.s8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s8~2_combout\ = (\RS~input_o\ & (\U3|Qs.s8~_emulated_q\ $ ((\U3|Qs.s8~1_combout\)))) # (!\RS~input_o\ & (((\U3|Ram0~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s8~_emulated_q\,
	datac => \U3|Qs.s8~1_combout\,
	datad => \U3|Ram0~138_combout\,
	combout => \U3|Qs.s8~2_combout\);

-- Location: LCCOMB_X50_Y52_N24
\U3|Qs.s7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s7~3_combout\ = \U3|Qs.s7~1_combout\ $ (\U3|Qs.s8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s7~1_combout\,
	datad => \U3|Qs.s8~2_combout\,
	combout => \U3|Qs.s7~3_combout\);

-- Location: FF_X50_Y52_N25
\U3|Qs.s7~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s7~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s7~_emulated_q\);

-- Location: LCCOMB_X49_Y51_N24
\U3|Qs.s7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s7~2_combout\ = (\RS~input_o\ & (\U3|Qs.s7~1_combout\ $ (((\U3|Qs.s7~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s7~1_combout\,
	datac => \U3|Ram0~178_combout\,
	datad => \U3|Qs.s7~_emulated_q\,
	combout => \U3|Qs.s7~2_combout\);

-- Location: LCCOMB_X49_Y51_N20
\U3|Qs.s6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s6~3_combout\ = \U3|Qs.s6~1_combout\ $ (\U3|Qs.s7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s6~1_combout\,
	datac => \U3|Qs.s7~2_combout\,
	combout => \U3|Qs.s6~3_combout\);

-- Location: FF_X49_Y51_N21
\U3|Qs.s6~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s6~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s6~_emulated_q\);

-- Location: LCCOMB_X49_Y51_N30
\U3|Qs.s6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s6~2_combout\ = (\RS~input_o\ & (\U3|Qs.s6~1_combout\ $ ((\U3|Qs.s6~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s6~1_combout\,
	datab => \U3|Qs.s6~_emulated_q\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~148_combout\,
	combout => \U3|Qs.s6~2_combout\);

-- Location: LCCOMB_X49_Y51_N12
\U3|Qs.s5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s5~3_combout\ = \U3|Qs.s6~2_combout\ $ (\U3|Qs.s5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s6~2_combout\,
	datad => \U3|Qs.s5~1_combout\,
	combout => \U3|Qs.s5~3_combout\);

-- Location: FF_X49_Y51_N13
\U3|Qs.s5~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s5~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s5~_emulated_q\);

-- Location: LCCOMB_X49_Y51_N18
\U3|Qs.s5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s5~2_combout\ = (\RS~input_o\ & (\U3|Qs.s5~1_combout\ $ (((\U3|Qs.s5~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s5~1_combout\,
	datac => \U3|Ram0~162_combout\,
	datad => \U3|Qs.s5~_emulated_q\,
	combout => \U3|Qs.s5~2_combout\);

-- Location: LCCOMB_X50_Y48_N30
\U3|Qs.s4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s4~3_combout\ = \U3|Qs.s5~2_combout\ $ (\U3|Qs.s4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s5~2_combout\,
	datac => \U3|Qs.s4~1_combout\,
	combout => \U3|Qs.s4~3_combout\);

-- Location: FF_X50_Y48_N31
\U3|Qs.s4~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s4~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s4~_emulated_q\);

-- Location: LCCOMB_X50_Y48_N28
\U3|Qs.s4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s4~2_combout\ = (\RS~input_o\ & (\U3|Qs.s4~1_combout\ $ ((\U3|Qs.s4~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s4~1_combout\,
	datac => \U3|Qs.s4~_emulated_q\,
	datad => \U3|Ram0~134_combout\,
	combout => \U3|Qs.s4~2_combout\);

-- Location: LCCOMB_X50_Y48_N6
\U3|Qs.s3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s3~3_combout\ = \U3|Qs.s3~1_combout\ $ (\U3|Qs.s4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s3~1_combout\,
	datac => \U3|Qs.s4~2_combout\,
	combout => \U3|Qs.s3~3_combout\);

-- Location: FF_X50_Y48_N7
\U3|Qs.s3~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s3~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s3~_emulated_q\);

-- Location: LCCOMB_X51_Y47_N14
\U3|Qs.s3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s3~2_combout\ = (\RS~input_o\ & (\U3|Qs.s3~_emulated_q\ $ ((\U3|Qs.s3~1_combout\)))) # (!\RS~input_o\ & (((\U3|Ram0~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s3~_emulated_q\,
	datab => \RS~input_o\,
	datac => \U3|Qs.s3~1_combout\,
	datad => \U3|Ram0~186_combout\,
	combout => \U3|Qs.s3~2_combout\);

-- Location: LCCOMB_X51_Y47_N16
\U3|Qs.s2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s2~3_combout\ = \U3|Qs.s2~1_combout\ $ (\U3|Qs.s3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Qs.s2~1_combout\,
	datad => \U3|Qs.s3~2_combout\,
	combout => \U3|Qs.s2~3_combout\);

-- Location: FF_X51_Y47_N17
\U3|Qs.s2~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s2~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s2~_emulated_q\);

-- Location: LCCOMB_X51_Y47_N18
\U3|Qs.s2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s2~2_combout\ = (\RS~input_o\ & (\U3|Qs.s2~1_combout\ $ (((\U3|Qs.s2~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s2~1_combout\,
	datab => \RS~input_o\,
	datac => \U3|Ram0~156_combout\,
	datad => \U3|Qs.s2~_emulated_q\,
	combout => \U3|Qs.s2~2_combout\);

-- Location: LCCOMB_X51_Y47_N20
\U3|Ram0~169\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~169_combout\ = (\U2|WideOr64~combout\ & (!\U2|WideOr65~combout\ & \U3|Ram0~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr64~combout\,
	datac => \U2|WideOr65~combout\,
	datad => \U3|Ram0~122_combout\,
	combout => \U3|Ram0~169_combout\);

-- Location: LCCOMB_X51_Y47_N8
\U3|Qs.s1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s1~1_combout\ = (\RS~input_o\ & (\U3|Qs.s1~1_combout\)) # (!\RS~input_o\ & ((\U3|Ram0~169_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RS~input_o\,
	datac => \U3|Qs.s1~1_combout\,
	datad => \U3|Ram0~169_combout\,
	combout => \U3|Qs.s1~1_combout\);

-- Location: LCCOMB_X51_Y47_N0
\U3|Qs.s1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s1~3_combout\ = \U3|Qs.s2~2_combout\ $ (\U3|Qs.s1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Qs.s2~2_combout\,
	datad => \U3|Qs.s1~1_combout\,
	combout => \U3|Qs.s1~3_combout\);

-- Location: FF_X51_Y47_N1
\U3|Qs.s1~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s1~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s1~_emulated_q\);

-- Location: LCCOMB_X51_Y47_N2
\U3|Qs.s1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s1~2_combout\ = (\RS~input_o\ & (\U3|Qs.s1~_emulated_q\ $ ((\U3|Qs.s1~1_combout\)))) # (!\RS~input_o\ & (((\U3|Ram0~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s1~_emulated_q\,
	datac => \U3|Qs.s1~1_combout\,
	datad => \U3|Ram0~169_combout\,
	combout => \U3|Qs.s1~2_combout\);

-- Location: LCCOMB_X51_Y48_N6
\U3|Qs.s0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s0~3_combout\ = \U3|Qs.s0~1_combout\ $ (\U3|Qs.s1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s0~1_combout\,
	datad => \U3|Qs.s1~2_combout\,
	combout => \U3|Qs.s0~3_combout\);

-- Location: FF_X51_Y48_N7
\U3|Qs.s0~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s0~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s0~_emulated_q\);

-- Location: LCCOMB_X51_Y48_N8
\U3|Qs.s0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s0~2_combout\ = (\RS~input_o\ & (\U3|Qs.s0~1_combout\ $ (((\U3|Qs.s0~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s0~1_combout\,
	datac => \U3|Ram0~115_combout\,
	datad => \U3|Qs.s0~_emulated_q\,
	combout => \U3|Qs.s0~2_combout\);

-- Location: LCCOMB_X51_Y48_N22
\U3|Qs.s59~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s59~3_combout\ = \U3|Qs.s59~1_combout\ $ (\U3|Qs.s0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s59~1_combout\,
	datad => \U3|Qs.s0~2_combout\,
	combout => \U3|Qs.s59~3_combout\);

-- Location: FF_X51_Y48_N23
\U3|Qs.s59~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s59~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s59~_emulated_q\);

-- Location: LCCOMB_X51_Y48_N28
\U3|Qs.s59~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s59~2_combout\ = (\RS~input_o\ & (\U3|Qs.s59~_emulated_q\ $ (((\U3|Qs.s59~1_combout\))))) # (!\RS~input_o\ & (((\U3|Ram0~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s59~_emulated_q\,
	datab => \RS~input_o\,
	datac => \U3|Ram0~182_combout\,
	datad => \U3|Qs.s59~1_combout\,
	combout => \U3|Qs.s59~2_combout\);

-- Location: LCCOMB_X47_Y51_N8
\U3|Qs.s58~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s58~3_combout\ = \U3|Qs.s58~1_combout\ $ (\U3|Qs.s59~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s58~1_combout\,
	datac => \U3|Qs.s59~2_combout\,
	combout => \U3|Qs.s58~3_combout\);

-- Location: FF_X47_Y51_N9
\U3|Qs.s58~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s58~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s58~_emulated_q\);

-- Location: LCCOMB_X47_Y51_N6
\U3|Qs.s58~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s58~2_combout\ = (\RS~input_o\ & (\U3|Qs.s58~1_combout\ $ ((\U3|Qs.s58~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s58~1_combout\,
	datac => \U3|Qs.s58~_emulated_q\,
	datad => \U3|Ram0~155_combout\,
	combout => \U3|Qs.s58~2_combout\);

-- Location: LCCOMB_X47_Y51_N20
\U3|Qs.s57~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s57~3_combout\ = \U3|Qs.s57~1_combout\ $ (\U3|Qs.s58~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s57~1_combout\,
	datab => \U3|Qs.s58~2_combout\,
	combout => \U3|Qs.s57~3_combout\);

-- Location: FF_X47_Y51_N21
\U3|Qs.s57~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s57~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s57~_emulated_q\);

-- Location: LCCOMB_X47_Y51_N2
\U3|Qs.s57~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s57~2_combout\ = (\RS~input_o\ & (\U3|Qs.s57~1_combout\ $ (((\U3|Qs.s57~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s57~1_combout\,
	datab => \RS~input_o\,
	datac => \U3|Ram0~168_combout\,
	datad => \U3|Qs.s57~_emulated_q\,
	combout => \U3|Qs.s57~2_combout\);

-- Location: LCCOMB_X47_Y51_N16
\U3|Qs.s56~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s56~3_combout\ = \U3|Qs.s57~2_combout\ $ (\U3|Qs.s56~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s57~2_combout\,
	datac => \U3|Qs.s56~1_combout\,
	combout => \U3|Qs.s56~3_combout\);

-- Location: FF_X47_Y51_N17
\U3|Qs.s56~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s56~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s56~_emulated_q\);

-- Location: LCCOMB_X47_Y51_N30
\U3|Qs.s56~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s56~2_combout\ = (\RS~input_o\ & (\U3|Qs.s56~1_combout\ $ (((\U3|Qs.s56~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s56~1_combout\,
	datac => \U3|Ram0~141_combout\,
	datad => \U3|Qs.s56~_emulated_q\,
	combout => \U3|Qs.s56~2_combout\);

-- Location: LCCOMB_X51_Y51_N24
\U3|Qs.s55~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s55~3_combout\ = \U3|Qs.s55~1_combout\ $ (\U3|Qs.s56~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s55~1_combout\,
	datab => \U3|Qs.s56~2_combout\,
	combout => \U3|Qs.s55~3_combout\);

-- Location: FF_X51_Y51_N25
\U3|Qs.s55~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s55~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s55~_emulated_q\);

-- Location: LCCOMB_X51_Y51_N14
\U3|Qs.s55~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s55~2_combout\ = (\RS~input_o\ & (\U3|Qs.s55~_emulated_q\ $ ((\U3|Qs.s55~1_combout\)))) # (!\RS~input_o\ & (((\U3|Ram0~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s55~_emulated_q\,
	datac => \U3|Qs.s55~1_combout\,
	datad => \U3|Ram0~131_combout\,
	combout => \U3|Qs.s55~2_combout\);

-- Location: LCCOMB_X49_Y53_N16
\U3|Qs.s54~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s54~3_combout\ = \U3|Qs.s55~2_combout\ $ (\U3|Qs.s54~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Qs.s55~2_combout\,
	datad => \U3|Qs.s54~1_combout\,
	combout => \U3|Qs.s54~3_combout\);

-- Location: FF_X49_Y53_N17
\U3|Qs.s54~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s54~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s54~_emulated_q\);

-- Location: LCCOMB_X49_Y53_N14
\U3|Qs.s54~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s54~2_combout\ = (\RS~input_o\ & (\U3|Qs.s54~1_combout\ $ (((\U3|Qs.s54~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s54~1_combout\,
	datab => \U3|Ram0~151_combout\,
	datac => \RS~input_o\,
	datad => \U3|Qs.s54~_emulated_q\,
	combout => \U3|Qs.s54~2_combout\);

-- Location: LCCOMB_X50_Y51_N28
\U3|Qs.s53~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s53~3_combout\ = \U3|Qs.s53~1_combout\ $ (\U3|Qs.s54~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s53~1_combout\,
	datab => \U3|Qs.s54~2_combout\,
	combout => \U3|Qs.s53~3_combout\);

-- Location: FF_X50_Y51_N29
\U3|Qs.s53~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s53~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s53~_emulated_q\);

-- Location: LCCOMB_X50_Y51_N14
\U3|Qs.s53~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s53~2_combout\ = (\RS~input_o\ & (\U3|Qs.s53~_emulated_q\ $ ((\U3|Qs.s53~1_combout\)))) # (!\RS~input_o\ & (((\U3|Ram0~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s53~_emulated_q\,
	datac => \U3|Qs.s53~1_combout\,
	datad => \U3|Ram0~164_combout\,
	combout => \U3|Qs.s53~2_combout\);

-- Location: LCCOMB_X49_Y53_N8
\U3|Qs.s52~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s52~3_combout\ = \U3|Qs.s53~2_combout\ $ (\U3|Qs.s52~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s53~2_combout\,
	datad => \U3|Qs.s52~1_combout\,
	combout => \U3|Qs.s52~3_combout\);

-- Location: FF_X49_Y53_N9
\U3|Qs.s52~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s52~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s52~_emulated_q\);

-- Location: LCCOMB_X49_Y53_N18
\U3|Qs.s52~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s52~2_combout\ = (\RS~input_o\ & (\U3|Qs.s52~1_combout\ $ ((\U3|Qs.s52~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s52~1_combout\,
	datac => \U3|Qs.s52~_emulated_q\,
	datad => \U3|Ram0~137_combout\,
	combout => \U3|Qs.s52~2_combout\);

-- Location: LCCOMB_X51_Y46_N18
\U3|Ram0~184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Ram0~184_combout\ = (!\U2|WideOr65~combout\ & (\U3|Ram0~121_combout\ & !\U2|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr65~combout\,
	datac => \U3|Ram0~121_combout\,
	datad => \U2|WideOr64~combout\,
	combout => \U3|Ram0~184_combout\);

-- Location: LCCOMB_X51_Y46_N22
\U3|Qs.s51~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s51~1_combout\ = (\RS~input_o\ & ((\U3|Qs.s51~1_combout\))) # (!\RS~input_o\ & (\U3|Ram0~184_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Ram0~184_combout\,
	datac => \U3|Qs.s51~1_combout\,
	datad => \RS~input_o\,
	combout => \U3|Qs.s51~1_combout\);

-- Location: LCCOMB_X50_Y52_N30
\U3|Qs.s51~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s51~3_combout\ = \U3|Qs.s52~2_combout\ $ (\U3|Qs.s51~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s52~2_combout\,
	datab => \U3|Qs.s51~1_combout\,
	combout => \U3|Qs.s51~3_combout\);

-- Location: FF_X50_Y52_N31
\U3|Qs.s51~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s51~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s51~_emulated_q\);

-- Location: LCCOMB_X50_Y51_N0
\U3|Qs.s51~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s51~2_combout\ = (\RS~input_o\ & (\U3|Qs.s51~_emulated_q\ $ ((\U3|Qs.s51~1_combout\)))) # (!\RS~input_o\ & (((\U3|Ram0~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s51~_emulated_q\,
	datab => \RS~input_o\,
	datac => \U3|Qs.s51~1_combout\,
	datad => \U3|Ram0~184_combout\,
	combout => \U3|Qs.s51~2_combout\);

-- Location: LCCOMB_X51_Y46_N2
\U3|Qs.s50~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s50~3_combout\ = \U3|Qs.s50~1_combout\ $ (\U3|Qs.s51~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s50~1_combout\,
	datad => \U3|Qs.s51~2_combout\,
	combout => \U3|Qs.s50~3_combout\);

-- Location: FF_X51_Y46_N3
\U3|Qs.s50~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s50~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s50~_emulated_q\);

-- Location: LCCOMB_X51_Y46_N0
\U3|Qs.s50~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s50~2_combout\ = (\RS~input_o\ & (\U3|Qs.s50~1_combout\ $ (((\U3|Qs.s50~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s50~1_combout\,
	datac => \U3|Ram0~161_combout\,
	datad => \U3|Qs.s50~_emulated_q\,
	combout => \U3|Qs.s50~2_combout\);

-- Location: LCCOMB_X51_Y46_N10
\U3|Qs.s49~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s49~3_combout\ = \U3|Qs.s49~1_combout\ $ (\U3|Qs.s50~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s49~1_combout\,
	datad => \U3|Qs.s50~2_combout\,
	combout => \U3|Qs.s49~3_combout\);

-- Location: FF_X51_Y46_N11
\U3|Qs.s49~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s49~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s49~_emulated_q\);

-- Location: LCCOMB_X51_Y46_N12
\U3|Qs.s49~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s49~2_combout\ = (\RS~input_o\ & (\U3|Qs.s49~1_combout\ $ (((\U3|Qs.s49~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s49~1_combout\,
	datac => \U3|Ram0~175_combout\,
	datad => \U3|Qs.s49~_emulated_q\,
	combout => \U3|Qs.s49~2_combout\);

-- Location: LCCOMB_X51_Y46_N6
\U3|Qs.s48~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s48~3_combout\ = \U3|Qs.s48~1_combout\ $ (\U3|Qs.s49~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s48~1_combout\,
	datad => \U3|Qs.s49~2_combout\,
	combout => \U3|Qs.s48~3_combout\);

-- Location: FF_X51_Y46_N7
\U3|Qs.s48~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s48~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s48~_emulated_q\);

-- Location: LCCOMB_X51_Y46_N8
\U3|Qs.s48~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s48~2_combout\ = (\RS~input_o\ & (\U3|Qs.s48~1_combout\ $ (((\U3|Qs.s48~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s48~1_combout\,
	datab => \U3|Ram0~147_combout\,
	datac => \RS~input_o\,
	datad => \U3|Qs.s48~_emulated_q\,
	combout => \U3|Qs.s48~2_combout\);

-- Location: LCCOMB_X50_Y47_N8
\U3|Qs.s47~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s47~3_combout\ = \U3|Qs.s48~2_combout\ $ (\U3|Qs.s47~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s48~2_combout\,
	datad => \U3|Qs.s47~1_combout\,
	combout => \U3|Qs.s47~3_combout\);

-- Location: FF_X50_Y47_N9
\U3|Qs.s47~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s47~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s47~_emulated_q\);

-- Location: LCCOMB_X50_Y47_N30
\U3|Qs.s47~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s47~2_combout\ = (\RS~input_o\ & (\U3|Qs.s47~1_combout\ $ ((\U3|Qs.s47~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s47~1_combout\,
	datac => \U3|Qs.s47~_emulated_q\,
	datad => \U3|Ram0~176_combout\,
	combout => \U3|Qs.s47~2_combout\);

-- Location: LCCOMB_X50_Y47_N24
\U3|Qs.s46~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s46~3_combout\ = \U3|Qs.s46~1_combout\ $ (\U3|Qs.s47~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s46~1_combout\,
	datac => \U3|Qs.s47~2_combout\,
	combout => \U3|Qs.s46~3_combout\);

-- Location: FF_X50_Y47_N25
\U3|Qs.s46~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s46~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s46~_emulated_q\);

-- Location: LCCOMB_X50_Y47_N2
\U3|Qs.s46~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s46~2_combout\ = (\RS~input_o\ & (\U3|Qs.s46~1_combout\ $ (((\U3|Qs.s46~_emulated_q\))))) # (!\RS~input_o\ & (((\U3|Ram0~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s46~1_combout\,
	datab => \RS~input_o\,
	datac => \U3|Ram0~160_combout\,
	datad => \U3|Qs.s46~_emulated_q\,
	combout => \U3|Qs.s46~2_combout\);

-- Location: LCCOMB_X50_Y47_N4
\U3|Qs.s45~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s45~3_combout\ = \U3|Qs.s45~1_combout\ $ (\U3|Qs.s46~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s45~1_combout\,
	datac => \U3|Qs.s46~2_combout\,
	combout => \U3|Qs.s45~3_combout\);

-- Location: FF_X50_Y47_N5
\U3|Qs.s45~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s45~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s45~_emulated_q\);

-- Location: LCCOMB_X50_Y47_N14
\U3|Qs.s45~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s45~2_combout\ = (\RS~input_o\ & (\U3|Qs.s45~1_combout\ $ ((\U3|Qs.s45~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS~input_o\,
	datab => \U3|Qs.s45~1_combout\,
	datac => \U3|Qs.s45~_emulated_q\,
	datad => \U3|Ram0~174_combout\,
	combout => \U3|Qs.s45~2_combout\);

-- Location: LCCOMB_X50_Y47_N12
\U3|Qs.s44~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s44~3_combout\ = \U3|Qs.s44~1_combout\ $ (\U3|Qs.s45~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Qs.s44~1_combout\,
	datac => \U3|Qs.s45~2_combout\,
	combout => \U3|Qs.s44~3_combout\);

-- Location: FF_X50_Y47_N13
\U3|Qs.s44~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s44~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s44~_emulated_q\);

-- Location: LCCOMB_X50_Y47_N10
\U3|Qs.s44~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s44~2_combout\ = (\RS~input_o\ & (\U3|Qs.s44~_emulated_q\ $ ((\U3|Qs.s44~1_combout\)))) # (!\RS~input_o\ & (((\U3|Ram0~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s44~_emulated_q\,
	datab => \U3|Qs.s44~1_combout\,
	datac => \RS~input_o\,
	datad => \U3|Ram0~144_combout\,
	combout => \U3|Qs.s44~2_combout\);

-- Location: LCCOMB_X49_Y48_N20
\U3|Qs.s43~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s43~3_combout\ = \U3|Qs.s43~1_combout\ $ (\U3|Qs.s44~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s43~1_combout\,
	datab => \U3|Qs.s44~2_combout\,
	combout => \U3|Qs.s43~3_combout\);

-- Location: FF_X49_Y48_N21
\U3|Qs.s43~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|CLKDIV|TEMP~clkctrl_outclk\,
	d => \U3|Qs.s43~3_combout\,
	clrn => \RS~input_o\,
	ena => \D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Qs.s43~_emulated_q\);

-- Location: LCCOMB_X49_Y48_N14
\U3|Qs.s43~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Qs.s43~2_combout\ = (\RS~input_o\ & (\U3|Qs.s43~1_combout\ $ ((\U3|Qs.s43~_emulated_q\)))) # (!\RS~input_o\ & (((\U3|Ram0~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s43~1_combout\,
	datab => \RS~input_o\,
	datac => \U3|Qs.s43~_emulated_q\,
	datad => \U3|Ram0~181_combout\,
	combout => \U3|Qs.s43~2_combout\);

-- Location: LCCOMB_X50_Y49_N12
\U3|WideOr62~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr62~2_combout\ = (\U3|Qs.s43~2_combout\) # ((\U3|Qs.s27~2_combout\) # ((\U3|Qs.s11~2_combout\) # (\U3|Qs.s59~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Qs.s43~2_combout\,
	datab => \U3|Qs.s27~2_combout\,
	datac => \U3|Qs.s11~2_combout\,
	datad => \U3|Qs.s59~2_combout\,
	combout => \U3|WideOr62~2_combout\);

-- Location: LCCOMB_X50_Y50_N12
\U3|WideOr62~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr62~1_combout\ = (((!\U3|WideOr63~2_combout\) # (!\U3|WideOr62~0_combout\)) # (!\U3|WideOr63~1_combout\)) # (!\U3|WideOr63~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|WideOr63~0_combout\,
	datab => \U3|WideOr63~1_combout\,
	datac => \U3|WideOr62~0_combout\,
	datad => \U3|WideOr63~2_combout\,
	combout => \U3|WideOr62~1_combout\);

-- Location: LCCOMB_X51_Y50_N22
\U3|WideOr62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|WideOr62~combout\ = (\U3|WideOr62~2_combout\) # (((\U3|WideOr62~1_combout\) # (!\U3|WideOr64~5_combout\)) # (!\U3|WideOr65~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|WideOr62~2_combout\,
	datab => \U3|WideOr65~1_combout\,
	datac => \U3|WideOr64~5_combout\,
	datad => \U3|WideOr62~1_combout\,
	combout => \U3|WideOr62~combout\);

-- Location: LCCOMB_X51_Y50_N30
\L~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \L~2_combout\ = (\U3|WideOr62~combout\) # ((\U3|WideOr63~combout\) # ((\U1|WideOr62~combout\) # (\U1|WideOr63~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|WideOr62~combout\,
	datab => \U3|WideOr63~combout\,
	datac => \U1|WideOr62~combout\,
	datad => \U1|WideOr63~combout\,
	combout => \L~2_combout\);

-- Location: LCCOMB_X51_Y50_N0
\L~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \L~3_combout\ = (\L~2_combout\) # ((\N~0_combout\) # ((\O~0_combout\) # (!\L~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L~2_combout\,
	datab => \N~0_combout\,
	datac => \L~1_combout\,
	datad => \O~0_combout\,
	combout => \L~3_combout\);

-- Location: LCCOMB_X55_Y51_N28
\U0|WideOr60~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr60~5_combout\ = (\U0|WideOr60~4_combout\) # ((\U0|WideOr60~2_combout\) # (\U0|WideOr60~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr60~4_combout\,
	datab => \U0|WideOr60~2_combout\,
	datad => \U0|WideOr60~3_combout\,
	combout => \U0|WideOr60~5_combout\);

-- Location: LCCOMB_X61_Y50_N8
\U10:5:H60|G3|O0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:5:H60|G3|O0~2_combout\ = (\S~input_o\ & (((\U0|WideOr60~1_combout\) # (\U0|WideOr60~5_combout\)))) # (!\S~input_o\ & (\U1|WideOr60~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr60~combout\,
	datab => \U0|WideOr60~1_combout\,
	datac => \U0|WideOr60~5_combout\,
	datad => \S~input_o\,
	combout => \U10:5:H60|G3|O0~2_combout\);

-- Location: LCCOMB_X66_Y50_N24
\U10:2:H60|G3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:2:H60|G3|O0~0_combout\ = (\S~input_o\ & (\U0|WideOr63~combout\)) # (!\S~input_o\ & ((\U1|WideOr63~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|WideOr63~combout\,
	datac => \S~input_o\,
	datad => \U1|WideOr63~combout\,
	combout => \U10:2:H60|G3|O0~0_combout\);

-- Location: LCCOMB_X60_Y51_N20
\U0|WideOr64~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|WideOr64~6_combout\ = (\U0|WideOr64~5_combout\ & \U0|WideOr64~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr64~5_combout\,
	datac => \U0|WideOr64~4_combout\,
	combout => \U0|WideOr64~6_combout\);

-- Location: LCCOMB_X60_Y51_N30
\U10:1:H60|G3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:1:H60|G3|O0~0_combout\ = (\U0|WideOr64~8_combout\ & (\S~input_o\ & (\U0|WideOr64~3_combout\ & \U0|WideOr64~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr64~8_combout\,
	datab => \S~input_o\,
	datac => \U0|WideOr64~3_combout\,
	datad => \U0|WideOr64~6_combout\,
	combout => \U10:1:H60|G3|O0~0_combout\);

-- Location: LCCOMB_X60_Y50_N8
\U10:1:H60|G3|O0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:1:H60|G3|O0~1_combout\ = (\U10:1:H60|G3|O0~0_combout\) # ((\U1|WideOr64~combout\ & !\S~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|WideOr64~combout\,
	datac => \U10:1:H60|G3|O0~0_combout\,
	datad => \S~input_o\,
	combout => \U10:1:H60|G3|O0~1_combout\);

-- Location: LCCOMB_X66_Y50_N2
\U10:3:H60|G3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:3:H60|G3|O0~0_combout\ = (\S~input_o\ & (\U0|WideOr62~combout\)) # (!\S~input_o\ & ((\U1|WideOr62~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~input_o\,
	datac => \U0|WideOr62~combout\,
	datad => \U1|WideOr62~combout\,
	combout => \U10:3:H60|G3|O0~0_combout\);

-- Location: LCCOMB_X66_Y50_N10
\F0|Ram0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F0|Ram0~1_combout\ = (\U10:5:H60|G3|O0~2_combout\ & ((\U10:2:H60|G3|O0~0_combout\ & ((\U10:3:H60|G3|O0~0_combout\) # (!\U10:1:H60|G3|O0~1_combout\))) # (!\U10:2:H60|G3|O0~0_combout\ & ((\U10:1:H60|G3|O0~1_combout\) # (!\U10:3:H60|G3|O0~0_combout\))))) # 
-- (!\U10:5:H60|G3|O0~2_combout\ & ((\U10:2:H60|G3|O0~0_combout\) # ((\U10:1:H60|G3|O0~1_combout\ & !\U10:3:H60|G3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:5:H60|G3|O0~2_combout\,
	datab => \U10:2:H60|G3|O0~0_combout\,
	datac => \U10:1:H60|G3|O0~1_combout\,
	datad => \U10:3:H60|G3|O0~0_combout\,
	combout => \F0|Ram0~1_combout\);

-- Location: LCCOMB_X60_Y51_N16
\U10:4:H60|G3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:4:H60|G3|O0~0_combout\ = (\S~input_o\ & (\U0|WideOr61~combout\)) # (!\S~input_o\ & ((\U1|WideOr61~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|WideOr61~combout\,
	datac => \U1|WideOr61~combout\,
	datad => \S~input_o\,
	combout => \U10:4:H60|G3|O0~0_combout\);

-- Location: LCCOMB_X66_Y50_N12
\F0|Ram0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F0|Ram0~0_combout\ = (\U10:5:H60|G3|O0~2_combout\ & (\U10:2:H60|G3|O0~0_combout\ $ (((\U10:1:H60|G3|O0~1_combout\ & !\U10:3:H60|G3|O0~0_combout\))))) # (!\U10:5:H60|G3|O0~2_combout\ & (\U10:2:H60|G3|O0~0_combout\ & ((\U10:1:H60|G3|O0~1_combout\) # 
-- (!\U10:3:H60|G3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:5:H60|G3|O0~2_combout\,
	datab => \U10:2:H60|G3|O0~0_combout\,
	datac => \U10:1:H60|G3|O0~1_combout\,
	datad => \U10:3:H60|G3|O0~0_combout\,
	combout => \F0|Ram0~0_combout\);

-- Location: LCCOMB_X66_Y50_N16
\F0|Ram0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F0|Ram0~2_combout\ = (\U10:4:H60|G3|O0~0_combout\ & (!\F0|Ram0~1_combout\)) # (!\U10:4:H60|G3|O0~0_combout\ & ((\F0|Ram0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Ram0~1_combout\,
	datac => \U10:4:H60|G3|O0~0_combout\,
	datad => \F0|Ram0~0_combout\,
	combout => \F0|Ram0~2_combout\);

-- Location: LCCOMB_X66_Y50_N30
\F0|Ram0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F0|Ram0~7_combout\ = (\U10:5:H60|G3|O0~2_combout\ & (\U10:2:H60|G3|O0~0_combout\ & (\U10:1:H60|G3|O0~1_combout\ & !\U10:3:H60|G3|O0~0_combout\))) # (!\U10:5:H60|G3|O0~2_combout\ & (!\U10:2:H60|G3|O0~0_combout\ & (!\U10:1:H60|G3|O0~1_combout\ & 
-- \U10:3:H60|G3|O0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:5:H60|G3|O0~2_combout\,
	datab => \U10:2:H60|G3|O0~0_combout\,
	datac => \U10:1:H60|G3|O0~1_combout\,
	datad => \U10:3:H60|G3|O0~0_combout\,
	combout => \F0|Ram0~7_combout\);

-- Location: LCCOMB_X66_Y50_N0
\F0|Ram0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F0|Ram0~6_combout\ = (\U10:5:H60|G3|O0~2_combout\ & (!\U10:2:H60|G3|O0~0_combout\ & (\U10:1:H60|G3|O0~1_combout\ $ (!\U10:3:H60|G3|O0~0_combout\)))) # (!\U10:5:H60|G3|O0~2_combout\ & ((\U10:2:H60|G3|O0~0_combout\ & (!\U10:1:H60|G3|O0~1_combout\ & 
-- \U10:3:H60|G3|O0~0_combout\)) # (!\U10:2:H60|G3|O0~0_combout\ & (\U10:1:H60|G3|O0~1_combout\ & !\U10:3:H60|G3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:5:H60|G3|O0~2_combout\,
	datab => \U10:2:H60|G3|O0~0_combout\,
	datac => \U10:1:H60|G3|O0~1_combout\,
	datad => \U10:3:H60|G3|O0~0_combout\,
	combout => \F0|Ram0~6_combout\);

-- Location: LCCOMB_X66_Y50_N20
\F0|Ram0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F0|Ram0~8_combout\ = (\U10:4:H60|G3|O0~0_combout\ & ((\F0|Ram0~6_combout\))) # (!\U10:4:H60|G3|O0~0_combout\ & (\F0|Ram0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Ram0~7_combout\,
	datac => \U10:4:H60|G3|O0~0_combout\,
	datad => \F0|Ram0~6_combout\,
	combout => \F0|Ram0~8_combout\);

-- Location: LCCOMB_X62_Y50_N4
\U10:0:H60|G3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:0:H60|G3|O0~0_combout\ = (\S~input_o\ & (\U0|WideOr65~combout\)) # (!\S~input_o\ & ((\U1|WideOr65~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|WideOr65~combout\,
	datac => \U1|WideOr65~combout\,
	datad => \S~input_o\,
	combout => \U10:0:H60|G3|O0~0_combout\);

-- Location: LCCOMB_X66_Y50_N8
\F0|Ram0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F0|Ram0~4_combout\ = (\U10:1:H60|G3|O0~1_combout\ & (((\U10:4:H60|G3|O0~0_combout\ & !\U10:2:H60|G3|O0~0_combout\)) # (!\U10:3:H60|G3|O0~0_combout\))) # (!\U10:1:H60|G3|O0~1_combout\ & (\U10:3:H60|G3|O0~0_combout\ $ (((\U10:4:H60|G3|O0~0_combout\ & 
-- !\U10:2:H60|G3|O0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:4:H60|G3|O0~0_combout\,
	datab => \U10:2:H60|G3|O0~0_combout\,
	datac => \U10:1:H60|G3|O0~1_combout\,
	datad => \U10:3:H60|G3|O0~0_combout\,
	combout => \F0|Ram0~4_combout\);

-- Location: LCCOMB_X66_Y50_N18
\F0|Ram0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F0|Ram0~3_combout\ = (\U10:1:H60|G3|O0~1_combout\ & (\U10:3:H60|G3|O0~0_combout\ $ (((\U10:2:H60|G3|O0~0_combout\) # (!\U10:4:H60|G3|O0~0_combout\))))) # (!\U10:1:H60|G3|O0~1_combout\ & ((\U10:4:H60|G3|O0~0_combout\ & (!\U10:2:H60|G3|O0~0_combout\ & 
-- !\U10:3:H60|G3|O0~0_combout\)) # (!\U10:4:H60|G3|O0~0_combout\ & (\U10:2:H60|G3|O0~0_combout\ & \U10:3:H60|G3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:4:H60|G3|O0~0_combout\,
	datab => \U10:2:H60|G3|O0~0_combout\,
	datac => \U10:1:H60|G3|O0~1_combout\,
	datad => \U10:3:H60|G3|O0~0_combout\,
	combout => \F0|Ram0~3_combout\);

-- Location: LCCOMB_X66_Y50_N22
\F0|Ram0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F0|Ram0~5_combout\ = (\U10:5:H60|G3|O0~2_combout\ & (!\F0|Ram0~4_combout\)) # (!\U10:5:H60|G3|O0~2_combout\ & ((\F0|Ram0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:5:H60|G3|O0~2_combout\,
	datac => \F0|Ram0~4_combout\,
	datad => \F0|Ram0~3_combout\,
	combout => \F0|Ram0~5_combout\);

-- Location: LCCOMB_X69_Y50_N24
\F3|OR1|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F3|OR1|O0~0_combout\ = (!\F0|Ram0~8_combout\ & (!\F0|Ram0~5_combout\ & (\F0|Ram0~2_combout\ $ (\U10:0:H60|G3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Ram0~2_combout\,
	datab => \F0|Ram0~8_combout\,
	datac => \U10:0:H60|G3|O0~0_combout\,
	datad => \F0|Ram0~5_combout\,
	combout => \F3|OR1|O0~0_combout\);

-- Location: LCCOMB_X69_Y50_N10
\F3|OR2|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F3|OR2|O0~0_combout\ = (\F0|Ram0~2_combout\ & (!\F0|Ram0~8_combout\ & (\U10:0:H60|G3|O0~0_combout\ $ (\F0|Ram0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Ram0~2_combout\,
	datab => \F0|Ram0~8_combout\,
	datac => \U10:0:H60|G3|O0~0_combout\,
	datad => \F0|Ram0~5_combout\,
	combout => \F3|OR2|O0~0_combout\);

-- Location: LCCOMB_X69_Y50_N20
\F3|U0:2:AN9|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F3|U0:2:AN9|O0~0_combout\ = (!\F0|Ram0~2_combout\ & (!\F0|Ram0~8_combout\ & (!\U10:0:H60|G3|O0~0_combout\ & \F0|Ram0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Ram0~2_combout\,
	datab => \F0|Ram0~8_combout\,
	datac => \U10:0:H60|G3|O0~0_combout\,
	datad => \F0|Ram0~5_combout\,
	combout => \F3|U0:2:AN9|O0~0_combout\);

-- Location: LCCOMB_X69_Y50_N2
\F3|OR3|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F3|OR3|O0~combout\ = (!\F0|Ram0~8_combout\ & ((\F0|Ram0~2_combout\ & (\U10:0:H60|G3|O0~0_combout\ $ (!\F0|Ram0~5_combout\))) # (!\F0|Ram0~2_combout\ & (\U10:0:H60|G3|O0~0_combout\ & !\F0|Ram0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Ram0~2_combout\,
	datab => \F0|Ram0~8_combout\,
	datac => \U10:0:H60|G3|O0~0_combout\,
	datad => \F0|Ram0~5_combout\,
	combout => \F3|OR3|O0~combout\);

-- Location: LCCOMB_X69_Y50_N4
\F3|OR6|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F3|OR6|O0~0_combout\ = (\F0|Ram0~5_combout\ & (((!\F0|Ram0~8_combout\ & \U10:0:H60|G3|O0~0_combout\)))) # (!\F0|Ram0~5_combout\ & ((\F0|Ram0~2_combout\ & (!\F0|Ram0~8_combout\)) # (!\F0|Ram0~2_combout\ & ((\U10:0:H60|G3|O0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Ram0~2_combout\,
	datab => \F0|Ram0~8_combout\,
	datac => \U10:0:H60|G3|O0~0_combout\,
	datad => \F0|Ram0~5_combout\,
	combout => \F3|OR6|O0~0_combout\);

-- Location: LCCOMB_X69_Y50_N22
\F3|OR10|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F3|OR10|O0~0_combout\ = (!\F0|Ram0~8_combout\ & ((\F0|Ram0~2_combout\ & (\U10:0:H60|G3|O0~0_combout\ & \F0|Ram0~5_combout\)) # (!\F0|Ram0~2_combout\ & ((\U10:0:H60|G3|O0~0_combout\) # (\F0|Ram0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Ram0~2_combout\,
	datab => \F0|Ram0~8_combout\,
	datac => \U10:0:H60|G3|O0~0_combout\,
	datad => \F0|Ram0~5_combout\,
	combout => \F3|OR10|O0~0_combout\);

-- Location: LCCOMB_X69_Y50_N12
\F3|OR12|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F3|OR12|O0~combout\ = (!\F0|Ram0~8_combout\ & ((\F0|Ram0~2_combout\ & (\U10:0:H60|G3|O0~0_combout\ & \F0|Ram0~5_combout\)) # (!\F0|Ram0~2_combout\ & ((!\F0|Ram0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Ram0~2_combout\,
	datab => \F0|Ram0~8_combout\,
	datac => \U10:0:H60|G3|O0~0_combout\,
	datad => \F0|Ram0~5_combout\,
	combout => \F3|OR12|O0~combout\);

-- Location: LCCOMB_X66_Y50_N28
\F0|Ram0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F0|Ram0~10_combout\ = ((!\U10:4:H60|G3|O0~0_combout\ & !\U10:3:H60|G3|O0~0_combout\)) # (!\U10:5:H60|G3|O0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:5:H60|G3|O0~2_combout\,
	datac => \U10:4:H60|G3|O0~0_combout\,
	datad => \U10:3:H60|G3|O0~0_combout\,
	combout => \F0|Ram0~10_combout\);

-- Location: LCCOMB_X66_Y50_N14
\F0|Ram0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F0|Ram0~11_combout\ = (\U10:4:H60|G3|O0~0_combout\ & ((\U10:2:H60|G3|O0~0_combout\ & (\U10:1:H60|G3|O0~1_combout\ & \U10:3:H60|G3|O0~0_combout\)) # (!\U10:2:H60|G3|O0~0_combout\ & ((!\U10:3:H60|G3|O0~0_combout\))))) # (!\U10:4:H60|G3|O0~0_combout\ & 
-- (\U10:3:H60|G3|O0~0_combout\ & ((\U10:2:H60|G3|O0~0_combout\) # (\U10:1:H60|G3|O0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:4:H60|G3|O0~0_combout\,
	datab => \U10:2:H60|G3|O0~0_combout\,
	datac => \U10:1:H60|G3|O0~1_combout\,
	datad => \U10:3:H60|G3|O0~0_combout\,
	combout => \F0|Ram0~11_combout\);

-- Location: LCCOMB_X66_Y50_N4
\F0|Ram0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F0|Ram0~12_combout\ = (\U10:4:H60|G3|O0~0_combout\ & ((\U10:2:H60|G3|O0~0_combout\ & ((\U10:3:H60|G3|O0~0_combout\))) # (!\U10:2:H60|G3|O0~0_combout\ & (!\U10:1:H60|G3|O0~1_combout\ & !\U10:3:H60|G3|O0~0_combout\)))) # (!\U10:4:H60|G3|O0~0_combout\ & 
-- (((\U10:3:H60|G3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:4:H60|G3|O0~0_combout\,
	datab => \U10:2:H60|G3|O0~0_combout\,
	datac => \U10:1:H60|G3|O0~1_combout\,
	datad => \U10:3:H60|G3|O0~0_combout\,
	combout => \F0|Ram0~12_combout\);

-- Location: LCCOMB_X66_Y50_N26
\F0|Ram0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F0|Ram0~13_combout\ = (\U10:5:H60|G3|O0~2_combout\ & ((!\F0|Ram0~12_combout\))) # (!\U10:5:H60|G3|O0~2_combout\ & (\F0|Ram0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:5:H60|G3|O0~2_combout\,
	datab => \F0|Ram0~11_combout\,
	datac => \F0|Ram0~12_combout\,
	combout => \F0|Ram0~13_combout\);

-- Location: LCCOMB_X66_Y50_N6
\F0|Ram0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F0|Ram0~9_combout\ = (\U10:5:H60|G3|O0~2_combout\ & ((\U10:4:H60|G3|O0~0_combout\ & (\U10:2:H60|G3|O0~0_combout\ & \U10:3:H60|G3|O0~0_combout\)) # (!\U10:4:H60|G3|O0~0_combout\ & ((!\U10:3:H60|G3|O0~0_combout\))))) # (!\U10:5:H60|G3|O0~2_combout\ & 
-- (\U10:4:H60|G3|O0~0_combout\ & ((\U10:2:H60|G3|O0~0_combout\) # (\U10:3:H60|G3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:5:H60|G3|O0~2_combout\,
	datab => \U10:2:H60|G3|O0~0_combout\,
	datac => \U10:4:H60|G3|O0~0_combout\,
	datad => \U10:3:H60|G3|O0~0_combout\,
	combout => \F0|Ram0~9_combout\);

-- Location: LCCOMB_X72_Y50_N4
\F4|OR1|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F4|OR1|O0~0_combout\ = (\F0|Ram0~9_combout\) # (\F0|Ram0~10_combout\ $ (\F0|Ram0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Ram0~10_combout\,
	datac => \F0|Ram0~13_combout\,
	datad => \F0|Ram0~9_combout\,
	combout => \F4|OR1|O0~0_combout\);

-- Location: LCCOMB_X72_Y50_N30
\F4|OR2|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F4|OR2|O0~0_combout\ = (!\F0|Ram0~10_combout\ & (\F0|Ram0~13_combout\ $ (\F0|Ram0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Ram0~10_combout\,
	datac => \F0|Ram0~13_combout\,
	datad => \F0|Ram0~9_combout\,
	combout => \F4|OR2|O0~0_combout\);

-- Location: LCCOMB_X72_Y50_N24
\F4|U0:2:AN9|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F4|U0:2:AN9|O0~0_combout\ = (\F0|Ram0~10_combout\ & (!\F0|Ram0~13_combout\ & \F0|Ram0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Ram0~10_combout\,
	datac => \F0|Ram0~13_combout\,
	datad => \F0|Ram0~9_combout\,
	combout => \F4|U0:2:AN9|O0~0_combout\);

-- Location: LCCOMB_X72_Y50_N10
\F4|OR3|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F4|OR3|O0~combout\ = (\F0|Ram0~10_combout\ & (\F0|Ram0~13_combout\ & !\F0|Ram0~9_combout\)) # (!\F0|Ram0~10_combout\ & (\F0|Ram0~13_combout\ $ (!\F0|Ram0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Ram0~10_combout\,
	datac => \F0|Ram0~13_combout\,
	datad => \F0|Ram0~9_combout\,
	combout => \F4|OR3|O0~combout\);

-- Location: LCCOMB_X72_Y50_N16
\F4|OR6|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F4|OR6|O0~0_combout\ = (\F0|Ram0~13_combout\) # ((!\F0|Ram0~10_combout\ & !\F0|Ram0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Ram0~10_combout\,
	datac => \F0|Ram0~13_combout\,
	datad => \F0|Ram0~9_combout\,
	combout => \F4|OR6|O0~0_combout\);

-- Location: LCCOMB_X72_Y50_N22
\F4|OR10|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F4|OR10|O0~0_combout\ = (\F0|Ram0~10_combout\ & ((\F0|Ram0~13_combout\) # (\F0|Ram0~9_combout\))) # (!\F0|Ram0~10_combout\ & (\F0|Ram0~13_combout\ & \F0|Ram0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Ram0~10_combout\,
	datac => \F0|Ram0~13_combout\,
	datad => \F0|Ram0~9_combout\,
	combout => \F4|OR10|O0~0_combout\);

-- Location: LCCOMB_X72_Y50_N12
\F4|OR12|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F4|OR12|O0~0_combout\ = (\F0|Ram0~10_combout\ & ((!\F0|Ram0~9_combout\))) # (!\F0|Ram0~10_combout\ & (\F0|Ram0~13_combout\ & \F0|Ram0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F0|Ram0~10_combout\,
	datac => \F0|Ram0~13_combout\,
	datad => \F0|Ram0~9_combout\,
	combout => \F4|OR12|O0~0_combout\);

-- Location: LCCOMB_X62_Y48_N26
\U10:0:H61|G3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:0:H61|G3|O0~0_combout\ = (\S~input_o\ & (\U0|WideOr65~combout\)) # (!\S~input_o\ & ((\U3|WideOr65~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr65~combout\,
	datab => \S~input_o\,
	datad => \U3|WideOr65~combout\,
	combout => \U10:0:H61|G3|O0~0_combout\);

-- Location: LCCOMB_X62_Y48_N20
\U10:5:H61|G3|O0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:5:H61|G3|O0~2_combout\ = (\S~input_o\ & (((\U0|WideOr60~1_combout\) # (\U0|WideOr60~5_combout\)))) # (!\S~input_o\ & (\U3|WideOr60~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|WideOr60~combout\,
	datab => \S~input_o\,
	datac => \U0|WideOr60~1_combout\,
	datad => \U0|WideOr60~5_combout\,
	combout => \U10:5:H61|G3|O0~2_combout\);

-- Location: LCCOMB_X59_Y48_N20
\U10:2:H61|G3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:2:H61|G3|O0~0_combout\ = (\S~input_o\ & (\U0|WideOr63~combout\)) # (!\S~input_o\ & ((\U3|WideOr63~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr63~combout\,
	datac => \S~input_o\,
	datad => \U3|WideOr63~combout\,
	combout => \U10:2:H61|G3|O0~0_combout\);

-- Location: LCCOMB_X59_Y48_N22
\U10:3:H61|G3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:3:H61|G3|O0~0_combout\ = (\S~input_o\ & (\U0|WideOr62~combout\)) # (!\S~input_o\ & ((\U3|WideOr62~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|WideOr62~combout\,
	datac => \S~input_o\,
	datad => \U3|WideOr62~combout\,
	combout => \U10:3:H61|G3|O0~0_combout\);

-- Location: LCCOMB_X59_Y51_N20
\U10:1:H61|G3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:1:H61|G3|O0~0_combout\ = (\U10:1:H60|G3|O0~0_combout\) # ((!\S~input_o\ & \U3|WideOr64~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:1:H60|G3|O0~0_combout\,
	datab => \S~input_o\,
	datad => \U3|WideOr64~combout\,
	combout => \U10:1:H61|G3|O0~0_combout\);

-- Location: LCCOMB_X59_Y48_N12
\F1|Ram0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F1|Ram0~0_combout\ = (\U10:5:H61|G3|O0~2_combout\ & (\U10:2:H61|G3|O0~0_combout\ $ (((!\U10:3:H61|G3|O0~0_combout\ & \U10:1:H61|G3|O0~0_combout\))))) # (!\U10:5:H61|G3|O0~2_combout\ & (\U10:2:H61|G3|O0~0_combout\ & ((\U10:1:H61|G3|O0~0_combout\) # 
-- (!\U10:3:H61|G3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:5:H61|G3|O0~2_combout\,
	datab => \U10:2:H61|G3|O0~0_combout\,
	datac => \U10:3:H61|G3|O0~0_combout\,
	datad => \U10:1:H61|G3|O0~0_combout\,
	combout => \F1|Ram0~0_combout\);

-- Location: LCCOMB_X59_Y48_N26
\U10:4:H61|G3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:4:H61|G3|O0~0_combout\ = (\S~input_o\ & (\U0|WideOr61~combout\)) # (!\S~input_o\ & ((\U3|WideOr61~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|WideOr61~combout\,
	datac => \S~input_o\,
	datad => \U3|WideOr61~combout\,
	combout => \U10:4:H61|G3|O0~0_combout\);

-- Location: LCCOMB_X59_Y48_N0
\F1|Ram0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F1|Ram0~1_combout\ = (\U10:5:H61|G3|O0~2_combout\ & ((\U10:2:H61|G3|O0~0_combout\ & ((\U10:3:H61|G3|O0~0_combout\) # (!\U10:1:H61|G3|O0~0_combout\))) # (!\U10:2:H61|G3|O0~0_combout\ & ((\U10:1:H61|G3|O0~0_combout\) # (!\U10:3:H61|G3|O0~0_combout\))))) # 
-- (!\U10:5:H61|G3|O0~2_combout\ & ((\U10:2:H61|G3|O0~0_combout\) # ((!\U10:3:H61|G3|O0~0_combout\ & \U10:1:H61|G3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:5:H61|G3|O0~2_combout\,
	datab => \U10:2:H61|G3|O0~0_combout\,
	datac => \U10:3:H61|G3|O0~0_combout\,
	datad => \U10:1:H61|G3|O0~0_combout\,
	combout => \F1|Ram0~1_combout\);

-- Location: LCCOMB_X59_Y48_N2
\F1|Ram0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F1|Ram0~2_combout\ = (\U10:4:H61|G3|O0~0_combout\ & ((!\F1|Ram0~1_combout\))) # (!\U10:4:H61|G3|O0~0_combout\ & (\F1|Ram0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1|Ram0~0_combout\,
	datac => \U10:4:H61|G3|O0~0_combout\,
	datad => \F1|Ram0~1_combout\,
	combout => \F1|Ram0~2_combout\);

-- Location: LCCOMB_X59_Y48_N10
\F1|Ram0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F1|Ram0~7_combout\ = (\U10:5:H61|G3|O0~2_combout\ & (\U10:2:H61|G3|O0~0_combout\ & (!\U10:3:H61|G3|O0~0_combout\ & \U10:1:H61|G3|O0~0_combout\))) # (!\U10:5:H61|G3|O0~2_combout\ & (!\U10:2:H61|G3|O0~0_combout\ & (\U10:3:H61|G3|O0~0_combout\ & 
-- !\U10:1:H61|G3|O0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:5:H61|G3|O0~2_combout\,
	datab => \U10:2:H61|G3|O0~0_combout\,
	datac => \U10:3:H61|G3|O0~0_combout\,
	datad => \U10:1:H61|G3|O0~0_combout\,
	combout => \F1|Ram0~7_combout\);

-- Location: LCCOMB_X59_Y48_N16
\F1|Ram0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F1|Ram0~6_combout\ = (\U10:5:H61|G3|O0~2_combout\ & (!\U10:2:H61|G3|O0~0_combout\ & (\U10:3:H61|G3|O0~0_combout\ $ (!\U10:1:H61|G3|O0~0_combout\)))) # (!\U10:5:H61|G3|O0~2_combout\ & ((\U10:2:H61|G3|O0~0_combout\ & (\U10:3:H61|G3|O0~0_combout\ & 
-- !\U10:1:H61|G3|O0~0_combout\)) # (!\U10:2:H61|G3|O0~0_combout\ & (!\U10:3:H61|G3|O0~0_combout\ & \U10:1:H61|G3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:5:H61|G3|O0~2_combout\,
	datab => \U10:2:H61|G3|O0~0_combout\,
	datac => \U10:3:H61|G3|O0~0_combout\,
	datad => \U10:1:H61|G3|O0~0_combout\,
	combout => \F1|Ram0~6_combout\);

-- Location: LCCOMB_X59_Y48_N28
\F1|Ram0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F1|Ram0~8_combout\ = (\U10:4:H61|G3|O0~0_combout\ & ((\F1|Ram0~6_combout\))) # (!\U10:4:H61|G3|O0~0_combout\ & (\F1|Ram0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1|Ram0~7_combout\,
	datac => \U10:4:H61|G3|O0~0_combout\,
	datad => \F1|Ram0~6_combout\,
	combout => \F1|Ram0~8_combout\);

-- Location: LCCOMB_X59_Y48_N4
\F1|Ram0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F1|Ram0~3_combout\ = (\U10:3:H61|G3|O0~0_combout\ & ((\U10:2:H61|G3|O0~0_combout\ & (!\U10:4:H61|G3|O0~0_combout\ & !\U10:1:H61|G3|O0~0_combout\)) # (!\U10:2:H61|G3|O0~0_combout\ & (\U10:4:H61|G3|O0~0_combout\ & \U10:1:H61|G3|O0~0_combout\)))) # 
-- (!\U10:3:H61|G3|O0~0_combout\ & (\U10:1:H61|G3|O0~0_combout\ $ (((!\U10:2:H61|G3|O0~0_combout\ & \U10:4:H61|G3|O0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:3:H61|G3|O0~0_combout\,
	datab => \U10:2:H61|G3|O0~0_combout\,
	datac => \U10:4:H61|G3|O0~0_combout\,
	datad => \U10:1:H61|G3|O0~0_combout\,
	combout => \F1|Ram0~3_combout\);

-- Location: LCCOMB_X59_Y48_N18
\F1|Ram0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F1|Ram0~4_combout\ = (\U10:3:H61|G3|O0~0_combout\ & (\U10:1:H61|G3|O0~0_combout\ $ (((\U10:2:H61|G3|O0~0_combout\) # (!\U10:4:H61|G3|O0~0_combout\))))) # (!\U10:3:H61|G3|O0~0_combout\ & ((\U10:1:H61|G3|O0~0_combout\) # ((!\U10:2:H61|G3|O0~0_combout\ & 
-- \U10:4:H61|G3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:3:H61|G3|O0~0_combout\,
	datab => \U10:2:H61|G3|O0~0_combout\,
	datac => \U10:4:H61|G3|O0~0_combout\,
	datad => \U10:1:H61|G3|O0~0_combout\,
	combout => \F1|Ram0~4_combout\);

-- Location: LCCOMB_X62_Y48_N12
\F1|Ram0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F1|Ram0~5_combout\ = (\U10:5:H61|G3|O0~2_combout\ & ((!\F1|Ram0~4_combout\))) # (!\U10:5:H61|G3|O0~2_combout\ & (\F1|Ram0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1|Ram0~3_combout\,
	datac => \F1|Ram0~4_combout\,
	datad => \U10:5:H61|G3|O0~2_combout\,
	combout => \F1|Ram0~5_combout\);

-- Location: LCCOMB_X62_Y48_N18
\F5|OR1|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F5|OR1|O0~0_combout\ = (!\F1|Ram0~8_combout\ & (!\F1|Ram0~5_combout\ & (\U10:0:H61|G3|O0~0_combout\ $ (\F1|Ram0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:0:H61|G3|O0~0_combout\,
	datab => \F1|Ram0~2_combout\,
	datac => \F1|Ram0~8_combout\,
	datad => \F1|Ram0~5_combout\,
	combout => \F5|OR1|O0~0_combout\);

-- Location: LCCOMB_X62_Y48_N4
\F5|OR2|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F5|OR2|O0~0_combout\ = (\F1|Ram0~2_combout\ & (!\F1|Ram0~8_combout\ & (\U10:0:H61|G3|O0~0_combout\ $ (\F1|Ram0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:0:H61|G3|O0~0_combout\,
	datab => \F1|Ram0~2_combout\,
	datac => \F1|Ram0~8_combout\,
	datad => \F1|Ram0~5_combout\,
	combout => \F5|OR2|O0~0_combout\);

-- Location: LCCOMB_X62_Y48_N10
\F5|U0:2:AN9|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F5|U0:2:AN9|O0~0_combout\ = (!\U10:0:H61|G3|O0~0_combout\ & (!\F1|Ram0~2_combout\ & (!\F1|Ram0~8_combout\ & \F1|Ram0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:0:H61|G3|O0~0_combout\,
	datab => \F1|Ram0~2_combout\,
	datac => \F1|Ram0~8_combout\,
	datad => \F1|Ram0~5_combout\,
	combout => \F5|U0:2:AN9|O0~0_combout\);

-- Location: LCCOMB_X62_Y48_N24
\F5|OR3|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F5|OR3|O0~combout\ = (!\F1|Ram0~8_combout\ & ((\U10:0:H61|G3|O0~0_combout\ & (\F1|Ram0~2_combout\ $ (!\F1|Ram0~5_combout\))) # (!\U10:0:H61|G3|O0~0_combout\ & (\F1|Ram0~2_combout\ & !\F1|Ram0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:0:H61|G3|O0~0_combout\,
	datab => \F1|Ram0~2_combout\,
	datac => \F1|Ram0~8_combout\,
	datad => \F1|Ram0~5_combout\,
	combout => \F5|OR3|O0~combout\);

-- Location: LCCOMB_X62_Y48_N6
\F5|OR6|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F5|OR6|O0~0_combout\ = (\F1|Ram0~5_combout\ & (\U10:0:H61|G3|O0~0_combout\ & ((!\F1|Ram0~8_combout\)))) # (!\F1|Ram0~5_combout\ & ((\F1|Ram0~2_combout\ & ((!\F1|Ram0~8_combout\))) # (!\F1|Ram0~2_combout\ & (\U10:0:H61|G3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:0:H61|G3|O0~0_combout\,
	datab => \F1|Ram0~2_combout\,
	datac => \F1|Ram0~8_combout\,
	datad => \F1|Ram0~5_combout\,
	combout => \F5|OR6|O0~0_combout\);

-- Location: LCCOMB_X62_Y48_N28
\F5|OR10|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F5|OR10|O0~0_combout\ = (!\F1|Ram0~8_combout\ & ((\U10:0:H61|G3|O0~0_combout\ & ((\F1|Ram0~5_combout\) # (!\F1|Ram0~2_combout\))) # (!\U10:0:H61|G3|O0~0_combout\ & (!\F1|Ram0~2_combout\ & \F1|Ram0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:0:H61|G3|O0~0_combout\,
	datab => \F1|Ram0~2_combout\,
	datac => \F1|Ram0~8_combout\,
	datad => \F1|Ram0~5_combout\,
	combout => \F5|OR10|O0~0_combout\);

-- Location: LCCOMB_X62_Y48_N22
\F5|OR12|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F5|OR12|O0~combout\ = (!\F1|Ram0~8_combout\ & ((\F1|Ram0~2_combout\ & (\U10:0:H61|G3|O0~0_combout\ & \F1|Ram0~5_combout\)) # (!\F1|Ram0~2_combout\ & ((!\F1|Ram0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:0:H61|G3|O0~0_combout\,
	datab => \F1|Ram0~2_combout\,
	datac => \F1|Ram0~8_combout\,
	datad => \F1|Ram0~5_combout\,
	combout => \F5|OR12|O0~combout\);

-- Location: LCCOMB_X59_Y48_N8
\F1|Ram0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F1|Ram0~10_combout\ = ((!\U10:3:H61|G3|O0~0_combout\ & !\U10:4:H61|G3|O0~0_combout\)) # (!\U10:5:H61|G3|O0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:5:H61|G3|O0~2_combout\,
	datac => \U10:3:H61|G3|O0~0_combout\,
	datad => \U10:4:H61|G3|O0~0_combout\,
	combout => \F1|Ram0~10_combout\);

-- Location: LCCOMB_X59_Y48_N24
\F1|Ram0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F1|Ram0~12_combout\ = (\U10:3:H61|G3|O0~0_combout\ & ((\U10:2:H61|G3|O0~0_combout\) # ((!\U10:4:H61|G3|O0~0_combout\)))) # (!\U10:3:H61|G3|O0~0_combout\ & (!\U10:2:H61|G3|O0~0_combout\ & (\U10:4:H61|G3|O0~0_combout\ & !\U10:1:H61|G3|O0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:3:H61|G3|O0~0_combout\,
	datab => \U10:2:H61|G3|O0~0_combout\,
	datac => \U10:4:H61|G3|O0~0_combout\,
	datad => \U10:1:H61|G3|O0~0_combout\,
	combout => \F1|Ram0~12_combout\);

-- Location: LCCOMB_X59_Y48_N14
\F1|Ram0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F1|Ram0~11_combout\ = (\U10:3:H61|G3|O0~0_combout\ & ((\U10:2:H61|G3|O0~0_combout\ & ((\U10:1:H61|G3|O0~0_combout\) # (!\U10:4:H61|G3|O0~0_combout\))) # (!\U10:2:H61|G3|O0~0_combout\ & (!\U10:4:H61|G3|O0~0_combout\ & \U10:1:H61|G3|O0~0_combout\)))) # 
-- (!\U10:3:H61|G3|O0~0_combout\ & (!\U10:2:H61|G3|O0~0_combout\ & (\U10:4:H61|G3|O0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:3:H61|G3|O0~0_combout\,
	datab => \U10:2:H61|G3|O0~0_combout\,
	datac => \U10:4:H61|G3|O0~0_combout\,
	datad => \U10:1:H61|G3|O0~0_combout\,
	combout => \F1|Ram0~11_combout\);

-- Location: LCCOMB_X59_Y48_N30
\F1|Ram0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F1|Ram0~13_combout\ = (\U10:5:H61|G3|O0~2_combout\ & (!\F1|Ram0~12_combout\)) # (!\U10:5:H61|G3|O0~2_combout\ & ((\F1|Ram0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:5:H61|G3|O0~2_combout\,
	datab => \F1|Ram0~12_combout\,
	datac => \F1|Ram0~11_combout\,
	combout => \F1|Ram0~13_combout\);

-- Location: LCCOMB_X59_Y48_N6
\F1|Ram0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F1|Ram0~9_combout\ = (\U10:5:H61|G3|O0~2_combout\ & ((\U10:3:H61|G3|O0~0_combout\ & (\U10:2:H61|G3|O0~0_combout\ & \U10:4:H61|G3|O0~0_combout\)) # (!\U10:3:H61|G3|O0~0_combout\ & ((!\U10:4:H61|G3|O0~0_combout\))))) # (!\U10:5:H61|G3|O0~2_combout\ & 
-- (\U10:4:H61|G3|O0~0_combout\ & ((\U10:2:H61|G3|O0~0_combout\) # (\U10:3:H61|G3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:5:H61|G3|O0~2_combout\,
	datab => \U10:2:H61|G3|O0~0_combout\,
	datac => \U10:3:H61|G3|O0~0_combout\,
	datad => \U10:4:H61|G3|O0~0_combout\,
	combout => \F1|Ram0~9_combout\);

-- Location: LCCOMB_X75_Y41_N28
\F6|OR1|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F6|OR1|O0~0_combout\ = (\F1|Ram0~9_combout\) # (\F1|Ram0~10_combout\ $ (\F1|Ram0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F1|Ram0~10_combout\,
	datac => \F1|Ram0~13_combout\,
	datad => \F1|Ram0~9_combout\,
	combout => \F6|OR1|O0~0_combout\);

-- Location: LCCOMB_X75_Y41_N6
\F6|OR2|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F6|OR2|O0~0_combout\ = (!\F1|Ram0~10_combout\ & (\F1|Ram0~13_combout\ $ (\F1|Ram0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F1|Ram0~10_combout\,
	datac => \F1|Ram0~13_combout\,
	datad => \F1|Ram0~9_combout\,
	combout => \F6|OR2|O0~0_combout\);

-- Location: LCCOMB_X75_Y41_N12
\F6|U0:2:AN9|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F6|U0:2:AN9|O0~0_combout\ = (\F1|Ram0~10_combout\ & (!\F1|Ram0~13_combout\ & \F1|Ram0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F1|Ram0~10_combout\,
	datac => \F1|Ram0~13_combout\,
	datad => \F1|Ram0~9_combout\,
	combout => \F6|U0:2:AN9|O0~0_combout\);

-- Location: LCCOMB_X70_Y47_N24
\F6|OR3|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F6|OR3|O0~combout\ = (\F1|Ram0~10_combout\ & (\F1|Ram0~13_combout\ & !\F1|Ram0~9_combout\)) # (!\F1|Ram0~10_combout\ & (\F1|Ram0~13_combout\ $ (!\F1|Ram0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F1|Ram0~10_combout\,
	datac => \F1|Ram0~13_combout\,
	datad => \F1|Ram0~9_combout\,
	combout => \F6|OR3|O0~combout\);

-- Location: LCCOMB_X75_Y41_N14
\F6|OR6|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F6|OR6|O0~0_combout\ = (\F1|Ram0~13_combout\) # ((!\F1|Ram0~10_combout\ & !\F1|Ram0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F1|Ram0~10_combout\,
	datac => \F1|Ram0~13_combout\,
	datad => \F1|Ram0~9_combout\,
	combout => \F6|OR6|O0~0_combout\);

-- Location: LCCOMB_X75_Y41_N20
\F6|OR10|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F6|OR10|O0~0_combout\ = (\F1|Ram0~10_combout\ & ((\F1|Ram0~13_combout\) # (\F1|Ram0~9_combout\))) # (!\F1|Ram0~10_combout\ & (\F1|Ram0~13_combout\ & \F1|Ram0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F1|Ram0~10_combout\,
	datac => \F1|Ram0~13_combout\,
	datad => \F1|Ram0~9_combout\,
	combout => \F6|OR10|O0~0_combout\);

-- Location: LCCOMB_X75_Y41_N10
\F6|OR12|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F6|OR12|O0~0_combout\ = (\F1|Ram0~10_combout\ & ((!\F1|Ram0~9_combout\))) # (!\F1|Ram0~10_combout\ & (\F1|Ram0~13_combout\ & \F1|Ram0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F1|Ram0~10_combout\,
	datac => \F1|Ram0~13_combout\,
	datad => \F1|Ram0~9_combout\,
	combout => \F6|OR12|O0~0_combout\);

-- Location: LCCOMB_X57_Y53_N16
\U10:3:H62|G3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:3:H62|G3|O0~0_combout\ = (\S~input_o\ & (((\U0|WideOr62~combout\)))) # (!\S~input_o\ & (((\U5|WideOr24~0_combout\)) # (!\U5|WideOr26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~input_o\,
	datab => \U5|WideOr26~0_combout\,
	datac => \U5|WideOr24~0_combout\,
	datad => \U0|WideOr62~combout\,
	combout => \U10:3:H62|G3|O0~0_combout\);

-- Location: LCCOMB_X56_Y48_N20
\U10:2:H62|G3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:2:H62|G3|O0~0_combout\ = (\S~input_o\ & (\U0|WideOr63~combout\)) # (!\S~input_o\ & ((\U5|WideOr25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|WideOr63~combout\,
	datac => \S~input_o\,
	datad => \U5|WideOr25~3_combout\,
	combout => \U10:2:H62|G3|O0~0_combout\);

-- Location: LCCOMB_X60_Y51_N22
\U10:1:H62|G3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:1:H62|G3|O0~0_combout\ = (\U5|WideOr26~0_combout\ & (!\S~input_o\ & (\U5|WideOr26~1_combout\ & \U5|WideOr26~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|WideOr26~0_combout\,
	datab => \S~input_o\,
	datac => \U5|WideOr26~1_combout\,
	datad => \U5|WideOr26~2_combout\,
	combout => \U10:1:H62|G3|O0~0_combout\);

-- Location: LCCOMB_X60_Y51_N28
\U10:1:H62|G3|O0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:1:H62|G3|O0~1_combout\ = (\U10:1:H60|G3|O0~0_combout\) # (\U10:1:H62|G3|O0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:1:H60|G3|O0~0_combout\,
	datac => \U10:1:H62|G3|O0~0_combout\,
	combout => \U10:1:H62|G3|O0~1_combout\);

-- Location: LCCOMB_X62_Y48_N0
\U10:5:H62|G0|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:5:H62|G0|O0~combout\ = (\S~input_o\ & ((\U0|WideOr60~1_combout\) # (\U0|WideOr60~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~input_o\,
	datac => \U0|WideOr60~1_combout\,
	datad => \U0|WideOr60~5_combout\,
	combout => \U10:5:H62|G0|O0~combout\);

-- Location: LCCOMB_X56_Y48_N6
\F2|Ram0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F2|Ram0~0_combout\ = (\U10:3:H62|G3|O0~0_combout\ & (\U10:2:H62|G3|O0~0_combout\ & ((\U10:1:H62|G3|O0~1_combout\) # (\U10:5:H62|G0|O0~combout\)))) # (!\U10:3:H62|G3|O0~0_combout\ & (\U10:2:H62|G3|O0~0_combout\ $ (((\U10:1:H62|G3|O0~1_combout\ & 
-- \U10:5:H62|G0|O0~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:3:H62|G3|O0~0_combout\,
	datab => \U10:2:H62|G3|O0~0_combout\,
	datac => \U10:1:H62|G3|O0~1_combout\,
	datad => \U10:5:H62|G0|O0~combout\,
	combout => \F2|Ram0~0_combout\);

-- Location: LCCOMB_X56_Y48_N8
\F2|Ram0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F2|Ram0~1_combout\ = (\U10:3:H62|G3|O0~0_combout\ & ((\U10:2:H62|G3|O0~0_combout\) # ((\U10:1:H62|G3|O0~1_combout\ & \U10:5:H62|G0|O0~combout\)))) # (!\U10:3:H62|G3|O0~0_combout\ & ((\U10:2:H62|G3|O0~0_combout\ & ((!\U10:5:H62|G0|O0~combout\) # 
-- (!\U10:1:H62|G3|O0~1_combout\))) # (!\U10:2:H62|G3|O0~0_combout\ & ((\U10:1:H62|G3|O0~1_combout\) # (\U10:5:H62|G0|O0~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:3:H62|G3|O0~0_combout\,
	datab => \U10:2:H62|G3|O0~0_combout\,
	datac => \U10:1:H62|G3|O0~1_combout\,
	datad => \U10:5:H62|G0|O0~combout\,
	combout => \F2|Ram0~1_combout\);

-- Location: LCCOMB_X60_Y51_N26
\U10:4:H62|G3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:4:H62|G3|O0~0_combout\ = (\S~input_o\ & (((\U0|WideOr61~combout\)))) # (!\S~input_o\ & ((\U5|WideOr23~0_combout\) # ((!\U5|WideOr26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|WideOr23~0_combout\,
	datab => \S~input_o\,
	datac => \U5|WideOr26~1_combout\,
	datad => \U0|WideOr61~combout\,
	combout => \U10:4:H62|G3|O0~0_combout\);

-- Location: LCCOMB_X56_Y48_N30
\F2|Ram0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F2|Ram0~2_combout\ = (\U10:4:H62|G3|O0~0_combout\ & ((!\F2|Ram0~1_combout\))) # (!\U10:4:H62|G3|O0~0_combout\ & (\F2|Ram0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F2|Ram0~0_combout\,
	datac => \F2|Ram0~1_combout\,
	datad => \U10:4:H62|G3|O0~0_combout\,
	combout => \F2|Ram0~2_combout\);

-- Location: LCCOMB_X56_Y48_N10
\F2|Ram0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F2|Ram0~4_combout\ = (\U10:3:H62|G3|O0~0_combout\ & (\U10:1:H62|G3|O0~1_combout\ $ (((\U10:2:H62|G3|O0~0_combout\) # (!\U10:4:H62|G3|O0~0_combout\))))) # (!\U10:3:H62|G3|O0~0_combout\ & ((\U10:1:H62|G3|O0~1_combout\) # ((!\U10:2:H62|G3|O0~0_combout\ & 
-- \U10:4:H62|G3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:3:H62|G3|O0~0_combout\,
	datab => \U10:2:H62|G3|O0~0_combout\,
	datac => \U10:1:H62|G3|O0~1_combout\,
	datad => \U10:4:H62|G3|O0~0_combout\,
	combout => \F2|Ram0~4_combout\);

-- Location: LCCOMB_X56_Y48_N16
\F2|Ram0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F2|Ram0~3_combout\ = (\U10:3:H62|G3|O0~0_combout\ & ((\U10:2:H62|G3|O0~0_combout\ & (!\U10:1:H62|G3|O0~1_combout\ & !\U10:4:H62|G3|O0~0_combout\)) # (!\U10:2:H62|G3|O0~0_combout\ & (\U10:1:H62|G3|O0~1_combout\ & \U10:4:H62|G3|O0~0_combout\)))) # 
-- (!\U10:3:H62|G3|O0~0_combout\ & (\U10:1:H62|G3|O0~1_combout\ $ (((!\U10:2:H62|G3|O0~0_combout\ & \U10:4:H62|G3|O0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:3:H62|G3|O0~0_combout\,
	datab => \U10:2:H62|G3|O0~0_combout\,
	datac => \U10:1:H62|G3|O0~1_combout\,
	datad => \U10:4:H62|G3|O0~0_combout\,
	combout => \F2|Ram0~3_combout\);

-- Location: LCCOMB_X56_Y48_N28
\F2|Ram0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F2|Ram0~5_combout\ = (\U10:5:H62|G0|O0~combout\ & (!\F2|Ram0~4_combout\)) # (!\U10:5:H62|G0|O0~combout\ & ((\F2|Ram0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F2|Ram0~4_combout\,
	datab => \F2|Ram0~3_combout\,
	datad => \U10:5:H62|G0|O0~combout\,
	combout => \F2|Ram0~5_combout\);

-- Location: LCCOMB_X56_Y48_N18
\F2|Ram0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F2|Ram0~6_combout\ = (\U10:3:H62|G3|O0~0_combout\ & ((\U10:2:H62|G3|O0~0_combout\ & (!\U10:1:H62|G3|O0~1_combout\ & !\U10:5:H62|G0|O0~combout\)) # (!\U10:2:H62|G3|O0~0_combout\ & (\U10:1:H62|G3|O0~1_combout\ & \U10:5:H62|G0|O0~combout\)))) # 
-- (!\U10:3:H62|G3|O0~0_combout\ & (!\U10:2:H62|G3|O0~0_combout\ & (\U10:1:H62|G3|O0~1_combout\ $ (\U10:5:H62|G0|O0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:3:H62|G3|O0~0_combout\,
	datab => \U10:2:H62|G3|O0~0_combout\,
	datac => \U10:1:H62|G3|O0~1_combout\,
	datad => \U10:5:H62|G0|O0~combout\,
	combout => \F2|Ram0~6_combout\);

-- Location: LCCOMB_X56_Y48_N4
\F2|Ram0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F2|Ram0~7_combout\ = (\U10:3:H62|G3|O0~0_combout\ & (!\U10:2:H62|G3|O0~0_combout\ & (!\U10:1:H62|G3|O0~1_combout\ & !\U10:5:H62|G0|O0~combout\))) # (!\U10:3:H62|G3|O0~0_combout\ & (\U10:2:H62|G3|O0~0_combout\ & (\U10:1:H62|G3|O0~1_combout\ & 
-- \U10:5:H62|G0|O0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:3:H62|G3|O0~0_combout\,
	datab => \U10:2:H62|G3|O0~0_combout\,
	datac => \U10:1:H62|G3|O0~1_combout\,
	datad => \U10:5:H62|G0|O0~combout\,
	combout => \F2|Ram0~7_combout\);

-- Location: LCCOMB_X56_Y48_N14
\F2|Ram0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F2|Ram0~8_combout\ = (\U10:4:H62|G3|O0~0_combout\ & (\F2|Ram0~6_combout\)) # (!\U10:4:H62|G3|O0~0_combout\ & ((\F2|Ram0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F2|Ram0~6_combout\,
	datac => \F2|Ram0~7_combout\,
	datad => \U10:4:H62|G3|O0~0_combout\,
	combout => \F2|Ram0~8_combout\);

-- Location: LCCOMB_X55_Y47_N0
\U10:0:H62|G3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U10:0:H62|G3|O0~0_combout\ = (\S~input_o\ & (\U0|WideOr65~combout\)) # (!\S~input_o\ & ((\U5|WideOr27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~input_o\,
	datac => \U0|WideOr65~combout\,
	datad => \U5|WideOr27~1_combout\,
	combout => \U10:0:H62|G3|O0~0_combout\);

-- Location: LCCOMB_X55_Y48_N24
\F7|OR1|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F7|OR1|O0~0_combout\ = (!\F2|Ram0~5_combout\ & (!\F2|Ram0~8_combout\ & (\F2|Ram0~2_combout\ $ (\U10:0:H62|G3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F2|Ram0~2_combout\,
	datab => \F2|Ram0~5_combout\,
	datac => \F2|Ram0~8_combout\,
	datad => \U10:0:H62|G3|O0~0_combout\,
	combout => \F7|OR1|O0~0_combout\);

-- Location: LCCOMB_X55_Y48_N6
\F7|OR2|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F7|OR2|O0~0_combout\ = (\F2|Ram0~2_combout\ & (!\F2|Ram0~8_combout\ & (\F2|Ram0~5_combout\ $ (\U10:0:H62|G3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F2|Ram0~2_combout\,
	datab => \F2|Ram0~5_combout\,
	datac => \F2|Ram0~8_combout\,
	datad => \U10:0:H62|G3|O0~0_combout\,
	combout => \F7|OR2|O0~0_combout\);

-- Location: LCCOMB_X55_Y48_N4
\F7|U0:2:AN9|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F7|U0:2:AN9|O0~0_combout\ = (!\F2|Ram0~2_combout\ & (\F2|Ram0~5_combout\ & (!\F2|Ram0~8_combout\ & !\U10:0:H62|G3|O0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F2|Ram0~2_combout\,
	datab => \F2|Ram0~5_combout\,
	datac => \F2|Ram0~8_combout\,
	datad => \U10:0:H62|G3|O0~0_combout\,
	combout => \F7|U0:2:AN9|O0~0_combout\);

-- Location: LCCOMB_X55_Y48_N10
\F7|OR3|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F7|OR3|O0~combout\ = (!\F2|Ram0~8_combout\ & ((\F2|Ram0~2_combout\ & (\F2|Ram0~5_combout\ $ (!\U10:0:H62|G3|O0~0_combout\))) # (!\F2|Ram0~2_combout\ & (!\F2|Ram0~5_combout\ & \U10:0:H62|G3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F2|Ram0~2_combout\,
	datab => \F2|Ram0~5_combout\,
	datac => \F2|Ram0~8_combout\,
	datad => \U10:0:H62|G3|O0~0_combout\,
	combout => \F7|OR3|O0~combout\);

-- Location: LCCOMB_X55_Y48_N16
\F7|OR6|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F7|OR6|O0~0_combout\ = (\F2|Ram0~5_combout\ & (((!\F2|Ram0~8_combout\ & \U10:0:H62|G3|O0~0_combout\)))) # (!\F2|Ram0~5_combout\ & ((\F2|Ram0~2_combout\ & (!\F2|Ram0~8_combout\)) # (!\F2|Ram0~2_combout\ & ((\U10:0:H62|G3|O0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F2|Ram0~2_combout\,
	datab => \F2|Ram0~5_combout\,
	datac => \F2|Ram0~8_combout\,
	datad => \U10:0:H62|G3|O0~0_combout\,
	combout => \F7|OR6|O0~0_combout\);

-- Location: LCCOMB_X55_Y48_N22
\F7|OR10|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F7|OR10|O0~0_combout\ = (!\F2|Ram0~8_combout\ & ((\F2|Ram0~2_combout\ & (\F2|Ram0~5_combout\ & \U10:0:H62|G3|O0~0_combout\)) # (!\F2|Ram0~2_combout\ & ((\F2|Ram0~5_combout\) # (\U10:0:H62|G3|O0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F2|Ram0~2_combout\,
	datab => \F2|Ram0~5_combout\,
	datac => \F2|Ram0~8_combout\,
	datad => \U10:0:H62|G3|O0~0_combout\,
	combout => \F7|OR10|O0~0_combout\);

-- Location: LCCOMB_X55_Y48_N20
\F7|OR12|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F7|OR12|O0~combout\ = (!\F2|Ram0~8_combout\ & ((\F2|Ram0~2_combout\ & (\F2|Ram0~5_combout\ & \U10:0:H62|G3|O0~0_combout\)) # (!\F2|Ram0~2_combout\ & (!\F2|Ram0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F2|Ram0~2_combout\,
	datab => \F2|Ram0~5_combout\,
	datac => \F2|Ram0~8_combout\,
	datad => \U10:0:H62|G3|O0~0_combout\,
	combout => \F7|OR12|O0~combout\);

-- Location: LCCOMB_X56_Y48_N26
\F2|Ram0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F2|Ram0~10_combout\ = ((!\U10:3:H62|G3|O0~0_combout\ & !\U10:4:H62|G3|O0~0_combout\)) # (!\U10:5:H62|G0|O0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:3:H62|G3|O0~0_combout\,
	datab => \U10:4:H62|G3|O0~0_combout\,
	datad => \U10:5:H62|G0|O0~combout\,
	combout => \F2|Ram0~10_combout\);

-- Location: LCCOMB_X56_Y48_N12
\F2|Ram0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F2|Ram0~11_combout\ = (\U10:3:H62|G3|O0~0_combout\ & ((\U10:2:H62|G3|O0~0_combout\ & ((\U10:1:H62|G3|O0~1_combout\) # (!\U10:4:H62|G3|O0~0_combout\))) # (!\U10:2:H62|G3|O0~0_combout\ & (\U10:1:H62|G3|O0~1_combout\ & !\U10:4:H62|G3|O0~0_combout\)))) # 
-- (!\U10:3:H62|G3|O0~0_combout\ & (!\U10:2:H62|G3|O0~0_combout\ & ((\U10:4:H62|G3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:3:H62|G3|O0~0_combout\,
	datab => \U10:2:H62|G3|O0~0_combout\,
	datac => \U10:1:H62|G3|O0~1_combout\,
	datad => \U10:4:H62|G3|O0~0_combout\,
	combout => \F2|Ram0~11_combout\);

-- Location: LCCOMB_X56_Y48_N22
\F2|Ram0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F2|Ram0~12_combout\ = (\U10:3:H62|G3|O0~0_combout\ & ((\U10:2:H62|G3|O0~0_combout\) # ((!\U10:4:H62|G3|O0~0_combout\)))) # (!\U10:3:H62|G3|O0~0_combout\ & (!\U10:2:H62|G3|O0~0_combout\ & (!\U10:1:H62|G3|O0~1_combout\ & \U10:4:H62|G3|O0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:3:H62|G3|O0~0_combout\,
	datab => \U10:2:H62|G3|O0~0_combout\,
	datac => \U10:1:H62|G3|O0~1_combout\,
	datad => \U10:4:H62|G3|O0~0_combout\,
	combout => \F2|Ram0~12_combout\);

-- Location: LCCOMB_X56_Y48_N24
\F2|Ram0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F2|Ram0~13_combout\ = (\U10:5:H62|G0|O0~combout\ & ((!\F2|Ram0~12_combout\))) # (!\U10:5:H62|G0|O0~combout\ & (\F2|Ram0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F2|Ram0~11_combout\,
	datac => \F2|Ram0~12_combout\,
	datad => \U10:5:H62|G0|O0~combout\,
	combout => \F2|Ram0~13_combout\);

-- Location: LCCOMB_X56_Y48_N0
\F2|Ram0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F2|Ram0~9_combout\ = (\U10:3:H62|G3|O0~0_combout\ & (\U10:4:H62|G3|O0~0_combout\ & ((\U10:2:H62|G3|O0~0_combout\) # (!\U10:5:H62|G0|O0~combout\)))) # (!\U10:3:H62|G3|O0~0_combout\ & ((\U10:4:H62|G3|O0~0_combout\ & (!\U10:5:H62|G0|O0~combout\ & 
-- \U10:2:H62|G3|O0~0_combout\)) # (!\U10:4:H62|G3|O0~0_combout\ & (\U10:5:H62|G0|O0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10:3:H62|G3|O0~0_combout\,
	datab => \U10:4:H62|G3|O0~0_combout\,
	datac => \U10:5:H62|G0|O0~combout\,
	datad => \U10:2:H62|G3|O0~0_combout\,
	combout => \F2|Ram0~9_combout\);

-- Location: LCCOMB_X57_Y49_N28
\F8|OR1|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F8|OR1|O0~0_combout\ = (\F2|Ram0~9_combout\) # (\F2|Ram0~10_combout\ $ (\F2|Ram0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F2|Ram0~10_combout\,
	datac => \F2|Ram0~13_combout\,
	datad => \F2|Ram0~9_combout\,
	combout => \F8|OR1|O0~0_combout\);

-- Location: LCCOMB_X57_Y49_N30
\F8|OR2|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F8|OR2|O0~0_combout\ = (!\F2|Ram0~10_combout\ & (\F2|Ram0~13_combout\ $ (\F2|Ram0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F2|Ram0~10_combout\,
	datac => \F2|Ram0~13_combout\,
	datad => \F2|Ram0~9_combout\,
	combout => \F8|OR2|O0~0_combout\);

-- Location: LCCOMB_X57_Y49_N20
\F8|U0:2:AN9|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F8|U0:2:AN9|O0~combout\ = (\F2|Ram0~10_combout\ & (!\F2|Ram0~13_combout\ & \F2|Ram0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F2|Ram0~10_combout\,
	datac => \F2|Ram0~13_combout\,
	datad => \F2|Ram0~9_combout\,
	combout => \F8|U0:2:AN9|O0~combout\);

-- Location: LCCOMB_X57_Y49_N10
\F8|OR3|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F8|OR3|O0~combout\ = (\F2|Ram0~10_combout\ & (\F2|Ram0~13_combout\ & !\F2|Ram0~9_combout\)) # (!\F2|Ram0~10_combout\ & (\F2|Ram0~13_combout\ $ (!\F2|Ram0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F2|Ram0~10_combout\,
	datac => \F2|Ram0~13_combout\,
	datad => \F2|Ram0~9_combout\,
	combout => \F8|OR3|O0~combout\);

-- Location: LCCOMB_X57_Y49_N0
\F8|OR6|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F8|OR6|O0~0_combout\ = (\F2|Ram0~13_combout\) # ((!\F2|Ram0~10_combout\ & !\F2|Ram0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F2|Ram0~10_combout\,
	datac => \F2|Ram0~13_combout\,
	datad => \F2|Ram0~9_combout\,
	combout => \F8|OR6|O0~0_combout\);

-- Location: LCCOMB_X57_Y49_N6
\F8|OR10|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F8|OR10|O0~0_combout\ = (\F2|Ram0~10_combout\ & ((\F2|Ram0~13_combout\) # (\F2|Ram0~9_combout\))) # (!\F2|Ram0~10_combout\ & (\F2|Ram0~13_combout\ & \F2|Ram0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F2|Ram0~10_combout\,
	datac => \F2|Ram0~13_combout\,
	datad => \F2|Ram0~9_combout\,
	combout => \F8|OR10|O0~0_combout\);

-- Location: LCCOMB_X57_Y49_N4
\F8|OR12|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \F8|OR12|O0~0_combout\ = (\F2|Ram0~10_combout\ & ((!\F2|Ram0~9_combout\))) # (!\F2|Ram0~10_combout\ & (\F2|Ram0~13_combout\ & \F2|Ram0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F2|Ram0~10_combout\,
	datac => \F2|Ram0~13_combout\,
	datad => \F2|Ram0~9_combout\,
	combout => \F8|OR12|O0~0_combout\);

-- Location: IOIBUF_X46_Y54_N1
\Y~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Y,
	o => \Y~input_o\);

-- Location: UNVM_X0_Y40_N40
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

-- Location: ADCBLOCK_X43_Y52_N0
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

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
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
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_H0(0) <= \H0[0]~output_o\;

ww_H0(1) <= \H0[1]~output_o\;

ww_H0(2) <= \H0[2]~output_o\;

ww_H0(3) <= \H0[3]~output_o\;

ww_H0(4) <= \H0[4]~output_o\;

ww_H0(5) <= \H0[5]~output_o\;

ww_H0(6) <= \H0[6]~output_o\;

ww_H1(0) <= \H1[0]~output_o\;

ww_H1(1) <= \H1[1]~output_o\;

ww_H1(2) <= \H1[2]~output_o\;

ww_H1(3) <= \H1[3]~output_o\;

ww_H1(4) <= \H1[4]~output_o\;

ww_H1(5) <= \H1[5]~output_o\;

ww_H1(6) <= \H1[6]~output_o\;

ww_H2(0) <= \H2[0]~output_o\;

ww_H2(1) <= \H2[1]~output_o\;

ww_H2(2) <= \H2[2]~output_o\;

ww_H2(3) <= \H2[3]~output_o\;

ww_H2(4) <= \H2[4]~output_o\;

ww_H2(5) <= \H2[5]~output_o\;

ww_H2(6) <= \H2[6]~output_o\;

ww_H3(0) <= \H3[0]~output_o\;

ww_H3(1) <= \H3[1]~output_o\;

ww_H3(2) <= \H3[2]~output_o\;

ww_H3(3) <= \H3[3]~output_o\;

ww_H3(4) <= \H3[4]~output_o\;

ww_H3(5) <= \H3[5]~output_o\;

ww_H3(6) <= \H3[6]~output_o\;

ww_H4(0) <= \H4[0]~output_o\;

ww_H4(1) <= \H4[1]~output_o\;

ww_H4(2) <= \H4[2]~output_o\;

ww_H4(3) <= \H4[3]~output_o\;

ww_H4(4) <= \H4[4]~output_o\;

ww_H4(5) <= \H4[5]~output_o\;

ww_H4(6) <= \H4[6]~output_o\;

ww_H5(0) <= \H5[0]~output_o\;

ww_H5(1) <= \H5[1]~output_o\;

ww_H5(2) <= \H5[2]~output_o\;

ww_H5(3) <= \H5[3]~output_o\;

ww_H5(4) <= \H5[4]~output_o\;

ww_H5(5) <= \H5[5]~output_o\;

ww_H5(6) <= \H5[6]~output_o\;

ww_BUZZER <= \BUZZER~output_o\;

Y <= \Y~output_o\;
END structure;


