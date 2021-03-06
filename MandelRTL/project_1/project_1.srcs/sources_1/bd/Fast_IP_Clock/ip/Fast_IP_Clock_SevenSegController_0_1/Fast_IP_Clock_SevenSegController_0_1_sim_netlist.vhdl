-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Jul 17 22:13:16 2019
-- Host        : AndrewSi64 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/andrewsi/Documents/GitHub/MandelViewer/MandelRTL/project_1/project_1.srcs/sources_1/bd/Fast_IP_Clock/ip/Fast_IP_Clock_SevenSegController_0_1/Fast_IP_Clock_SevenSegController_0_1_sim_netlist.vhdl
-- Design      : Fast_IP_Clock_SevenSegController_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Fast_IP_Clock_SevenSegController_0_1_Binary_to_BCD is
  port (
    overflow : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    r_DV_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    r_OV_reg_0 : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_Binary_reg[31]_0\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \r_Binary_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Fast_IP_Clock_SevenSegController_0_1_Binary_to_BCD : entity is "Binary_to_BCD";
end Fast_IP_Clock_SevenSegController_0_1_Binary_to_BCD;

architecture STRUCTURE of Fast_IP_Clock_SevenSegController_0_1_Binary_to_BCD is
  signal \^d\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal done : STD_LOGIC;
  signal \^overflow\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal r_BCD : STD_LOGIC_VECTOR ( 32 downto 31 );
  signal \r_BCD[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[10]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[11]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[11]_i_2_n_0\ : STD_LOGIC;
  signal \r_BCD[11]_i_3_n_0\ : STD_LOGIC;
  signal \r_BCD[11]_i_4_n_0\ : STD_LOGIC;
  signal \r_BCD[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[13]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[14]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[15]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[15]_i_2_n_0\ : STD_LOGIC;
  signal \r_BCD[15]_i_3_n_0\ : STD_LOGIC;
  signal \r_BCD[15]_i_4_n_0\ : STD_LOGIC;
  signal \r_BCD[15]_i_5_n_0\ : STD_LOGIC;
  signal \r_BCD[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[17]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[17]_i_2_n_0\ : STD_LOGIC;
  signal \r_BCD[18]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[19]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[19]_i_2_n_0\ : STD_LOGIC;
  signal \r_BCD[19]_i_3_n_0\ : STD_LOGIC;
  signal \r_BCD[19]_i_4_n_0\ : STD_LOGIC;
  signal \r_BCD[19]_i_5_n_0\ : STD_LOGIC;
  signal \r_BCD[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[20]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[21]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[21]_i_2_n_0\ : STD_LOGIC;
  signal \r_BCD[22]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[23]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[23]_i_2_n_0\ : STD_LOGIC;
  signal \r_BCD[23]_i_3_n_0\ : STD_LOGIC;
  signal \r_BCD[23]_i_4_n_0\ : STD_LOGIC;
  signal \r_BCD[23]_i_5_n_0\ : STD_LOGIC;
  signal \r_BCD[24]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[25]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[25]_i_2_n_0\ : STD_LOGIC;
  signal \r_BCD[26]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[27]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[27]_i_2_n_0\ : STD_LOGIC;
  signal \r_BCD[27]_i_3_n_0\ : STD_LOGIC;
  signal \r_BCD[27]_i_4_n_0\ : STD_LOGIC;
  signal \r_BCD[27]_i_5_n_0\ : STD_LOGIC;
  signal \r_BCD[27]_i_6_n_0\ : STD_LOGIC;
  signal \r_BCD[27]_i_7_n_0\ : STD_LOGIC;
  signal \r_BCD[28]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[28]_i_2_n_0\ : STD_LOGIC;
  signal \r_BCD[28]_i_3_n_0\ : STD_LOGIC;
  signal \r_BCD[28]_i_4_n_0\ : STD_LOGIC;
  signal \r_BCD[28]_i_5_n_0\ : STD_LOGIC;
  signal \r_BCD[28]_i_6_n_0\ : STD_LOGIC;
  signal \r_BCD[29]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[29]_i_2_n_0\ : STD_LOGIC;
  signal \r_BCD[29]_i_3_n_0\ : STD_LOGIC;
  signal \r_BCD[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[30]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[30]_i_2_n_0\ : STD_LOGIC;
  signal \r_BCD[31]_i_10_n_0\ : STD_LOGIC;
  signal \r_BCD[31]_i_11_n_0\ : STD_LOGIC;
  signal \r_BCD[31]_i_12_n_0\ : STD_LOGIC;
  signal \r_BCD[31]_i_13_n_0\ : STD_LOGIC;
  signal \r_BCD[31]_i_14_n_0\ : STD_LOGIC;
  signal \r_BCD[31]_i_15_n_0\ : STD_LOGIC;
  signal \r_BCD[31]_i_16_n_0\ : STD_LOGIC;
  signal \r_BCD[31]_i_17_n_0\ : STD_LOGIC;
  signal \r_BCD[31]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[31]_i_3_n_0\ : STD_LOGIC;
  signal \r_BCD[31]_i_4_n_0\ : STD_LOGIC;
  signal \r_BCD[31]_i_5_n_0\ : STD_LOGIC;
  signal \r_BCD[31]_i_6_n_0\ : STD_LOGIC;
  signal \r_BCD[31]_i_7_n_0\ : STD_LOGIC;
  signal \r_BCD[31]_i_8_n_0\ : STD_LOGIC;
  signal \r_BCD[31]_i_9_n_0\ : STD_LOGIC;
  signal \r_BCD[32]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_BCD[3]_i_3_n_0\ : STD_LOGIC;
  signal \r_BCD[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_BCD[7]_i_3_n_0\ : STD_LOGIC;
  signal \r_BCD[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_BCD[9]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[10]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[11]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[13]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[14]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[15]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[17]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[18]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[19]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[20]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[21]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[22]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[23]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[24]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[25]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[26]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[27]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[28]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[29]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[30]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[31]_i_2_n_0\ : STD_LOGIC;
  signal \r_Binary[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary[9]_i_1_n_0\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[16]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[17]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[18]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[19]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[20]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[21]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[22]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[23]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[24]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[25]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[26]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[27]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[28]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[29]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[30]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[31]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[9]\ : STD_LOGIC;
  signal r_DV_i_1_n_0 : STD_LOGIC;
  signal r_Digit_Index : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_Digit_Index[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_Index[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_Digit_Index[6]_i_2_n_0\ : STD_LOGIC;
  signal \r_Digit_Index[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_Index[7]_i_3_n_0\ : STD_LOGIC;
  signal \r_Digit_Index_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Digit_Index_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Digit_Index_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_Digit_Index_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_Digit_Index_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_Digit_Index_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_Digit_Index_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_Digit_Index_reg_n_0_[7]\ : STD_LOGIC;
  signal r_Loop_Count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_Loop_Count[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_Loop_Count[7]_i_3_n_0\ : STD_LOGIC;
  signal \r_Loop_Count_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Loop_Count_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Loop_Count_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_Loop_Count_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_Loop_Count_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_Loop_Count_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_Loop_Count_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_Loop_Count_reg_n_0_[7]\ : STD_LOGIC;
  signal r_OV_i_1_n_0 : STD_LOGIC;
  signal \r_SM_Main[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_SM_Main[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_SM_Main[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_SM_Main__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \r_SM_Main_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bcd_reg[31]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \r_BCD[11]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_BCD[15]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_BCD[17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_BCD[17]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \r_BCD[19]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_BCD[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_BCD[21]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_BCD[21]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r_BCD[25]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_BCD[25]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r_BCD[27]_i_5\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_BCD[27]_i_6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_BCD[27]_i_7\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r_BCD[28]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_BCD[29]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \r_BCD[31]_i_12\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_BCD[31]_i_15\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_BCD[31]_i_16\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_BCD[31]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r_BCD[31]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_BCD[31]_i_6\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r_BCD[31]_i_7\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_BCD[31]_i_9\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r_BCD[32]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_Binary[10]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r_Binary[11]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r_Binary[12]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r_Binary[13]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \r_Binary[14]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \r_Binary[15]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r_Binary[16]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \r_Binary[17]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \r_Binary[18]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_Binary[19]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_Binary[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \r_Binary[20]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r_Binary[21]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r_Binary[22]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_Binary[23]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_Binary[24]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \r_Binary[25]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \r_Binary[26]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \r_Binary[27]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \r_Binary[28]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \r_Binary[29]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_Binary[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \r_Binary[30]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_Binary[31]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \r_Binary[3]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \r_Binary[4]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \r_Binary[6]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \r_Binary[7]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \r_Binary[8]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \r_Binary[9]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of r_DV_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_Digit_Index[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_Digit_Index[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_Digit_Index[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_Digit_Index[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_Digit_Index[3]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_Digit_Index[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_Digit_Index[6]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_Loop_Count[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \r_Loop_Count[1]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \r_Loop_Count[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r_Loop_Count[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r_Loop_Count[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_Loop_Count[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_Loop_Count[6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r_Loop_Count[7]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_Loop_Count[7]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_SM_Main[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_SM_Main[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_SM_Main[1]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_SM_Main[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_SM_Main[2]_i_2\ : label is "soft_lutpair21";
begin
  D(31 downto 0) <= \^d\(31 downto 0);
  Q(0) <= \^q\(0);
  overflow <= \^overflow\;
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => done,
      I1 => state(1),
      I2 => state(0),
      O => r_DV_reg_0
    );
\bcd_reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => done,
      I1 => state(1),
      I2 => state(0),
      O => E(0)
    );
\r_BCD[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010001FFFF0000"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[3]\,
      I1 => \r_Digit_Index_reg_n_0_[2]\,
      I2 => \r_BCD[28]_i_2_n_0\,
      I3 => \r_BCD[19]_i_4_n_0\,
      I4 => \r_Binary_reg_n_0_[31]\,
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[0]_i_1_n_0\
    );
\r_BCD[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00100010FFFF0010"
    )
        port map (
      I0 => \r_BCD[15]_i_5_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[0]\,
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \r_BCD[30]_i_2_n_0\,
      I4 => \^d\(9),
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[10]_i_1_n_0\
    );
\r_BCD[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005755"
    )
        port map (
      I0 => \r_SM_Main__0\(1),
      I1 => \r_Digit_Index_reg_n_0_[2]\,
      I2 => \r_Digit_Index_reg_n_0_[3]\,
      I3 => \r_BCD[27]_i_4_n_0\,
      I4 => \r_BCD[27]_i_5_n_0\,
      I5 => \^q\(0),
      O => \r_BCD[11]_i_1_n_0\
    );
\r_BCD[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100055555555"
    )
        port map (
      I0 => \r_BCD[27]_i_5_n_0\,
      I1 => \r_BCD[31]_i_4_n_0\,
      I2 => \r_Digit_Index[3]_i_2_n_0\,
      I3 => \r_BCD[27]_i_7_n_0\,
      I4 => \r_BCD[11]_i_4_n_0\,
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[11]_i_2_n_0\
    );
\r_BCD[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00100010FFFF0010"
    )
        port map (
      I0 => \r_BCD[15]_i_5_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[0]\,
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \r_BCD[31]_i_6_n_0\,
      I4 => \^d\(10),
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[11]_i_3_n_0\
    );
\r_BCD[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[2]\,
      I1 => \r_Digit_Index_reg_n_0_[3]\,
      O => \r_BCD[11]_i_4_n_0\
    );
\r_BCD[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444444F444444"
    )
        port map (
      I0 => \r_SM_Main__0\(1),
      I1 => \^d\(11),
      I2 => \r_BCD[15]_i_5_n_0\,
      I3 => \r_Digit_Index_reg_n_0_[1]\,
      I4 => \r_Digit_Index_reg_n_0_[0]\,
      I5 => \r_BCD[28]_i_2_n_0\,
      O => \r_BCD[12]_i_1_n_0\
    );
\r_BCD[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A0A3A"
    )
        port map (
      I0 => \^d\(12),
      I1 => \r_Digit_Index_reg_n_0_[2]\,
      I2 => \r_SM_Main__0\(1),
      I3 => \r_Digit_Index_reg_n_0_[3]\,
      I4 => \r_BCD[29]_i_2_n_0\,
      O => \r_BCD[13]_i_1_n_0\
    );
\r_BCD[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444444F444444"
    )
        port map (
      I0 => \r_SM_Main__0\(1),
      I1 => \^d\(13),
      I2 => \r_BCD[15]_i_5_n_0\,
      I3 => \r_Digit_Index_reg_n_0_[1]\,
      I4 => \r_Digit_Index_reg_n_0_[0]\,
      I5 => \r_BCD[30]_i_2_n_0\,
      O => \r_BCD[14]_i_1_n_0\
    );
\r_BCD[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005557"
    )
        port map (
      I0 => \r_SM_Main__0\(1),
      I1 => \r_BCD[31]_i_4_n_0\,
      I2 => \r_Digit_Index[6]_i_2_n_0\,
      I3 => \r_BCD[15]_i_4_n_0\,
      I4 => \r_BCD[27]_i_5_n_0\,
      I5 => \^q\(0),
      O => \r_BCD[15]_i_1_n_0\
    );
\r_BCD[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100055555555"
    )
        port map (
      I0 => \r_BCD[27]_i_5_n_0\,
      I1 => \r_BCD[15]_i_4_n_0\,
      I2 => \r_Digit_Index_reg_n_0_[0]\,
      I3 => \r_Digit_Index_reg_n_0_[1]\,
      I4 => \r_BCD[31]_i_4_n_0\,
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[15]_i_2_n_0\
    );
\r_BCD[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00400040FFFF0040"
    )
        port map (
      I0 => \r_BCD[15]_i_5_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      I2 => \r_Digit_Index_reg_n_0_[0]\,
      I3 => \r_BCD[31]_i_6_n_0\,
      I4 => \^d\(14),
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[15]_i_3_n_0\
    );
\r_BCD[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[3]\,
      I1 => \r_Digit_Index_reg_n_0_[2]\,
      I2 => \r_Digit_Index_reg_n_0_[6]\,
      I3 => \r_Digit_Index_reg_n_0_[5]\,
      I4 => \r_Digit_Index_reg_n_0_[7]\,
      I5 => \r_Digit_Index_reg_n_0_[4]\,
      O => \r_BCD[15]_i_4_n_0\
    );
\r_BCD[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[2]\,
      I1 => \r_SM_Main__0\(1),
      I2 => \r_Digit_Index_reg_n_0_[3]\,
      O => \r_BCD[15]_i_5_n_0\
    );
\r_BCD[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000100FFFF0100"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[1]\,
      I1 => \r_Digit_Index_reg_n_0_[0]\,
      I2 => \r_BCD[28]_i_2_n_0\,
      I3 => \r_BCD[31]_i_5_n_0\,
      I4 => \^d\(15),
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[16]_i_1_n_0\
    );
\r_BCD[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2020FF00"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[2]\,
      I1 => \r_Digit_Index_reg_n_0_[3]\,
      I2 => \r_BCD[17]_i_2_n_0\,
      I3 => \^d\(16),
      I4 => \r_SM_Main__0\(1),
      O => \r_BCD[17]_i_1_n_0\
    );
\r_BCD[17]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[1]\,
      I1 => \r_Digit_Index_reg_n_0_[0]\,
      I2 => \r_BCD[29]_i_3_n_0\,
      O => \r_BCD[17]_i_2_n_0\
    );
\r_BCD[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00020002FFFF0002"
    )
        port map (
      I0 => \r_BCD[31]_i_5_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      I2 => \r_Digit_Index_reg_n_0_[0]\,
      I3 => \r_BCD[30]_i_2_n_0\,
      I4 => \^d\(17),
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[18]_i_1_n_0\
    );
\r_BCD[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005755"
    )
        port map (
      I0 => \r_SM_Main__0\(1),
      I1 => \r_BCD[19]_i_4_n_0\,
      I2 => \r_BCD[31]_i_4_n_0\,
      I3 => \r_BCD[19]_i_5_n_0\,
      I4 => \r_BCD[27]_i_5_n_0\,
      I5 => \^q\(0),
      O => \r_BCD[19]_i_1_n_0\
    );
\r_BCD[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000455555555"
    )
        port map (
      I0 => \r_BCD[27]_i_5_n_0\,
      I1 => \r_BCD[19]_i_5_n_0\,
      I2 => \r_BCD[31]_i_4_n_0\,
      I3 => \r_Digit_Index_reg_n_0_[0]\,
      I4 => \r_Digit_Index_reg_n_0_[1]\,
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[19]_i_2_n_0\
    );
\r_BCD[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00020002FFFF0002"
    )
        port map (
      I0 => \r_BCD[31]_i_5_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      I2 => \r_Digit_Index_reg_n_0_[0]\,
      I3 => \r_BCD[31]_i_6_n_0\,
      I4 => \^d\(18),
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[19]_i_3_n_0\
    );
\r_BCD[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[0]\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      O => \r_BCD[19]_i_4_n_0\
    );
\r_BCD[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[6]\,
      I1 => \r_Digit_Index_reg_n_0_[5]\,
      I2 => \r_Digit_Index_reg_n_0_[7]\,
      I3 => \r_Digit_Index_reg_n_0_[4]\,
      I4 => \r_Digit_Index_reg_n_0_[3]\,
      I5 => \r_Digit_Index_reg_n_0_[2]\,
      O => \r_BCD[19]_i_5_n_0\
    );
\r_BCD[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1010FF00"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[2]\,
      I1 => \r_Digit_Index_reg_n_0_[3]\,
      I2 => \r_BCD[17]_i_2_n_0\,
      I3 => \^d\(0),
      I4 => \r_SM_Main__0\(1),
      O => \r_BCD[1]_i_1_n_0\
    );
\r_BCD[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02000200FFFF0200"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[0]\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      I2 => \r_BCD[28]_i_2_n_0\,
      I3 => \r_BCD[31]_i_5_n_0\,
      I4 => \^d\(19),
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[20]_i_1_n_0\
    );
\r_BCD[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0404FF00"
    )
        port map (
      I0 => \r_BCD[21]_i_2_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[2]\,
      I2 => \r_Digit_Index_reg_n_0_[3]\,
      I3 => \^d\(20),
      I4 => \r_SM_Main__0\(1),
      O => \r_BCD[21]_i_1_n_0\
    );
\r_BCD[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[0]\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      I2 => \r_BCD[29]_i_3_n_0\,
      O => \r_BCD[21]_i_2_n_0\
    );
\r_BCD[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080008FFFF0008"
    )
        port map (
      I0 => \r_BCD[31]_i_5_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[0]\,
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \r_BCD[30]_i_2_n_0\,
      I4 => \^d\(21),
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[22]_i_1_n_0\
    );
\r_BCD[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000055D5"
    )
        port map (
      I0 => \r_SM_Main__0\(1),
      I1 => \r_BCD[23]_i_4_n_0\,
      I2 => \r_Digit_Index_reg_n_0_[2]\,
      I3 => \r_Digit_Index_reg_n_0_[3]\,
      I4 => \r_BCD[27]_i_5_n_0\,
      I5 => \^q\(0),
      O => \r_BCD[23]_i_1_n_0\
    );
\r_BCD[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040055555555"
    )
        port map (
      I0 => \r_BCD[27]_i_5_n_0\,
      I1 => \r_BCD[27]_i_6_n_0\,
      I2 => \r_BCD[31]_i_4_n_0\,
      I3 => \r_Digit_Index[3]_i_2_n_0\,
      I4 => \r_BCD[23]_i_5_n_0\,
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[23]_i_2_n_0\
    );
\r_BCD[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080008FFFF0008"
    )
        port map (
      I0 => \r_BCD[31]_i_5_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[0]\,
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \r_BCD[31]_i_6_n_0\,
      I4 => \^d\(22),
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[23]_i_3_n_0\
    );
\r_BCD[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020202000000020"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[0]\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      I2 => \r_Digit_Index[3]_i_2_n_0\,
      I3 => \r_BCD[31]_i_7_n_0\,
      I4 => \r_BCD[31]_i_8_n_0\,
      I5 => \r_BCD[31]_i_9_n_0\,
      O => \r_BCD[23]_i_4_n_0\
    );
\r_BCD[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[1]\,
      I1 => \r_Digit_Index_reg_n_0_[0]\,
      O => \r_BCD[23]_i_5_n_0\
    );
\r_BCD[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00200020FFFF0020"
    )
        port map (
      I0 => \r_BCD[31]_i_5_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[0]\,
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \r_BCD[28]_i_2_n_0\,
      I4 => \^d\(23),
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[24]_i_1_n_0\
    );
\r_BCD[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2020FF00"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[2]\,
      I1 => \r_Digit_Index_reg_n_0_[3]\,
      I2 => \r_BCD[25]_i_2_n_0\,
      I3 => \^d\(24),
      I4 => \r_SM_Main__0\(1),
      O => \r_BCD[25]_i_1_n_0\
    );
\r_BCD[25]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[0]\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      I2 => \r_BCD[29]_i_3_n_0\,
      O => \r_BCD[25]_i_2_n_0\
    );
\r_BCD[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00200020FFFF0020"
    )
        port map (
      I0 => \r_BCD[31]_i_5_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[0]\,
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \r_BCD[30]_i_2_n_0\,
      I4 => \^d\(25),
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[26]_i_1_n_0\
    );
\r_BCD[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000055D5"
    )
        port map (
      I0 => \r_SM_Main__0\(1),
      I1 => \r_BCD[27]_i_4_n_0\,
      I2 => \r_Digit_Index_reg_n_0_[2]\,
      I3 => \r_Digit_Index_reg_n_0_[3]\,
      I4 => \r_BCD[27]_i_5_n_0\,
      I5 => \^q\(0),
      O => \r_BCD[27]_i_1_n_0\
    );
\r_BCD[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000055555555"
    )
        port map (
      I0 => \r_BCD[27]_i_5_n_0\,
      I1 => \r_BCD[27]_i_6_n_0\,
      I2 => \r_BCD[31]_i_4_n_0\,
      I3 => \r_Digit_Index[3]_i_2_n_0\,
      I4 => \r_BCD[27]_i_7_n_0\,
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[27]_i_2_n_0\
    );
\r_BCD[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00200020FFFF0020"
    )
        port map (
      I0 => \r_BCD[31]_i_5_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[0]\,
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \r_BCD[31]_i_6_n_0\,
      I4 => \^d\(26),
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[27]_i_3_n_0\
    );
\r_BCD[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404000000040"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[0]\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      I2 => \r_Digit_Index[3]_i_2_n_0\,
      I3 => \r_BCD[31]_i_7_n_0\,
      I4 => \r_BCD[31]_i_8_n_0\,
      I5 => \r_BCD[31]_i_9_n_0\,
      O => \r_BCD[27]_i_4_n_0\
    );
\r_BCD[27]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDCD"
    )
        port map (
      I0 => \^q\(0),
      I1 => \r_SM_Main_reg_n_0_[2]\,
      I2 => r_OV_reg_0,
      I3 => \r_SM_Main__0\(1),
      O => \r_BCD[27]_i_5_n_0\
    );
\r_BCD[27]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[2]\,
      I1 => \r_Digit_Index_reg_n_0_[3]\,
      O => \r_BCD[27]_i_6_n_0\
    );
\r_BCD[27]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[1]\,
      I1 => \r_Digit_Index_reg_n_0_[0]\,
      O => \r_BCD[27]_i_7_n_0\
    );
\r_BCD[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444F4444444"
    )
        port map (
      I0 => \r_SM_Main__0\(1),
      I1 => \^d\(27),
      I2 => \r_BCD[31]_i_5_n_0\,
      I3 => \r_Digit_Index_reg_n_0_[1]\,
      I4 => \r_Digit_Index_reg_n_0_[0]\,
      I5 => \r_BCD[28]_i_2_n_0\,
      O => \r_BCD[28]_i_1_n_0\
    );
\r_BCD[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[6]\,
      I1 => \r_Digit_Index_reg_n_0_[5]\,
      I2 => \r_Digit_Index_reg_n_0_[7]\,
      I3 => \r_Digit_Index_reg_n_0_[4]\,
      I4 => \r_BCD[28]_i_3_n_0\,
      O => \r_BCD[28]_i_2_n_0\
    );
\r_BCD[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFF47474747"
    )
        port map (
      I0 => \r_BCD[28]_i_4_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      I2 => \r_BCD[28]_i_5_n_0\,
      I3 => \r_Digit_Index_reg_n_0_[3]\,
      I4 => \r_BCD[28]_i_6_n_0\,
      I5 => \r_Digit_Index_reg_n_0_[0]\,
      O => \r_BCD[28]_i_3_n_0\
    );
\r_BCD[28]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^d\(8),
      I1 => \r_Digit_Index_reg_n_0_[2]\,
      I2 => \^d\(24),
      I3 => \r_Digit_Index_reg_n_0_[3]\,
      O => \r_BCD[28]_i_4_n_0\
    );
\r_BCD[28]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^d\(16),
      I1 => \r_Digit_Index_reg_n_0_[2]\,
      I2 => p_0_in,
      I3 => \r_Digit_Index_reg_n_0_[3]\,
      I4 => \^d\(0),
      O => \r_BCD[28]_i_5_n_0\
    );
\r_BCD[28]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^d\(28),
      I1 => \^d\(12),
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \^d\(20),
      I4 => \r_Digit_Index_reg_n_0_[2]\,
      I5 => \^d\(4),
      O => \r_BCD[28]_i_6_n_0\
    );
\r_BCD[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A0ACA"
    )
        port map (
      I0 => \^d\(28),
      I1 => \r_Digit_Index_reg_n_0_[2]\,
      I2 => \r_SM_Main__0\(1),
      I3 => \r_Digit_Index_reg_n_0_[3]\,
      I4 => \r_BCD[29]_i_2_n_0\,
      O => \r_BCD[29]_i_1_n_0\
    );
\r_BCD[29]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[1]\,
      I1 => \r_Digit_Index_reg_n_0_[0]\,
      I2 => \r_BCD[29]_i_3_n_0\,
      O => \r_BCD[29]_i_2_n_0\
    );
\r_BCD[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF6"
    )
        port map (
      I0 => \r_BCD[31]_i_12_n_0\,
      I1 => \r_BCD[28]_i_3_n_0\,
      I2 => \r_Digit_Index_reg_n_0_[6]\,
      I3 => \r_Digit_Index_reg_n_0_[5]\,
      I4 => \r_Digit_Index_reg_n_0_[7]\,
      I5 => \r_Digit_Index_reg_n_0_[4]\,
      O => \r_BCD[29]_i_3_n_0\
    );
\r_BCD[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010001FFFF0001"
    )
        port map (
      I0 => \r_BCD[15]_i_5_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      I2 => \r_Digit_Index_reg_n_0_[0]\,
      I3 => \r_BCD[30]_i_2_n_0\,
      I4 => \^d\(1),
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[2]_i_1_n_0\
    );
\r_BCD[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444F4444444"
    )
        port map (
      I0 => \r_SM_Main__0\(1),
      I1 => \^d\(29),
      I2 => \r_BCD[31]_i_5_n_0\,
      I3 => \r_Digit_Index_reg_n_0_[1]\,
      I4 => \r_Digit_Index_reg_n_0_[0]\,
      I5 => \r_BCD[30]_i_2_n_0\,
      O => \r_BCD[30]_i_1_n_0\
    );
\r_BCD[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFF"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[6]\,
      I1 => \r_Digit_Index_reg_n_0_[5]\,
      I2 => \r_Digit_Index_reg_n_0_[7]\,
      I3 => \r_Digit_Index_reg_n_0_[4]\,
      I4 => \r_BCD[31]_i_7_n_0\,
      I5 => \r_BCD[31]_i_8_n_0\,
      O => \r_BCD[30]_i_2_n_0\
    );
\r_BCD[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[2]\,
      I1 => r_OV_reg_0,
      I2 => \r_SM_Main__0\(1),
      I3 => \^q\(0),
      O => \r_BCD[31]_i_1_n_0\
    );
\r_BCD[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^d\(26),
      I1 => \^d\(10),
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \^d\(18),
      I4 => \r_Digit_Index_reg_n_0_[2]\,
      I5 => \^d\(2),
      O => \r_BCD[31]_i_10_n_0\
    );
\r_BCD[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^d\(30),
      I1 => \^d\(14),
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \^d\(22),
      I4 => \r_Digit_Index_reg_n_0_[2]\,
      I5 => \^d\(6),
      O => \r_BCD[31]_i_11_n_0\
    );
\r_BCD[31]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABABAB"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[3]\,
      I1 => \r_BCD[31]_i_15_n_0\,
      I2 => \r_BCD[31]_i_16_n_0\,
      I3 => \r_Digit_Index_reg_n_0_[0]\,
      I4 => \r_BCD[31]_i_17_n_0\,
      O => \r_BCD[31]_i_12_n_0\
    );
\r_BCD[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^d\(27),
      I1 => \^d\(11),
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \^d\(19),
      I4 => \r_Digit_Index_reg_n_0_[2]\,
      I5 => \^d\(3),
      O => \r_BCD[31]_i_13_n_0\
    );
\r_BCD[31]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^d\(31),
      I1 => \^d\(15),
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \^d\(23),
      I4 => \r_Digit_Index_reg_n_0_[2]\,
      I5 => \^d\(7),
      O => \r_BCD[31]_i_14_n_0\
    );
\r_BCD[31]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45400000"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[0]\,
      I1 => \^d\(25),
      I2 => \r_Digit_Index_reg_n_0_[2]\,
      I3 => \^d\(9),
      I4 => \r_Digit_Index_reg_n_0_[1]\,
      O => \r_BCD[31]_i_15_n_0\
    );
\r_BCD[31]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \^d\(1),
      I1 => \r_Digit_Index_reg_n_0_[2]\,
      I2 => \^d\(17),
      I3 => \r_Digit_Index_reg_n_0_[1]\,
      I4 => \r_Digit_Index_reg_n_0_[0]\,
      O => \r_BCD[31]_i_16_n_0\
    );
\r_BCD[31]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^d\(29),
      I1 => \^d\(13),
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \^d\(21),
      I4 => \r_Digit_Index_reg_n_0_[2]\,
      I5 => \^d\(5),
      O => \r_BCD[31]_i_17_n_0\
    );
\r_BCD[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002F2F00000F00"
    )
        port map (
      I0 => \r_SM_Main[1]_i_2_n_0\,
      I1 => \r_BCD[31]_i_4_n_0\,
      I2 => \r_SM_Main__0\(1),
      I3 => r_OV_reg_0,
      I4 => \r_SM_Main_reg_n_0_[2]\,
      I5 => \^q\(0),
      O => r_BCD(31)
    );
\r_BCD[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444F4444444"
    )
        port map (
      I0 => \r_SM_Main__0\(1),
      I1 => \^d\(30),
      I2 => \r_BCD[31]_i_5_n_0\,
      I3 => \r_Digit_Index_reg_n_0_[1]\,
      I4 => \r_Digit_Index_reg_n_0_[0]\,
      I5 => \r_BCD[31]_i_6_n_0\,
      O => \r_BCD[31]_i_3_n_0\
    );
\r_BCD[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \r_BCD[31]_i_7_n_0\,
      I1 => \r_BCD[31]_i_8_n_0\,
      I2 => \r_BCD[31]_i_9_n_0\,
      O => \r_BCD[31]_i_4_n_0\
    );
\r_BCD[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[2]\,
      I1 => \r_SM_Main__0\(1),
      I2 => \r_Digit_Index_reg_n_0_[3]\,
      O => \r_BCD[31]_i_5_n_0\
    );
\r_BCD[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56FF"
    )
        port map (
      I0 => \r_BCD[31]_i_9_n_0\,
      I1 => \r_BCD[31]_i_8_n_0\,
      I2 => \r_BCD[31]_i_7_n_0\,
      I3 => \r_Digit_Index[3]_i_2_n_0\,
      O => \r_BCD[31]_i_6_n_0\
    );
\r_BCD[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[3]\,
      I1 => \r_BCD[31]_i_10_n_0\,
      I2 => \r_Digit_Index_reg_n_0_[0]\,
      I3 => \r_BCD[31]_i_11_n_0\,
      O => \r_BCD[31]_i_7_n_0\
    );
\r_BCD[31]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \r_BCD[28]_i_3_n_0\,
      I1 => \r_BCD[31]_i_12_n_0\,
      O => \r_BCD[31]_i_8_n_0\
    );
\r_BCD[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \r_BCD[31]_i_13_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[0]\,
      I2 => \r_BCD[31]_i_14_n_0\,
      I3 => \r_Digit_Index_reg_n_0_[3]\,
      O => \r_BCD[31]_i_9_n_0\
    );
\r_BCD[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^d\(31),
      I1 => \^q\(0),
      O => \r_BCD[32]_i_1_n_0\
    );
\r_BCD[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005557"
    )
        port map (
      I0 => \r_SM_Main__0\(1),
      I1 => \r_BCD[15]_i_4_n_0\,
      I2 => \r_BCD[19]_i_4_n_0\,
      I3 => \r_BCD[31]_i_4_n_0\,
      I4 => \r_BCD[27]_i_5_n_0\,
      I5 => \^q\(0),
      O => \r_BCD[3]_i_1_n_0\
    );
\r_BCD[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000155555555"
    )
        port map (
      I0 => \r_BCD[27]_i_5_n_0\,
      I1 => \r_BCD[31]_i_4_n_0\,
      I2 => \r_Digit_Index_reg_n_0_[0]\,
      I3 => \r_Digit_Index_reg_n_0_[1]\,
      I4 => \r_BCD[15]_i_4_n_0\,
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[3]_i_2_n_0\
    );
\r_BCD[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010001FFFF0001"
    )
        port map (
      I0 => \r_BCD[15]_i_5_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      I2 => \r_Digit_Index_reg_n_0_[0]\,
      I3 => \r_BCD[31]_i_6_n_0\,
      I4 => \^d\(2),
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[3]_i_3_n_0\
    );
\r_BCD[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444F44"
    )
        port map (
      I0 => \r_SM_Main__0\(1),
      I1 => \^d\(3),
      I2 => \r_BCD[15]_i_5_n_0\,
      I3 => \r_Digit_Index_reg_n_0_[0]\,
      I4 => \r_Digit_Index_reg_n_0_[1]\,
      I5 => \r_BCD[28]_i_2_n_0\,
      O => \r_BCD[4]_i_1_n_0\
    );
\r_BCD[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A0A3A"
    )
        port map (
      I0 => \^d\(4),
      I1 => \r_Digit_Index_reg_n_0_[2]\,
      I2 => \r_SM_Main__0\(1),
      I3 => \r_Digit_Index_reg_n_0_[3]\,
      I4 => \r_BCD[21]_i_2_n_0\,
      O => \r_BCD[5]_i_1_n_0\
    );
\r_BCD[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00040004FFFF0004"
    )
        port map (
      I0 => \r_BCD[15]_i_5_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[0]\,
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \r_BCD[30]_i_2_n_0\,
      I4 => \^d\(5),
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[6]_i_1_n_0\
    );
\r_BCD[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005755"
    )
        port map (
      I0 => \r_SM_Main__0\(1),
      I1 => \r_Digit_Index_reg_n_0_[2]\,
      I2 => \r_Digit_Index_reg_n_0_[3]\,
      I3 => \r_BCD[23]_i_4_n_0\,
      I4 => \r_BCD[27]_i_5_n_0\,
      I5 => \^q\(0),
      O => \r_BCD[7]_i_1_n_0\
    );
\r_BCD[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001055555555"
    )
        port map (
      I0 => \r_BCD[27]_i_5_n_0\,
      I1 => \r_BCD[31]_i_4_n_0\,
      I2 => \r_Digit_Index[3]_i_2_n_0\,
      I3 => \r_BCD[23]_i_5_n_0\,
      I4 => \r_BCD[11]_i_4_n_0\,
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[7]_i_2_n_0\
    );
\r_BCD[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00040004FFFF0004"
    )
        port map (
      I0 => \r_BCD[15]_i_5_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[0]\,
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \r_BCD[31]_i_6_n_0\,
      I4 => \^d\(6),
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[7]_i_3_n_0\
    );
\r_BCD[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00100010FFFF0010"
    )
        port map (
      I0 => \r_BCD[15]_i_5_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[0]\,
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \r_BCD[28]_i_2_n_0\,
      I4 => \^d\(7),
      I5 => \r_SM_Main__0\(1),
      O => \r_BCD[8]_i_1_n_0\
    );
\r_BCD[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1010FF00"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[2]\,
      I1 => \r_Digit_Index_reg_n_0_[3]\,
      I2 => \r_BCD[25]_i_2_n_0\,
      I3 => \^d\(8),
      I4 => \r_SM_Main__0\(1),
      O => \r_BCD[9]_i_1_n_0\
    );
\r_BCD_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[3]_i_2_n_0\,
      D => \r_BCD[0]_i_1_n_0\,
      Q => \^d\(0),
      R => \r_BCD[3]_i_1_n_0\
    );
\r_BCD_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[11]_i_2_n_0\,
      D => \r_BCD[10]_i_1_n_0\,
      Q => \^d\(10),
      R => \r_BCD[11]_i_1_n_0\
    );
\r_BCD_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[11]_i_2_n_0\,
      D => \r_BCD[11]_i_3_n_0\,
      Q => \^d\(11),
      R => \r_BCD[11]_i_1_n_0\
    );
\r_BCD_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[15]_i_2_n_0\,
      D => \r_BCD[12]_i_1_n_0\,
      Q => \^d\(12),
      R => \r_BCD[15]_i_1_n_0\
    );
\r_BCD_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[15]_i_2_n_0\,
      D => \r_BCD[13]_i_1_n_0\,
      Q => \^d\(13),
      R => \r_BCD[15]_i_1_n_0\
    );
\r_BCD_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[15]_i_2_n_0\,
      D => \r_BCD[14]_i_1_n_0\,
      Q => \^d\(14),
      R => \r_BCD[15]_i_1_n_0\
    );
\r_BCD_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[15]_i_2_n_0\,
      D => \r_BCD[15]_i_3_n_0\,
      Q => \^d\(15),
      R => \r_BCD[15]_i_1_n_0\
    );
\r_BCD_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[19]_i_2_n_0\,
      D => \r_BCD[16]_i_1_n_0\,
      Q => \^d\(16),
      R => \r_BCD[19]_i_1_n_0\
    );
\r_BCD_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[19]_i_2_n_0\,
      D => \r_BCD[17]_i_1_n_0\,
      Q => \^d\(17),
      R => \r_BCD[19]_i_1_n_0\
    );
\r_BCD_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[19]_i_2_n_0\,
      D => \r_BCD[18]_i_1_n_0\,
      Q => \^d\(18),
      R => \r_BCD[19]_i_1_n_0\
    );
\r_BCD_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[19]_i_2_n_0\,
      D => \r_BCD[19]_i_3_n_0\,
      Q => \^d\(19),
      R => \r_BCD[19]_i_1_n_0\
    );
\r_BCD_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[3]_i_2_n_0\,
      D => \r_BCD[1]_i_1_n_0\,
      Q => \^d\(1),
      R => \r_BCD[3]_i_1_n_0\
    );
\r_BCD_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[23]_i_2_n_0\,
      D => \r_BCD[20]_i_1_n_0\,
      Q => \^d\(20),
      R => \r_BCD[23]_i_1_n_0\
    );
\r_BCD_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[23]_i_2_n_0\,
      D => \r_BCD[21]_i_1_n_0\,
      Q => \^d\(21),
      R => \r_BCD[23]_i_1_n_0\
    );
\r_BCD_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[23]_i_2_n_0\,
      D => \r_BCD[22]_i_1_n_0\,
      Q => \^d\(22),
      R => \r_BCD[23]_i_1_n_0\
    );
\r_BCD_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[23]_i_2_n_0\,
      D => \r_BCD[23]_i_3_n_0\,
      Q => \^d\(23),
      R => \r_BCD[23]_i_1_n_0\
    );
\r_BCD_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[27]_i_2_n_0\,
      D => \r_BCD[24]_i_1_n_0\,
      Q => \^d\(24),
      R => \r_BCD[27]_i_1_n_0\
    );
\r_BCD_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[27]_i_2_n_0\,
      D => \r_BCD[25]_i_1_n_0\,
      Q => \^d\(25),
      R => \r_BCD[27]_i_1_n_0\
    );
\r_BCD_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[27]_i_2_n_0\,
      D => \r_BCD[26]_i_1_n_0\,
      Q => \^d\(26),
      R => \r_BCD[27]_i_1_n_0\
    );
\r_BCD_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[27]_i_2_n_0\,
      D => \r_BCD[27]_i_3_n_0\,
      Q => \^d\(27),
      R => \r_BCD[27]_i_1_n_0\
    );
\r_BCD_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(31),
      D => \r_BCD[28]_i_1_n_0\,
      Q => \^d\(28),
      R => \r_BCD[31]_i_1_n_0\
    );
\r_BCD_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(31),
      D => \r_BCD[29]_i_1_n_0\,
      Q => \^d\(29),
      R => \r_BCD[31]_i_1_n_0\
    );
\r_BCD_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[3]_i_2_n_0\,
      D => \r_BCD[2]_i_1_n_0\,
      Q => \^d\(2),
      R => \r_BCD[3]_i_1_n_0\
    );
\r_BCD_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(31),
      D => \r_BCD[30]_i_1_n_0\,
      Q => \^d\(30),
      R => \r_BCD[31]_i_1_n_0\
    );
\r_BCD_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(31),
      D => \r_BCD[31]_i_3_n_0\,
      Q => \^d\(31),
      R => \r_BCD[31]_i_1_n_0\
    );
\r_BCD_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_BCD[32]_i_1_n_0\,
      Q => p_0_in,
      R => '0'
    );
\r_BCD_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[3]_i_2_n_0\,
      D => \r_BCD[3]_i_3_n_0\,
      Q => \^d\(3),
      R => \r_BCD[3]_i_1_n_0\
    );
\r_BCD_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[7]_i_2_n_0\,
      D => \r_BCD[4]_i_1_n_0\,
      Q => \^d\(4),
      R => \r_BCD[7]_i_1_n_0\
    );
\r_BCD_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[7]_i_2_n_0\,
      D => \r_BCD[5]_i_1_n_0\,
      Q => \^d\(5),
      R => \r_BCD[7]_i_1_n_0\
    );
\r_BCD_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[7]_i_2_n_0\,
      D => \r_BCD[6]_i_1_n_0\,
      Q => \^d\(6),
      R => \r_BCD[7]_i_1_n_0\
    );
\r_BCD_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[7]_i_2_n_0\,
      D => \r_BCD[7]_i_3_n_0\,
      Q => \^d\(7),
      R => \r_BCD[7]_i_1_n_0\
    );
\r_BCD_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[11]_i_2_n_0\,
      D => \r_BCD[8]_i_1_n_0\,
      Q => \^d\(8),
      R => \r_BCD[11]_i_1_n_0\
    );
\r_BCD_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_BCD[11]_i_2_n_0\,
      D => \r_BCD[9]_i_1_n_0\,
      Q => \^d\(9),
      R => \r_BCD[11]_i_1_n_0\
    );
\r_Binary[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[9]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(9),
      O => \r_Binary[10]_i_1_n_0\
    );
\r_Binary[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[10]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(10),
      O => \r_Binary[11]_i_1_n_0\
    );
\r_Binary[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[11]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(11),
      O => \r_Binary[12]_i_1_n_0\
    );
\r_Binary[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[12]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(12),
      O => \r_Binary[13]_i_1_n_0\
    );
\r_Binary[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[13]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(13),
      O => \r_Binary[14]_i_1_n_0\
    );
\r_Binary[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[14]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(14),
      O => \r_Binary[15]_i_1_n_0\
    );
\r_Binary[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[15]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(15),
      O => \r_Binary[16]_i_1_n_0\
    );
\r_Binary[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[16]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(16),
      O => \r_Binary[17]_i_1_n_0\
    );
\r_Binary[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[17]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(17),
      O => \r_Binary[18]_i_1_n_0\
    );
\r_Binary[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[18]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(18),
      O => \r_Binary[19]_i_1_n_0\
    );
\r_Binary[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(0),
      O => \r_Binary[1]_i_1_n_0\
    );
\r_Binary[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[19]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(19),
      O => \r_Binary[20]_i_1_n_0\
    );
\r_Binary[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[20]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(20),
      O => \r_Binary[21]_i_1_n_0\
    );
\r_Binary[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[21]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(21),
      O => \r_Binary[22]_i_1_n_0\
    );
\r_Binary[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[22]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(22),
      O => \r_Binary[23]_i_1_n_0\
    );
\r_Binary[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[23]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(23),
      O => \r_Binary[24]_i_1_n_0\
    );
\r_Binary[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[24]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(24),
      O => \r_Binary[25]_i_1_n_0\
    );
\r_Binary[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[25]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(25),
      O => \r_Binary[26]_i_1_n_0\
    );
\r_Binary[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[26]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(26),
      O => \r_Binary[27]_i_1_n_0\
    );
\r_Binary[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[27]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(27),
      O => \r_Binary[28]_i_1_n_0\
    );
\r_Binary[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[28]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(28),
      O => \r_Binary[29]_i_1_n_0\
    );
\r_Binary[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(1),
      O => \r_Binary[2]_i_1_n_0\
    );
\r_Binary[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[29]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(29),
      O => \r_Binary[30]_i_1_n_0\
    );
\r_Binary[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0032"
    )
        port map (
      I0 => \^q\(0),
      I1 => \r_SM_Main_reg_n_0_[2]\,
      I2 => r_OV_reg_0,
      I3 => \r_SM_Main__0\(1),
      O => r_BCD(32)
    );
\r_Binary[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[30]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(30),
      O => \r_Binary[31]_i_2_n_0\
    );
\r_Binary[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(2),
      O => \r_Binary[3]_i_1_n_0\
    );
\r_Binary[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[3]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(3),
      O => \r_Binary[4]_i_1_n_0\
    );
\r_Binary[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[4]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(4),
      O => \r_Binary[5]_i_1_n_0\
    );
\r_Binary[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[5]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(5),
      O => \r_Binary[6]_i_1_n_0\
    );
\r_Binary[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[6]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(6),
      O => \r_Binary[7]_i_1_n_0\
    );
\r_Binary[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[7]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(7),
      O => \r_Binary[8]_i_1_n_0\
    );
\r_Binary[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[8]\,
      I1 => \^q\(0),
      I2 => \r_Binary_reg[31]_0\(8),
      O => \r_Binary[9]_i_1_n_0\
    );
\r_Binary_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary_reg[0]_0\(0),
      Q => \r_Binary_reg_n_0_[0]\,
      R => '0'
    );
\r_Binary_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[10]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[10]\,
      R => '0'
    );
\r_Binary_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[11]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[11]\,
      R => '0'
    );
\r_Binary_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[12]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[12]\,
      R => '0'
    );
\r_Binary_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[13]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[13]\,
      R => '0'
    );
\r_Binary_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[14]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[14]\,
      R => '0'
    );
\r_Binary_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[15]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[15]\,
      R => '0'
    );
\r_Binary_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[16]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[16]\,
      R => '0'
    );
\r_Binary_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[17]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[17]\,
      R => '0'
    );
\r_Binary_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[18]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[18]\,
      R => '0'
    );
\r_Binary_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[19]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[19]\,
      R => '0'
    );
\r_Binary_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[1]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[1]\,
      R => '0'
    );
\r_Binary_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[20]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[20]\,
      R => '0'
    );
\r_Binary_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[21]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[21]\,
      R => '0'
    );
\r_Binary_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[22]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[22]\,
      R => '0'
    );
\r_Binary_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[23]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[23]\,
      R => '0'
    );
\r_Binary_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[24]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[24]\,
      R => '0'
    );
\r_Binary_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[25]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[25]\,
      R => '0'
    );
\r_Binary_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[26]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[26]\,
      R => '0'
    );
\r_Binary_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[27]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[27]\,
      R => '0'
    );
\r_Binary_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[28]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[28]\,
      R => '0'
    );
\r_Binary_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[29]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[29]\,
      R => '0'
    );
\r_Binary_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[2]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[2]\,
      R => '0'
    );
\r_Binary_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[30]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[30]\,
      R => '0'
    );
\r_Binary_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[31]_i_2_n_0\,
      Q => \r_Binary_reg_n_0_[31]\,
      R => '0'
    );
\r_Binary_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[3]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[3]\,
      R => '0'
    );
\r_Binary_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[4]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[4]\,
      R => '0'
    );
\r_Binary_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[5]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[5]\,
      R => '0'
    );
\r_Binary_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[6]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[6]\,
      R => '0'
    );
\r_Binary_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[7]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[7]\,
      R => '0'
    );
\r_Binary_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[8]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[8]\,
      R => '0'
    );
\r_Binary_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => r_BCD(32),
      D => \r_Binary[9]_i_1_n_0\,
      Q => \r_Binary_reg_n_0_[9]\,
      R => '0'
    );
r_DV_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE40"
    )
        port map (
      I0 => \r_SM_Main__0\(1),
      I1 => \^q\(0),
      I2 => \r_SM_Main_reg_n_0_[2]\,
      I3 => done,
      O => r_DV_i_1_n_0
    );
r_DV_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_DV_i_1_n_0,
      Q => done,
      R => '0'
    );
\r_Digit_Index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[0]\,
      O => r_Digit_Index(0)
    );
\r_Digit_Index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[0]\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      O => r_Digit_Index(1)
    );
\r_Digit_Index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[2]\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      I2 => \r_Digit_Index_reg_n_0_[0]\,
      O => \r_Digit_Index[2]_i_1_n_0\
    );
\r_Digit_Index[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7708FF00"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[0]\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      I2 => \r_Digit_Index[3]_i_2_n_0\,
      I3 => \r_Digit_Index_reg_n_0_[3]\,
      I4 => \r_Digit_Index_reg_n_0_[2]\,
      O => r_Digit_Index(3)
    );
\r_Digit_Index[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[4]\,
      I1 => \r_Digit_Index_reg_n_0_[7]\,
      I2 => \r_Digit_Index_reg_n_0_[5]\,
      I3 => \r_Digit_Index_reg_n_0_[6]\,
      O => \r_Digit_Index[3]_i_2_n_0\
    );
\r_Digit_Index[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[4]\,
      I1 => \r_Digit_Index_reg_n_0_[3]\,
      I2 => \r_Digit_Index_reg_n_0_[2]\,
      I3 => \r_Digit_Index_reg_n_0_[1]\,
      I4 => \r_Digit_Index_reg_n_0_[0]\,
      O => r_Digit_Index(4)
    );
\r_Digit_Index[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[5]\,
      I1 => \r_Digit_Index_reg_n_0_[0]\,
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \r_Digit_Index_reg_n_0_[2]\,
      I4 => \r_Digit_Index_reg_n_0_[3]\,
      I5 => \r_Digit_Index_reg_n_0_[4]\,
      O => r_Digit_Index(5)
    );
\r_Digit_Index[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAAAAAA"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[6]\,
      I1 => \r_Digit_Index_reg_n_0_[4]\,
      I2 => \r_Digit_Index_reg_n_0_[3]\,
      I3 => \r_Digit_Index_reg_n_0_[2]\,
      I4 => \r_Digit_Index[6]_i_2_n_0\,
      I5 => \r_Digit_Index_reg_n_0_[5]\,
      O => r_Digit_Index(6)
    );
\r_Digit_Index[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[0]\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      O => \r_Digit_Index[6]_i_2_n_0\
    );
\r_Digit_Index[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \r_SM_Main_reg_n_0_[2]\,
      I2 => \r_SM_Main__0\(1),
      O => \r_Digit_Index[7]_i_1_n_0\
    );
\r_Digit_Index[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[7]\,
      I1 => \r_Digit_Index[7]_i_3_n_0\,
      I2 => \r_Digit_Index_reg_n_0_[6]\,
      O => r_Digit_Index(7)
    );
\r_Digit_Index[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[5]\,
      I1 => \r_Digit_Index_reg_n_0_[0]\,
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \r_Digit_Index_reg_n_0_[2]\,
      I4 => \r_Digit_Index_reg_n_0_[3]\,
      I5 => \r_Digit_Index_reg_n_0_[4]\,
      O => \r_Digit_Index[7]_i_3_n_0\
    );
\r_Digit_Index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_Digit_Index[7]_i_1_n_0\,
      D => r_Digit_Index(0),
      Q => \r_Digit_Index_reg_n_0_[0]\,
      R => '0'
    );
\r_Digit_Index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_Digit_Index[7]_i_1_n_0\,
      D => r_Digit_Index(1),
      Q => \r_Digit_Index_reg_n_0_[1]\,
      R => '0'
    );
\r_Digit_Index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_Digit_Index[7]_i_1_n_0\,
      D => \r_Digit_Index[2]_i_1_n_0\,
      Q => \r_Digit_Index_reg_n_0_[2]\,
      R => '0'
    );
\r_Digit_Index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_Digit_Index[7]_i_1_n_0\,
      D => r_Digit_Index(3),
      Q => \r_Digit_Index_reg_n_0_[3]\,
      R => '0'
    );
\r_Digit_Index_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_Digit_Index[7]_i_1_n_0\,
      D => r_Digit_Index(4),
      Q => \r_Digit_Index_reg_n_0_[4]\,
      R => '0'
    );
\r_Digit_Index_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_Digit_Index[7]_i_1_n_0\,
      D => r_Digit_Index(5),
      Q => \r_Digit_Index_reg_n_0_[5]\,
      R => '0'
    );
\r_Digit_Index_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_Digit_Index[7]_i_1_n_0\,
      D => r_Digit_Index(6),
      Q => \r_Digit_Index_reg_n_0_[6]\,
      R => '0'
    );
\r_Digit_Index_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_Digit_Index[7]_i_1_n_0\,
      D => r_Digit_Index(7),
      Q => \r_Digit_Index_reg_n_0_[7]\,
      R => '0'
    );
\r_Loop_Count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_Loop_Count_reg_n_0_[0]\,
      O => r_Loop_Count(0)
    );
\r_Loop_Count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_Loop_Count_reg_n_0_[1]\,
      I1 => \r_Loop_Count_reg_n_0_[0]\,
      O => r_Loop_Count(1)
    );
\r_Loop_Count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \r_Loop_Count_reg_n_0_[2]\,
      I1 => \r_Loop_Count_reg_n_0_[0]\,
      I2 => \r_Loop_Count_reg_n_0_[1]\,
      O => r_Loop_Count(2)
    );
\r_Loop_Count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \r_Loop_Count_reg_n_0_[3]\,
      I1 => \r_Loop_Count_reg_n_0_[1]\,
      I2 => \r_Loop_Count_reg_n_0_[0]\,
      I3 => \r_Loop_Count_reg_n_0_[2]\,
      O => r_Loop_Count(3)
    );
\r_Loop_Count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \r_Loop_Count_reg_n_0_[4]\,
      I1 => \r_Loop_Count_reg_n_0_[2]\,
      I2 => \r_Loop_Count_reg_n_0_[0]\,
      I3 => \r_Loop_Count_reg_n_0_[1]\,
      I4 => \r_Loop_Count_reg_n_0_[3]\,
      O => r_Loop_Count(4)
    );
\r_Loop_Count[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FE0"
    )
        port map (
      I0 => \r_Loop_Count_reg_n_0_[6]\,
      I1 => \r_Loop_Count_reg_n_0_[7]\,
      I2 => \r_Loop_Count[7]_i_3_n_0\,
      I3 => \r_Loop_Count_reg_n_0_[5]\,
      O => r_Loop_Count(5)
    );
\r_Loop_Count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \r_Loop_Count_reg_n_0_[6]\,
      I1 => \r_Loop_Count_reg_n_0_[5]\,
      I2 => \r_Loop_Count[7]_i_3_n_0\,
      O => r_Loop_Count(6)
    );
\r_Loop_Count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[2]\,
      I1 => \r_SM_Main__0\(1),
      I2 => \^q\(0),
      O => \r_Loop_Count[7]_i_1_n_0\
    );
\r_Loop_Count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \r_Loop_Count_reg_n_0_[7]\,
      I1 => \r_Loop_Count[7]_i_3_n_0\,
      I2 => \r_Loop_Count_reg_n_0_[5]\,
      I3 => \r_Loop_Count_reg_n_0_[6]\,
      O => r_Loop_Count(7)
    );
\r_Loop_Count[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \r_Loop_Count_reg_n_0_[4]\,
      I1 => \r_Loop_Count_reg_n_0_[2]\,
      I2 => \r_Loop_Count_reg_n_0_[0]\,
      I3 => \r_Loop_Count_reg_n_0_[1]\,
      I4 => \r_Loop_Count_reg_n_0_[3]\,
      O => \r_Loop_Count[7]_i_3_n_0\
    );
\r_Loop_Count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_Loop_Count[7]_i_1_n_0\,
      D => r_Loop_Count(0),
      Q => \r_Loop_Count_reg_n_0_[0]\,
      R => '0'
    );
\r_Loop_Count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_Loop_Count[7]_i_1_n_0\,
      D => r_Loop_Count(1),
      Q => \r_Loop_Count_reg_n_0_[1]\,
      R => '0'
    );
\r_Loop_Count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_Loop_Count[7]_i_1_n_0\,
      D => r_Loop_Count(2),
      Q => \r_Loop_Count_reg_n_0_[2]\,
      R => '0'
    );
\r_Loop_Count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_Loop_Count[7]_i_1_n_0\,
      D => r_Loop_Count(3),
      Q => \r_Loop_Count_reg_n_0_[3]\,
      R => '0'
    );
\r_Loop_Count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_Loop_Count[7]_i_1_n_0\,
      D => r_Loop_Count(4),
      Q => \r_Loop_Count_reg_n_0_[4]\,
      R => '0'
    );
\r_Loop_Count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_Loop_Count[7]_i_1_n_0\,
      D => r_Loop_Count(5),
      Q => \r_Loop_Count_reg_n_0_[5]\,
      R => '0'
    );
\r_Loop_Count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_Loop_Count[7]_i_1_n_0\,
      D => r_Loop_Count(6),
      Q => \r_Loop_Count_reg_n_0_[6]\,
      R => '0'
    );
\r_Loop_Count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \r_Loop_Count[7]_i_1_n_0\,
      D => r_Loop_Count(7),
      Q => \r_Loop_Count_reg_n_0_[7]\,
      R => '0'
    );
r_OV_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDD000000C0"
    )
        port map (
      I0 => r_OV_reg_0,
      I1 => \r_SM_Main__0\(1),
      I2 => p_0_in,
      I3 => \^q\(0),
      I4 => \r_SM_Main_reg_n_0_[2]\,
      I5 => \^overflow\,
      O => r_OV_i_1_n_0
    );
r_OV_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => r_OV_i_1_n_0,
      Q => \^overflow\,
      R => '0'
    );
\r_SM_Main[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1514"
    )
        port map (
      I0 => \^q\(0),
      I1 => \r_SM_Main_reg_n_0_[2]\,
      I2 => \r_SM_Main__0\(1),
      I3 => r_OV_reg_0,
      O => \r_SM_Main[0]_i_1_n_0\
    );
\r_SM_Main[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03040334"
    )
        port map (
      I0 => \r_SM_Main[2]_i_2_n_0\,
      I1 => \r_SM_Main__0\(1),
      I2 => \r_SM_Main_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => \r_SM_Main[1]_i_2_n_0\,
      O => \p_0_in__0\(1)
    );
\r_SM_Main[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[2]\,
      I1 => \r_Digit_Index_reg_n_0_[3]\,
      I2 => \r_Digit_Index[3]_i_2_n_0\,
      I3 => \r_Digit_Index_reg_n_0_[1]\,
      I4 => \r_Digit_Index_reg_n_0_[0]\,
      O => \r_SM_Main[1]_i_2_n_0\
    );
\r_SM_Main[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[2]\,
      I1 => \r_SM_Main__0\(1),
      I2 => \r_SM_Main[2]_i_2_n_0\,
      I3 => \^q\(0),
      O => \p_0_in__0\(2)
    );
\r_SM_Main[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \r_Loop_Count[7]_i_3_n_0\,
      I1 => \r_Loop_Count_reg_n_0_[7]\,
      I2 => \r_Loop_Count_reg_n_0_[6]\,
      I3 => \r_Loop_Count_reg_n_0_[5]\,
      O => \r_SM_Main[2]_i_2_n_0\
    );
\r_SM_Main_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \r_SM_Main[0]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\r_SM_Main_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \r_SM_Main__0\(1),
      R => '0'
    );
\r_SM_Main_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \r_SM_Main_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Fast_IP_Clock_SevenSegController_0_1_SevenSegController_v1_0_S00_AXI is
  port (
    s00_axi_awready : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \old_slv1_reg[21]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[31]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    r_OV_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg0_reg[0]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    overflow : in STD_LOGIC;
    LED_activating_counter : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_Binary_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \anode[7]_i_4_0\ : in STD_LOGIC;
    \anode[7]_i_4_1\ : in STD_LOGIC;
    \anode[7]_i_4_2\ : in STD_LOGIC;
    \anode[7]_i_4_3\ : in STD_LOGIC;
    \anode[7]_i_4_4\ : in STD_LOGIC;
    \anode[7]_i_7_0\ : in STD_LOGIC;
    \anode[7]_i_5_0\ : in STD_LOGIC;
    \anode_reg[7]_i_3_0\ : in STD_LOGIC;
    \anode_reg[7]_i_3_1\ : in STD_LOGIC;
    \LED_HEX_reg[3]\ : in STD_LOGIC;
    \LED_HEX_reg[2]\ : in STD_LOGIC;
    \LED_HEX_reg[1]\ : in STD_LOGIC;
    \LED_HEX_reg[0]\ : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Fast_IP_Clock_SevenSegController_0_1_SevenSegController_v1_0_S00_AXI : entity is "SevenSegController_v1_0_S00_AXI";
end Fast_IP_Clock_SevenSegController_0_1_SevenSegController_v1_0_S00_AXI;

architecture STRUCTURE of Fast_IP_Clock_SevenSegController_0_1_SevenSegController_v1_0_S00_AXI is
  signal \LED_HEX[0]_i_4_n_0\ : STD_LOGIC;
  signal \LED_HEX[0]_i_5_n_0\ : STD_LOGIC;
  signal \LED_HEX[1]_i_4_n_0\ : STD_LOGIC;
  signal \LED_HEX[1]_i_5_n_0\ : STD_LOGIC;
  signal \LED_HEX[2]_i_4_n_0\ : STD_LOGIC;
  signal \LED_HEX[2]_i_5_n_0\ : STD_LOGIC;
  signal \LED_HEX[3]_i_4_n_0\ : STD_LOGIC;
  signal \LED_HEX[3]_i_5_n_0\ : STD_LOGIC;
  signal \LED_HEX_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \LED_HEX_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \LED_HEX_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \LED_HEX_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \anode[7]_i_10_n_0\ : STD_LOGIC;
  signal \anode[7]_i_11_n_0\ : STD_LOGIC;
  signal \anode[7]_i_12_n_0\ : STD_LOGIC;
  signal \anode[7]_i_13_n_0\ : STD_LOGIC;
  signal \anode[7]_i_15_n_0\ : STD_LOGIC;
  signal \anode[7]_i_16_n_0\ : STD_LOGIC;
  signal \anode[7]_i_19_n_0\ : STD_LOGIC;
  signal \anode[7]_i_20_n_0\ : STD_LOGIC;
  signal \anode[7]_i_22_n_0\ : STD_LOGIC;
  signal \anode[7]_i_25_n_0\ : STD_LOGIC;
  signal \anode[7]_i_27_n_0\ : STD_LOGIC;
  signal \anode[7]_i_29_n_0\ : STD_LOGIC;
  signal \anode[7]_i_30_n_0\ : STD_LOGIC;
  signal \anode[7]_i_31_n_0\ : STD_LOGIC;
  signal \anode[7]_i_33_n_0\ : STD_LOGIC;
  signal \anode[7]_i_34_n_0\ : STD_LOGIC;
  signal \anode[7]_i_35_n_0\ : STD_LOGIC;
  signal \anode[7]_i_4_n_0\ : STD_LOGIC;
  signal \anode[7]_i_5_n_0\ : STD_LOGIC;
  signal \anode[7]_i_6_n_0\ : STD_LOGIC;
  signal \anode[7]_i_7_n_0\ : STD_LOGIC;
  signal \anode[7]_i_8_n_0\ : STD_LOGIC;
  signal \anode[7]_i_9_n_0\ : STD_LOGIC;
  signal \anode_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal dp_i_2_n_0 : STD_LOGIC;
  signal dp_i_3_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \^slv_reg1_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \anode[7]_i_13\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \anode[7]_i_15\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \anode[7]_i_20\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \anode[7]_i_22\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \anode[7]_i_25\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \anode[7]_i_34\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \anode[7]_i_35\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_Binary[0]_i_1\ : label is "soft_lutpair3";
begin
  SR(0) <= \^sr\(0);
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
  \slv_reg1_reg[31]_0\(31 downto 0) <= \^slv_reg1_reg[31]_0\(31 downto 0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C2"
    )
        port map (
      I0 => CO(0),
      I1 => state(1),
      I2 => state(0),
      O => \FSM_sequential_state_reg[1]\
    );
\LED_HEX[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(12),
      I1 => \^slv_reg1_reg[31]_0\(8),
      I2 => LED_activating_counter(1),
      I3 => \^slv_reg1_reg[31]_0\(4),
      I4 => LED_activating_counter(0),
      I5 => \^slv_reg1_reg[31]_0\(0),
      O => \LED_HEX[0]_i_4_n_0\
    );
\LED_HEX[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(28),
      I1 => \^slv_reg1_reg[31]_0\(24),
      I2 => LED_activating_counter(1),
      I3 => \^slv_reg1_reg[31]_0\(20),
      I4 => LED_activating_counter(0),
      I5 => \^slv_reg1_reg[31]_0\(16),
      O => \LED_HEX[0]_i_5_n_0\
    );
\LED_HEX[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(13),
      I1 => \^slv_reg1_reg[31]_0\(9),
      I2 => LED_activating_counter(1),
      I3 => \^slv_reg1_reg[31]_0\(5),
      I4 => LED_activating_counter(0),
      I5 => \^slv_reg1_reg[31]_0\(1),
      O => \LED_HEX[1]_i_4_n_0\
    );
\LED_HEX[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(29),
      I1 => \^slv_reg1_reg[31]_0\(25),
      I2 => LED_activating_counter(1),
      I3 => \^slv_reg1_reg[31]_0\(21),
      I4 => LED_activating_counter(0),
      I5 => \^slv_reg1_reg[31]_0\(17),
      O => \LED_HEX[1]_i_5_n_0\
    );
\LED_HEX[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(14),
      I1 => \^slv_reg1_reg[31]_0\(10),
      I2 => LED_activating_counter(1),
      I3 => \^slv_reg1_reg[31]_0\(6),
      I4 => LED_activating_counter(0),
      I5 => \^slv_reg1_reg[31]_0\(2),
      O => \LED_HEX[2]_i_4_n_0\
    );
\LED_HEX[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(30),
      I1 => \^slv_reg1_reg[31]_0\(26),
      I2 => LED_activating_counter(1),
      I3 => \^slv_reg1_reg[31]_0\(22),
      I4 => LED_activating_counter(0),
      I5 => \^slv_reg1_reg[31]_0\(18),
      O => \LED_HEX[2]_i_5_n_0\
    );
\LED_HEX[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(15),
      I1 => \^slv_reg1_reg[31]_0\(11),
      I2 => LED_activating_counter(1),
      I3 => \^slv_reg1_reg[31]_0\(7),
      I4 => LED_activating_counter(0),
      I5 => \^slv_reg1_reg[31]_0\(3),
      O => \LED_HEX[3]_i_4_n_0\
    );
\LED_HEX[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(31),
      I1 => \^slv_reg1_reg[31]_0\(27),
      I2 => LED_activating_counter(1),
      I3 => \^slv_reg1_reg[31]_0\(23),
      I4 => LED_activating_counter(0),
      I5 => \^slv_reg1_reg[31]_0\(19),
      O => \LED_HEX[3]_i_5_n_0\
    );
\LED_HEX_reg[0]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \LED_HEX_reg[0]_i_2_n_0\,
      I1 => \LED_HEX_reg[0]\,
      O => \slv_reg0_reg[0]_0\(0),
      S => slv_reg0(0)
    );
\LED_HEX_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \LED_HEX[0]_i_4_n_0\,
      I1 => \LED_HEX[0]_i_5_n_0\,
      O => \LED_HEX_reg[0]_i_2_n_0\,
      S => LED_activating_counter(2)
    );
\LED_HEX_reg[1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \LED_HEX_reg[1]_i_2_n_0\,
      I1 => \LED_HEX_reg[1]\,
      O => \slv_reg0_reg[0]_0\(1),
      S => slv_reg0(0)
    );
\LED_HEX_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \LED_HEX[1]_i_4_n_0\,
      I1 => \LED_HEX[1]_i_5_n_0\,
      O => \LED_HEX_reg[1]_i_2_n_0\,
      S => LED_activating_counter(2)
    );
\LED_HEX_reg[2]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \LED_HEX_reg[2]_i_2_n_0\,
      I1 => \LED_HEX_reg[2]\,
      O => \slv_reg0_reg[0]_0\(2),
      S => slv_reg0(0)
    );
\LED_HEX_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \LED_HEX[2]_i_4_n_0\,
      I1 => \LED_HEX[2]_i_5_n_0\,
      O => \LED_HEX_reg[2]_i_2_n_0\,
      S => LED_activating_counter(2)
    );
\LED_HEX_reg[3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \LED_HEX_reg[3]_i_2_n_0\,
      I1 => \LED_HEX_reg[3]\,
      O => \slv_reg0_reg[0]_0\(3),
      S => slv_reg0(0)
    );
\LED_HEX_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \LED_HEX[3]_i_4_n_0\,
      I1 => \LED_HEX[3]_i_5_n_0\,
      O => \LED_HEX_reg[3]_i_2_n_0\,
      S => LED_activating_counter(2)
    );
\anode[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D555DDD"
    )
        port map (
      I0 => slv_reg0(7),
      I1 => slv_reg0(1),
      I2 => \anode_reg[7]_i_3_n_0\,
      I3 => LED_activating_counter(2),
      I4 => \anode[7]_i_4_n_0\,
      O => SS(0)
    );
\anode[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFFFEFFFE00"
    )
        port map (
      I0 => \anode[7]_i_4_0\,
      I1 => \anode[7]_i_4_2\,
      I2 => \anode[7]_i_4_1\,
      I3 => slv_reg0(0),
      I4 => \anode[7]_i_20_n_0\,
      I5 => \anode[7]_i_29_n_0\,
      O => \anode[7]_i_10_n_0\
    );
\anode[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(22),
      I1 => \^slv_reg1_reg[31]_0\(21),
      I2 => \^slv_reg1_reg[31]_0\(23),
      I3 => \^slv_reg1_reg[31]_0\(20),
      O => \anode[7]_i_11_n_0\
    );
\anode[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => \^slv_reg1_reg[31]_0\(26),
      I2 => \^slv_reg1_reg[31]_0\(25),
      I3 => \^slv_reg1_reg[31]_0\(27),
      I4 => \^slv_reg1_reg[31]_0\(24),
      I5 => \anode[7]_i_16_n_0\,
      O => \anode[7]_i_12_n_0\
    );
\anode[7]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => \anode[7]_i_11_n_0\,
      I2 => \anode[7]_i_30_n_0\,
      I3 => \anode[7]_i_16_n_0\,
      I4 => \anode[7]_i_31_n_0\,
      O => \anode[7]_i_13_n_0\
    );
\anode[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \anode_reg[7]_i_3_1\,
      I1 => slv_reg0(0),
      I2 => \anode_reg[7]_i_3_0\,
      I3 => \anode[7]_i_5_0\,
      O => \anode[7]_i_15_n_0\
    );
\anode[7]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(29),
      I1 => \^slv_reg1_reg[31]_0\(28),
      I2 => \^slv_reg1_reg[31]_0\(31),
      I3 => \^slv_reg1_reg[31]_0\(30),
      O => \anode[7]_i_16_n_0\
    );
\anode[7]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(14),
      I1 => \^slv_reg1_reg[31]_0\(13),
      I2 => \^slv_reg1_reg[31]_0\(15),
      I3 => \^slv_reg1_reg[31]_0\(12),
      O => \anode[7]_i_19_n_0\
    );
\anode[7]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \anode[7]_i_31_n_0\,
      I1 => \anode[7]_i_16_n_0\,
      I2 => \anode[7]_i_30_n_0\,
      I3 => \anode[7]_i_11_n_0\,
      O => \anode[7]_i_20_n_0\
    );
\anode[7]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \anode[7]_i_5_0\,
      I1 => \anode_reg[7]_i_3_0\,
      I2 => slv_reg0(0),
      I3 => \anode_reg[7]_i_3_1\,
      I4 => \anode[7]_i_7_0\,
      O => \anode[7]_i_22_n_0\
    );
\anode[7]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \anode[7]_i_19_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(8),
      I2 => \^slv_reg1_reg[31]_0\(11),
      I3 => \^slv_reg1_reg[31]_0\(9),
      I4 => \^slv_reg1_reg[31]_0\(10),
      O => \anode[7]_i_25_n_0\
    );
\anode[7]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(10),
      I1 => \^slv_reg1_reg[31]_0\(9),
      I2 => \^slv_reg1_reg[31]_0\(11),
      I3 => \^slv_reg1_reg[31]_0\(8),
      I4 => \anode[7]_i_19_n_0\,
      I5 => \anode[7]_i_33_n_0\,
      O => \anode[7]_i_27_n_0\
    );
\anode[7]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \anode[7]_i_34_n_0\,
      I1 => \anode[7]_i_19_n_0\,
      I2 => \anode[7]_i_35_n_0\,
      I3 => \anode[7]_i_33_n_0\,
      O => \anode[7]_i_29_n_0\
    );
\anode[7]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(18),
      I1 => \^slv_reg1_reg[31]_0\(17),
      I2 => \^slv_reg1_reg[31]_0\(19),
      I3 => \^slv_reg1_reg[31]_0\(16),
      O => \anode[7]_i_30_n_0\
    );
\anode[7]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(26),
      I1 => \^slv_reg1_reg[31]_0\(25),
      I2 => \^slv_reg1_reg[31]_0\(27),
      I3 => \^slv_reg1_reg[31]_0\(24),
      O => \anode[7]_i_31_n_0\
    );
\anode[7]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(6),
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => \^slv_reg1_reg[31]_0\(7),
      I3 => \^slv_reg1_reg[31]_0\(4),
      O => \anode[7]_i_33_n_0\
    );
\anode[7]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(10),
      I1 => \^slv_reg1_reg[31]_0\(9),
      I2 => \^slv_reg1_reg[31]_0\(11),
      I3 => \^slv_reg1_reg[31]_0\(8),
      O => \anode[7]_i_34_n_0\
    );
\anode[7]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(2),
      I1 => \^slv_reg1_reg[31]_0\(1),
      I2 => \^slv_reg1_reg[31]_0\(3),
      I3 => \^slv_reg1_reg[31]_0\(0),
      O => \anode[7]_i_35_n_0\
    );
\anode[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \anode[7]_i_7_n_0\,
      I1 => \anode[7]_i_8_n_0\,
      I2 => LED_activating_counter(1),
      I3 => \anode[7]_i_9_n_0\,
      I4 => LED_activating_counter(0),
      I5 => \anode[7]_i_10_n_0\,
      O => \anode[7]_i_4_n_0\
    );
\anode[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000000EFE0EFE0"
    )
        port map (
      I0 => \anode[7]_i_11_n_0\,
      I1 => \anode[7]_i_12_n_0\,
      I2 => LED_activating_counter(0),
      I3 => \anode[7]_i_13_n_0\,
      I4 => \anode[7]_i_7_0\,
      I5 => \anode[7]_i_15_n_0\,
      O => \anode[7]_i_5_n_0\
    );
\anode[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCB8B83000B8B8"
    )
        port map (
      I0 => \anode[7]_i_16_n_0\,
      I1 => LED_activating_counter(0),
      I2 => \anode[7]_i_12_n_0\,
      I3 => \anode_reg[7]_i_3_1\,
      I4 => slv_reg0(0),
      I5 => \anode_reg[7]_i_3_0\,
      O => \anode[7]_i_6_n_0\
    );
\anode[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FEFE"
    )
        port map (
      I0 => \anode[7]_i_19_n_0\,
      I1 => slv_reg0(0),
      I2 => \anode[7]_i_20_n_0\,
      I3 => \anode[7]_i_4_4\,
      I4 => \anode[7]_i_22_n_0\,
      O => \anode[7]_i_7_n_0\
    );
\anode[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEFEFE0"
    )
        port map (
      I0 => \anode[7]_i_4_0\,
      I1 => \anode[7]_i_4_1\,
      I2 => slv_reg0(0),
      I3 => \anode[7]_i_20_n_0\,
      I4 => \anode[7]_i_25_n_0\,
      O => \anode[7]_i_8_n_0\
    );
\anode[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFFFEFFFE00"
    )
        port map (
      I0 => \anode[7]_i_4_0\,
      I1 => \anode[7]_i_4_1\,
      I2 => \anode[7]_i_4_3\,
      I3 => slv_reg0(0),
      I4 => \anode[7]_i_20_n_0\,
      I5 => \anode[7]_i_27_n_0\,
      O => \anode[7]_i_9_n_0\
    );
\anode_reg[7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \anode[7]_i_5_n_0\,
      I1 => \anode[7]_i_6_n_0\,
      O => \anode_reg[7]_i_3_n_0\,
      S => LED_activating_counter(1)
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^s00_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => \^sr\(0)
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => \^sr\(0)
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => \^sr\(0)
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s00_axi_arready\,
      R => \^sr\(0)
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => \^sr\(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => \^sr\(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s00_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s00_axi_awready\,
      R => \^sr\(0)
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_awready\,
      I3 => \^s00_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => \^sr\(0)
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => \^slv_reg1_reg[31]_0\(0),
      I2 => \slv_reg3_reg_n_0_[0]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(10),
      I1 => slv_reg2(10),
      I2 => \slv_reg0_reg_n_0_[10]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg3_reg_n_0_[10]\,
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[11]\,
      I1 => \^slv_reg1_reg[31]_0\(11),
      I2 => \slv_reg3_reg_n_0_[11]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(12),
      I1 => slv_reg2(12),
      I2 => \slv_reg0_reg_n_0_[12]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg3_reg_n_0_[12]\,
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(13),
      I1 => slv_reg2(13),
      I2 => \slv_reg0_reg_n_0_[13]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg3_reg_n_0_[13]\,
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[14]\,
      I1 => \^slv_reg1_reg[31]_0\(14),
      I2 => slv_reg2(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg3_reg_n_0_[14]\,
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(15),
      I1 => slv_reg2(15),
      I2 => \slv_reg0_reg_n_0_[15]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg3_reg_n_0_[15]\,
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[16]\,
      I1 => \^slv_reg1_reg[31]_0\(16),
      I2 => slv_reg2(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg3_reg_n_0_[16]\,
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(17),
      I1 => slv_reg2(17),
      I2 => \slv_reg0_reg_n_0_[17]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg3_reg_n_0_[17]\,
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[18]\,
      I1 => \^slv_reg1_reg[31]_0\(18),
      I2 => \slv_reg3_reg_n_0_[18]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[19]\,
      I1 => \^slv_reg1_reg[31]_0\(19),
      I2 => \slv_reg3_reg_n_0_[19]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(1),
      I1 => slv_reg2(1),
      I2 => slv_reg0(1),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg3_reg_n_0_[1]\,
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[20]\,
      I1 => \^slv_reg1_reg[31]_0\(20),
      I2 => slv_reg2(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg3_reg_n_0_[20]\,
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(21),
      I1 => slv_reg2(21),
      I2 => \slv_reg0_reg_n_0_[21]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg3_reg_n_0_[21]\,
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[22]\,
      I1 => \^slv_reg1_reg[31]_0\(22),
      I2 => slv_reg2(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg3_reg_n_0_[22]\,
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[23]\,
      I1 => \^slv_reg1_reg[31]_0\(23),
      I2 => \slv_reg3_reg_n_0_[23]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[24]\,
      I1 => \^slv_reg1_reg[31]_0\(24),
      I2 => slv_reg2(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg3_reg_n_0_[24]\,
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(25),
      I1 => slv_reg2(25),
      I2 => \slv_reg0_reg_n_0_[25]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg3_reg_n_0_[25]\,
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[26]\,
      I1 => \^slv_reg1_reg[31]_0\(26),
      I2 => \slv_reg3_reg_n_0_[26]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[27]\,
      I1 => \^slv_reg1_reg[31]_0\(27),
      I2 => \slv_reg3_reg_n_0_[27]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[28]\,
      I1 => \^slv_reg1_reg[31]_0\(28),
      I2 => \slv_reg3_reg_n_0_[28]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(29),
      I1 => slv_reg2(29),
      I2 => \slv_reg0_reg_n_0_[29]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg3_reg_n_0_[29]\,
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => slv_reg0(2),
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => \slv_reg3_reg_n_0_[2]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[30]\,
      I1 => \^slv_reg1_reg[31]_0\(30),
      I2 => slv_reg2(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg3_reg_n_0_[30]\,
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(31),
      I1 => \slv_reg3_reg_n_0_[31]\,
      I2 => \slv_reg0_reg_n_0_[31]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => slv_reg0(3),
      I1 => \^slv_reg1_reg[31]_0\(3),
      I2 => \slv_reg3_reg_n_0_[3]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => slv_reg0(4),
      I1 => \^slv_reg1_reg[31]_0\(4),
      I2 => \slv_reg3_reg_n_0_[4]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(5),
      I1 => slv_reg2(5),
      I2 => slv_reg0(5),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg3_reg_n_0_[5]\,
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => slv_reg0(6),
      I1 => \^slv_reg1_reg[31]_0\(6),
      I2 => slv_reg2(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg3_reg_n_0_[6]\,
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => slv_reg0(7),
      I1 => \^slv_reg1_reg[31]_0\(7),
      I2 => \slv_reg3_reg_n_0_[7]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[8]\,
      I1 => \^slv_reg1_reg[31]_0\(8),
      I2 => slv_reg2(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg3_reg_n_0_[8]\,
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(9),
      I1 => slv_reg2(9),
      I2 => \slv_reg0_reg_n_0_[9]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg3_reg_n_0_[9]\,
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => \^sr\(0)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => \^sr\(0)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => \^sr\(0)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => \^sr\(0)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => \^sr\(0)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => \^sr\(0)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => \^sr\(0)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => \^sr\(0)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => \^sr\(0)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => \^sr\(0)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => \^sr\(0)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => \^sr\(0)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => \^sr\(0)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => \^sr\(0)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => \^sr\(0)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => \^sr\(0)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => \^sr\(0)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => \^sr\(0)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => \^sr\(0)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => \^sr\(0)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => \^sr\(0)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => \^sr\(0)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => \^sr\(0)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => \^sr\(0)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => \^sr\(0)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => \^sr\(0)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => \^sr\(0)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => \^sr\(0)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => \^sr\(0)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => \^sr\(0)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => \^sr\(0)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => \^sr\(0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => \^sr\(0)
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_wready\,
      R => \^sr\(0)
    );
dp_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00077707"
    )
        port map (
      I0 => overflow,
      I1 => slv_reg0(0),
      I2 => dp_i_2_n_0,
      I3 => LED_activating_counter(2),
      I4 => dp_i_3_n_0,
      O => r_OV_reg
    );
dp_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg2(3),
      I1 => slv_reg2(2),
      I2 => LED_activating_counter(1),
      I3 => slv_reg2(1),
      I4 => LED_activating_counter(0),
      I5 => slv_reg2(0),
      O => dp_i_2_n_0
    );
dp_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg2(7),
      I1 => slv_reg2(6),
      I2 => LED_activating_counter(1),
      I3 => slv_reg2(5),
      I4 => LED_activating_counter(0),
      I5 => slv_reg2(4),
      O => dp_i_3_n_0
    );
\old_slv10_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(21),
      I1 => \^slv_reg1_reg[31]_0\(21),
      I2 => Q(22),
      I3 => \^slv_reg1_reg[31]_0\(22),
      I4 => \^slv_reg1_reg[31]_0\(23),
      I5 => Q(23),
      O => \old_slv1_reg[21]\(3)
    );
\old_slv10_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(18),
      I1 => \^slv_reg1_reg[31]_0\(18),
      I2 => Q(19),
      I3 => \^slv_reg1_reg[31]_0\(19),
      I4 => \^slv_reg1_reg[31]_0\(20),
      I5 => Q(20),
      O => \old_slv1_reg[21]\(2)
    );
\old_slv10_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(17),
      I1 => \^slv_reg1_reg[31]_0\(17),
      I2 => Q(15),
      I3 => \^slv_reg1_reg[31]_0\(15),
      I4 => \^slv_reg1_reg[31]_0\(16),
      I5 => Q(16),
      O => \old_slv1_reg[21]\(1)
    );
\old_slv10_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(12),
      I1 => \^slv_reg1_reg[31]_0\(12),
      I2 => Q(13),
      I3 => \^slv_reg1_reg[31]_0\(13),
      I4 => \^slv_reg1_reg[31]_0\(14),
      I5 => Q(14),
      O => \old_slv1_reg[21]\(0)
    );
\old_slv10_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(31),
      I1 => Q(31),
      I2 => \^slv_reg1_reg[31]_0\(30),
      I3 => Q(30),
      O => \slv_reg1_reg[31]_1\(2)
    );
\old_slv10_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(27),
      I1 => \^slv_reg1_reg[31]_0\(27),
      I2 => Q(28),
      I3 => \^slv_reg1_reg[31]_0\(28),
      I4 => \^slv_reg1_reg[31]_0\(29),
      I5 => Q(29),
      O => \slv_reg1_reg[31]_1\(1)
    );
\old_slv10_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(24),
      I1 => \^slv_reg1_reg[31]_0\(24),
      I2 => Q(25),
      I3 => \^slv_reg1_reg[31]_0\(25),
      I4 => \^slv_reg1_reg[31]_0\(26),
      I5 => Q(26),
      O => \slv_reg1_reg[31]_1\(0)
    );
old_slv10_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(9),
      I1 => \^slv_reg1_reg[31]_0\(9),
      I2 => Q(10),
      I3 => \^slv_reg1_reg[31]_0\(10),
      I4 => \^slv_reg1_reg[31]_0\(11),
      I5 => Q(11),
      O => S(3)
    );
old_slv10_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(6),
      I1 => \^slv_reg1_reg[31]_0\(6),
      I2 => Q(7),
      I3 => \^slv_reg1_reg[31]_0\(7),
      I4 => \^slv_reg1_reg[31]_0\(8),
      I5 => Q(8),
      O => S(2)
    );
old_slv10_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(3),
      I1 => \^slv_reg1_reg[31]_0\(3),
      I2 => Q(4),
      I3 => \^slv_reg1_reg[31]_0\(4),
      I4 => \^slv_reg1_reg[31]_0\(5),
      I5 => Q(5),
      O => S(1)
    );
old_slv10_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(2),
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => Q(0),
      I3 => \^slv_reg1_reg[31]_0\(0),
      I4 => \^slv_reg1_reg[31]_0\(1),
      I5 => Q(1),
      O => S(0)
    );
\r_Binary[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(0),
      I1 => \r_Binary_reg[0]\(0),
      O => D(0)
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s00_axi_wready\,
      I1 => \^s00_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => \^sr\(0)
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => \^sr\(0)
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => \^sr\(0)
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => \^sr\(0)
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => \^sr\(0)
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => \^sr\(0)
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => \^sr\(0)
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => \^sr\(0)
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^slv_reg1_reg[31]_0\(0),
      R => \^sr\(0)
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^slv_reg1_reg[31]_0\(10),
      R => \^sr\(0)
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^slv_reg1_reg[31]_0\(11),
      R => \^sr\(0)
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^slv_reg1_reg[31]_0\(12),
      R => \^sr\(0)
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^slv_reg1_reg[31]_0\(13),
      R => \^sr\(0)
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^slv_reg1_reg[31]_0\(14),
      R => \^sr\(0)
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^slv_reg1_reg[31]_0\(15),
      R => \^sr\(0)
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^slv_reg1_reg[31]_0\(16),
      R => \^sr\(0)
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^slv_reg1_reg[31]_0\(17),
      R => \^sr\(0)
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^slv_reg1_reg[31]_0\(18),
      R => \^sr\(0)
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^slv_reg1_reg[31]_0\(19),
      R => \^sr\(0)
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^slv_reg1_reg[31]_0\(1),
      R => \^sr\(0)
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^slv_reg1_reg[31]_0\(20),
      R => \^sr\(0)
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^slv_reg1_reg[31]_0\(21),
      R => \^sr\(0)
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^slv_reg1_reg[31]_0\(22),
      R => \^sr\(0)
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^slv_reg1_reg[31]_0\(23),
      R => \^sr\(0)
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^slv_reg1_reg[31]_0\(24),
      R => \^sr\(0)
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^slv_reg1_reg[31]_0\(25),
      R => \^sr\(0)
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^slv_reg1_reg[31]_0\(26),
      R => \^sr\(0)
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^slv_reg1_reg[31]_0\(27),
      R => \^sr\(0)
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^slv_reg1_reg[31]_0\(28),
      R => \^sr\(0)
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^slv_reg1_reg[31]_0\(29),
      R => \^sr\(0)
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^slv_reg1_reg[31]_0\(2),
      R => \^sr\(0)
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^slv_reg1_reg[31]_0\(30),
      R => \^sr\(0)
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^slv_reg1_reg[31]_0\(31),
      R => \^sr\(0)
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^slv_reg1_reg[31]_0\(3),
      R => \^sr\(0)
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^slv_reg1_reg[31]_0\(4),
      R => \^sr\(0)
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^slv_reg1_reg[31]_0\(5),
      R => \^sr\(0)
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^slv_reg1_reg[31]_0\(6),
      R => \^sr\(0)
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^slv_reg1_reg[31]_0\(7),
      R => \^sr\(0)
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^slv_reg1_reg[31]_0\(8),
      R => \^sr\(0)
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^slv_reg1_reg[31]_0\(9),
      R => \^sr\(0)
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => \^sr\(0)
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => \^sr\(0)
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => \^sr\(0)
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => \^sr\(0)
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => \^sr\(0)
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => \^sr\(0)
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => \^sr\(0)
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => \^sr\(0)
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => \^sr\(0)
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => \^sr\(0)
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => \^sr\(0)
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => \^sr\(0)
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => \^sr\(0)
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => \^sr\(0)
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => \^sr\(0)
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => \^sr\(0)
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => \^sr\(0)
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => \^sr\(0)
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => \^sr\(0)
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => \^sr\(0)
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => \^sr\(0)
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => \^sr\(0)
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => \^sr\(0)
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => \^sr\(0)
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => \^sr\(0)
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => \^sr\(0)
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => \^sr\(0)
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => \^sr\(0)
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => \^sr\(0)
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => \^sr\(0)
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => \^sr\(0)
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => \^sr\(0)
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg3_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg3_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg3_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg3_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg3_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg3_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg3_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg3_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg3_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg3_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg3_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg3_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg3_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg3_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg3_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg3_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg3_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg3_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg3_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg3_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg3_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg3_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg3_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg3_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg3_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg3_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg3_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg3_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg3_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg3_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg3_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg3_reg_n_0_[9]\,
      R => \^sr\(0)
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s00_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Fast_IP_Clock_SevenSegController_0_1_SevenSegController_v1_0 is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    anode : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cathode : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    dp : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Fast_IP_Clock_SevenSegController_0_1_SevenSegController_v1_0 : entity is "SevenSegController_v1_0";
end Fast_IP_Clock_SevenSegController_0_1_SevenSegController_v1_0;

architecture STRUCTURE of Fast_IP_Clock_SevenSegController_0_1_SevenSegController_v1_0 is
  signal LED_HEX : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \LED_HEX[0]_i_6_n_0\ : STD_LOGIC;
  signal \LED_HEX[0]_i_7_n_0\ : STD_LOGIC;
  signal \LED_HEX[1]_i_6_n_0\ : STD_LOGIC;
  signal \LED_HEX[1]_i_7_n_0\ : STD_LOGIC;
  signal \LED_HEX[2]_i_6_n_0\ : STD_LOGIC;
  signal \LED_HEX[2]_i_7_n_0\ : STD_LOGIC;
  signal \LED_HEX[3]_i_6_n_0\ : STD_LOGIC;
  signal \LED_HEX[3]_i_7_n_0\ : STD_LOGIC;
  signal \LED_HEX_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \LED_HEX_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \LED_HEX_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \LED_HEX_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal LED_activating_counter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal SevenSegController_v1_0_S00_AXI_inst_n_1 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_10 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_15 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_16 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_17 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_18 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_19 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_20 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_21 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_22 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_23 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_24 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_25 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_26 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_27 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_28 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_29 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_30 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_31 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_32 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_33 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_34 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_35 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_36 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_37 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_38 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_39 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_40 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_41 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_42 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_43 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_44 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_45 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_46 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_47 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_48 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_49 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_50 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_51 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_52 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_53 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_54 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_55 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_56 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_6 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_7 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_8 : STD_LOGIC;
  signal SevenSegController_v1_0_S00_AXI_inst_n_9 : STD_LOGIC;
  signal \anode[1]_i_1_n_0\ : STD_LOGIC;
  signal \anode[2]_i_1_n_0\ : STD_LOGIC;
  signal \anode[3]_i_1_n_0\ : STD_LOGIC;
  signal \anode[4]_i_1_n_0\ : STD_LOGIC;
  signal \anode[7]_i_14_n_0\ : STD_LOGIC;
  signal \anode[7]_i_17_n_0\ : STD_LOGIC;
  signal \anode[7]_i_18_n_0\ : STD_LOGIC;
  signal \anode[7]_i_21_n_0\ : STD_LOGIC;
  signal \anode[7]_i_23_n_0\ : STD_LOGIC;
  signal \anode[7]_i_24_n_0\ : STD_LOGIC;
  signal \anode[7]_i_26_n_0\ : STD_LOGIC;
  signal \anode[7]_i_28_n_0\ : STD_LOGIC;
  signal \anode[7]_i_32_n_0\ : STD_LOGIC;
  signal bcb_n_34 : STD_LOGIC;
  signal bcd : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bcd_reg : STD_LOGIC;
  signal \bcd_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \bcd_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \bcd_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \bcd_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal cathode_a : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \cathode_a[0]_i_1_n_0\ : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data6 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data7 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal go_i_1_n_0 : STD_LOGIC;
  signal go_reg_n_0 : STD_LOGIC;
  signal old_slv1 : STD_LOGIC;
  signal \old_slv10_carry__0_n_0\ : STD_LOGIC;
  signal \old_slv10_carry__0_n_1\ : STD_LOGIC;
  signal \old_slv10_carry__0_n_2\ : STD_LOGIC;
  signal \old_slv10_carry__0_n_3\ : STD_LOGIC;
  signal \old_slv10_carry__1_n_1\ : STD_LOGIC;
  signal \old_slv10_carry__1_n_2\ : STD_LOGIC;
  signal \old_slv10_carry__1_n_3\ : STD_LOGIC;
  signal old_slv10_carry_n_0 : STD_LOGIC;
  signal old_slv10_carry_n_1 : STD_LOGIC;
  signal old_slv10_carry_n_2 : STD_LOGIC;
  signal old_slv10_carry_n_3 : STD_LOGIC;
  signal \old_slv1__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal overflow : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_SM_Main__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \refresh_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \refresh_counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \refresh_counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \refresh_counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \refresh_counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \refresh_counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \refresh_counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \refresh_counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \refresh_counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \refresh_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \refresh_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \refresh_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \refresh_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \refresh_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \refresh_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \refresh_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \refresh_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \refresh_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \refresh_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \refresh_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \refresh_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \refresh_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \refresh_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \refresh_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \refresh_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \refresh_counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \refresh_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \refresh_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \refresh_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \refresh_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \refresh_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \refresh_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \refresh_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \refresh_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \refresh_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \refresh_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \refresh_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \refresh_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \refresh_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \refresh_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \refresh_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \refresh_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_old_slv10_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_old_slv10_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_old_slv10_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_old_slv10_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_refresh_counter_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_refresh_counter_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "s_GO:01,s_INIT:00,s_WAIT:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "s_GO:01,s_INIT:00,s_WAIT:10";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \anode[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \anode[1]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \anode[2]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \anode[3]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \anode[4]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \anode[5]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \anode[6]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \anode[7]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \cathode_a[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \cathode_a[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \cathode_a[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \cathode_a[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \cathode_a[4]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \cathode_a[5]_i_1\ : label is "soft_lutpair47";
begin
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_6,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcb_n_34,
      Q => state(1)
    );
\LED_HEX[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(0),
      I1 => data2(0),
      I2 => LED_activating_counter(1),
      I3 => data1(0),
      I4 => LED_activating_counter(0),
      I5 => \bcd_reg_reg_n_0_[0]\,
      O => \LED_HEX[0]_i_6_n_0\
    );
\LED_HEX[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(0),
      I1 => data6(0),
      I2 => LED_activating_counter(1),
      I3 => data5(0),
      I4 => LED_activating_counter(0),
      I5 => data4(0),
      O => \LED_HEX[0]_i_7_n_0\
    );
\LED_HEX[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(1),
      I1 => data2(1),
      I2 => LED_activating_counter(1),
      I3 => data1(1),
      I4 => LED_activating_counter(0),
      I5 => \bcd_reg_reg_n_0_[1]\,
      O => \LED_HEX[1]_i_6_n_0\
    );
\LED_HEX[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(1),
      I1 => data6(1),
      I2 => LED_activating_counter(1),
      I3 => data5(1),
      I4 => LED_activating_counter(0),
      I5 => data4(1),
      O => \LED_HEX[1]_i_7_n_0\
    );
\LED_HEX[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(2),
      I1 => data2(2),
      I2 => LED_activating_counter(1),
      I3 => data1(2),
      I4 => LED_activating_counter(0),
      I5 => \bcd_reg_reg_n_0_[2]\,
      O => \LED_HEX[2]_i_6_n_0\
    );
\LED_HEX[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(2),
      I1 => data6(2),
      I2 => LED_activating_counter(1),
      I3 => data5(2),
      I4 => LED_activating_counter(0),
      I5 => data4(2),
      O => \LED_HEX[2]_i_7_n_0\
    );
\LED_HEX[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(3),
      I1 => data2(3),
      I2 => LED_activating_counter(1),
      I3 => data1(3),
      I4 => LED_activating_counter(0),
      I5 => \bcd_reg_reg_n_0_[3]\,
      O => \LED_HEX[3]_i_6_n_0\
    );
\LED_HEX[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7(3),
      I1 => data6(3),
      I2 => LED_activating_counter(1),
      I3 => data5(3),
      I4 => LED_activating_counter(0),
      I5 => data4(3),
      O => \LED_HEX[3]_i_7_n_0\
    );
\LED_HEX_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SevenSegController_v1_0_S00_AXI_inst_n_56,
      Q => LED_HEX(0),
      R => '0'
    );
\LED_HEX_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \LED_HEX[0]_i_6_n_0\,
      I1 => \LED_HEX[0]_i_7_n_0\,
      O => \LED_HEX_reg[0]_i_3_n_0\,
      S => LED_activating_counter(2)
    );
\LED_HEX_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SevenSegController_v1_0_S00_AXI_inst_n_55,
      Q => LED_HEX(1),
      R => '0'
    );
\LED_HEX_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \LED_HEX[1]_i_6_n_0\,
      I1 => \LED_HEX[1]_i_7_n_0\,
      O => \LED_HEX_reg[1]_i_3_n_0\,
      S => LED_activating_counter(2)
    );
\LED_HEX_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SevenSegController_v1_0_S00_AXI_inst_n_54,
      Q => LED_HEX(2),
      R => '0'
    );
\LED_HEX_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \LED_HEX[2]_i_6_n_0\,
      I1 => \LED_HEX[2]_i_7_n_0\,
      O => \LED_HEX_reg[2]_i_3_n_0\,
      S => LED_activating_counter(2)
    );
\LED_HEX_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SevenSegController_v1_0_S00_AXI_inst_n_53,
      Q => LED_HEX(3),
      R => '0'
    );
\LED_HEX_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \LED_HEX[3]_i_6_n_0\,
      I1 => \LED_HEX[3]_i_7_n_0\,
      O => \LED_HEX_reg[3]_i_3_n_0\,
      S => LED_activating_counter(2)
    );
SevenSegController_v1_0_S00_AXI_inst: entity work.Fast_IP_Clock_SevenSegController_0_1_SevenSegController_v1_0_S00_AXI
     port map (
      CO(0) => \old_slv10_carry__1_n_1\,
      D(0) => SevenSegController_v1_0_S00_AXI_inst_n_51,
      \FSM_sequential_state_reg[1]\ => SevenSegController_v1_0_S00_AXI_inst_n_6,
      \LED_HEX_reg[0]\ => \LED_HEX_reg[0]_i_3_n_0\,
      \LED_HEX_reg[1]\ => \LED_HEX_reg[1]_i_3_n_0\,
      \LED_HEX_reg[2]\ => \LED_HEX_reg[2]_i_3_n_0\,
      \LED_HEX_reg[3]\ => \LED_HEX_reg[3]_i_3_n_0\,
      LED_activating_counter(2 downto 0) => LED_activating_counter(2 downto 0),
      Q(31 downto 0) => \old_slv1__0\(31 downto 0),
      S(3) => SevenSegController_v1_0_S00_AXI_inst_n_7,
      S(2) => SevenSegController_v1_0_S00_AXI_inst_n_8,
      S(1) => SevenSegController_v1_0_S00_AXI_inst_n_9,
      S(0) => SevenSegController_v1_0_S00_AXI_inst_n_10,
      SR(0) => SevenSegController_v1_0_S00_AXI_inst_n_1,
      SS(0) => SevenSegController_v1_0_S00_AXI_inst_n_52,
      \anode[7]_i_4_0\ => \anode[7]_i_23_n_0\,
      \anode[7]_i_4_1\ => \anode[7]_i_24_n_0\,
      \anode[7]_i_4_2\ => \anode[7]_i_28_n_0\,
      \anode[7]_i_4_3\ => \anode[7]_i_26_n_0\,
      \anode[7]_i_4_4\ => \anode[7]_i_21_n_0\,
      \anode[7]_i_5_0\ => \anode[7]_i_32_n_0\,
      \anode[7]_i_7_0\ => \anode[7]_i_14_n_0\,
      \anode_reg[7]_i_3_0\ => \anode[7]_i_18_n_0\,
      \anode_reg[7]_i_3_1\ => \anode[7]_i_17_n_0\,
      \old_slv1_reg[21]\(3) => SevenSegController_v1_0_S00_AXI_inst_n_43,
      \old_slv1_reg[21]\(2) => SevenSegController_v1_0_S00_AXI_inst_n_44,
      \old_slv1_reg[21]\(1) => SevenSegController_v1_0_S00_AXI_inst_n_45,
      \old_slv1_reg[21]\(0) => SevenSegController_v1_0_S00_AXI_inst_n_46,
      overflow => overflow,
      \r_Binary_reg[0]\(0) => \r_SM_Main__0\(0),
      r_OV_reg => SevenSegController_v1_0_S00_AXI_inst_n_50,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg0_reg[0]_0\(3) => SevenSegController_v1_0_S00_AXI_inst_n_53,
      \slv_reg0_reg[0]_0\(2) => SevenSegController_v1_0_S00_AXI_inst_n_54,
      \slv_reg0_reg[0]_0\(1) => SevenSegController_v1_0_S00_AXI_inst_n_55,
      \slv_reg0_reg[0]_0\(0) => SevenSegController_v1_0_S00_AXI_inst_n_56,
      \slv_reg1_reg[31]_0\(31 downto 28) => p_0_in(3 downto 0),
      \slv_reg1_reg[31]_0\(27) => SevenSegController_v1_0_S00_AXI_inst_n_15,
      \slv_reg1_reg[31]_0\(26) => SevenSegController_v1_0_S00_AXI_inst_n_16,
      \slv_reg1_reg[31]_0\(25) => SevenSegController_v1_0_S00_AXI_inst_n_17,
      \slv_reg1_reg[31]_0\(24) => SevenSegController_v1_0_S00_AXI_inst_n_18,
      \slv_reg1_reg[31]_0\(23) => SevenSegController_v1_0_S00_AXI_inst_n_19,
      \slv_reg1_reg[31]_0\(22) => SevenSegController_v1_0_S00_AXI_inst_n_20,
      \slv_reg1_reg[31]_0\(21) => SevenSegController_v1_0_S00_AXI_inst_n_21,
      \slv_reg1_reg[31]_0\(20) => SevenSegController_v1_0_S00_AXI_inst_n_22,
      \slv_reg1_reg[31]_0\(19) => SevenSegController_v1_0_S00_AXI_inst_n_23,
      \slv_reg1_reg[31]_0\(18) => SevenSegController_v1_0_S00_AXI_inst_n_24,
      \slv_reg1_reg[31]_0\(17) => SevenSegController_v1_0_S00_AXI_inst_n_25,
      \slv_reg1_reg[31]_0\(16) => SevenSegController_v1_0_S00_AXI_inst_n_26,
      \slv_reg1_reg[31]_0\(15) => SevenSegController_v1_0_S00_AXI_inst_n_27,
      \slv_reg1_reg[31]_0\(14) => SevenSegController_v1_0_S00_AXI_inst_n_28,
      \slv_reg1_reg[31]_0\(13) => SevenSegController_v1_0_S00_AXI_inst_n_29,
      \slv_reg1_reg[31]_0\(12) => SevenSegController_v1_0_S00_AXI_inst_n_30,
      \slv_reg1_reg[31]_0\(11) => SevenSegController_v1_0_S00_AXI_inst_n_31,
      \slv_reg1_reg[31]_0\(10) => SevenSegController_v1_0_S00_AXI_inst_n_32,
      \slv_reg1_reg[31]_0\(9) => SevenSegController_v1_0_S00_AXI_inst_n_33,
      \slv_reg1_reg[31]_0\(8) => SevenSegController_v1_0_S00_AXI_inst_n_34,
      \slv_reg1_reg[31]_0\(7) => SevenSegController_v1_0_S00_AXI_inst_n_35,
      \slv_reg1_reg[31]_0\(6) => SevenSegController_v1_0_S00_AXI_inst_n_36,
      \slv_reg1_reg[31]_0\(5) => SevenSegController_v1_0_S00_AXI_inst_n_37,
      \slv_reg1_reg[31]_0\(4) => SevenSegController_v1_0_S00_AXI_inst_n_38,
      \slv_reg1_reg[31]_0\(3) => SevenSegController_v1_0_S00_AXI_inst_n_39,
      \slv_reg1_reg[31]_0\(2) => SevenSegController_v1_0_S00_AXI_inst_n_40,
      \slv_reg1_reg[31]_0\(1) => SevenSegController_v1_0_S00_AXI_inst_n_41,
      \slv_reg1_reg[31]_0\(0) => SevenSegController_v1_0_S00_AXI_inst_n_42,
      \slv_reg1_reg[31]_1\(2) => SevenSegController_v1_0_S00_AXI_inst_n_47,
      \slv_reg1_reg[31]_1\(1) => SevenSegController_v1_0_S00_AXI_inst_n_48,
      \slv_reg1_reg[31]_1\(0) => SevenSegController_v1_0_S00_AXI_inst_n_49,
      state(1 downto 0) => state(1 downto 0)
    );
\anode[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => LED_activating_counter(2),
      I1 => LED_activating_counter(0),
      I2 => LED_activating_counter(1),
      O => p_1_in(0)
    );
\anode[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => LED_activating_counter(2),
      I1 => LED_activating_counter(1),
      I2 => LED_activating_counter(0),
      O => \anode[1]_i_1_n_0\
    );
\anode[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => LED_activating_counter(2),
      I1 => LED_activating_counter(0),
      I2 => LED_activating_counter(1),
      O => \anode[2]_i_1_n_0\
    );
\anode[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => LED_activating_counter(2),
      I1 => LED_activating_counter(0),
      I2 => LED_activating_counter(1),
      O => \anode[3]_i_1_n_0\
    );
\anode[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => LED_activating_counter(0),
      I1 => LED_activating_counter(1),
      I2 => LED_activating_counter(2),
      O => \anode[4]_i_1_n_0\
    );
\anode[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => LED_activating_counter(2),
      I1 => LED_activating_counter(1),
      I2 => LED_activating_counter(0),
      O => p_1_in(5)
    );
\anode[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => LED_activating_counter(2),
      I1 => LED_activating_counter(0),
      I2 => LED_activating_counter(1),
      O => p_1_in(6)
    );
\anode[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data4(1),
      I1 => data4(2),
      I2 => data4(0),
      I3 => data4(3),
      O => \anode[7]_i_14_n_0\
    );
\anode[7]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data6(1),
      I1 => data6(2),
      I2 => data6(0),
      I3 => data6(3),
      O => \anode[7]_i_17_n_0\
    );
\anode[7]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data7(0),
      I1 => data7(1),
      I2 => data7(2),
      I3 => data7(3),
      O => \anode[7]_i_18_n_0\
    );
\anode[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => LED_activating_counter(2),
      I1 => LED_activating_counter(0),
      I2 => LED_activating_counter(1),
      O => p_1_in(7)
    );
\anode[7]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data3(1),
      I1 => data3(2),
      I2 => data3(0),
      I3 => data3(3),
      O => \anode[7]_i_21_n_0\
    );
\anode[7]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \anode[7]_i_17_n_0\,
      I1 => \anode[7]_i_18_n_0\,
      I2 => \anode[7]_i_14_n_0\,
      I3 => \anode[7]_i_32_n_0\,
      O => \anode[7]_i_23_n_0\
    );
\anode[7]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \anode[7]_i_21_n_0\,
      I1 => data2(3),
      I2 => data2(0),
      I3 => data2(2),
      I4 => data2(1),
      O => \anode[7]_i_24_n_0\
    );
\anode[7]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data1(1),
      I1 => data1(2),
      I2 => data1(0),
      I3 => data1(3),
      O => \anode[7]_i_26_n_0\
    );
\anode[7]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \anode[7]_i_26_n_0\,
      I1 => \bcd_reg_reg_n_0_[3]\,
      I2 => \bcd_reg_reg_n_0_[0]\,
      I3 => \bcd_reg_reg_n_0_[2]\,
      I4 => \bcd_reg_reg_n_0_[1]\,
      O => \anode[7]_i_28_n_0\
    );
\anode[7]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data5(1),
      I1 => data5(2),
      I2 => data5(0),
      I3 => data5(3),
      O => \anode[7]_i_32_n_0\
    );
\anode_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(0),
      Q => anode(0),
      S => SevenSegController_v1_0_S00_AXI_inst_n_52
    );
\anode_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \anode[1]_i_1_n_0\,
      Q => anode(1),
      S => SevenSegController_v1_0_S00_AXI_inst_n_52
    );
\anode_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \anode[2]_i_1_n_0\,
      Q => anode(2),
      S => SevenSegController_v1_0_S00_AXI_inst_n_52
    );
\anode_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \anode[3]_i_1_n_0\,
      Q => anode(3),
      S => SevenSegController_v1_0_S00_AXI_inst_n_52
    );
\anode_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \anode[4]_i_1_n_0\,
      Q => anode(4),
      S => SevenSegController_v1_0_S00_AXI_inst_n_52
    );
\anode_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(5),
      Q => anode(5),
      S => SevenSegController_v1_0_S00_AXI_inst_n_52
    );
\anode_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(6),
      Q => anode(6),
      S => SevenSegController_v1_0_S00_AXI_inst_n_52
    );
\anode_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(7),
      Q => anode(7),
      S => SevenSegController_v1_0_S00_AXI_inst_n_52
    );
bcb: entity work.Fast_IP_Clock_SevenSegController_0_1_Binary_to_BCD
     port map (
      D(31 downto 0) => bcd(31 downto 0),
      E(0) => bcd_reg,
      Q(0) => \r_SM_Main__0\(0),
      overflow => overflow,
      \r_Binary_reg[0]_0\(0) => SevenSegController_v1_0_S00_AXI_inst_n_51,
      \r_Binary_reg[31]_0\(30 downto 27) => p_0_in(3 downto 0),
      \r_Binary_reg[31]_0\(26) => SevenSegController_v1_0_S00_AXI_inst_n_15,
      \r_Binary_reg[31]_0\(25) => SevenSegController_v1_0_S00_AXI_inst_n_16,
      \r_Binary_reg[31]_0\(24) => SevenSegController_v1_0_S00_AXI_inst_n_17,
      \r_Binary_reg[31]_0\(23) => SevenSegController_v1_0_S00_AXI_inst_n_18,
      \r_Binary_reg[31]_0\(22) => SevenSegController_v1_0_S00_AXI_inst_n_19,
      \r_Binary_reg[31]_0\(21) => SevenSegController_v1_0_S00_AXI_inst_n_20,
      \r_Binary_reg[31]_0\(20) => SevenSegController_v1_0_S00_AXI_inst_n_21,
      \r_Binary_reg[31]_0\(19) => SevenSegController_v1_0_S00_AXI_inst_n_22,
      \r_Binary_reg[31]_0\(18) => SevenSegController_v1_0_S00_AXI_inst_n_23,
      \r_Binary_reg[31]_0\(17) => SevenSegController_v1_0_S00_AXI_inst_n_24,
      \r_Binary_reg[31]_0\(16) => SevenSegController_v1_0_S00_AXI_inst_n_25,
      \r_Binary_reg[31]_0\(15) => SevenSegController_v1_0_S00_AXI_inst_n_26,
      \r_Binary_reg[31]_0\(14) => SevenSegController_v1_0_S00_AXI_inst_n_27,
      \r_Binary_reg[31]_0\(13) => SevenSegController_v1_0_S00_AXI_inst_n_28,
      \r_Binary_reg[31]_0\(12) => SevenSegController_v1_0_S00_AXI_inst_n_29,
      \r_Binary_reg[31]_0\(11) => SevenSegController_v1_0_S00_AXI_inst_n_30,
      \r_Binary_reg[31]_0\(10) => SevenSegController_v1_0_S00_AXI_inst_n_31,
      \r_Binary_reg[31]_0\(9) => SevenSegController_v1_0_S00_AXI_inst_n_32,
      \r_Binary_reg[31]_0\(8) => SevenSegController_v1_0_S00_AXI_inst_n_33,
      \r_Binary_reg[31]_0\(7) => SevenSegController_v1_0_S00_AXI_inst_n_34,
      \r_Binary_reg[31]_0\(6) => SevenSegController_v1_0_S00_AXI_inst_n_35,
      \r_Binary_reg[31]_0\(5) => SevenSegController_v1_0_S00_AXI_inst_n_36,
      \r_Binary_reg[31]_0\(4) => SevenSegController_v1_0_S00_AXI_inst_n_37,
      \r_Binary_reg[31]_0\(3) => SevenSegController_v1_0_S00_AXI_inst_n_38,
      \r_Binary_reg[31]_0\(2) => SevenSegController_v1_0_S00_AXI_inst_n_39,
      \r_Binary_reg[31]_0\(1) => SevenSegController_v1_0_S00_AXI_inst_n_40,
      \r_Binary_reg[31]_0\(0) => SevenSegController_v1_0_S00_AXI_inst_n_41,
      r_DV_reg_0 => bcb_n_34,
      r_OV_reg_0 => go_reg_n_0,
      s00_axi_aclk => s00_axi_aclk,
      state(1 downto 0) => state(1 downto 0)
    );
\bcd_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(0),
      Q => \bcd_reg_reg_n_0_[0]\
    );
\bcd_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(10),
      Q => data2(2)
    );
\bcd_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(11),
      Q => data2(3)
    );
\bcd_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(12),
      Q => data3(0)
    );
\bcd_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(13),
      Q => data3(1)
    );
\bcd_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(14),
      Q => data3(2)
    );
\bcd_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(15),
      Q => data3(3)
    );
\bcd_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(16),
      Q => data4(0)
    );
\bcd_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(17),
      Q => data4(1)
    );
\bcd_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(18),
      Q => data4(2)
    );
\bcd_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(19),
      Q => data4(3)
    );
\bcd_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(1),
      Q => \bcd_reg_reg_n_0_[1]\
    );
\bcd_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(20),
      Q => data5(0)
    );
\bcd_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(21),
      Q => data5(1)
    );
\bcd_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(22),
      Q => data5(2)
    );
\bcd_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(23),
      Q => data5(3)
    );
\bcd_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(24),
      Q => data6(0)
    );
\bcd_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(25),
      Q => data6(1)
    );
\bcd_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(26),
      Q => data6(2)
    );
\bcd_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(27),
      Q => data6(3)
    );
\bcd_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(28),
      Q => data7(0)
    );
\bcd_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(29),
      Q => data7(1)
    );
\bcd_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(2),
      Q => \bcd_reg_reg_n_0_[2]\
    );
\bcd_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(30),
      Q => data7(2)
    );
\bcd_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(31),
      Q => data7(3)
    );
\bcd_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(3),
      Q => \bcd_reg_reg_n_0_[3]\
    );
\bcd_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(4),
      Q => data1(0)
    );
\bcd_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(5),
      Q => data1(1)
    );
\bcd_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(6),
      Q => data1(2)
    );
\bcd_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(7),
      Q => data1(3)
    );
\bcd_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(8),
      Q => data2(0)
    );
\bcd_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bcd_reg,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => bcd(9),
      Q => data2(1)
    );
\cathode_a[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0091"
    )
        port map (
      I0 => LED_HEX(1),
      I1 => LED_HEX(2),
      I2 => LED_HEX(0),
      I3 => LED_HEX(3),
      O => \cathode_a[0]_i_1_n_0\
    );
\cathode_a[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5918"
    )
        port map (
      I0 => LED_HEX(3),
      I1 => LED_HEX(2),
      I2 => LED_HEX(1),
      I3 => LED_HEX(0),
      O => cathode_a(1)
    );
\cathode_a[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => LED_HEX(3),
      I1 => LED_HEX(1),
      I2 => LED_HEX(2),
      I3 => LED_HEX(0),
      O => cathode_a(2)
    );
\cathode_a[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => LED_HEX(3),
      I1 => LED_HEX(2),
      I2 => LED_HEX(0),
      I3 => LED_HEX(1),
      O => cathode_a(3)
    );
\cathode_a[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => LED_HEX(3),
      I1 => LED_HEX(0),
      I2 => LED_HEX(1),
      I3 => LED_HEX(2),
      O => cathode_a(4)
    );
\cathode_a[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => LED_HEX(3),
      I1 => LED_HEX(2),
      I2 => LED_HEX(1),
      I3 => LED_HEX(0),
      O => cathode_a(5)
    );
\cathode_a[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"209C"
    )
        port map (
      I0 => LED_HEX(3),
      I1 => LED_HEX(2),
      I2 => LED_HEX(0),
      I3 => LED_HEX(1),
      O => cathode_a(6)
    );
\cathode_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cathode_a[0]_i_1_n_0\,
      Q => cathode(6),
      R => '0'
    );
\cathode_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => cathode_a(1),
      Q => cathode(5),
      R => '0'
    );
\cathode_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => cathode_a(2),
      Q => cathode(4),
      R => '0'
    );
\cathode_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => cathode_a(3),
      Q => cathode(3),
      R => '0'
    );
\cathode_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => cathode_a(4),
      Q => cathode(2),
      R => '0'
    );
\cathode_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => cathode_a(5),
      Q => cathode(1),
      R => '0'
    );
\cathode_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => cathode_a(6),
      Q => cathode(0),
      R => '0'
    );
dp_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SevenSegController_v1_0_S00_AXI_inst_n_50,
      Q => dp,
      R => '0'
    );
go_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB10"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => \old_slv10_carry__1_n_1\,
      I3 => go_reg_n_0,
      O => go_i_1_n_0
    );
go_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => go_i_1_n_0,
      Q => go_reg_n_0
    );
old_slv10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => old_slv10_carry_n_0,
      CO(2) => old_slv10_carry_n_1,
      CO(1) => old_slv10_carry_n_2,
      CO(0) => old_slv10_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_old_slv10_carry_O_UNCONNECTED(3 downto 0),
      S(3) => SevenSegController_v1_0_S00_AXI_inst_n_7,
      S(2) => SevenSegController_v1_0_S00_AXI_inst_n_8,
      S(1) => SevenSegController_v1_0_S00_AXI_inst_n_9,
      S(0) => SevenSegController_v1_0_S00_AXI_inst_n_10
    );
\old_slv10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => old_slv10_carry_n_0,
      CO(3) => \old_slv10_carry__0_n_0\,
      CO(2) => \old_slv10_carry__0_n_1\,
      CO(1) => \old_slv10_carry__0_n_2\,
      CO(0) => \old_slv10_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_old_slv10_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => SevenSegController_v1_0_S00_AXI_inst_n_43,
      S(2) => SevenSegController_v1_0_S00_AXI_inst_n_44,
      S(1) => SevenSegController_v1_0_S00_AXI_inst_n_45,
      S(0) => SevenSegController_v1_0_S00_AXI_inst_n_46
    );
\old_slv10_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \old_slv10_carry__0_n_0\,
      CO(3) => \NLW_old_slv10_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \old_slv10_carry__1_n_1\,
      CO(1) => \old_slv10_carry__1_n_2\,
      CO(0) => \old_slv10_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_old_slv10_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => SevenSegController_v1_0_S00_AXI_inst_n_47,
      S(1) => SevenSegController_v1_0_S00_AXI_inst_n_48,
      S(0) => SevenSegController_v1_0_S00_AXI_inst_n_49
    );
\old_slv1[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(0),
      I1 => \old_slv10_carry__1_n_1\,
      I2 => state(1),
      O => old_slv1
    );
\old_slv1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_42,
      Q => \old_slv1__0\(0)
    );
\old_slv1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_32,
      Q => \old_slv1__0\(10)
    );
\old_slv1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_31,
      Q => \old_slv1__0\(11)
    );
\old_slv1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_30,
      Q => \old_slv1__0\(12)
    );
\old_slv1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_29,
      Q => \old_slv1__0\(13)
    );
\old_slv1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_28,
      Q => \old_slv1__0\(14)
    );
\old_slv1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_27,
      Q => \old_slv1__0\(15)
    );
\old_slv1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_26,
      Q => \old_slv1__0\(16)
    );
\old_slv1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_25,
      Q => \old_slv1__0\(17)
    );
\old_slv1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_24,
      Q => \old_slv1__0\(18)
    );
\old_slv1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_23,
      Q => \old_slv1__0\(19)
    );
\old_slv1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_41,
      Q => \old_slv1__0\(1)
    );
\old_slv1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_22,
      Q => \old_slv1__0\(20)
    );
\old_slv1_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_21,
      Q => \old_slv1__0\(21)
    );
\old_slv1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_20,
      Q => \old_slv1__0\(22)
    );
\old_slv1_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_19,
      Q => \old_slv1__0\(23)
    );
\old_slv1_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_18,
      Q => \old_slv1__0\(24)
    );
\old_slv1_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_17,
      Q => \old_slv1__0\(25)
    );
\old_slv1_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_16,
      Q => \old_slv1__0\(26)
    );
\old_slv1_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_15,
      Q => \old_slv1__0\(27)
    );
\old_slv1_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => p_0_in(0),
      Q => \old_slv1__0\(28)
    );
\old_slv1_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => p_0_in(1),
      Q => \old_slv1__0\(29)
    );
\old_slv1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_40,
      Q => \old_slv1__0\(2)
    );
\old_slv1_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => p_0_in(2),
      Q => \old_slv1__0\(30)
    );
\old_slv1_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => p_0_in(3),
      Q => \old_slv1__0\(31)
    );
\old_slv1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_39,
      Q => \old_slv1__0\(3)
    );
\old_slv1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_38,
      Q => \old_slv1__0\(4)
    );
\old_slv1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_37,
      Q => \old_slv1__0\(5)
    );
\old_slv1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_36,
      Q => \old_slv1__0\(6)
    );
\old_slv1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_35,
      Q => \old_slv1__0\(7)
    );
\old_slv1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_34,
      Q => \old_slv1__0\(8)
    );
\old_slv1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => old_slv1,
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => SevenSegController_v1_0_S00_AXI_inst_n_33,
      Q => \old_slv1__0\(9)
    );
\refresh_counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \refresh_counter_reg_n_0_[0]\,
      O => \refresh_counter[0]_i_2_n_0\
    );
\refresh_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[0]_i_1_n_7\,
      Q => \refresh_counter_reg_n_0_[0]\
    );
\refresh_counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \refresh_counter_reg[0]_i_1_n_0\,
      CO(2) => \refresh_counter_reg[0]_i_1_n_1\,
      CO(1) => \refresh_counter_reg[0]_i_1_n_2\,
      CO(0) => \refresh_counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \refresh_counter_reg[0]_i_1_n_4\,
      O(2) => \refresh_counter_reg[0]_i_1_n_5\,
      O(1) => \refresh_counter_reg[0]_i_1_n_6\,
      O(0) => \refresh_counter_reg[0]_i_1_n_7\,
      S(3) => \refresh_counter_reg_n_0_[3]\,
      S(2) => \refresh_counter_reg_n_0_[2]\,
      S(1) => \refresh_counter_reg_n_0_[1]\,
      S(0) => \refresh_counter[0]_i_2_n_0\
    );
\refresh_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[8]_i_1_n_5\,
      Q => \refresh_counter_reg_n_0_[10]\
    );
\refresh_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[8]_i_1_n_4\,
      Q => \refresh_counter_reg_n_0_[11]\
    );
\refresh_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[12]_i_1_n_7\,
      Q => \refresh_counter_reg_n_0_[12]\
    );
\refresh_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refresh_counter_reg[8]_i_1_n_0\,
      CO(3) => \refresh_counter_reg[12]_i_1_n_0\,
      CO(2) => \refresh_counter_reg[12]_i_1_n_1\,
      CO(1) => \refresh_counter_reg[12]_i_1_n_2\,
      CO(0) => \refresh_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refresh_counter_reg[12]_i_1_n_4\,
      O(2) => \refresh_counter_reg[12]_i_1_n_5\,
      O(1) => \refresh_counter_reg[12]_i_1_n_6\,
      O(0) => \refresh_counter_reg[12]_i_1_n_7\,
      S(3) => \refresh_counter_reg_n_0_[15]\,
      S(2) => \refresh_counter_reg_n_0_[14]\,
      S(1) => \refresh_counter_reg_n_0_[13]\,
      S(0) => \refresh_counter_reg_n_0_[12]\
    );
\refresh_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[12]_i_1_n_6\,
      Q => \refresh_counter_reg_n_0_[13]\
    );
\refresh_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[12]_i_1_n_5\,
      Q => \refresh_counter_reg_n_0_[14]\
    );
\refresh_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[12]_i_1_n_4\,
      Q => \refresh_counter_reg_n_0_[15]\
    );
\refresh_counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[16]_i_1_n_7\,
      Q => \refresh_counter_reg_n_0_[16]\
    );
\refresh_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refresh_counter_reg[12]_i_1_n_0\,
      CO(3) => \refresh_counter_reg[16]_i_1_n_0\,
      CO(2) => \refresh_counter_reg[16]_i_1_n_1\,
      CO(1) => \refresh_counter_reg[16]_i_1_n_2\,
      CO(0) => \refresh_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refresh_counter_reg[16]_i_1_n_4\,
      O(2) => \refresh_counter_reg[16]_i_1_n_5\,
      O(1) => \refresh_counter_reg[16]_i_1_n_6\,
      O(0) => \refresh_counter_reg[16]_i_1_n_7\,
      S(3 downto 2) => LED_activating_counter(1 downto 0),
      S(1) => \refresh_counter_reg_n_0_[17]\,
      S(0) => \refresh_counter_reg_n_0_[16]\
    );
\refresh_counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[16]_i_1_n_6\,
      Q => \refresh_counter_reg_n_0_[17]\
    );
\refresh_counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[16]_i_1_n_5\,
      Q => LED_activating_counter(0)
    );
\refresh_counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[16]_i_1_n_4\,
      Q => LED_activating_counter(1)
    );
\refresh_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[0]_i_1_n_6\,
      Q => \refresh_counter_reg_n_0_[1]\
    );
\refresh_counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[20]_i_1_n_7\,
      Q => LED_activating_counter(2)
    );
\refresh_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refresh_counter_reg[16]_i_1_n_0\,
      CO(3 downto 0) => \NLW_refresh_counter_reg[20]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_refresh_counter_reg[20]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \refresh_counter_reg[20]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => LED_activating_counter(2)
    );
\refresh_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[0]_i_1_n_5\,
      Q => \refresh_counter_reg_n_0_[2]\
    );
\refresh_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[0]_i_1_n_4\,
      Q => \refresh_counter_reg_n_0_[3]\
    );
\refresh_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[4]_i_1_n_7\,
      Q => \refresh_counter_reg_n_0_[4]\
    );
\refresh_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refresh_counter_reg[0]_i_1_n_0\,
      CO(3) => \refresh_counter_reg[4]_i_1_n_0\,
      CO(2) => \refresh_counter_reg[4]_i_1_n_1\,
      CO(1) => \refresh_counter_reg[4]_i_1_n_2\,
      CO(0) => \refresh_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refresh_counter_reg[4]_i_1_n_4\,
      O(2) => \refresh_counter_reg[4]_i_1_n_5\,
      O(1) => \refresh_counter_reg[4]_i_1_n_6\,
      O(0) => \refresh_counter_reg[4]_i_1_n_7\,
      S(3) => \refresh_counter_reg_n_0_[7]\,
      S(2) => \refresh_counter_reg_n_0_[6]\,
      S(1) => \refresh_counter_reg_n_0_[5]\,
      S(0) => \refresh_counter_reg_n_0_[4]\
    );
\refresh_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[4]_i_1_n_6\,
      Q => \refresh_counter_reg_n_0_[5]\
    );
\refresh_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[4]_i_1_n_5\,
      Q => \refresh_counter_reg_n_0_[6]\
    );
\refresh_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[4]_i_1_n_4\,
      Q => \refresh_counter_reg_n_0_[7]\
    );
\refresh_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[8]_i_1_n_7\,
      Q => \refresh_counter_reg_n_0_[8]\
    );
\refresh_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refresh_counter_reg[4]_i_1_n_0\,
      CO(3) => \refresh_counter_reg[8]_i_1_n_0\,
      CO(2) => \refresh_counter_reg[8]_i_1_n_1\,
      CO(1) => \refresh_counter_reg[8]_i_1_n_2\,
      CO(0) => \refresh_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refresh_counter_reg[8]_i_1_n_4\,
      O(2) => \refresh_counter_reg[8]_i_1_n_5\,
      O(1) => \refresh_counter_reg[8]_i_1_n_6\,
      O(0) => \refresh_counter_reg[8]_i_1_n_7\,
      S(3) => \refresh_counter_reg_n_0_[11]\,
      S(2) => \refresh_counter_reg_n_0_[10]\,
      S(1) => \refresh_counter_reg_n_0_[9]\,
      S(0) => \refresh_counter_reg_n_0_[8]\
    );
\refresh_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SevenSegController_v1_0_S00_AXI_inst_n_1,
      D => \refresh_counter_reg[8]_i_1_n_6\,
      Q => \refresh_counter_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Fast_IP_Clock_SevenSegController_0_1 is
  port (
    anode : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cathode : out STD_LOGIC_VECTOR ( 6 downto 0 );
    dp : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Fast_IP_Clock_SevenSegController_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Fast_IP_Clock_SevenSegController_0_1 : entity is "Fast_IP_Clock_SevenSegController_0_1,SevenSegController_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Fast_IP_Clock_SevenSegController_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Fast_IP_Clock_SevenSegController_0_1 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Fast_IP_Clock_SevenSegController_0_1 : entity is "SevenSegController_v1_0,Vivado 2019.1";
end Fast_IP_Clock_SevenSegController_0_1;

architecture STRUCTURE of Fast_IP_Clock_SevenSegController_0_1 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.Fast_IP_Clock_SevenSegController_0_1_SevenSegController_v1_0
     port map (
      anode(7 downto 0) => anode(7 downto 0),
      cathode(6 downto 0) => cathode(6 downto 0),
      dp => dp,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
