-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Feb  1 10:28:49 2019
-- Host        : AndrewSi64 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/andrewsi/OneDrive/fpgaproducts/Vivado/MandelRTL/project_1/project_1.srcs/sources_1/bd/Fast_IP_Clock/ip/Fast_IP_Clock_psram_ip_0_0/Fast_IP_Clock_psram_ip_0_0_sim_netlist.vhdl
-- Design      : Fast_IP_Clock_psram_ip_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Fast_IP_Clock_psram_ip_0_0_AsyncPSRAM is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_cen_i_reg_0 : out STD_LOGIC;
    MEM_OEN : out STD_LOGIC;
    MEM_WEN : out STD_LOGIC;
    MEM_BEN : out STD_LOGIC_VECTOR ( 1 downto 0 );
    MEM_CRE : out STD_LOGIC;
    s00_axi_aresetn_0 : out STD_LOGIC;
    s00_axi_wstrb_2_sp_1 : out STD_LOGIC;
    \state_reg[2]\ : out STD_LOGIC;
    mem_idle_reg_0 : out STD_LOGIC;
    mem_idle_reg_1 : out STD_LOGIC;
    \next_state18_out__0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_idle_reg_2 : out STD_LOGIC;
    s00_axi_wstrb_1_sp_1 : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    go_reg : out STD_LOGIC;
    MEM_ADDR_OUT : out STD_LOGIC_VECTOR ( 22 downto 0 );
    mem_idle_reg_3 : out STD_LOGIC;
    mem_idle_reg_4 : out STD_LOGIC;
    MEM_DATA_T : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_idle_reg_5 : out STD_LOGIC;
    MEM_DATA_O : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \mem_data_rd_i_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 22 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_rlast_reg : in STD_LOGIC;
    s00_axi_rlast : in STD_LOGIC;
    axi_rlast_reg_0 : in STD_LOGIC;
    go : in STD_LOGIC;
    command_reg : in STD_LOGIC;
    MEM_UBN_reg_0 : in STD_LOGIC;
    MEM_LBN_reg_0 : in STD_LOGIC;
    \state_reg[0]_1\ : in STD_LOGIC;
    axi_arv_arr_flag : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    command_reg_0 : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    go_reg_0 : in STD_LOGIC;
    go_reg_1 : in STD_LOGIC;
    axi_wready_reg : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    axi_awv_awr_flag : in STD_LOGIC;
    command_reg_1 : in STD_LOGIC;
    \MEM_DATA_O_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MEM_DATA_I : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Fast_IP_Clock_psram_ip_0_0_AsyncPSRAM : entity is "AsyncPSRAM";
end Fast_IP_Clock_psram_ip_0_0_AsyncPSRAM;

architecture STRUCTURE of Fast_IP_Clock_psram_ip_0_0_AsyncPSRAM is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_3_n_2\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_3_n_3\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_1\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_2\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_3\ : STD_LOGIC;
  signal \^mem_addr_out\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal MEM_CRE_i_1_n_0 : STD_LOGIC;
  signal MEM_LBN_i_1_n_0 : STD_LOGIC;
  signal \^mem_oen\ : STD_LOGIC;
  signal MEM_UBN_i_1_n_0 : STD_LOGIC;
  signal MEM_UBN_i_2_n_0 : STD_LOGIC;
  signal MEM_WEN_i_1_n_0 : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_wready_i_2_n_0 : STD_LOGIC;
  signal ce_cycle_counter0 : STD_LOGIC;
  signal \ce_cycle_counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \ce_cycle_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \ce_cycle_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \ce_cycle_counter[8]_i_5_n_0\ : STD_LOGIC;
  signal \ce_cycle_counter[8]_i_6_n_0\ : STD_LOGIC;
  signal \ce_cycle_counter_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal cem_time_expired_i_1_n_0 : STD_LOGIC;
  signal cem_time_expired_reg_n_0 : STD_LOGIC;
  signal cen_old : STD_LOGIC;
  signal command_i_4_n_0 : STD_LOGIC;
  signal current_cmd : STD_LOGIC;
  signal current_cmd_reg_n_0 : STD_LOGIC;
  signal cycle_time : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cycle_time_reg_n_0_[0]\ : STD_LOGIC;
  signal \cycle_time_reg_n_0_[1]\ : STD_LOGIC;
  signal \cycle_time_reg_n_0_[2]\ : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal last_page_read : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \last_page_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \last_page_read[10]_i_1_n_0\ : STD_LOGIC;
  signal \last_page_read[11]_i_1_n_0\ : STD_LOGIC;
  signal \last_page_read[12]_i_1_n_0\ : STD_LOGIC;
  signal \last_page_read[13]_i_1_n_0\ : STD_LOGIC;
  signal \last_page_read[14]_i_1_n_0\ : STD_LOGIC;
  signal \last_page_read[15]_i_1_n_0\ : STD_LOGIC;
  signal \last_page_read[16]_i_1_n_0\ : STD_LOGIC;
  signal \last_page_read[17]_i_1_n_0\ : STD_LOGIC;
  signal \last_page_read[18]_i_2_n_0\ : STD_LOGIC;
  signal \last_page_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \last_page_read[2]_i_1_n_0\ : STD_LOGIC;
  signal \last_page_read[3]_i_1_n_0\ : STD_LOGIC;
  signal \last_page_read[4]_i_1_n_0\ : STD_LOGIC;
  signal \last_page_read[5]_i_1_n_0\ : STD_LOGIC;
  signal \last_page_read[6]_i_1_n_0\ : STD_LOGIC;
  signal \last_page_read[7]_i_1_n_0\ : STD_LOGIC;
  signal \last_page_read[8]_i_1_n_0\ : STD_LOGIC;
  signal \last_page_read[9]_i_1_n_0\ : STD_LOGIC;
  signal last_page_read_0 : STD_LOGIC;
  signal mem_addr_out_i : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \mem_addr_out_i[22]_i_2_n_0\ : STD_LOGIC;
  signal mem_cen_i_i_11_n_0 : STD_LOGIC;
  signal mem_cen_i_i_12_n_0 : STD_LOGIC;
  signal mem_cen_i_i_13_n_0 : STD_LOGIC;
  signal mem_cen_i_i_14_n_0 : STD_LOGIC;
  signal mem_cen_i_i_15_n_0 : STD_LOGIC;
  signal mem_cen_i_i_16_n_0 : STD_LOGIC;
  signal mem_cen_i_i_17_n_0 : STD_LOGIC;
  signal mem_cen_i_i_18_n_0 : STD_LOGIC;
  signal mem_cen_i_i_1_n_0 : STD_LOGIC;
  signal mem_cen_i_i_2_n_0 : STD_LOGIC;
  signal mem_cen_i_i_3_n_0 : STD_LOGIC;
  signal mem_cen_i_i_5_n_0 : STD_LOGIC;
  signal mem_cen_i_i_6_n_0 : STD_LOGIC;
  signal mem_cen_i_i_7_n_0 : STD_LOGIC;
  signal mem_cen_i_i_8_n_0 : STD_LOGIC;
  signal mem_cen_i_i_9_n_0 : STD_LOGIC;
  signal \^mem_cen_i_reg_0\ : STD_LOGIC;
  signal mem_cen_i_reg_i_10_n_0 : STD_LOGIC;
  signal mem_cen_i_reg_i_10_n_1 : STD_LOGIC;
  signal mem_cen_i_reg_i_10_n_2 : STD_LOGIC;
  signal mem_cen_i_reg_i_10_n_3 : STD_LOGIC;
  signal mem_cen_i_reg_i_4_n_2 : STD_LOGIC;
  signal mem_cen_i_reg_i_4_n_3 : STD_LOGIC;
  signal mem_data_rd_i : STD_LOGIC;
  signal mem_idle : STD_LOGIC;
  signal mem_idle_i_1_n_0 : STD_LOGIC;
  signal \^mem_idle_reg_0\ : STD_LOGIC;
  signal mem_oen_i : STD_LOGIC;
  signal mem_oen_i_i_1_n_0 : STD_LOGIC;
  signal mem_oen_i_i_3_n_0 : STD_LOGIC;
  signal neqOp : STD_LOGIC;
  signal \^next_state18_out__0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal page_valid_i_1_n_0 : STD_LOGIC;
  signal page_valid_i_2_n_0 : STD_LOGIC;
  signal page_valid_reg_n_0 : STD_LOGIC;
  signal s00_axi_wstrb_1_sn_1 : STD_LOGIC;
  signal s00_axi_wstrb_2_sn_1 : STD_LOGIC;
  signal \state1__12\ : STD_LOGIC;
  signal \state[2]_i_4_n_0\ : STD_LOGIC;
  signal state_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal waitcount : STD_LOGIC;
  signal \waitcount[0]_i_1_n_0\ : STD_LOGIC;
  signal \waitcount[1]_i_1_n_0\ : STD_LOGIC;
  signal \waitcount[2]_i_1_n_0\ : STD_LOGIC;
  signal \waitcount[3]_i_1_n_0\ : STD_LOGIC;
  signal \waitcount[4]_i_1_n_0\ : STD_LOGIC;
  signal \waitcount[5]_i_1_n_0\ : STD_LOGIC;
  signal \waitcount[6]_i_2_n_0\ : STD_LOGIC;
  signal \waitcount[6]_i_3_n_0\ : STD_LOGIC;
  signal \waitcount_reg_n_0_[0]\ : STD_LOGIC;
  signal \waitcount_reg_n_0_[1]\ : STD_LOGIC;
  signal \waitcount_reg_n_0_[2]\ : STD_LOGIC;
  signal \waitcount_reg_n_0_[3]\ : STD_LOGIC;
  signal \waitcount_reg_n_0_[4]\ : STD_LOGIC;
  signal \waitcount_reg_n_0_[5]\ : STD_LOGIC;
  signal \waitcount_reg_n_0_[6]\ : STD_LOGIC;
  signal \NLW_FSM_sequential_state_reg[1]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_FSM_sequential_state_reg[1]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_state_reg[1]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_cen_i_reg_i_10_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_cen_i_reg_i_4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_mem_cen_i_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "st_startpage:00,st_delay:11,st_reset:10,st_count:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "st_startpage:00,st_delay:11,st_reset:10,st_count:01";
  attribute SOFT_HLUTNM of MEM_CRE_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of MEM_UBN_i_2 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of MEM_WEN_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_rdata[15]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_rdata[31]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of axi_rlast_i_2 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ce_cycle_counter[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ce_cycle_counter[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ce_cycle_counter[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ce_cycle_counter[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ce_cycle_counter[7]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ce_cycle_counter[8]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ce_cycle_counter[8]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ce_cycle_counter[8]_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of current_cmd_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \last_page_read[10]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \last_page_read[11]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \last_page_read[12]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \last_page_read[13]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \last_page_read[14]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \last_page_read[15]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \last_page_read[16]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \last_page_read[17]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \last_page_read[18]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \last_page_read[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \last_page_read[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \last_page_read[3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \last_page_read[4]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \last_page_read[5]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \last_page_read[6]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \last_page_read[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \last_page_read[8]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \last_page_read[9]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \mem_addr_out_i[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \mem_addr_out_i[10]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \mem_addr_out_i[11]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \mem_addr_out_i[12]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \mem_addr_out_i[13]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \mem_addr_out_i[14]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \mem_addr_out_i[15]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \mem_addr_out_i[16]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \mem_addr_out_i[17]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \mem_addr_out_i[18]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \mem_addr_out_i[19]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mem_addr_out_i[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \mem_addr_out_i[20]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \mem_addr_out_i[21]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mem_addr_out_i[22]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mem_addr_out_i[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \mem_addr_out_i[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \mem_addr_out_i[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mem_addr_out_i[5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mem_addr_out_i[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \mem_addr_out_i[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \mem_addr_out_i[8]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \mem_addr_out_i[9]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of mem_cen_i_i_14 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of mem_cen_i_i_5 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of mem_cen_i_i_6 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of mem_cen_i_i_7 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of mem_oen_i_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of mem_oen_i_i_3 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of page_valid_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \state[2]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \waitcount[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \waitcount[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \waitcount[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \waitcount[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \waitcount[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \waitcount[6]_i_2\ : label is "soft_lutpair9";
begin
  MEM_ADDR_OUT(22 downto 0) <= \^mem_addr_out\(22 downto 0);
  MEM_OEN <= \^mem_oen\;
  SR(0) <= \^sr\(0);
  mem_cen_i_reg_0 <= \^mem_cen_i_reg_0\;
  mem_idle_reg_0 <= \^mem_idle_reg_0\;
  \next_state18_out__0\ <= \^next_state18_out__0\;
  s00_axi_wstrb_1_sp_1 <= s00_axi_wstrb_1_sn_1;
  s00_axi_wstrb_2_sp_1 <= s00_axi_wstrb_2_sn_1;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5EF"
    )
        port map (
      I0 => state_1(0),
      I1 => go,
      I2 => state_1(1),
      I3 => \state1__12\,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FC00FFAA00AA00"
    )
        port map (
      I0 => \state1__12\,
      I1 => neqOp,
      I2 => mem_cen_i_i_3_n_0,
      I3 => state_1(0),
      I4 => go,
      I5 => state_1(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(7),
      I1 => last_page_read(3),
      I2 => Q(8),
      I3 => last_page_read(4),
      I4 => last_page_read(5),
      I5 => Q(9),
      O => \FSM_sequential_state[1]_i_10_n_0\
    );
\FSM_sequential_state[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(4),
      I1 => last_page_read(0),
      I2 => Q(5),
      I3 => last_page_read(1),
      I4 => last_page_read(2),
      I5 => Q(6),
      O => \FSM_sequential_state[1]_i_11_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => mem_cen_i_i_9_n_0,
      I1 => \waitcount_reg_n_0_[5]\,
      I2 => \waitcount_reg_n_0_[6]\,
      I3 => \waitcount_reg_n_0_[3]\,
      I4 => \waitcount_reg_n_0_[4]\,
      O => \state1__12\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => last_page_read(18),
      I1 => Q(22),
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(19),
      I1 => last_page_read(15),
      I2 => Q(20),
      I3 => last_page_read(16),
      I4 => last_page_read(17),
      I5 => Q(21),
      O => \FSM_sequential_state[1]_i_6_n_0\
    );
\FSM_sequential_state[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(16),
      I1 => last_page_read(12),
      I2 => Q(17),
      I3 => last_page_read(13),
      I4 => last_page_read(14),
      I5 => Q(18),
      O => \FSM_sequential_state[1]_i_7_n_0\
    );
\FSM_sequential_state[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(13),
      I1 => last_page_read(9),
      I2 => Q(14),
      I3 => last_page_read(10),
      I4 => last_page_read(11),
      I5 => Q(15),
      O => \FSM_sequential_state[1]_i_8_n_0\
    );
\FSM_sequential_state[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(10),
      I1 => last_page_read(6),
      I2 => Q(11),
      I3 => last_page_read(7),
      I4 => last_page_read(8),
      I5 => Q(12),
      O => \FSM_sequential_state[1]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state_1(0),
      R => \^sr\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state_1(1),
      R => \^sr\(0)
    );
\FSM_sequential_state_reg[1]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_sequential_state_reg[1]_i_4_n_0\,
      CO(3) => \NLW_FSM_sequential_state_reg[1]_i_3_CO_UNCONNECTED\(3),
      CO(2) => neqOp,
      CO(1) => \FSM_sequential_state_reg[1]_i_3_n_2\,
      CO(0) => \FSM_sequential_state_reg[1]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_FSM_sequential_state_reg[1]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \FSM_sequential_state[1]_i_5_n_0\,
      S(1) => \FSM_sequential_state[1]_i_6_n_0\,
      S(0) => \FSM_sequential_state[1]_i_7_n_0\
    );
\FSM_sequential_state_reg[1]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FSM_sequential_state_reg[1]_i_4_n_0\,
      CO(2) => \FSM_sequential_state_reg[1]_i_4_n_1\,
      CO(1) => \FSM_sequential_state_reg[1]_i_4_n_2\,
      CO(0) => \FSM_sequential_state_reg[1]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_FSM_sequential_state_reg[1]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_state[1]_i_8_n_0\,
      S(2) => \FSM_sequential_state[1]_i_9_n_0\,
      S(1) => \FSM_sequential_state[1]_i_10_n_0\,
      S(0) => \FSM_sequential_state[1]_i_11_n_0\
    );
MEM_CRE_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_1(0),
      I1 => state_1(1),
      O => MEM_CRE_i_1_n_0
    );
MEM_CRE_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_oen_i_i_1_n_0,
      D => MEM_CRE_i_1_n_0,
      Q => MEM_CRE,
      R => \^sr\(0)
    );
\MEM_DATA_O_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \MEM_DATA_O_reg[15]_0\(0),
      Q => MEM_DATA_O(0),
      R => '0'
    );
\MEM_DATA_O_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \MEM_DATA_O_reg[15]_0\(10),
      Q => MEM_DATA_O(10),
      R => '0'
    );
\MEM_DATA_O_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \MEM_DATA_O_reg[15]_0\(11),
      Q => MEM_DATA_O(11),
      R => '0'
    );
\MEM_DATA_O_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \MEM_DATA_O_reg[15]_0\(12),
      Q => MEM_DATA_O(12),
      R => '0'
    );
\MEM_DATA_O_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \MEM_DATA_O_reg[15]_0\(13),
      Q => MEM_DATA_O(13),
      R => '0'
    );
\MEM_DATA_O_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \MEM_DATA_O_reg[15]_0\(14),
      Q => MEM_DATA_O(14),
      R => '0'
    );
\MEM_DATA_O_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \MEM_DATA_O_reg[15]_0\(15),
      Q => MEM_DATA_O(15),
      R => '0'
    );
\MEM_DATA_O_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \MEM_DATA_O_reg[15]_0\(1),
      Q => MEM_DATA_O(1),
      R => '0'
    );
\MEM_DATA_O_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \MEM_DATA_O_reg[15]_0\(2),
      Q => MEM_DATA_O(2),
      R => '0'
    );
\MEM_DATA_O_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \MEM_DATA_O_reg[15]_0\(3),
      Q => MEM_DATA_O(3),
      R => '0'
    );
\MEM_DATA_O_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \MEM_DATA_O_reg[15]_0\(4),
      Q => MEM_DATA_O(4),
      R => '0'
    );
\MEM_DATA_O_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \MEM_DATA_O_reg[15]_0\(5),
      Q => MEM_DATA_O(5),
      R => '0'
    );
\MEM_DATA_O_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \MEM_DATA_O_reg[15]_0\(6),
      Q => MEM_DATA_O(6),
      R => '0'
    );
\MEM_DATA_O_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \MEM_DATA_O_reg[15]_0\(7),
      Q => MEM_DATA_O(7),
      R => '0'
    );
\MEM_DATA_O_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \MEM_DATA_O_reg[15]_0\(8),
      Q => MEM_DATA_O(8),
      R => '0'
    );
\MEM_DATA_O_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \MEM_DATA_O_reg[15]_0\(9),
      Q => MEM_DATA_O(9),
      R => '0'
    );
\MEM_DATA_T[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^mem_oen\,
      O => MEM_DATA_T(0)
    );
MEM_LBN_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => MEM_LBN_reg_0,
      I1 => state_1(1),
      I2 => go,
      O => MEM_LBN_i_1_n_0
    );
MEM_LBN_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => MEM_UBN_i_1_n_0,
      D => MEM_LBN_i_1_n_0,
      Q => MEM_BEN(0),
      S => \^sr\(0)
    );
MEM_UBN_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_1(0),
      O => MEM_UBN_i_1_n_0
    );
MEM_UBN_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => MEM_UBN_reg_0,
      I1 => state_1(1),
      I2 => go,
      O => MEM_UBN_i_2_n_0
    );
MEM_UBN_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => MEM_UBN_i_1_n_0,
      D => MEM_UBN_i_2_n_0,
      Q => MEM_BEN(1),
      S => \^sr\(0)
    );
MEM_WEN_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF888F88"
    )
        port map (
      I0 => state_1(0),
      I1 => mem_oen_i_i_3_n_0,
      I2 => go,
      I3 => state_1(1),
      I4 => command_reg,
      O => MEM_WEN_i_1_n_0
    );
MEM_WEN_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => mem_oen_i_i_1_n_0,
      D => MEM_WEN_i_1_n_0,
      Q => MEM_WEN,
      S => \^sr\(0)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC80"
    )
        port map (
      I0 => mem_idle,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      O => mem_idle_reg_4
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF20000"
    )
        port map (
      I0 => mem_idle,
      I1 => go,
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => mem_idle_reg_3
    );
axi_rlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000380800000000"
    )
        port map (
      I0 => \^mem_idle_reg_0\,
      I1 => state(2),
      I2 => axi_rlast_reg,
      I3 => s00_axi_rlast,
      I4 => axi_rlast_reg_0,
      I5 => s00_axi_aresetn,
      O => \state_reg[2]\
    );
axi_rlast_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mem_idle,
      I1 => go,
      O => \^mem_idle_reg_0\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => go,
      I1 => mem_idle,
      I2 => state(1),
      I3 => state(0),
      I4 => state(2),
      I5 => s00_axi_aresetn,
      O => go_reg
    );
axi_wready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888088808880"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => axi_wready_i_2_n_0,
      I2 => state(2),
      I3 => state(1),
      I4 => s00_axi_wstrb_2_sn_1,
      I5 => state(0),
      O => s00_axi_aresetn_0
    );
axi_wready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1122112201220000"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => go,
      I3 => state(1),
      I4 => mem_idle,
      I5 => axi_wready_reg,
      O => axi_wready_i_2_n_0
    );
axi_wready_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => s00_axi_wstrb(3),
      I2 => mem_idle,
      O => s00_axi_wstrb_2_sn_1
    );
\ce_cycle_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ce_cycle_counter_reg__0\(0),
      O => p_0_in(0)
    );
\ce_cycle_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ce_cycle_counter_reg__0\(0),
      I1 => \ce_cycle_counter_reg__0\(1),
      O => p_0_in(1)
    );
\ce_cycle_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \ce_cycle_counter_reg__0\(1),
      I1 => \ce_cycle_counter_reg__0\(0),
      I2 => \ce_cycle_counter_reg__0\(2),
      O => p_0_in(2)
    );
\ce_cycle_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \ce_cycle_counter_reg__0\(2),
      I1 => \ce_cycle_counter_reg__0\(0),
      I2 => \ce_cycle_counter_reg__0\(1),
      I3 => \ce_cycle_counter_reg__0\(3),
      O => p_0_in(3)
    );
\ce_cycle_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CCCCCCC"
    )
        port map (
      I0 => \ce_cycle_counter_reg__0\(2),
      I1 => \ce_cycle_counter_reg__0\(4),
      I2 => \ce_cycle_counter_reg__0\(1),
      I3 => \ce_cycle_counter_reg__0\(0),
      I4 => \ce_cycle_counter_reg__0\(3),
      O => p_0_in(4)
    );
\ce_cycle_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \ce_cycle_counter_reg__0\(1),
      I1 => \ce_cycle_counter_reg__0\(0),
      I2 => \ce_cycle_counter_reg__0\(3),
      I3 => \ce_cycle_counter_reg__0\(2),
      I4 => \ce_cycle_counter_reg__0\(4),
      I5 => \ce_cycle_counter_reg__0\(5),
      O => p_0_in(5)
    );
\ce_cycle_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0080"
    )
        port map (
      I0 => \ce_cycle_counter_reg__0\(5),
      I1 => \ce_cycle_counter_reg__0\(4),
      I2 => \ce_cycle_counter_reg__0\(2),
      I3 => \ce_cycle_counter[7]_i_2_n_0\,
      I4 => \ce_cycle_counter_reg__0\(6),
      O => p_0_in(6)
    );
\ce_cycle_counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \ce_cycle_counter_reg__0\(4),
      I1 => \ce_cycle_counter_reg__0\(2),
      I2 => \ce_cycle_counter[7]_i_2_n_0\,
      I3 => \ce_cycle_counter_reg__0\(6),
      I4 => \ce_cycle_counter_reg__0\(5),
      I5 => \ce_cycle_counter_reg__0\(7),
      O => p_0_in(7)
    );
\ce_cycle_counter[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \ce_cycle_counter_reg__0\(1),
      I1 => \ce_cycle_counter_reg__0\(0),
      I2 => \ce_cycle_counter_reg__0\(3),
      O => \ce_cycle_counter[7]_i_2_n_0\
    );
\ce_cycle_counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cen_old,
      I1 => \^mem_cen_i_reg_0\,
      O => ce_cycle_counter0
    );
\ce_cycle_counter[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ce_cycle_counter[8]_i_4_n_0\,
      I1 => \^mem_cen_i_reg_0\,
      O => \ce_cycle_counter[8]_i_2_n_0\
    );
\ce_cycle_counter[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CCCCCCC"
    )
        port map (
      I0 => \ce_cycle_counter_reg__0\(7),
      I1 => \ce_cycle_counter_reg__0\(8),
      I2 => \ce_cycle_counter_reg__0\(5),
      I3 => \ce_cycle_counter_reg__0\(6),
      I4 => \ce_cycle_counter[8]_i_5_n_0\,
      O => p_0_in(8)
    );
\ce_cycle_counter[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFFFFFFFFF"
    )
        port map (
      I0 => \ce_cycle_counter[7]_i_2_n_0\,
      I1 => \ce_cycle_counter_reg__0\(2),
      I2 => \ce_cycle_counter_reg__0\(4),
      I3 => \ce_cycle_counter[8]_i_6_n_0\,
      I4 => \ce_cycle_counter_reg__0\(7),
      I5 => \ce_cycle_counter_reg__0\(8),
      O => \ce_cycle_counter[8]_i_4_n_0\
    );
\ce_cycle_counter[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \ce_cycle_counter_reg__0\(4),
      I1 => \ce_cycle_counter_reg__0\(2),
      I2 => \ce_cycle_counter_reg__0\(3),
      I3 => \ce_cycle_counter_reg__0\(0),
      I4 => \ce_cycle_counter_reg__0\(1),
      O => \ce_cycle_counter[8]_i_5_n_0\
    );
\ce_cycle_counter[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ce_cycle_counter_reg__0\(6),
      I1 => \ce_cycle_counter_reg__0\(5),
      O => \ce_cycle_counter[8]_i_6_n_0\
    );
\ce_cycle_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ce_cycle_counter[8]_i_2_n_0\,
      D => p_0_in(0),
      Q => \ce_cycle_counter_reg__0\(0),
      R => ce_cycle_counter0
    );
\ce_cycle_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ce_cycle_counter[8]_i_2_n_0\,
      D => p_0_in(1),
      Q => \ce_cycle_counter_reg__0\(1),
      R => ce_cycle_counter0
    );
\ce_cycle_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ce_cycle_counter[8]_i_2_n_0\,
      D => p_0_in(2),
      Q => \ce_cycle_counter_reg__0\(2),
      R => ce_cycle_counter0
    );
\ce_cycle_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ce_cycle_counter[8]_i_2_n_0\,
      D => p_0_in(3),
      Q => \ce_cycle_counter_reg__0\(3),
      R => ce_cycle_counter0
    );
\ce_cycle_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ce_cycle_counter[8]_i_2_n_0\,
      D => p_0_in(4),
      Q => \ce_cycle_counter_reg__0\(4),
      R => ce_cycle_counter0
    );
\ce_cycle_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ce_cycle_counter[8]_i_2_n_0\,
      D => p_0_in(5),
      Q => \ce_cycle_counter_reg__0\(5),
      R => ce_cycle_counter0
    );
\ce_cycle_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ce_cycle_counter[8]_i_2_n_0\,
      D => p_0_in(6),
      Q => \ce_cycle_counter_reg__0\(6),
      R => ce_cycle_counter0
    );
\ce_cycle_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ce_cycle_counter[8]_i_2_n_0\,
      D => p_0_in(7),
      Q => \ce_cycle_counter_reg__0\(7),
      R => ce_cycle_counter0
    );
\ce_cycle_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ce_cycle_counter[8]_i_2_n_0\,
      D => p_0_in(8),
      Q => \ce_cycle_counter_reg__0\(8),
      R => ce_cycle_counter0
    );
cem_time_expired_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0C5"
    )
        port map (
      I0 => \ce_cycle_counter[8]_i_4_n_0\,
      I1 => cem_time_expired_reg_n_0,
      I2 => \^mem_cen_i_reg_0\,
      I3 => cen_old,
      O => cem_time_expired_i_1_n_0
    );
cem_time_expired_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => cem_time_expired_i_1_n_0,
      Q => cem_time_expired_reg_n_0,
      R => '0'
    );
cen_old_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^mem_cen_i_reg_0\,
      Q => cen_old,
      R => '0'
    );
command_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A3FFFFA0A30000"
    )
        port map (
      I0 => mem_idle,
      I1 => command_reg_0,
      I2 => command_reg_1,
      I3 => state(0),
      I4 => command_i_4_n_0,
      I5 => command_reg,
      O => mem_idle_reg_5
    );
command_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0EF0000000F"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => s00_axi_wstrb(3),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      I5 => mem_idle,
      O => command_i_4_n_0
    );
current_cmd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => command_reg,
      I1 => state_1(1),
      I2 => go,
      O => current_cmd
    );
current_cmd_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => MEM_UBN_i_1_n_0,
      D => current_cmd,
      Q => current_cmd_reg_n_0,
      S => \^sr\(0)
    );
\cycle_time[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF000000FFFFFFFF"
    )
        port map (
      I0 => page_valid_reg_n_0,
      I1 => cem_time_expired_reg_n_0,
      I2 => eqOp,
      I3 => command_reg,
      I4 => go,
      I5 => state_1(1),
      O => cycle_time(0)
    );
\cycle_time[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => eqOp,
      I1 => page_valid_reg_n_0,
      I2 => cem_time_expired_reg_n_0,
      I3 => command_reg,
      I4 => state_1(1),
      I5 => go,
      O => cycle_time(2)
    );
\cycle_time_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => MEM_UBN_i_1_n_0,
      D => cycle_time(0),
      Q => \cycle_time_reg_n_0_[0]\,
      S => \^sr\(0)
    );
\cycle_time_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => MEM_UBN_i_1_n_0,
      D => '1',
      Q => \cycle_time_reg_n_0_[1]\,
      S => \^sr\(0)
    );
\cycle_time_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => MEM_UBN_i_1_n_0,
      D => cycle_time(2),
      Q => \cycle_time_reg_n_0_[2]\,
      S => \^sr\(0)
    );
go_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CE00C200020002"
    )
        port map (
      I0 => go_reg_0,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => go_reg_1,
      I5 => mem_idle,
      O => \state_reg[0]\
    );
\last_page_read[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => \^mem_addr_out\(4),
      O => \last_page_read[0]_i_1_n_0\
    );
\last_page_read[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => \^mem_addr_out\(14),
      O => \last_page_read[10]_i_1_n_0\
    );
\last_page_read[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => \^mem_addr_out\(15),
      O => \last_page_read[11]_i_1_n_0\
    );
\last_page_read[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => \^mem_addr_out\(16),
      O => \last_page_read[12]_i_1_n_0\
    );
\last_page_read[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => \^mem_addr_out\(17),
      O => \last_page_read[13]_i_1_n_0\
    );
\last_page_read[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => \^mem_addr_out\(18),
      O => \last_page_read[14]_i_1_n_0\
    );
\last_page_read[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => \^mem_addr_out\(19),
      O => \last_page_read[15]_i_1_n_0\
    );
\last_page_read[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => \^mem_addr_out\(20),
      O => \last_page_read[16]_i_1_n_0\
    );
\last_page_read[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => \^mem_addr_out\(21),
      O => \last_page_read[17]_i_1_n_0\
    );
\last_page_read[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state_1(0),
      I1 => state_1(1),
      O => last_page_read_0
    );
\last_page_read[18]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => \^mem_addr_out\(22),
      O => \last_page_read[18]_i_2_n_0\
    );
\last_page_read[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => \^mem_addr_out\(5),
      O => \last_page_read[1]_i_1_n_0\
    );
\last_page_read[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => \^mem_addr_out\(6),
      O => \last_page_read[2]_i_1_n_0\
    );
\last_page_read[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => \^mem_addr_out\(7),
      O => \last_page_read[3]_i_1_n_0\
    );
\last_page_read[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => \^mem_addr_out\(8),
      O => \last_page_read[4]_i_1_n_0\
    );
\last_page_read[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => \^mem_addr_out\(9),
      O => \last_page_read[5]_i_1_n_0\
    );
\last_page_read[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => \^mem_addr_out\(10),
      O => \last_page_read[6]_i_1_n_0\
    );
\last_page_read[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => \^mem_addr_out\(11),
      O => \last_page_read[7]_i_1_n_0\
    );
\last_page_read[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => \^mem_addr_out\(12),
      O => \last_page_read[8]_i_1_n_0\
    );
\last_page_read[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => \^mem_addr_out\(13),
      O => \last_page_read[9]_i_1_n_0\
    );
\last_page_read_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => last_page_read_0,
      D => \last_page_read[0]_i_1_n_0\,
      Q => last_page_read(0),
      R => \^sr\(0)
    );
\last_page_read_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => last_page_read_0,
      D => \last_page_read[10]_i_1_n_0\,
      Q => last_page_read(10),
      R => \^sr\(0)
    );
\last_page_read_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => last_page_read_0,
      D => \last_page_read[11]_i_1_n_0\,
      Q => last_page_read(11),
      R => \^sr\(0)
    );
\last_page_read_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => last_page_read_0,
      D => \last_page_read[12]_i_1_n_0\,
      Q => last_page_read(12),
      R => \^sr\(0)
    );
\last_page_read_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => last_page_read_0,
      D => \last_page_read[13]_i_1_n_0\,
      Q => last_page_read(13),
      R => \^sr\(0)
    );
\last_page_read_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => last_page_read_0,
      D => \last_page_read[14]_i_1_n_0\,
      Q => last_page_read(14),
      R => \^sr\(0)
    );
\last_page_read_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => last_page_read_0,
      D => \last_page_read[15]_i_1_n_0\,
      Q => last_page_read(15),
      R => \^sr\(0)
    );
\last_page_read_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => last_page_read_0,
      D => \last_page_read[16]_i_1_n_0\,
      Q => last_page_read(16),
      R => \^sr\(0)
    );
\last_page_read_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => last_page_read_0,
      D => \last_page_read[17]_i_1_n_0\,
      Q => last_page_read(17),
      R => \^sr\(0)
    );
\last_page_read_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => last_page_read_0,
      D => \last_page_read[18]_i_2_n_0\,
      Q => last_page_read(18),
      R => \^sr\(0)
    );
\last_page_read_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => last_page_read_0,
      D => \last_page_read[1]_i_1_n_0\,
      Q => last_page_read(1),
      R => \^sr\(0)
    );
\last_page_read_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => last_page_read_0,
      D => \last_page_read[2]_i_1_n_0\,
      Q => last_page_read(2),
      R => \^sr\(0)
    );
\last_page_read_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => last_page_read_0,
      D => \last_page_read[3]_i_1_n_0\,
      Q => last_page_read(3),
      R => \^sr\(0)
    );
\last_page_read_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => last_page_read_0,
      D => \last_page_read[4]_i_1_n_0\,
      Q => last_page_read(4),
      R => \^sr\(0)
    );
\last_page_read_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => last_page_read_0,
      D => \last_page_read[5]_i_1_n_0\,
      Q => last_page_read(5),
      R => \^sr\(0)
    );
\last_page_read_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => last_page_read_0,
      D => \last_page_read[6]_i_1_n_0\,
      Q => last_page_read(6),
      R => \^sr\(0)
    );
\last_page_read_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => last_page_read_0,
      D => \last_page_read[7]_i_1_n_0\,
      Q => last_page_read(7),
      R => \^sr\(0)
    );
\last_page_read_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => last_page_read_0,
      D => \last_page_read[8]_i_1_n_0\,
      Q => last_page_read(8),
      R => \^sr\(0)
    );
\last_page_read_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => last_page_read_0,
      D => \last_page_read[9]_i_1_n_0\,
      Q => last_page_read(9),
      R => \^sr\(0)
    );
\mem_addr[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555F57F5555557F"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => s00_axi_wstrb_2_sn_1,
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      I5 => mem_idle,
      O => E(0)
    );
\mem_addr_out_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(0),
      O => mem_addr_out_i(0)
    );
\mem_addr_out_i[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(10),
      O => mem_addr_out_i(10)
    );
\mem_addr_out_i[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(11),
      O => mem_addr_out_i(11)
    );
\mem_addr_out_i[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(12),
      O => mem_addr_out_i(12)
    );
\mem_addr_out_i[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(13),
      O => mem_addr_out_i(13)
    );
\mem_addr_out_i[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(14),
      O => mem_addr_out_i(14)
    );
\mem_addr_out_i[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(15),
      O => mem_addr_out_i(15)
    );
\mem_addr_out_i[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(16),
      O => mem_addr_out_i(16)
    );
\mem_addr_out_i[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(17),
      O => mem_addr_out_i(17)
    );
\mem_addr_out_i[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(18),
      O => mem_addr_out_i(18)
    );
\mem_addr_out_i[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(19),
      O => mem_addr_out_i(19)
    );
\mem_addr_out_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(1),
      O => mem_addr_out_i(1)
    );
\mem_addr_out_i[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(20),
      O => mem_addr_out_i(20)
    );
\mem_addr_out_i[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(21),
      O => mem_addr_out_i(21)
    );
\mem_addr_out_i[22]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
\mem_addr_out_i[22]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => state_1(1),
      I1 => go,
      I2 => state_1(0),
      O => \mem_addr_out_i[22]_i_2_n_0\
    );
\mem_addr_out_i[22]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(22),
      O => mem_addr_out_i(22)
    );
\mem_addr_out_i[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(2),
      O => mem_addr_out_i(2)
    );
\mem_addr_out_i[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(3),
      O => mem_addr_out_i(3)
    );
\mem_addr_out_i[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(4),
      I1 => state_1(1),
      O => mem_addr_out_i(4)
    );
\mem_addr_out_i[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(5),
      O => mem_addr_out_i(5)
    );
\mem_addr_out_i[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(6),
      O => mem_addr_out_i(6)
    );
\mem_addr_out_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(7),
      I1 => state_1(1),
      O => mem_addr_out_i(7)
    );
\mem_addr_out_i[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(8),
      O => mem_addr_out_i(8)
    );
\mem_addr_out_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_1(1),
      I1 => Q(9),
      O => mem_addr_out_i(9)
    );
\mem_addr_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(0),
      Q => \^mem_addr_out\(0),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(10),
      Q => \^mem_addr_out\(10),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(11),
      Q => \^mem_addr_out\(11),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(12),
      Q => \^mem_addr_out\(12),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(13),
      Q => \^mem_addr_out\(13),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(14),
      Q => \^mem_addr_out\(14),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(15),
      Q => \^mem_addr_out\(15),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(16),
      Q => \^mem_addr_out\(16),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(17),
      Q => \^mem_addr_out\(17),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(18),
      Q => \^mem_addr_out\(18),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(19),
      Q => \^mem_addr_out\(19),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(1),
      Q => \^mem_addr_out\(1),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(20),
      Q => \^mem_addr_out\(20),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(21),
      Q => \^mem_addr_out\(21),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(22),
      Q => \^mem_addr_out\(22),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(2),
      Q => \^mem_addr_out\(2),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(3),
      Q => \^mem_addr_out\(3),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(4),
      Q => \^mem_addr_out\(4),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(5),
      Q => \^mem_addr_out\(5),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(6),
      Q => \^mem_addr_out\(6),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(7),
      Q => \^mem_addr_out\(7),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(8),
      Q => \^mem_addr_out\(8),
      R => \^sr\(0)
    );
\mem_addr_out_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_addr_out_i[22]_i_2_n_0\,
      D => mem_addr_out_i(9),
      Q => \^mem_addr_out\(9),
      R => \^sr\(0)
    );
\mem_byte_en[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000022000F"
    )
        port map (
      I0 => mem_idle,
      I1 => go,
      I2 => command_reg_0,
      I3 => state(0),
      I4 => state(1),
      I5 => state(2),
      O => mem_idle_reg_2
    );
mem_cen_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAFFFFEFAA0000"
    )
        port map (
      I0 => mem_cen_i_i_2_n_0,
      I1 => mem_cen_i_i_3_n_0,
      I2 => eqOp,
      I3 => mem_cen_i_i_5_n_0,
      I4 => mem_cen_i_i_6_n_0,
      I5 => \^mem_cen_i_reg_0\,
      O => mem_cen_i_i_1_n_0
    );
mem_cen_i_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => last_page_read(18),
      I1 => Q(22),
      O => mem_cen_i_i_11_n_0
    );
mem_cen_i_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(19),
      I1 => last_page_read(15),
      I2 => Q(20),
      I3 => last_page_read(16),
      I4 => last_page_read(17),
      I5 => Q(21),
      O => mem_cen_i_i_12_n_0
    );
mem_cen_i_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(16),
      I1 => last_page_read(12),
      I2 => Q(17),
      I3 => last_page_read(13),
      I4 => last_page_read(14),
      I5 => Q(18),
      O => mem_cen_i_i_13_n_0
    );
mem_cen_i_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00F200"
    )
        port map (
      I0 => cem_time_expired_reg_n_0,
      I1 => \^mem_cen_i_reg_0\,
      I2 => go,
      I3 => state_1(1),
      I4 => state_1(0),
      O => mem_cen_i_i_14_n_0
    );
mem_cen_i_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(13),
      I1 => last_page_read(9),
      I2 => Q(14),
      I3 => last_page_read(10),
      I4 => last_page_read(11),
      I5 => Q(15),
      O => mem_cen_i_i_15_n_0
    );
mem_cen_i_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(10),
      I1 => last_page_read(6),
      I2 => Q(11),
      I3 => last_page_read(7),
      I4 => last_page_read(8),
      I5 => Q(12),
      O => mem_cen_i_i_16_n_0
    );
mem_cen_i_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(7),
      I1 => last_page_read(3),
      I2 => Q(8),
      I3 => last_page_read(4),
      I4 => last_page_read(5),
      I5 => Q(9),
      O => mem_cen_i_i_17_n_0
    );
mem_cen_i_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(4),
      I1 => last_page_read(0),
      I2 => Q(5),
      I3 => last_page_read(1),
      I4 => last_page_read(2),
      I5 => Q(6),
      O => mem_cen_i_i_18_n_0
    );
mem_cen_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAEAAAAA"
    )
        port map (
      I0 => mem_cen_i_i_7_n_0,
      I1 => mem_cen_i_i_8_n_0,
      I2 => mem_cen_i_i_9_n_0,
      I3 => current_cmd_reg_n_0,
      I4 => state_1(0),
      I5 => state_1(1),
      O => mem_cen_i_i_2_n_0
    );
mem_cen_i_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => page_valid_reg_n_0,
      I1 => cem_time_expired_reg_n_0,
      I2 => command_reg,
      O => mem_cen_i_i_3_n_0
    );
mem_cen_i_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => state_1(1),
      I1 => go,
      I2 => state_1(0),
      O => mem_cen_i_i_5_n_0
    );
mem_cen_i_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAABBBB"
    )
        port map (
      I0 => mem_cen_i_i_14_n_0,
      I1 => state_1(1),
      I2 => mem_cen_i_i_9_n_0,
      I3 => mem_cen_i_i_8_n_0,
      I4 => state_1(0),
      O => mem_cen_i_i_6_n_0
    );
mem_cen_i_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^mem_cen_i_reg_0\,
      I1 => state_1(0),
      I2 => cem_time_expired_reg_n_0,
      I3 => state_1(1),
      O => mem_cen_i_i_7_n_0
    );
mem_cen_i_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \waitcount_reg_n_0_[4]\,
      I1 => \waitcount_reg_n_0_[3]\,
      I2 => \waitcount_reg_n_0_[6]\,
      I3 => \waitcount_reg_n_0_[5]\,
      O => mem_cen_i_i_8_n_0
    );
mem_cen_i_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cycle_time_reg_n_0_[0]\,
      I1 => \waitcount_reg_n_0_[0]\,
      I2 => \cycle_time_reg_n_0_[1]\,
      I3 => \waitcount_reg_n_0_[1]\,
      I4 => \waitcount_reg_n_0_[2]\,
      I5 => \cycle_time_reg_n_0_[2]\,
      O => mem_cen_i_i_9_n_0
    );
mem_cen_i_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => mem_cen_i_i_1_n_0,
      Q => \^mem_cen_i_reg_0\,
      S => \^sr\(0)
    );
mem_cen_i_reg_i_10: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => mem_cen_i_reg_i_10_n_0,
      CO(2) => mem_cen_i_reg_i_10_n_1,
      CO(1) => mem_cen_i_reg_i_10_n_2,
      CO(0) => mem_cen_i_reg_i_10_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_mem_cen_i_reg_i_10_O_UNCONNECTED(3 downto 0),
      S(3) => mem_cen_i_i_15_n_0,
      S(2) => mem_cen_i_i_16_n_0,
      S(1) => mem_cen_i_i_17_n_0,
      S(0) => mem_cen_i_i_18_n_0
    );
mem_cen_i_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => mem_cen_i_reg_i_10_n_0,
      CO(3) => NLW_mem_cen_i_reg_i_4_CO_UNCONNECTED(3),
      CO(2) => eqOp,
      CO(1) => mem_cen_i_reg_i_4_n_2,
      CO(0) => mem_cen_i_reg_i_4_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_mem_cen_i_reg_i_4_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => mem_cen_i_i_11_n_0,
      S(1) => mem_cen_i_i_12_n_0,
      S(0) => mem_cen_i_i_13_n_0
    );
\mem_data_rd_i[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => state_1(1),
      I2 => state_1(0),
      I3 => \state1__12\,
      O => mem_data_rd_i
    );
\mem_data_rd_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_data_rd_i,
      D => MEM_DATA_I(0),
      Q => \mem_data_rd_i_reg[15]_0\(0),
      R => \^sr\(0)
    );
\mem_data_rd_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_data_rd_i,
      D => MEM_DATA_I(10),
      Q => \mem_data_rd_i_reg[15]_0\(10),
      R => \^sr\(0)
    );
\mem_data_rd_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_data_rd_i,
      D => MEM_DATA_I(11),
      Q => \mem_data_rd_i_reg[15]_0\(11),
      R => \^sr\(0)
    );
\mem_data_rd_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_data_rd_i,
      D => MEM_DATA_I(12),
      Q => \mem_data_rd_i_reg[15]_0\(12),
      R => \^sr\(0)
    );
\mem_data_rd_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_data_rd_i,
      D => MEM_DATA_I(13),
      Q => \mem_data_rd_i_reg[15]_0\(13),
      R => \^sr\(0)
    );
\mem_data_rd_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_data_rd_i,
      D => MEM_DATA_I(14),
      Q => \mem_data_rd_i_reg[15]_0\(14),
      R => \^sr\(0)
    );
\mem_data_rd_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_data_rd_i,
      D => MEM_DATA_I(15),
      Q => \mem_data_rd_i_reg[15]_0\(15),
      R => \^sr\(0)
    );
\mem_data_rd_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_data_rd_i,
      D => MEM_DATA_I(1),
      Q => \mem_data_rd_i_reg[15]_0\(1),
      R => \^sr\(0)
    );
\mem_data_rd_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_data_rd_i,
      D => MEM_DATA_I(2),
      Q => \mem_data_rd_i_reg[15]_0\(2),
      R => \^sr\(0)
    );
\mem_data_rd_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_data_rd_i,
      D => MEM_DATA_I(3),
      Q => \mem_data_rd_i_reg[15]_0\(3),
      R => \^sr\(0)
    );
\mem_data_rd_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_data_rd_i,
      D => MEM_DATA_I(4),
      Q => \mem_data_rd_i_reg[15]_0\(4),
      R => \^sr\(0)
    );
\mem_data_rd_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_data_rd_i,
      D => MEM_DATA_I(5),
      Q => \mem_data_rd_i_reg[15]_0\(5),
      R => \^sr\(0)
    );
\mem_data_rd_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_data_rd_i,
      D => MEM_DATA_I(6),
      Q => \mem_data_rd_i_reg[15]_0\(6),
      R => \^sr\(0)
    );
\mem_data_rd_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_data_rd_i,
      D => MEM_DATA_I(7),
      Q => \mem_data_rd_i_reg[15]_0\(7),
      R => \^sr\(0)
    );
\mem_data_rd_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_data_rd_i,
      D => MEM_DATA_I(8),
      Q => \mem_data_rd_i_reg[15]_0\(8),
      R => \^sr\(0)
    );
\mem_data_rd_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_data_rd_i,
      D => MEM_DATA_I(9),
      Q => \mem_data_rd_i_reg[15]_0\(9),
      R => \^sr\(0)
    );
\mem_data_wr[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEDFEEDFFFDFEEDF"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => s00_axi_wstrb_2_sn_1,
      I3 => state(1),
      I4 => mem_idle,
      I5 => go,
      O => \state_reg[0]_0\(0)
    );
mem_idle_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => state_1(0),
      I1 => mem_oen_i_i_3_n_0,
      I2 => state_1(1),
      I3 => go,
      O => mem_idle_i_1_n_0
    );
mem_idle_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => mem_oen_i_i_1_n_0,
      D => mem_idle_i_1_n_0,
      Q => mem_idle,
      S => \^sr\(0)
    );
mem_oen_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => state_1(1),
      I1 => mem_oen_i_i_3_n_0,
      I2 => state_1(0),
      O => mem_oen_i_i_1_n_0
    );
mem_oen_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F007F7F"
    )
        port map (
      I0 => command_reg,
      I1 => go,
      I2 => state_1(1),
      I3 => mem_oen_i_i_3_n_0,
      I4 => state_1(0),
      O => mem_oen_i
    );
mem_oen_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \waitcount_reg_n_0_[4]\,
      I1 => \waitcount_reg_n_0_[3]\,
      I2 => \waitcount_reg_n_0_[6]\,
      I3 => \waitcount_reg_n_0_[5]\,
      I4 => mem_cen_i_i_9_n_0,
      O => mem_oen_i_i_3_n_0
    );
mem_oen_i_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => mem_oen_i_i_1_n_0,
      D => mem_oen_i,
      Q => \^mem_oen\,
      S => \^sr\(0)
    );
page_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => current_cmd_reg_n_0,
      I1 => state_1(1),
      I2 => page_valid_i_2_n_0,
      I3 => page_valid_reg_n_0,
      O => page_valid_i_1_n_0
    );
page_valid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0400"
    )
        port map (
      I0 => go,
      I1 => cem_time_expired_reg_n_0,
      I2 => \^mem_cen_i_reg_0\,
      I3 => state_1(1),
      I4 => state_1(0),
      O => page_valid_i_2_n_0
    );
page_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => page_valid_i_1_n_0,
      Q => page_valid_reg_n_0,
      R => \^sr\(0)
    );
\state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10001F00"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => s00_axi_wstrb(0),
      I2 => \^next_state18_out__0\,
      I3 => \state_reg[0]_1\,
      I4 => \state_reg[1]\(0),
      O => s00_axi_wstrb_1_sn_1
    );
\state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => axi_wready_reg,
      I1 => s00_axi_wvalid,
      I2 => mem_idle,
      I3 => axi_arv_arr_flag,
      I4 => axi_awv_awr_flag,
      O => \^next_state18_out__0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAEA"
    )
        port map (
      I0 => \state[2]_i_4_n_0\,
      I1 => \state_reg[0]_1\,
      I2 => \^next_state18_out__0\,
      I3 => mem_idle,
      I4 => axi_arv_arr_flag,
      O => mem_idle_reg_1
    );
\state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8CAE88"
    )
        port map (
      I0 => state(0),
      I1 => mem_idle,
      I2 => go,
      I3 => state(2),
      I4 => state(1),
      O => \state[2]_i_4_n_0\
    );
\waitcount[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mem_oen_i_i_3_n_0,
      I1 => \waitcount_reg_n_0_[0]\,
      O => \waitcount[0]_i_1_n_0\
    );
\waitcount[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => mem_oen_i_i_3_n_0,
      I1 => \waitcount_reg_n_0_[0]\,
      I2 => \waitcount_reg_n_0_[1]\,
      O => \waitcount[1]_i_1_n_0\
    );
\waitcount[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => mem_oen_i_i_3_n_0,
      I1 => \waitcount_reg_n_0_[0]\,
      I2 => \waitcount_reg_n_0_[1]\,
      I3 => \waitcount_reg_n_0_[2]\,
      O => \waitcount[2]_i_1_n_0\
    );
\waitcount[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => mem_oen_i_i_3_n_0,
      I1 => \waitcount_reg_n_0_[1]\,
      I2 => \waitcount_reg_n_0_[0]\,
      I3 => \waitcount_reg_n_0_[2]\,
      I4 => \waitcount_reg_n_0_[3]\,
      O => \waitcount[3]_i_1_n_0\
    );
\waitcount[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => mem_oen_i_i_3_n_0,
      I1 => \waitcount_reg_n_0_[3]\,
      I2 => \waitcount_reg_n_0_[2]\,
      I3 => \waitcount_reg_n_0_[0]\,
      I4 => \waitcount_reg_n_0_[1]\,
      I5 => \waitcount_reg_n_0_[4]\,
      O => \waitcount[4]_i_1_n_0\
    );
\waitcount[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => \waitcount[6]_i_3_n_0\,
      I1 => mem_oen_i_i_3_n_0,
      I2 => \waitcount_reg_n_0_[5]\,
      O => \waitcount[5]_i_1_n_0\
    );
\waitcount[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_1(1),
      I1 => state_1(0),
      I2 => s00_axi_aresetn,
      O => waitcount
    );
\waitcount[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B04"
    )
        port map (
      I0 => \waitcount[6]_i_3_n_0\,
      I1 => \waitcount_reg_n_0_[5]\,
      I2 => mem_oen_i_i_3_n_0,
      I3 => \waitcount_reg_n_0_[6]\,
      O => \waitcount[6]_i_2_n_0\
    );
\waitcount[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \waitcount_reg_n_0_[3]\,
      I1 => \waitcount_reg_n_0_[2]\,
      I2 => \waitcount_reg_n_0_[0]\,
      I3 => \waitcount_reg_n_0_[1]\,
      I4 => \waitcount_reg_n_0_[4]\,
      O => \waitcount[6]_i_3_n_0\
    );
\waitcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => waitcount,
      D => \waitcount[0]_i_1_n_0\,
      Q => \waitcount_reg_n_0_[0]\,
      R => '0'
    );
\waitcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => waitcount,
      D => \waitcount[1]_i_1_n_0\,
      Q => \waitcount_reg_n_0_[1]\,
      R => '0'
    );
\waitcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => waitcount,
      D => \waitcount[2]_i_1_n_0\,
      Q => \waitcount_reg_n_0_[2]\,
      R => '0'
    );
\waitcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => waitcount,
      D => \waitcount[3]_i_1_n_0\,
      Q => \waitcount_reg_n_0_[3]\,
      R => '0'
    );
\waitcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => waitcount,
      D => \waitcount[4]_i_1_n_0\,
      Q => \waitcount_reg_n_0_[4]\,
      R => '0'
    );
\waitcount_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => waitcount,
      D => \waitcount[5]_i_1_n_0\,
      Q => \waitcount_reg_n_0_[5]\,
      R => '0'
    );
\waitcount_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => waitcount,
      D => \waitcount[6]_i_2_n_0\,
      Q => \waitcount_reg_n_0_[6]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Fast_IP_Clock_psram_ip_0_0_psram_ip_v1_0_S00_AXI is
  port (
    mem_cen_i_reg : out STD_LOGIC;
    MEM_ADDR_OUT : out STD_LOGIC_VECTOR ( 22 downto 0 );
    MEM_OEN : out STD_LOGIC;
    MEM_WEN : out STD_LOGIC;
    MEM_BEN : out STD_LOGIC_VECTOR ( 1 downto 0 );
    MEM_CRE : out STD_LOGIC;
    MEM_DATA_O : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rlast : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    MEM_DATA_T : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    MEM_DATA_I : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 22 downto 0 );
    s00_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 21 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wlast : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Fast_IP_Clock_psram_ip_0_0_psram_ip_v1_0_S00_AXI : entity is "psram_ip_v1_0_S00_AXI";
end Fast_IP_Clock_psram_ip_0_0_psram_ip_v1_0_S00_AXI;

architecture STRUCTURE of Fast_IP_Clock_psram_ip_0_0_psram_ip_v1_0_S00_AXI is
  signal AsyncPSRAMinst_n_10 : STD_LOGIC;
  signal AsyncPSRAMinst_n_11 : STD_LOGIC;
  signal AsyncPSRAMinst_n_13 : STD_LOGIC;
  signal AsyncPSRAMinst_n_14 : STD_LOGIC;
  signal AsyncPSRAMinst_n_15 : STD_LOGIC;
  signal AsyncPSRAMinst_n_16 : STD_LOGIC;
  signal AsyncPSRAMinst_n_17 : STD_LOGIC;
  signal AsyncPSRAMinst_n_18 : STD_LOGIC;
  signal AsyncPSRAMinst_n_42 : STD_LOGIC;
  signal AsyncPSRAMinst_n_43 : STD_LOGIC;
  signal AsyncPSRAMinst_n_45 : STD_LOGIC;
  signal AsyncPSRAMinst_n_7 : STD_LOGIC;
  signal AsyncPSRAMinst_n_8 : STD_LOGIC;
  signal AsyncPSRAMinst_n_9 : STD_LOGIC;
  signal L : STD_LOGIC_VECTOR ( 23 downto 2 );
  signal axi_araddr1 : STD_LOGIC;
  signal axi_araddr110_out : STD_LOGIC;
  signal \axi_araddr[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_araddr[23]_i_4_n_0\ : STD_LOGIC;
  signal \axi_araddr[23]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr[23]_i_6_n_0\ : STD_LOGIC;
  signal \axi_araddr[23]_i_7_n_0\ : STD_LOGIC;
  signal \axi_araddr[23]_i_8_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[1]\ : STD_LOGIC;
  signal axi_arlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \axi_arlen_cntr[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_arlen_cntr[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_arlen_cntr[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_arlen_cntr_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_arready_i_2_n_0 : STD_LOGIC;
  signal axi_arready_i_3_n_0 : STD_LOGIC;
  signal axi_arready_i_4_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_arv_arr_flag : STD_LOGIC;
  signal axi_arv_arr_flag_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[16]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[18]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[19]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[20]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[22]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr[23]_i_4_n_0\ : STD_LOGIC;
  signal \axi_awaddr[23]_i_5_n_0\ : STD_LOGIC;
  signal \axi_awaddr[23]_i_6_n_0\ : STD_LOGIC;
  signal \axi_awaddr[23]_i_7_n_0\ : STD_LOGIC;
  signal \axi_awaddr[23]_i_8_n_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[10]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[11]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[12]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[13]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[14]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[15]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[16]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[17]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[18]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[19]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[20]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[21]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[22]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[23]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[8]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[9]\ : STD_LOGIC;
  signal axi_awlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \axi_awlen_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awlen_cntr[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awlen_cntr[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awlen_cntr[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awlen_cntr[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_awlen_cntr_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_awv_awr_flag : STD_LOGIC;
  signal axi_awv_awr_flag_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal axi_rlast_i_3_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal command_i_2_n_0 : STD_LOGIC;
  signal command_i_3_n_0 : STD_LOGIC;
  signal command_reg_n_0 : STD_LOGIC;
  signal go : STD_LOGIC;
  signal \go14_out__0\ : STD_LOGIC;
  signal \go1__1\ : STD_LOGIC;
  signal go_i_2_n_0 : STD_LOGIC;
  signal go_i_3_n_0 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal leqOp : STD_LOGIC;
  signal leqOp15_in : STD_LOGIC;
  signal leqOp_carry_i_1_n_0 : STD_LOGIC;
  signal leqOp_carry_i_2_n_0 : STD_LOGIC;
  signal leqOp_carry_i_3_n_0 : STD_LOGIC;
  signal leqOp_carry_i_4_n_0 : STD_LOGIC;
  signal leqOp_carry_i_5_n_0 : STD_LOGIC;
  signal leqOp_carry_i_6_n_0 : STD_LOGIC;
  signal leqOp_carry_i_7_n_0 : STD_LOGIC;
  signal leqOp_carry_i_8_n_0 : STD_LOGIC;
  signal leqOp_carry_n_1 : STD_LOGIC;
  signal leqOp_carry_n_2 : STD_LOGIC;
  signal leqOp_carry_n_3 : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal mem_addr : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \mem_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_addr[10]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[11]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[12]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[13]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[14]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[15]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[16]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[17]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[18]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[19]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[20]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[21]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[22]_i_2_n_0\ : STD_LOGIC;
  signal \mem_addr[22]_i_3_n_0\ : STD_LOGIC;
  signal \mem_addr[22]_i_5_n_0\ : STD_LOGIC;
  signal \mem_addr[22]_i_6_n_0\ : STD_LOGIC;
  signal \mem_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[9]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \mem_addr_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \mem_addr_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \mem_addr_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \mem_addr_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \mem_addr_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \mem_addr_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \mem_addr_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \mem_addr_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \mem_addr_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \mem_addr_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \mem_addr_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \mem_addr_reg[22]_i_4_n_3\ : STD_LOGIC;
  signal \mem_addr_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \mem_addr_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \mem_addr_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \mem_addr_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \mem_addr_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \mem_addr_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \mem_addr_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \mem_addr_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \mem_byte_en[0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_byte_en[0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_byte_en[1]_i_1_n_0\ : STD_LOGIC;
  signal \mem_byte_en[1]_i_2_n_0\ : STD_LOGIC;
  signal \mem_byte_en[1]_i_4_n_0\ : STD_LOGIC;
  signal \mem_byte_en[1]_i_5_n_0\ : STD_LOGIC;
  signal \mem_byte_en_reg_n_0_[0]\ : STD_LOGIC;
  signal \mem_byte_en_reg_n_0_[1]\ : STD_LOGIC;
  signal mem_data_rd : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mem_data_wr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mem_data_wr[0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_data_wr[10]_i_1_n_0\ : STD_LOGIC;
  signal \mem_data_wr[11]_i_1_n_0\ : STD_LOGIC;
  signal \mem_data_wr[12]_i_1_n_0\ : STD_LOGIC;
  signal \mem_data_wr[13]_i_1_n_0\ : STD_LOGIC;
  signal \mem_data_wr[14]_i_1_n_0\ : STD_LOGIC;
  signal \mem_data_wr[15]_i_2_n_0\ : STD_LOGIC;
  signal \mem_data_wr[15]_i_3_n_0\ : STD_LOGIC;
  signal \mem_data_wr[15]_i_4_n_0\ : STD_LOGIC;
  signal \mem_data_wr[15]_i_5_n_0\ : STD_LOGIC;
  signal \mem_data_wr[1]_i_1_n_0\ : STD_LOGIC;
  signal \mem_data_wr[2]_i_1_n_0\ : STD_LOGIC;
  signal \mem_data_wr[3]_i_1_n_0\ : STD_LOGIC;
  signal \mem_data_wr[4]_i_1_n_0\ : STD_LOGIC;
  signal \mem_data_wr[5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_data_wr[6]_i_1_n_0\ : STD_LOGIC;
  signal \mem_data_wr[7]_i_1_n_0\ : STD_LOGIC;
  signal \mem_data_wr[8]_i_1_n_0\ : STD_LOGIC;
  signal \mem_data_wr[9]_i_1_n_0\ : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 23 downto 2 );
  signal \minusOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_n_1\ : STD_LOGIC;
  signal \minusOp_carry__3_n_2\ : STD_LOGIC;
  signal \minusOp_carry__3_n_3\ : STD_LOGIC;
  signal \minusOp_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_n_3\ : STD_LOGIC;
  signal minusOp_carry_i_1_n_0 : STD_LOGIC;
  signal minusOp_carry_i_2_n_0 : STD_LOGIC;
  signal minusOp_carry_i_3_n_0 : STD_LOGIC;
  signal minusOp_carry_i_4_n_0 : STD_LOGIC;
  signal minusOp_carry_i_5_n_0 : STD_LOGIC;
  signal minusOp_carry_i_6_n_0 : STD_LOGIC;
  signal minusOp_carry_i_7_n_0 : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \next_state18_out__0\ : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal plusOp0_in : STD_LOGIC_VECTOR ( 22 downto 1 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 23 downto 3 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal reset_p : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rlast\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal NLW_leqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leqOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mem_addr_reg[22]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mem_addr_reg[22]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_minusOp_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_minusOp_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_minusOp_inferred__0/i__carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_minusOp_inferred__0/i__carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_plusOp_inferred__0/i__carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_inferred__0/i__carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_arlen_cntr[0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[1]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[3]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[6]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[4]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[6]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of axi_rlast_i_3 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of command_i_2 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of go_i_2 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \mem_addr[0]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \mem_addr[22]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \mem_addr[22]_i_6\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \mem_byte_en[1]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \mem_byte_en[1]_i_5\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \mem_data_wr[15]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \mem_data_wr[15]_i_5\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \state[0]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair45";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rlast <= \^s00_axi_rlast\;
AsyncPSRAMinst: entity work.Fast_IP_Clock_psram_ip_0_0_AsyncPSRAM
     port map (
      E(0) => AsyncPSRAMinst_n_13,
      MEM_ADDR_OUT(22 downto 0) => MEM_ADDR_OUT(22 downto 0),
      MEM_BEN(1 downto 0) => MEM_BEN(1 downto 0),
      MEM_CRE => MEM_CRE,
      MEM_DATA_I(15 downto 0) => MEM_DATA_I(15 downto 0),
      MEM_DATA_O(15 downto 0) => MEM_DATA_O(15 downto 0),
      \MEM_DATA_O_reg[15]_0\(15 downto 0) => mem_data_wr(15 downto 0),
      MEM_DATA_T(0) => MEM_DATA_T(0),
      MEM_LBN_reg_0 => \mem_byte_en_reg_n_0_[0]\,
      MEM_OEN => MEM_OEN,
      MEM_UBN_reg_0 => \mem_byte_en_reg_n_0_[1]\,
      MEM_WEN => MEM_WEN,
      Q(22 downto 0) => mem_addr(22 downto 0),
      SR(0) => reset_p,
      axi_arv_arr_flag => axi_arv_arr_flag,
      axi_awv_awr_flag => axi_awv_awr_flag,
      axi_rlast_reg => axi_rlast_i_3_n_0,
      axi_rlast_reg_0 => axi_arready_i_2_n_0,
      axi_wready_reg => \^axi_wready_reg_0\,
      command_reg => command_reg_n_0,
      command_reg_0 => command_i_2_n_0,
      command_reg_1 => command_i_3_n_0,
      go => go,
      go_reg => AsyncPSRAMinst_n_18,
      go_reg_0 => go_i_2_n_0,
      go_reg_1 => go_i_3_n_0,
      mem_cen_i_reg_0 => mem_cen_i_reg,
      \mem_data_rd_i_reg[15]_0\(15 downto 0) => mem_data_rd(15 downto 0),
      mem_idle_reg_0 => AsyncPSRAMinst_n_10,
      mem_idle_reg_1 => AsyncPSRAMinst_n_11,
      mem_idle_reg_2 => AsyncPSRAMinst_n_14,
      mem_idle_reg_3 => AsyncPSRAMinst_n_42,
      mem_idle_reg_4 => AsyncPSRAMinst_n_43,
      mem_idle_reg_5 => AsyncPSRAMinst_n_45,
      \next_state18_out__0\ => \next_state18_out__0\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => AsyncPSRAMinst_n_7,
      s00_axi_rlast => \^s00_axi_rlast\,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wstrb_1_sp_1 => AsyncPSRAMinst_n_15,
      s00_axi_wstrb_2_sp_1 => AsyncPSRAMinst_n_8,
      s00_axi_wvalid => s00_axi_wvalid,
      state(2 downto 0) => state(2 downto 0),
      \state_reg[0]\ => AsyncPSRAMinst_n_16,
      \state_reg[0]_0\(0) => AsyncPSRAMinst_n_17,
      \state_reg[0]_1\ => \state[0]_i_3_n_0\,
      \state_reg[1]\(0) => \axi_araddr_reg_n_0_[1]\,
      \state_reg[2]\ => AsyncPSRAMinst_n_9
    );
\axi_araddr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(10),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(10),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(9),
      O => p_2_in(10)
    );
\axi_araddr[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(11),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(11),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(10),
      O => p_2_in(11)
    );
\axi_araddr[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(12),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(12),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(11),
      O => p_2_in(12)
    );
\axi_araddr[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(13),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(13),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(12),
      O => p_2_in(13)
    );
\axi_araddr[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(14),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(14),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(13),
      O => p_2_in(14)
    );
\axi_araddr[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(15),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(15),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(14),
      O => p_2_in(15)
    );
\axi_araddr[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(16),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(16),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(15),
      O => p_2_in(16)
    );
\axi_araddr[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(17),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(17),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(16),
      O => p_2_in(17)
    );
\axi_araddr[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(18),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(18),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(17),
      O => p_2_in(18)
    );
\axi_araddr[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(19),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(19),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(18),
      O => p_2_in(19)
    );
\axi_araddr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF100010001000"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => axi_arv_arr_flag,
      I2 => s00_axi_arvalid,
      I3 => s00_axi_araddr(0),
      I4 => \axi_araddr_reg_n_0_[1]\,
      I5 => \axi_araddr[23]_i_4_n_0\,
      O => p_2_in(1)
    );
\axi_araddr[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(20),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(20),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(19),
      O => p_2_in(20)
    );
\axi_araddr[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(21),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(21),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(20),
      O => p_2_in(21)
    );
\axi_araddr[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(22),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(22),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(21),
      O => p_2_in(22)
    );
\axi_araddr[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE0000000"
    )
        port map (
      I0 => s00_axi_arburst(0),
      I1 => s00_axi_arburst(1),
      I2 => leqOp,
      I3 => s00_axi_rready,
      I4 => \^axi_rvalid_reg_0\,
      I5 => axi_araddr110_out,
      O => \axi_araddr[23]_i_1_n_0\
    );
\axi_araddr[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(23),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(23),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(22),
      O => p_2_in(23)
    );
\axi_araddr[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFB"
    )
        port map (
      I0 => \axi_araddr[23]_i_5_n_0\,
      I1 => \axi_araddr[23]_i_6_n_0\,
      I2 => \axi_araddr[23]_i_7_n_0\,
      I3 => \axi_araddr[23]_i_8_n_0\,
      I4 => s00_axi_arburst(0),
      I5 => axi_araddr110_out,
      O => \axi_araddr[23]_i_3_n_0\
    );
\axi_araddr[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \axi_araddr[23]_i_5_n_0\,
      I1 => \axi_araddr[23]_i_6_n_0\,
      I2 => \axi_araddr[23]_i_7_n_0\,
      I3 => \axi_araddr[23]_i_8_n_0\,
      I4 => s00_axi_arburst(0),
      I5 => axi_araddr110_out,
      O => \axi_araddr[23]_i_4_n_0\
    );
\axi_araddr[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => s00_axi_arlen(5),
      I1 => L(7),
      I2 => s00_axi_arlen(6),
      I3 => L(8),
      I4 => L(6),
      I5 => s00_axi_arlen(4),
      O => \axi_araddr[23]_i_5_n_0\
    );
\axi_araddr[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => L(9),
      I1 => s00_axi_arlen(7),
      O => \axi_araddr[23]_i_6_n_0\
    );
\axi_araddr[23]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44F4"
    )
        port map (
      I0 => L(5),
      I1 => s00_axi_arlen(3),
      I2 => s00_axi_arlen(0),
      I3 => L(2),
      O => \axi_araddr[23]_i_7_n_0\
    );
\axi_araddr[23]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => L(4),
      I1 => s00_axi_arlen(2),
      I2 => L(3),
      I3 => s00_axi_arlen(1),
      O => \axi_araddr[23]_i_8_n_0\
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => L(2),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(2),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(1),
      O => p_2_in(2)
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(3),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(3),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(2),
      O => p_2_in(3)
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(4),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(4),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(3),
      O => p_2_in(4)
    );
\axi_araddr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(5),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(5),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(4),
      O => p_2_in(5)
    );
\axi_araddr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(6),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(6),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(5),
      O => p_2_in(6)
    );
\axi_araddr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(7),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(7),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(6),
      O => p_2_in(7)
    );
\axi_araddr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(8),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(8),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(7),
      O => p_2_in(8)
    );
\axi_araddr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_araddr[23]_i_3_n_0\,
      I1 => \plusOp__1\(9),
      I2 => \axi_araddr[23]_i_4_n_0\,
      I3 => minusOp(9),
      I4 => axi_araddr110_out,
      I5 => s00_axi_araddr(8),
      O => p_2_in(9)
    );
\axi_araddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(10),
      Q => L(10),
      R => reset_p
    );
\axi_araddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(11),
      Q => L(11),
      R => reset_p
    );
\axi_araddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(12),
      Q => L(12),
      R => reset_p
    );
\axi_araddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(13),
      Q => L(13),
      R => reset_p
    );
\axi_araddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(14),
      Q => L(14),
      R => reset_p
    );
\axi_araddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(15),
      Q => L(15),
      R => reset_p
    );
\axi_araddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(16),
      Q => L(16),
      R => reset_p
    );
\axi_araddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(17),
      Q => L(17),
      R => reset_p
    );
\axi_araddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(18),
      Q => L(18),
      R => reset_p
    );
\axi_araddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(19),
      Q => L(19),
      R => reset_p
    );
\axi_araddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(1),
      Q => \axi_araddr_reg_n_0_[1]\,
      R => reset_p
    );
\axi_araddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(20),
      Q => L(20),
      R => reset_p
    );
\axi_araddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(21),
      Q => L(21),
      R => reset_p
    );
\axi_araddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(22),
      Q => L(22),
      R => reset_p
    );
\axi_araddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(23),
      Q => L(23),
      R => reset_p
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(2),
      Q => L(2),
      R => reset_p
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(3),
      Q => L(3),
      R => reset_p
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(4),
      Q => L(4),
      R => reset_p
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(5),
      Q => L(5),
      R => reset_p
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(6),
      Q => L(6),
      R => reset_p
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(7),
      Q => L(7),
      R => reset_p
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(8),
      Q => L(8),
      R => reset_p
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[23]_i_1_n_0\,
      D => p_2_in(9),
      Q => L(9),
      R => reset_p
    );
\axi_arlen[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => axi_arv_arr_flag,
      I2 => s00_axi_arvalid,
      O => axi_araddr110_out
    );
\axi_arlen_cntr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(0),
      O => plusOp(0)
    );
\axi_arlen_cntr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(0),
      I1 => \axi_arlen_cntr_reg__0\(1),
      O => plusOp(1)
    );
\axi_arlen_cntr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(0),
      I1 => \axi_arlen_cntr_reg__0\(1),
      I2 => \axi_arlen_cntr_reg__0\(2),
      O => plusOp(2)
    );
\axi_arlen_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(2),
      I1 => \axi_arlen_cntr_reg__0\(1),
      I2 => \axi_arlen_cntr_reg__0\(0),
      I3 => \axi_arlen_cntr_reg__0\(3),
      O => plusOp(3)
    );
\axi_arlen_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(3),
      I1 => \axi_arlen_cntr_reg__0\(0),
      I2 => \axi_arlen_cntr_reg__0\(1),
      I3 => \axi_arlen_cntr_reg__0\(2),
      I4 => \axi_arlen_cntr_reg__0\(4),
      O => plusOp(4)
    );
\axi_arlen_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(2),
      I1 => \axi_arlen_cntr_reg__0\(1),
      I2 => \axi_arlen_cntr_reg__0\(0),
      I3 => \axi_arlen_cntr_reg__0\(3),
      I4 => \axi_arlen_cntr_reg__0\(4),
      I5 => \axi_arlen_cntr_reg__0\(5),
      O => plusOp(5)
    );
\axi_arlen_cntr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFF00800000"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(5),
      I1 => \axi_arlen_cntr_reg__0\(4),
      I2 => \axi_arlen_cntr_reg__0\(3),
      I3 => \axi_arlen_cntr[6]_i_2_n_0\,
      I4 => \axi_arlen_cntr_reg__0\(2),
      I5 => \axi_arlen_cntr_reg__0\(6),
      O => plusOp(6)
    );
\axi_arlen_cntr[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(1),
      I1 => \axi_arlen_cntr_reg__0\(0),
      O => \axi_arlen_cntr[6]_i_2_n_0\
    );
\axi_arlen_cntr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02FF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => axi_arv_arr_flag,
      I2 => \^axi_arready_reg_0\,
      I3 => s00_axi_aresetn,
      O => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => leqOp,
      I1 => s00_axi_rready,
      I2 => \^axi_rvalid_reg_0\,
      O => axi_araddr1
    );
\axi_arlen_cntr[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(6),
      I1 => \axi_arlen_cntr[7]_i_4_n_0\,
      I2 => \axi_arlen_cntr_reg__0\(7),
      O => plusOp(7)
    );
\axi_arlen_cntr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(2),
      I1 => \axi_arlen_cntr_reg__0\(1),
      I2 => \axi_arlen_cntr_reg__0\(0),
      I3 => \axi_arlen_cntr_reg__0\(3),
      I4 => \axi_arlen_cntr_reg__0\(4),
      I5 => \axi_arlen_cntr_reg__0\(5),
      O => \axi_arlen_cntr[7]_i_4_n_0\
    );
\axi_arlen_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => plusOp(0),
      Q => \axi_arlen_cntr_reg__0\(0),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => plusOp(1),
      Q => \axi_arlen_cntr_reg__0\(1),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => plusOp(2),
      Q => \axi_arlen_cntr_reg__0\(2),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => plusOp(3),
      Q => \axi_arlen_cntr_reg__0\(3),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => plusOp(4),
      Q => \axi_arlen_cntr_reg__0\(4),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => plusOp(5),
      Q => \axi_arlen_cntr_reg__0\(5),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => plusOp(6),
      Q => \axi_arlen_cntr_reg__0\(6),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr1,
      D => plusOp(7),
      Q => \axi_arlen_cntr_reg__0\(7),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr110_out,
      D => s00_axi_arlen(0),
      Q => axi_arlen(0),
      R => reset_p
    );
\axi_arlen_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr110_out,
      D => s00_axi_arlen(1),
      Q => axi_arlen(1),
      R => reset_p
    );
\axi_arlen_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr110_out,
      D => s00_axi_arlen(2),
      Q => axi_arlen(2),
      R => reset_p
    );
\axi_arlen_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr110_out,
      D => s00_axi_arlen(3),
      Q => axi_arlen(3),
      R => reset_p
    );
\axi_arlen_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr110_out,
      D => s00_axi_arlen(4),
      Q => axi_arlen(4),
      R => reset_p
    );
\axi_arlen_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr110_out,
      D => s00_axi_arlen(5),
      Q => axi_arlen(5),
      R => reset_p
    );
\axi_arlen_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr110_out,
      D => s00_axi_arlen(6),
      Q => axi_arlen(6),
      R => reset_p
    );
\axi_arlen_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr110_out,
      D => s00_axi_arlen(7),
      Q => axi_arlen(7),
      R => reset_p
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FF404000FF0000"
    )
        port map (
      I0 => axi_arready_i_2_n_0,
      I1 => \^axi_rvalid_reg_0\,
      I2 => s00_axi_rready,
      I3 => axi_awv_awr_flag,
      I4 => axi_araddr110_out,
      I5 => \^axi_arready_reg_0\,
      O => axi_arready_i_1_n_0
    );
axi_arready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF6FF6"
    )
        port map (
      I0 => axi_arlen(7),
      I1 => \axi_arlen_cntr_reg__0\(7),
      I2 => \axi_arlen_cntr_reg__0\(6),
      I3 => axi_arlen(6),
      I4 => axi_arready_i_3_n_0,
      I5 => axi_arready_i_4_n_0,
      O => axi_arready_i_2_n_0
    );
axi_arready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => axi_arlen(4),
      I1 => \axi_arlen_cntr_reg__0\(4),
      I2 => axi_arlen(0),
      I3 => \axi_arlen_cntr_reg__0\(0),
      I4 => axi_arlen(3),
      I5 => \axi_arlen_cntr_reg__0\(3),
      O => axi_arready_i_3_n_0
    );
axi_arready_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => axi_arlen(5),
      I1 => \axi_arlen_cntr_reg__0\(5),
      I2 => axi_arlen(1),
      I3 => \axi_arlen_cntr_reg__0\(1),
      I4 => axi_arlen(2),
      I5 => \axi_arlen_cntr_reg__0\(2),
      O => axi_arready_i_4_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => reset_p
    );
axi_arv_arr_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFFFFF44444444"
    )
        port map (
      I0 => axi_awv_awr_flag,
      I1 => axi_araddr110_out,
      I2 => axi_arready_i_2_n_0,
      I3 => \^axi_rvalid_reg_0\,
      I4 => s00_axi_rready,
      I5 => axi_arv_arr_flag,
      O => axi_arv_arr_flag_i_1_n_0
    );
axi_arv_arr_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arv_arr_flag_i_1_n_0,
      Q => axi_arv_arr_flag,
      R => reset_p
    );
\axi_awaddr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry__0_n_4\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry__1_n_7\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(8),
      O => \axi_awaddr[10]_i_1_n_0\
    );
\axi_awaddr[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry__1_n_7\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry__1_n_6\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(9),
      O => \axi_awaddr[11]_i_1_n_0\
    );
\axi_awaddr[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry__1_n_6\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry__1_n_5\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(10),
      O => \axi_awaddr[12]_i_1_n_0\
    );
\axi_awaddr[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry__1_n_5\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry__1_n_4\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(11),
      O => \axi_awaddr[13]_i_1_n_0\
    );
\axi_awaddr[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry__1_n_4\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry__2_n_7\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(12),
      O => \axi_awaddr[14]_i_1_n_0\
    );
\axi_awaddr[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry__2_n_7\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry__2_n_6\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(13),
      O => \axi_awaddr[15]_i_1_n_0\
    );
\axi_awaddr[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry__2_n_6\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry__2_n_5\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(14),
      O => \axi_awaddr[16]_i_1_n_0\
    );
\axi_awaddr[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry__2_n_5\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry__2_n_4\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(15),
      O => \axi_awaddr[17]_i_1_n_0\
    );
\axi_awaddr[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry__2_n_4\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry__3_n_7\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(16),
      O => \axi_awaddr[18]_i_1_n_0\
    );
\axi_awaddr[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry__3_n_7\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry__3_n_6\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(17),
      O => \axi_awaddr[19]_i_1_n_0\
    );
\axi_awaddr[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry__3_n_6\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry__3_n_5\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(18),
      O => \axi_awaddr[20]_i_1_n_0\
    );
\axi_awaddr[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry__3_n_5\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry__3_n_4\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(19),
      O => \axi_awaddr[21]_i_1_n_0\
    );
\axi_awaddr[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry__3_n_4\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry__4_n_7\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(20),
      O => \axi_awaddr[22]_i_1_n_0\
    );
\axi_awaddr[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE0000000"
    )
        port map (
      I0 => s00_axi_awburst(0),
      I1 => s00_axi_awburst(1),
      I2 => \^axi_wready_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => leqOp15_in,
      I5 => p_17_in,
      O => \axi_awaddr[23]_i_1_n_0\
    );
\axi_awaddr[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry__4_n_7\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry__4_n_6\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(21),
      O => \axi_awaddr[23]_i_2_n_0\
    );
\axi_awaddr[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFB"
    )
        port map (
      I0 => \axi_awaddr[23]_i_5_n_0\,
      I1 => \axi_awaddr[23]_i_6_n_0\,
      I2 => \axi_awaddr[23]_i_7_n_0\,
      I3 => \axi_awaddr[23]_i_8_n_0\,
      I4 => s00_axi_awburst(0),
      I5 => p_17_in,
      O => \axi_awaddr[23]_i_3_n_0\
    );
\axi_awaddr[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \axi_awaddr[23]_i_5_n_0\,
      I1 => \axi_awaddr[23]_i_6_n_0\,
      I2 => \axi_awaddr[23]_i_7_n_0\,
      I3 => \axi_awaddr[23]_i_8_n_0\,
      I4 => s00_axi_awburst(0),
      I5 => p_17_in,
      O => \axi_awaddr[23]_i_4_n_0\
    );
\axi_awaddr[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => s00_axi_awlen(5),
      I1 => \axi_awaddr_reg_n_0_[7]\,
      I2 => s00_axi_awlen(6),
      I3 => \axi_awaddr_reg_n_0_[8]\,
      I4 => \axi_awaddr_reg_n_0_[6]\,
      I5 => s00_axi_awlen(4),
      O => \axi_awaddr[23]_i_5_n_0\
    );
\axi_awaddr[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[9]\,
      I1 => s00_axi_awlen(7),
      O => \axi_awaddr[23]_i_6_n_0\
    );
\axi_awaddr[23]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44F4"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[5]\,
      I1 => s00_axi_awlen(3),
      I2 => s00_axi_awlen(0),
      I3 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[23]_i_7_n_0\
    );
\axi_awaddr[23]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[4]\,
      I1 => s00_axi_awlen(2),
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => s00_axi_awlen(1),
      O => \axi_awaddr[23]_i_8_n_0\
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry_n_7\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry_n_7\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry_n_6\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry_n_6\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry_n_5\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(2),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry_n_5\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry_n_4\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(3),
      O => \axi_awaddr[5]_i_1_n_0\
    );
\axi_awaddr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry_n_4\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry__0_n_7\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(4),
      O => \axi_awaddr[6]_i_1_n_0\
    );
\axi_awaddr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry__0_n_7\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry__0_n_6\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(5),
      O => \axi_awaddr[7]_i_1_n_0\
    );
\axi_awaddr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry__0_n_6\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry__0_n_5\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(6),
      O => \axi_awaddr[8]_i_1_n_0\
    );
\axi_awaddr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_awaddr[23]_i_3_n_0\,
      I1 => \plusOp_inferred__0/i__carry__0_n_5\,
      I2 => \axi_awaddr[23]_i_4_n_0\,
      I3 => \minusOp_inferred__0/i__carry__0_n_4\,
      I4 => p_17_in,
      I5 => s00_axi_awaddr(7),
      O => \axi_awaddr[9]_i_1_n_0\
    );
\axi_awaddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[10]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[10]\,
      R => reset_p
    );
\axi_awaddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[11]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[11]\,
      R => reset_p
    );
\axi_awaddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[12]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[12]\,
      R => reset_p
    );
\axi_awaddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[13]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[13]\,
      R => reset_p
    );
\axi_awaddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[14]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[14]\,
      R => reset_p
    );
\axi_awaddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[15]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[15]\,
      R => reset_p
    );
\axi_awaddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[16]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[16]\,
      R => reset_p
    );
\axi_awaddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[17]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[17]\,
      R => reset_p
    );
\axi_awaddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[18]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[18]\,
      R => reset_p
    );
\axi_awaddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[19]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[19]\,
      R => reset_p
    );
\axi_awaddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[20]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[20]\,
      R => reset_p
    );
\axi_awaddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[21]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[21]\,
      R => reset_p
    );
\axi_awaddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[22]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[22]\,
      R => reset_p
    );
\axi_awaddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[23]_i_2_n_0\,
      Q => \axi_awaddr_reg_n_0_[23]\,
      R => reset_p
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => reset_p
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => reset_p
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => reset_p
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[5]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[5]\,
      R => reset_p
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[6]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[6]\,
      R => reset_p
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[7]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[7]\,
      R => reset_p
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[8]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[8]\,
      R => reset_p
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awaddr[23]_i_1_n_0\,
      D => \axi_awaddr[9]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[9]\,
      R => reset_p
    );
\axi_awlen[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_awv_awr_flag,
      I1 => s00_axi_awvalid,
      I2 => \^axi_awready_reg_0\,
      O => p_17_in
    );
\axi_awlen_cntr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \axi_awlen_cntr_reg__0\(0),
      O => \axi_awlen_cntr[0]_i_1_n_0\
    );
\axi_awlen_cntr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \axi_awlen_cntr_reg__0\(0),
      I1 => \axi_awlen_cntr_reg__0\(1),
      O => \plusOp__0\(1)
    );
\axi_awlen_cntr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \axi_awlen_cntr_reg__0\(0),
      I1 => \axi_awlen_cntr_reg__0\(1),
      I2 => \axi_awlen_cntr_reg__0\(2),
      O => \plusOp__0\(2)
    );
\axi_awlen_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \axi_awlen_cntr_reg__0\(2),
      I1 => \axi_awlen_cntr_reg__0\(1),
      I2 => \axi_awlen_cntr_reg__0\(0),
      I3 => \axi_awlen_cntr_reg__0\(3),
      O => \plusOp__0\(3)
    );
\axi_awlen_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \axi_awlen_cntr_reg__0\(3),
      I1 => \axi_awlen_cntr_reg__0\(0),
      I2 => \axi_awlen_cntr_reg__0\(1),
      I3 => \axi_awlen_cntr_reg__0\(2),
      I4 => \axi_awlen_cntr_reg__0\(4),
      O => \plusOp__0\(4)
    );
\axi_awlen_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \axi_awlen_cntr_reg__0\(2),
      I1 => \axi_awlen_cntr_reg__0\(1),
      I2 => \axi_awlen_cntr_reg__0\(0),
      I3 => \axi_awlen_cntr_reg__0\(3),
      I4 => \axi_awlen_cntr_reg__0\(4),
      I5 => \axi_awlen_cntr_reg__0\(5),
      O => \plusOp__0\(5)
    );
\axi_awlen_cntr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \axi_awlen_cntr_reg__0\(4),
      I1 => \axi_awlen_cntr_reg__0\(3),
      I2 => \axi_awlen_cntr[6]_i_2_n_0\,
      I3 => \axi_awlen_cntr_reg__0\(2),
      I4 => \axi_awlen_cntr_reg__0\(5),
      I5 => \axi_awlen_cntr_reg__0\(6),
      O => \plusOp__0\(6)
    );
\axi_awlen_cntr[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \axi_awlen_cntr_reg__0\(1),
      I1 => \axi_awlen_cntr_reg__0\(0),
      O => \axi_awlen_cntr[6]_i_2_n_0\
    );
\axi_awlen_cntr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => axi_awv_awr_flag,
      I3 => s00_axi_aresetn,
      O => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => s00_axi_wvalid,
      I2 => leqOp15_in,
      O => \axi_awlen_cntr[7]_i_2_n_0\
    );
\axi_awlen_cntr[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \axi_awlen_cntr_reg__0\(6),
      I1 => \axi_awlen_cntr[7]_i_4_n_0\,
      I2 => \axi_awlen_cntr_reg__0\(7),
      O => \plusOp__0\(7)
    );
\axi_awlen_cntr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \axi_awlen_cntr_reg__0\(5),
      I1 => \axi_awlen_cntr_reg__0\(2),
      I2 => \axi_awlen_cntr_reg__0\(1),
      I3 => \axi_awlen_cntr_reg__0\(0),
      I4 => \axi_awlen_cntr_reg__0\(3),
      I5 => \axi_awlen_cntr_reg__0\(4),
      O => \axi_awlen_cntr[7]_i_4_n_0\
    );
\axi_awlen_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awlen_cntr[7]_i_2_n_0\,
      D => \axi_awlen_cntr[0]_i_1_n_0\,
      Q => \axi_awlen_cntr_reg__0\(0),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awlen_cntr[7]_i_2_n_0\,
      D => \plusOp__0\(1),
      Q => \axi_awlen_cntr_reg__0\(1),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awlen_cntr[7]_i_2_n_0\,
      D => \plusOp__0\(2),
      Q => \axi_awlen_cntr_reg__0\(2),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awlen_cntr[7]_i_2_n_0\,
      D => \plusOp__0\(3),
      Q => \axi_awlen_cntr_reg__0\(3),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awlen_cntr[7]_i_2_n_0\,
      D => \plusOp__0\(4),
      Q => \axi_awlen_cntr_reg__0\(4),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awlen_cntr[7]_i_2_n_0\,
      D => \plusOp__0\(5),
      Q => \axi_awlen_cntr_reg__0\(5),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awlen_cntr[7]_i_2_n_0\,
      D => \plusOp__0\(6),
      Q => \axi_awlen_cntr_reg__0\(6),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awlen_cntr[7]_i_2_n_0\,
      D => \plusOp__0\(7),
      Q => \axi_awlen_cntr_reg__0\(7),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => s00_axi_awlen(0),
      Q => axi_awlen(0),
      R => reset_p
    );
\axi_awlen_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => s00_axi_awlen(1),
      Q => axi_awlen(1),
      R => reset_p
    );
\axi_awlen_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => s00_axi_awlen(2),
      Q => axi_awlen(2),
      R => reset_p
    );
\axi_awlen_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => s00_axi_awlen(3),
      Q => axi_awlen(3),
      R => reset_p
    );
\axi_awlen_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => s00_axi_awlen(4),
      Q => axi_awlen(4),
      R => reset_p
    );
\axi_awlen_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => s00_axi_awlen(5),
      Q => axi_awlen(5),
      R => reset_p
    );
\axi_awlen_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => s00_axi_awlen(6),
      Q => axi_awlen(6),
      R => reset_p
    );
\axi_awlen_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_17_in,
      D => s00_axi_awlen(7),
      Q => axi_awlen(7),
      R => reset_p
    );
axi_awready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888000F0000"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => s00_axi_wlast,
      I2 => axi_arv_arr_flag,
      I3 => axi_awv_awr_flag,
      I4 => s00_axi_awvalid,
      I5 => \^axi_awready_reg_0\,
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_1_n_0,
      Q => \^axi_awready_reg_0\,
      R => reset_p
    );
axi_awv_awr_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010CCDCCCDCCCDC"
    )
        port map (
      I0 => axi_arv_arr_flag,
      I1 => axi_awv_awr_flag,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => \^axi_wready_reg_0\,
      I5 => s00_axi_wlast,
      O => axi_awv_awr_flag_i_1_n_0
    );
axi_awv_awr_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awv_awr_flag_i_1_n_0,
      Q => axi_awv_awr_flag,
      R => reset_p
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555C0000000"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => s00_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => axi_awv_awr_flag,
      I4 => s00_axi_wlast,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => reset_p
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDD5"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      O => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0FF"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => s00_axi_aresetn,
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_43,
      D => mem_data_rd(0),
      Q => s00_axi_rdata(0),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_43,
      D => mem_data_rd(10),
      Q => s00_axi_rdata(10),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_43,
      D => mem_data_rd(11),
      Q => s00_axi_rdata(11),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_43,
      D => mem_data_rd(12),
      Q => s00_axi_rdata(12),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_43,
      D => mem_data_rd(13),
      Q => s00_axi_rdata(13),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_43,
      D => mem_data_rd(14),
      Q => s00_axi_rdata(14),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_43,
      D => mem_data_rd(15),
      Q => s00_axi_rdata(15),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_42,
      D => mem_data_rd(0),
      Q => s00_axi_rdata(16),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_42,
      D => mem_data_rd(1),
      Q => s00_axi_rdata(17),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_42,
      D => mem_data_rd(2),
      Q => s00_axi_rdata(18),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_42,
      D => mem_data_rd(3),
      Q => s00_axi_rdata(19),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_43,
      D => mem_data_rd(1),
      Q => s00_axi_rdata(1),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_42,
      D => mem_data_rd(4),
      Q => s00_axi_rdata(20),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_42,
      D => mem_data_rd(5),
      Q => s00_axi_rdata(21),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_42,
      D => mem_data_rd(6),
      Q => s00_axi_rdata(22),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_42,
      D => mem_data_rd(7),
      Q => s00_axi_rdata(23),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_42,
      D => mem_data_rd(8),
      Q => s00_axi_rdata(24),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_42,
      D => mem_data_rd(9),
      Q => s00_axi_rdata(25),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_42,
      D => mem_data_rd(10),
      Q => s00_axi_rdata(26),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_42,
      D => mem_data_rd(11),
      Q => s00_axi_rdata(27),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_42,
      D => mem_data_rd(12),
      Q => s00_axi_rdata(28),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_42,
      D => mem_data_rd(13),
      Q => s00_axi_rdata(29),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_43,
      D => mem_data_rd(2),
      Q => s00_axi_rdata(2),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_42,
      D => mem_data_rd(14),
      Q => s00_axi_rdata(30),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_42,
      D => mem_data_rd(15),
      Q => s00_axi_rdata(31),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_43,
      D => mem_data_rd(3),
      Q => s00_axi_rdata(3),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_43,
      D => mem_data_rd(4),
      Q => s00_axi_rdata(4),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_43,
      D => mem_data_rd(5),
      Q => s00_axi_rdata(5),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_43,
      D => mem_data_rd(6),
      Q => s00_axi_rdata(6),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_43,
      D => mem_data_rd(7),
      Q => s00_axi_rdata(7),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_43,
      D => mem_data_rd(8),
      Q => s00_axi_rdata(8),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_43,
      D => mem_data_rd(9),
      Q => s00_axi_rdata(9),
      R => \axi_rdata[15]_i_1_n_0\
    );
axi_rlast_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => axi_rlast_i_3_n_0
    );
axi_rlast_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => AsyncPSRAMinst_n_9,
      Q => \^s00_axi_rlast\,
      R => '0'
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => AsyncPSRAMinst_n_18,
      Q => \^axi_rvalid_reg_0\,
      R => '0'
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => AsyncPSRAMinst_n_7,
      Q => \^axi_wready_reg_0\,
      R => '0'
    );
command_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => s00_axi_wvalid,
      I2 => axi_arv_arr_flag,
      I3 => axi_awv_awr_flag,
      O => command_i_2_n_0
    );
command_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      O => command_i_3_n_0
    );
command_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => AsyncPSRAMinst_n_45,
      Q => command_reg_n_0,
      S => reset_p
    );
go_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => command_i_2_n_0,
      I1 => \^axi_rvalid_reg_0\,
      I2 => axi_arv_arr_flag,
      O => go_i_2_n_0
    );
go_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => s00_axi_wstrb(2),
      O => go_i_3_n_0
    );
go_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => AsyncPSRAMinst_n_16,
      Q => go,
      R => reset_p
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[8]\,
      I1 => s00_axi_awlen(6),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[7]\,
      I1 => s00_axi_awlen(5),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[6]\,
      I1 => s00_axi_awlen(4),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[5]\,
      I1 => s00_axi_awlen(3),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => s00_axi_awlen(6),
      I1 => \axi_awaddr_reg_n_0_[8]\,
      I2 => s00_axi_awlen(7),
      I3 => \axi_awaddr_reg_n_0_[9]\,
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => s00_axi_awlen(5),
      I1 => \axi_awaddr_reg_n_0_[7]\,
      I2 => s00_axi_awlen(6),
      I3 => \axi_awaddr_reg_n_0_[8]\,
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => s00_axi_awlen(4),
      I1 => \axi_awaddr_reg_n_0_[6]\,
      I2 => s00_axi_awlen(5),
      I3 => \axi_awaddr_reg_n_0_[7]\,
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => s00_axi_awlen(3),
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => s00_axi_awlen(4),
      I3 => \axi_awaddr_reg_n_0_[6]\,
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[9]\,
      I1 => s00_axi_awlen(7),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[12]\,
      I1 => \axi_awaddr_reg_n_0_[13]\,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[11]\,
      I1 => \axi_awaddr_reg_n_0_[12]\,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[10]\,
      I1 => \axi_awaddr_reg_n_0_[11]\,
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => s00_axi_awlen(7),
      I1 => \axi_awaddr_reg_n_0_[9]\,
      I2 => \axi_awaddr_reg_n_0_[10]\,
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[16]\,
      I1 => \axi_awaddr_reg_n_0_[17]\,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[15]\,
      I1 => \axi_awaddr_reg_n_0_[16]\,
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[14]\,
      I1 => \axi_awaddr_reg_n_0_[15]\,
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[13]\,
      I1 => \axi_awaddr_reg_n_0_[14]\,
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[20]\,
      I1 => \axi_awaddr_reg_n_0_[21]\,
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[19]\,
      I1 => \axi_awaddr_reg_n_0_[20]\,
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[18]\,
      I1 => \axi_awaddr_reg_n_0_[19]\,
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[17]\,
      I1 => \axi_awaddr_reg_n_0_[18]\,
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[22]\,
      I1 => \axi_awaddr_reg_n_0_[23]\,
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[21]\,
      I1 => \axi_awaddr_reg_n_0_[22]\,
      O => \i__carry__4_i_2_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[4]\,
      I1 => s00_axi_awlen(2),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => axi_awlen(7),
      I1 => \axi_awlen_cntr_reg__0\(7),
      I2 => axi_awlen(6),
      I3 => \axi_awlen_cntr_reg__0\(6),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => s00_axi_awlen(1),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => axi_awlen(5),
      I1 => \axi_awlen_cntr_reg__0\(5),
      I2 => axi_awlen(4),
      I3 => \axi_awlen_cntr_reg__0\(4),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_awlen(0),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => axi_awlen(3),
      I1 => \axi_awlen_cntr_reg__0\(3),
      I2 => axi_awlen(2),
      I3 => \axi_awlen_cntr_reg__0\(2),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => axi_awlen(1),
      I1 => \axi_awlen_cntr_reg__0\(1),
      I2 => axi_awlen(0),
      I3 => \axi_awlen_cntr_reg__0\(0),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => s00_axi_awlen(2),
      I1 => \axi_awaddr_reg_n_0_[4]\,
      I2 => s00_axi_awlen(3),
      I3 => \axi_awaddr_reg_n_0_[5]\,
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axi_awlen(6),
      I1 => \axi_awlen_cntr_reg__0\(6),
      I2 => axi_awlen(7),
      I3 => \axi_awlen_cntr_reg__0\(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => s00_axi_awlen(1),
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => s00_axi_awlen(2),
      I3 => \axi_awaddr_reg_n_0_[4]\,
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axi_awlen(4),
      I1 => \axi_awlen_cntr_reg__0\(4),
      I2 => axi_awlen(5),
      I3 => \axi_awlen_cntr_reg__0\(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => s00_axi_awlen(0),
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awlen(1),
      I3 => \axi_awaddr_reg_n_0_[3]\,
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s00_axi_awlen(0),
      I1 => \axi_awaddr_reg_n_0_[2]\,
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axi_awlen(2),
      I1 => \axi_awlen_cntr_reg__0\(2),
      I2 => axi_awlen(3),
      I3 => \axi_awlen_cntr_reg__0\(3),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => \axi_awlen_cntr_reg__0\(1),
      I1 => \axi_awlen_cntr_reg__0\(0),
      I2 => axi_awlen(1),
      I3 => axi_awlen(0),
      O => \i__carry_i_8_n_0\
    );
leqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => leqOp,
      CO(2) => leqOp_carry_n_1,
      CO(1) => leqOp_carry_n_2,
      CO(0) => leqOp_carry_n_3,
      CYINIT => '1',
      DI(3) => leqOp_carry_i_1_n_0,
      DI(2) => leqOp_carry_i_2_n_0,
      DI(1) => leqOp_carry_i_3_n_0,
      DI(0) => leqOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_leqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => leqOp_carry_i_5_n_0,
      S(2) => leqOp_carry_i_6_n_0,
      S(1) => leqOp_carry_i_7_n_0,
      S(0) => leqOp_carry_i_8_n_0
    );
leqOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => axi_arlen(7),
      I1 => \axi_arlen_cntr_reg__0\(7),
      I2 => axi_arlen(6),
      I3 => \axi_arlen_cntr_reg__0\(6),
      O => leqOp_carry_i_1_n_0
    );
leqOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => axi_arlen(5),
      I1 => \axi_arlen_cntr_reg__0\(5),
      I2 => axi_arlen(4),
      I3 => \axi_arlen_cntr_reg__0\(4),
      O => leqOp_carry_i_2_n_0
    );
leqOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => axi_arlen(3),
      I1 => \axi_arlen_cntr_reg__0\(3),
      I2 => axi_arlen(2),
      I3 => \axi_arlen_cntr_reg__0\(2),
      O => leqOp_carry_i_3_n_0
    );
leqOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => axi_arlen(1),
      I1 => \axi_arlen_cntr_reg__0\(1),
      I2 => axi_arlen(0),
      I3 => \axi_arlen_cntr_reg__0\(0),
      O => leqOp_carry_i_4_n_0
    );
leqOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axi_arlen(6),
      I1 => \axi_arlen_cntr_reg__0\(6),
      I2 => axi_arlen(7),
      I3 => \axi_arlen_cntr_reg__0\(7),
      O => leqOp_carry_i_5_n_0
    );
leqOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axi_arlen(4),
      I1 => \axi_arlen_cntr_reg__0\(4),
      I2 => axi_arlen(5),
      I3 => \axi_arlen_cntr_reg__0\(5),
      O => leqOp_carry_i_6_n_0
    );
leqOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axi_arlen(3),
      I1 => \axi_arlen_cntr_reg__0\(3),
      I2 => axi_arlen(2),
      I3 => \axi_arlen_cntr_reg__0\(2),
      O => leqOp_carry_i_7_n_0
    );
leqOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => \axi_arlen_cntr_reg__0\(1),
      I1 => \axi_arlen_cntr_reg__0\(0),
      I2 => axi_arlen(1),
      I3 => axi_arlen(0),
      O => leqOp_carry_i_8_n_0
    );
\leqOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => leqOp15_in,
      CO(2) => \leqOp_inferred__0/i__carry_n_1\,
      CO(1) => \leqOp_inferred__0/i__carry_n_2\,
      CO(0) => \leqOp_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_leqOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\mem_addr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E000000FF0000"
    )
        port map (
      I0 => \mem_addr[0]_i_2_n_0\,
      I1 => \go1__1\,
      I2 => \go14_out__0\,
      I3 => mem_addr(0),
      I4 => s00_axi_aresetn,
      I5 => \state[0]_i_3_n_0\,
      O => \mem_addr[0]_i_1_n_0\
    );
\mem_addr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[1]\,
      I1 => \^axi_rvalid_reg_0\,
      I2 => axi_arv_arr_flag,
      O => \mem_addr[0]_i_2_n_0\
    );
\mem_addr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => axi_awv_awr_flag,
      I1 => axi_arv_arr_flag,
      I2 => s00_axi_wvalid,
      I3 => \^axi_wready_reg_0\,
      I4 => s00_axi_wstrb(1),
      I5 => s00_axi_wstrb(0),
      O => \go1__1\
    );
\mem_addr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000200000"
    )
        port map (
      I0 => axi_awv_awr_flag,
      I1 => axi_arv_arr_flag,
      I2 => s00_axi_wvalid,
      I3 => \^axi_wready_reg_0\,
      I4 => s00_axi_wstrb(1),
      I5 => s00_axi_wstrb(0),
      O => \go14_out__0\
    );
\mem_addr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(10),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[11]\,
      I4 => L(11),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[10]_i_1_n_0\
    );
\mem_addr[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(11),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[12]\,
      I4 => L(12),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[11]_i_1_n_0\
    );
\mem_addr[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(12),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[13]\,
      I4 => L(13),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[12]_i_1_n_0\
    );
\mem_addr[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(13),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[14]\,
      I4 => L(14),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[13]_i_1_n_0\
    );
\mem_addr[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(14),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[15]\,
      I4 => L(15),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[14]_i_1_n_0\
    );
\mem_addr[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(15),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[16]\,
      I4 => L(16),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[15]_i_1_n_0\
    );
\mem_addr[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(16),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[17]\,
      I4 => L(17),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[16]_i_1_n_0\
    );
\mem_addr[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(17),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[18]\,
      I4 => L(18),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[17]_i_1_n_0\
    );
\mem_addr[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(18),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[19]\,
      I4 => L(19),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[18]_i_1_n_0\
    );
\mem_addr[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(19),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[20]\,
      I4 => L(20),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[19]_i_1_n_0\
    );
\mem_addr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(1),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => L(2),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[1]_i_1_n_0\
    );
\mem_addr[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(20),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[21]\,
      I4 => L(21),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[20]_i_1_n_0\
    );
\mem_addr[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(21),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[22]\,
      I4 => L(22),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[21]_i_1_n_0\
    );
\mem_addr[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(22),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[23]\,
      I4 => L(23),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[22]_i_2_n_0\
    );
\mem_addr[22]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      O => \mem_addr[22]_i_3_n_0\
    );
\mem_addr[22]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => axi_awv_awr_flag,
      I1 => command_i_2_n_0,
      I2 => axi_arv_arr_flag,
      I3 => \state[0]_i_3_n_0\,
      I4 => s00_axi_aresetn,
      O => \mem_addr[22]_i_5_n_0\
    );
\mem_addr[22]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0000000"
    )
        port map (
      I0 => command_i_2_n_0,
      I1 => \^axi_rvalid_reg_0\,
      I2 => \state[0]_i_3_n_0\,
      I3 => s00_axi_aresetn,
      I4 => axi_arv_arr_flag,
      O => \mem_addr[22]_i_6_n_0\
    );
\mem_addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(2),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[3]\,
      I4 => L(3),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[2]_i_1_n_0\
    );
\mem_addr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(3),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => L(4),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[3]_i_1_n_0\
    );
\mem_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(4),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[5]\,
      I4 => L(5),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[4]_i_1_n_0\
    );
\mem_addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(5),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[6]\,
      I4 => L(6),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[5]_i_1_n_0\
    );
\mem_addr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(6),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[7]\,
      I4 => L(7),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[6]_i_1_n_0\
    );
\mem_addr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(7),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[8]\,
      I4 => L(8),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[7]_i_1_n_0\
    );
\mem_addr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(8),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[9]\,
      I4 => L(9),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[8]_i_1_n_0\
    );
\mem_addr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mem_addr[22]_i_3_n_0\,
      I1 => plusOp0_in(9),
      I2 => \mem_addr[22]_i_5_n_0\,
      I3 => \axi_awaddr_reg_n_0_[10]\,
      I4 => L(10),
      I5 => \mem_addr[22]_i_6_n_0\,
      O => \mem_addr[9]_i_1_n_0\
    );
\mem_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[0]_i_1_n_0\,
      Q => mem_addr(0),
      R => '0'
    );
\mem_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[10]_i_1_n_0\,
      Q => mem_addr(10),
      R => '0'
    );
\mem_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[11]_i_1_n_0\,
      Q => mem_addr(11),
      R => '0'
    );
\mem_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[12]_i_1_n_0\,
      Q => mem_addr(12),
      R => '0'
    );
\mem_addr_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_addr_reg[8]_i_2_n_0\,
      CO(3) => \mem_addr_reg[12]_i_2_n_0\,
      CO(2) => \mem_addr_reg[12]_i_2_n_1\,
      CO(1) => \mem_addr_reg[12]_i_2_n_2\,
      CO(0) => \mem_addr_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp0_in(12 downto 9),
      S(3 downto 0) => mem_addr(12 downto 9)
    );
\mem_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[13]_i_1_n_0\,
      Q => mem_addr(13),
      R => '0'
    );
\mem_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[14]_i_1_n_0\,
      Q => mem_addr(14),
      R => '0'
    );
\mem_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[15]_i_1_n_0\,
      Q => mem_addr(15),
      R => '0'
    );
\mem_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[16]_i_1_n_0\,
      Q => mem_addr(16),
      R => '0'
    );
\mem_addr_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_addr_reg[12]_i_2_n_0\,
      CO(3) => \mem_addr_reg[16]_i_2_n_0\,
      CO(2) => \mem_addr_reg[16]_i_2_n_1\,
      CO(1) => \mem_addr_reg[16]_i_2_n_2\,
      CO(0) => \mem_addr_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp0_in(16 downto 13),
      S(3 downto 0) => mem_addr(16 downto 13)
    );
\mem_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[17]_i_1_n_0\,
      Q => mem_addr(17),
      R => '0'
    );
\mem_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[18]_i_1_n_0\,
      Q => mem_addr(18),
      R => '0'
    );
\mem_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[19]_i_1_n_0\,
      Q => mem_addr(19),
      R => '0'
    );
\mem_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[1]_i_1_n_0\,
      Q => mem_addr(1),
      R => '0'
    );
\mem_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[20]_i_1_n_0\,
      Q => mem_addr(20),
      R => '0'
    );
\mem_addr_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_addr_reg[16]_i_2_n_0\,
      CO(3) => \mem_addr_reg[20]_i_2_n_0\,
      CO(2) => \mem_addr_reg[20]_i_2_n_1\,
      CO(1) => \mem_addr_reg[20]_i_2_n_2\,
      CO(0) => \mem_addr_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp0_in(20 downto 17),
      S(3 downto 0) => mem_addr(20 downto 17)
    );
\mem_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[21]_i_1_n_0\,
      Q => mem_addr(21),
      R => '0'
    );
\mem_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[22]_i_2_n_0\,
      Q => mem_addr(22),
      R => '0'
    );
\mem_addr_reg[22]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_addr_reg[20]_i_2_n_0\,
      CO(3 downto 1) => \NLW_mem_addr_reg[22]_i_4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \mem_addr_reg[22]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_mem_addr_reg[22]_i_4_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => plusOp0_in(22 downto 21),
      S(3 downto 2) => B"00",
      S(1 downto 0) => mem_addr(22 downto 21)
    );
\mem_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[2]_i_1_n_0\,
      Q => mem_addr(2),
      R => '0'
    );
\mem_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[3]_i_1_n_0\,
      Q => mem_addr(3),
      R => '0'
    );
\mem_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[4]_i_1_n_0\,
      Q => mem_addr(4),
      R => '0'
    );
\mem_addr_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mem_addr_reg[4]_i_2_n_0\,
      CO(2) => \mem_addr_reg[4]_i_2_n_1\,
      CO(1) => \mem_addr_reg[4]_i_2_n_2\,
      CO(0) => \mem_addr_reg[4]_i_2_n_3\,
      CYINIT => mem_addr(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp0_in(4 downto 1),
      S(3 downto 0) => mem_addr(4 downto 1)
    );
\mem_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[5]_i_1_n_0\,
      Q => mem_addr(5),
      R => '0'
    );
\mem_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[6]_i_1_n_0\,
      Q => mem_addr(6),
      R => '0'
    );
\mem_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[7]_i_1_n_0\,
      Q => mem_addr(7),
      R => '0'
    );
\mem_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[8]_i_1_n_0\,
      Q => mem_addr(8),
      R => '0'
    );
\mem_addr_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_addr_reg[4]_i_2_n_0\,
      CO(3) => \mem_addr_reg[8]_i_2_n_0\,
      CO(2) => \mem_addr_reg[8]_i_2_n_1\,
      CO(1) => \mem_addr_reg[8]_i_2_n_2\,
      CO(0) => \mem_addr_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp0_in(8 downto 5),
      S(3 downto 0) => mem_addr(8 downto 5)
    );
\mem_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_13,
      D => \mem_addr[9]_i_1_n_0\,
      Q => mem_addr(9),
      R => '0'
    );
\mem_byte_en[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EEE2"
    )
        port map (
      I0 => \mem_byte_en_reg_n_0_[0]\,
      I1 => \mem_byte_en[1]_i_2_n_0\,
      I2 => AsyncPSRAMinst_n_14,
      I3 => \mem_byte_en[0]_i_2_n_0\,
      I4 => \mem_byte_en[1]_i_5_n_0\,
      O => \mem_byte_en[0]_i_1_n_0\
    );
\mem_byte_en[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554555555575555"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => \go14_out__0\,
      I5 => s00_axi_wstrb(0),
      O => \mem_byte_en[0]_i_2_n_0\
    );
\mem_byte_en[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EEE2"
    )
        port map (
      I0 => \mem_byte_en_reg_n_0_[1]\,
      I1 => \mem_byte_en[1]_i_2_n_0\,
      I2 => AsyncPSRAMinst_n_14,
      I3 => \mem_byte_en[1]_i_4_n_0\,
      I4 => \mem_byte_en[1]_i_5_n_0\,
      O => \mem_byte_en[1]_i_1_n_0\
    );
\mem_byte_en[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01330103"
    )
        port map (
      I0 => AsyncPSRAMinst_n_8,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => AsyncPSRAMinst_n_10,
      O => \mem_byte_en[1]_i_2_n_0\
    );
\mem_byte_en[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554555555575555"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => \go14_out__0\,
      I5 => s00_axi_wstrb(1),
      O => \mem_byte_en[1]_i_4_n_0\
    );
\mem_byte_en[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0400FFFF"
    )
        port map (
      I0 => command_i_2_n_0,
      I1 => \state[0]_i_3_n_0\,
      I2 => \^axi_rvalid_reg_0\,
      I3 => axi_arv_arr_flag,
      I4 => s00_axi_aresetn,
      O => \mem_byte_en[1]_i_5_n_0\
    );
\mem_byte_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \mem_byte_en[0]_i_1_n_0\,
      Q => \mem_byte_en_reg_n_0_[0]\,
      R => '0'
    );
\mem_byte_en_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \mem_byte_en[1]_i_1_n_0\,
      Q => \mem_byte_en_reg_n_0_[1]\,
      R => '0'
    );
\mem_data_wr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \mem_data_wr[15]_i_3_n_0\,
      I2 => s00_axi_wdata(16),
      I3 => \mem_data_wr[15]_i_4_n_0\,
      O => \mem_data_wr[0]_i_1_n_0\
    );
\mem_data_wr[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s00_axi_wdata(10),
      I1 => \mem_data_wr[15]_i_3_n_0\,
      I2 => s00_axi_wdata(26),
      I3 => \mem_data_wr[15]_i_4_n_0\,
      O => \mem_data_wr[10]_i_1_n_0\
    );
\mem_data_wr[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s00_axi_wdata(11),
      I1 => \mem_data_wr[15]_i_3_n_0\,
      I2 => s00_axi_wdata(27),
      I3 => \mem_data_wr[15]_i_4_n_0\,
      O => \mem_data_wr[11]_i_1_n_0\
    );
\mem_data_wr[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s00_axi_wdata(12),
      I1 => \mem_data_wr[15]_i_3_n_0\,
      I2 => s00_axi_wdata(28),
      I3 => \mem_data_wr[15]_i_4_n_0\,
      O => \mem_data_wr[12]_i_1_n_0\
    );
\mem_data_wr[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s00_axi_wdata(13),
      I1 => \mem_data_wr[15]_i_3_n_0\,
      I2 => s00_axi_wdata(29),
      I3 => \mem_data_wr[15]_i_4_n_0\,
      O => \mem_data_wr[13]_i_1_n_0\
    );
\mem_data_wr[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s00_axi_wdata(14),
      I1 => \mem_data_wr[15]_i_3_n_0\,
      I2 => s00_axi_wdata(30),
      I3 => \mem_data_wr[15]_i_4_n_0\,
      O => \mem_data_wr[14]_i_1_n_0\
    );
\mem_data_wr[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s00_axi_wdata(15),
      I1 => \mem_data_wr[15]_i_3_n_0\,
      I2 => s00_axi_wdata(31),
      I3 => \mem_data_wr[15]_i_4_n_0\,
      O => \mem_data_wr[15]_i_2_n_0\
    );
\mem_data_wr[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => \go14_out__0\,
      O => \mem_data_wr[15]_i_3_n_0\
    );
\mem_data_wr[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000ABAA"
    )
        port map (
      I0 => state(0),
      I1 => s00_axi_wstrb(0),
      I2 => s00_axi_wstrb(1),
      I3 => \mem_data_wr[15]_i_5_n_0\,
      I4 => state(1),
      I5 => state(2),
      O => \mem_data_wr[15]_i_4_n_0\
    );
\mem_data_wr[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => s00_axi_wvalid,
      I2 => axi_arv_arr_flag,
      I3 => axi_awv_awr_flag,
      O => \mem_data_wr[15]_i_5_n_0\
    );
\mem_data_wr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \mem_data_wr[15]_i_3_n_0\,
      I2 => s00_axi_wdata(17),
      I3 => \mem_data_wr[15]_i_4_n_0\,
      O => \mem_data_wr[1]_i_1_n_0\
    );
\mem_data_wr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s00_axi_wdata(2),
      I1 => \mem_data_wr[15]_i_3_n_0\,
      I2 => s00_axi_wdata(18),
      I3 => \mem_data_wr[15]_i_4_n_0\,
      O => \mem_data_wr[2]_i_1_n_0\
    );
\mem_data_wr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s00_axi_wdata(3),
      I1 => \mem_data_wr[15]_i_3_n_0\,
      I2 => s00_axi_wdata(19),
      I3 => \mem_data_wr[15]_i_4_n_0\,
      O => \mem_data_wr[3]_i_1_n_0\
    );
\mem_data_wr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s00_axi_wdata(4),
      I1 => \mem_data_wr[15]_i_3_n_0\,
      I2 => s00_axi_wdata(20),
      I3 => \mem_data_wr[15]_i_4_n_0\,
      O => \mem_data_wr[4]_i_1_n_0\
    );
\mem_data_wr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s00_axi_wdata(5),
      I1 => \mem_data_wr[15]_i_3_n_0\,
      I2 => s00_axi_wdata(21),
      I3 => \mem_data_wr[15]_i_4_n_0\,
      O => \mem_data_wr[5]_i_1_n_0\
    );
\mem_data_wr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s00_axi_wdata(6),
      I1 => \mem_data_wr[15]_i_3_n_0\,
      I2 => s00_axi_wdata(22),
      I3 => \mem_data_wr[15]_i_4_n_0\,
      O => \mem_data_wr[6]_i_1_n_0\
    );
\mem_data_wr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s00_axi_wdata(7),
      I1 => \mem_data_wr[15]_i_3_n_0\,
      I2 => s00_axi_wdata(23),
      I3 => \mem_data_wr[15]_i_4_n_0\,
      O => \mem_data_wr[7]_i_1_n_0\
    );
\mem_data_wr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s00_axi_wdata(8),
      I1 => \mem_data_wr[15]_i_3_n_0\,
      I2 => s00_axi_wdata(24),
      I3 => \mem_data_wr[15]_i_4_n_0\,
      O => \mem_data_wr[8]_i_1_n_0\
    );
\mem_data_wr[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s00_axi_wdata(9),
      I1 => \mem_data_wr[15]_i_3_n_0\,
      I2 => s00_axi_wdata(25),
      I3 => \mem_data_wr[15]_i_4_n_0\,
      O => \mem_data_wr[9]_i_1_n_0\
    );
\mem_data_wr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_17,
      D => \mem_data_wr[0]_i_1_n_0\,
      Q => mem_data_wr(0),
      R => reset_p
    );
\mem_data_wr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_17,
      D => \mem_data_wr[10]_i_1_n_0\,
      Q => mem_data_wr(10),
      R => reset_p
    );
\mem_data_wr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_17,
      D => \mem_data_wr[11]_i_1_n_0\,
      Q => mem_data_wr(11),
      R => reset_p
    );
\mem_data_wr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_17,
      D => \mem_data_wr[12]_i_1_n_0\,
      Q => mem_data_wr(12),
      R => reset_p
    );
\mem_data_wr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_17,
      D => \mem_data_wr[13]_i_1_n_0\,
      Q => mem_data_wr(13),
      R => reset_p
    );
\mem_data_wr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_17,
      D => \mem_data_wr[14]_i_1_n_0\,
      Q => mem_data_wr(14),
      R => reset_p
    );
\mem_data_wr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_17,
      D => \mem_data_wr[15]_i_2_n_0\,
      Q => mem_data_wr(15),
      R => reset_p
    );
\mem_data_wr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_17,
      D => \mem_data_wr[1]_i_1_n_0\,
      Q => mem_data_wr(1),
      R => reset_p
    );
\mem_data_wr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_17,
      D => \mem_data_wr[2]_i_1_n_0\,
      Q => mem_data_wr(2),
      R => reset_p
    );
\mem_data_wr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_17,
      D => \mem_data_wr[3]_i_1_n_0\,
      Q => mem_data_wr(3),
      R => reset_p
    );
\mem_data_wr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_17,
      D => \mem_data_wr[4]_i_1_n_0\,
      Q => mem_data_wr(4),
      R => reset_p
    );
\mem_data_wr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_17,
      D => \mem_data_wr[5]_i_1_n_0\,
      Q => mem_data_wr(5),
      R => reset_p
    );
\mem_data_wr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_17,
      D => \mem_data_wr[6]_i_1_n_0\,
      Q => mem_data_wr(6),
      R => reset_p
    );
\mem_data_wr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_17,
      D => \mem_data_wr[7]_i_1_n_0\,
      Q => mem_data_wr(7),
      R => reset_p
    );
\mem_data_wr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_17,
      D => \mem_data_wr[8]_i_1_n_0\,
      Q => mem_data_wr(8),
      R => reset_p
    );
\mem_data_wr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => AsyncPSRAMinst_n_17,
      D => \mem_data_wr[9]_i_1_n_0\,
      Q => mem_data_wr(9),
      R => reset_p
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => '0',
      DI(3) => minusOp_carry_i_1_n_0,
      DI(2) => minusOp_carry_i_2_n_0,
      DI(1) => minusOp_carry_i_3_n_0,
      DI(0) => '0',
      O(3 downto 0) => minusOp(5 downto 2),
      S(3) => minusOp_carry_i_4_n_0,
      S(2) => minusOp_carry_i_5_n_0,
      S(1) => minusOp_carry_i_6_n_0,
      S(0) => minusOp_carry_i_7_n_0
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \minusOp_carry__0_i_1_n_0\,
      DI(2) => \minusOp_carry__0_i_2_n_0\,
      DI(1) => \minusOp_carry__0_i_3_n_0\,
      DI(0) => \minusOp_carry__0_i_4_n_0\,
      O(3 downto 0) => minusOp(9 downto 6),
      S(3) => \minusOp_carry__0_i_5_n_0\,
      S(2) => \minusOp_carry__0_i_6_n_0\,
      S(1) => \minusOp_carry__0_i_7_n_0\,
      S(0) => \minusOp_carry__0_i_8_n_0\
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(8),
      I1 => s00_axi_arlen(6),
      O => \minusOp_carry__0_i_1_n_0\
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(7),
      I1 => s00_axi_arlen(5),
      O => \minusOp_carry__0_i_2_n_0\
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(6),
      I1 => s00_axi_arlen(4),
      O => \minusOp_carry__0_i_3_n_0\
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(5),
      I1 => s00_axi_arlen(3),
      O => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => s00_axi_arlen(6),
      I1 => L(8),
      I2 => s00_axi_arlen(7),
      I3 => L(9),
      O => \minusOp_carry__0_i_5_n_0\
    );
\minusOp_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => s00_axi_arlen(5),
      I1 => L(7),
      I2 => s00_axi_arlen(6),
      I3 => L(8),
      O => \minusOp_carry__0_i_6_n_0\
    );
\minusOp_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => s00_axi_arlen(4),
      I1 => L(6),
      I2 => s00_axi_arlen(5),
      I3 => L(7),
      O => \minusOp_carry__0_i_7_n_0\
    );
\minusOp_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => s00_axi_arlen(3),
      I1 => L(5),
      I2 => s00_axi_arlen(4),
      I3 => L(6),
      O => \minusOp_carry__0_i_8_n_0\
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => L(12 downto 10),
      DI(0) => \minusOp_carry__1_i_1_n_0\,
      O(3 downto 0) => minusOp(13 downto 10),
      S(3) => \minusOp_carry__1_i_2_n_0\,
      S(2) => \minusOp_carry__1_i_3_n_0\,
      S(1) => \minusOp_carry__1_i_4_n_0\,
      S(0) => \minusOp_carry__1_i_5_n_0\
    );
\minusOp_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(9),
      I1 => s00_axi_arlen(7),
      O => \minusOp_carry__1_i_1_n_0\
    );
\minusOp_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(12),
      I1 => L(13),
      O => \minusOp_carry__1_i_2_n_0\
    );
\minusOp_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(11),
      I1 => L(12),
      O => \minusOp_carry__1_i_3_n_0\
    );
\minusOp_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(10),
      I1 => L(11),
      O => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => s00_axi_arlen(7),
      I1 => L(9),
      I2 => L(10),
      O => \minusOp_carry__1_i_5_n_0\
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3) => \minusOp_carry__2_n_0\,
      CO(2) => \minusOp_carry__2_n_1\,
      CO(1) => \minusOp_carry__2_n_2\,
      CO(0) => \minusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(16 downto 13),
      O(3 downto 0) => minusOp(17 downto 14),
      S(3) => \minusOp_carry__2_i_1_n_0\,
      S(2) => \minusOp_carry__2_i_2_n_0\,
      S(1) => \minusOp_carry__2_i_3_n_0\,
      S(0) => \minusOp_carry__2_i_4_n_0\
    );
\minusOp_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(16),
      I1 => L(17),
      O => \minusOp_carry__2_i_1_n_0\
    );
\minusOp_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(15),
      I1 => L(16),
      O => \minusOp_carry__2_i_2_n_0\
    );
\minusOp_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(14),
      I1 => L(15),
      O => \minusOp_carry__2_i_3_n_0\
    );
\minusOp_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(13),
      I1 => L(14),
      O => \minusOp_carry__2_i_4_n_0\
    );
\minusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__2_n_0\,
      CO(3) => \minusOp_carry__3_n_0\,
      CO(2) => \minusOp_carry__3_n_1\,
      CO(1) => \minusOp_carry__3_n_2\,
      CO(0) => \minusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(20 downto 17),
      O(3 downto 0) => minusOp(21 downto 18),
      S(3) => \minusOp_carry__3_i_1_n_0\,
      S(2) => \minusOp_carry__3_i_2_n_0\,
      S(1) => \minusOp_carry__3_i_3_n_0\,
      S(0) => \minusOp_carry__3_i_4_n_0\
    );
\minusOp_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(20),
      I1 => L(21),
      O => \minusOp_carry__3_i_1_n_0\
    );
\minusOp_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(19),
      I1 => L(20),
      O => \minusOp_carry__3_i_2_n_0\
    );
\minusOp_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(18),
      I1 => L(19),
      O => \minusOp_carry__3_i_3_n_0\
    );
\minusOp_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(17),
      I1 => L(18),
      O => \minusOp_carry__3_i_4_n_0\
    );
\minusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__3_n_0\,
      CO(3 downto 1) => \NLW_minusOp_carry__4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \minusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => L(21),
      O(3 downto 2) => \NLW_minusOp_carry__4_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => minusOp(23 downto 22),
      S(3 downto 2) => B"00",
      S(1) => \minusOp_carry__4_i_1_n_0\,
      S(0) => \minusOp_carry__4_i_2_n_0\
    );
\minusOp_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(22),
      I1 => L(23),
      O => \minusOp_carry__4_i_1_n_0\
    );
\minusOp_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(21),
      I1 => L(22),
      O => \minusOp_carry__4_i_2_n_0\
    );
minusOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(4),
      I1 => s00_axi_arlen(2),
      O => minusOp_carry_i_1_n_0
    );
minusOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => L(3),
      I1 => s00_axi_arlen(1),
      O => minusOp_carry_i_2_n_0
    );
minusOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => L(2),
      I1 => s00_axi_arlen(0),
      O => minusOp_carry_i_3_n_0
    );
minusOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => s00_axi_arlen(2),
      I1 => L(4),
      I2 => s00_axi_arlen(3),
      I3 => L(5),
      O => minusOp_carry_i_4_n_0
    );
minusOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => s00_axi_arlen(1),
      I1 => L(3),
      I2 => s00_axi_arlen(2),
      I3 => L(4),
      O => minusOp_carry_i_5_n_0
    );
minusOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => s00_axi_arlen(0),
      I1 => L(2),
      I2 => s00_axi_arlen(1),
      I3 => L(3),
      O => minusOp_carry_i_6_n_0
    );
minusOp_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s00_axi_arlen(0),
      I1 => L(2),
      O => minusOp_carry_i_7_n_0
    );
\minusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp_inferred__0/i__carry_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => '0',
      O(3) => \minusOp_inferred__0/i__carry_n_4\,
      O(2) => \minusOp_inferred__0/i__carry_n_5\,
      O(1) => \minusOp_inferred__0/i__carry_n_6\,
      O(0) => \minusOp_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_4__0_n_0\,
      S(2) => \i__carry_i_5__0_n_0\,
      S(1) => \i__carry_i_6__0_n_0\,
      S(0) => \i__carry_i_7_n_0\
    );
\minusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3) => \minusOp_inferred__0/i__carry__0_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__0_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__0_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\minusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \axi_awaddr_reg_n_0_[12]\,
      DI(2) => \axi_awaddr_reg_n_0_[11]\,
      DI(1) => \axi_awaddr_reg_n_0_[10]\,
      DI(0) => \i__carry__1_i_1_n_0\,
      O(3) => \minusOp_inferred__0/i__carry__1_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__1_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__1_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_2_n_0\,
      S(2) => \i__carry__1_i_3_n_0\,
      S(1) => \i__carry__1_i_4_n_0\,
      S(0) => \i__carry__1_i_5_n_0\
    );
\minusOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__1_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__2_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__2_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__2_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \axi_awaddr_reg_n_0_[16]\,
      DI(2) => \axi_awaddr_reg_n_0_[15]\,
      DI(1) => \axi_awaddr_reg_n_0_[14]\,
      DI(0) => \axi_awaddr_reg_n_0_[13]\,
      O(3) => \minusOp_inferred__0/i__carry__2_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__2_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__2_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__2_n_7\,
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__2_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__3_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__3_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__3_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \axi_awaddr_reg_n_0_[20]\,
      DI(2) => \axi_awaddr_reg_n_0_[19]\,
      DI(1) => \axi_awaddr_reg_n_0_[18]\,
      DI(0) => \axi_awaddr_reg_n_0_[17]\,
      O(3) => \minusOp_inferred__0/i__carry__3_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__3_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__3_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__3_n_7\,
      S(3) => \i__carry__3_i_1_n_0\,
      S(2) => \i__carry__3_i_2_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__3_n_0\,
      CO(3 downto 1) => \NLW_minusOp_inferred__0/i__carry__4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \minusOp_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \axi_awaddr_reg_n_0_[21]\,
      O(3 downto 2) => \NLW_minusOp_inferred__0/i__carry__4_O_UNCONNECTED\(3 downto 2),
      O(1) => \minusOp_inferred__0/i__carry__4_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__4_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i__carry__4_i_1_n_0\,
      S(0) => \i__carry__4_i_2_n_0\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => L(2),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \plusOp__1\(6 downto 3),
      S(3 downto 0) => L(6 downto 3)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \plusOp__1\(10 downto 7),
      S(3 downto 0) => L(10 downto 7)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \plusOp__1\(14 downto 11),
      S(3 downto 0) => L(14 downto 11)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \plusOp__1\(18 downto 15),
      S(3 downto 0) => L(18 downto 15)
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2) => \plusOp_carry__3_n_1\,
      CO(1) => \plusOp_carry__3_n_2\,
      CO(0) => \plusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \plusOp__1\(22 downto 19),
      S(3 downto 0) => L(22 downto 19)
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3 downto 0) => \NLW_plusOp_carry__4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_plusOp_carry__4_O_UNCONNECTED\(3 downto 1),
      O(0) => \plusOp__1\(23),
      S(3 downto 1) => B"000",
      S(0) => L(23)
    );
\plusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp_inferred__0/i__carry_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry_n_3\,
      CYINIT => \axi_awaddr_reg_n_0_[2]\,
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_inferred__0/i__carry_n_4\,
      O(2) => \plusOp_inferred__0/i__carry_n_5\,
      O(1) => \plusOp_inferred__0/i__carry_n_6\,
      O(0) => \plusOp_inferred__0/i__carry_n_7\,
      S(3) => \axi_awaddr_reg_n_0_[6]\,
      S(2) => \axi_awaddr_reg_n_0_[5]\,
      S(1) => \axi_awaddr_reg_n_0_[4]\,
      S(0) => \axi_awaddr_reg_n_0_[3]\
    );
\plusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_inferred__0/i__carry__0_n_4\,
      O(2) => \plusOp_inferred__0/i__carry__0_n_5\,
      O(1) => \plusOp_inferred__0/i__carry__0_n_6\,
      O(0) => \plusOp_inferred__0/i__carry__0_n_7\,
      S(3) => \axi_awaddr_reg_n_0_[10]\,
      S(2) => \axi_awaddr_reg_n_0_[9]\,
      S(1) => \axi_awaddr_reg_n_0_[8]\,
      S(0) => \axi_awaddr_reg_n_0_[7]\
    );
\plusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_inferred__0/i__carry__1_n_4\,
      O(2) => \plusOp_inferred__0/i__carry__1_n_5\,
      O(1) => \plusOp_inferred__0/i__carry__1_n_6\,
      O(0) => \plusOp_inferred__0/i__carry__1_n_7\,
      S(3) => \axi_awaddr_reg_n_0_[14]\,
      S(2) => \axi_awaddr_reg_n_0_[13]\,
      S(1) => \axi_awaddr_reg_n_0_[12]\,
      S(0) => \axi_awaddr_reg_n_0_[11]\
    );
\plusOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__1_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__2_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__2_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__2_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_inferred__0/i__carry__2_n_4\,
      O(2) => \plusOp_inferred__0/i__carry__2_n_5\,
      O(1) => \plusOp_inferred__0/i__carry__2_n_6\,
      O(0) => \plusOp_inferred__0/i__carry__2_n_7\,
      S(3) => \axi_awaddr_reg_n_0_[18]\,
      S(2) => \axi_awaddr_reg_n_0_[17]\,
      S(1) => \axi_awaddr_reg_n_0_[16]\,
      S(0) => \axi_awaddr_reg_n_0_[15]\
    );
\plusOp_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__2_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__3_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__3_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__3_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_inferred__0/i__carry__3_n_4\,
      O(2) => \plusOp_inferred__0/i__carry__3_n_5\,
      O(1) => \plusOp_inferred__0/i__carry__3_n_6\,
      O(0) => \plusOp_inferred__0/i__carry__3_n_7\,
      S(3) => \axi_awaddr_reg_n_0_[22]\,
      S(2) => \axi_awaddr_reg_n_0_[21]\,
      S(1) => \axi_awaddr_reg_n_0_[20]\,
      S(0) => \axi_awaddr_reg_n_0_[19]\
    );
\plusOp_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__3_n_0\,
      CO(3 downto 0) => \NLW_plusOp_inferred__0/i__carry__4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_plusOp_inferred__0/i__carry__4_O_UNCONNECTED\(3 downto 1),
      O(0) => \plusOp_inferred__0/i__carry__4_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \axi_awaddr_reg_n_0_[23]\
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80B0FFFF80B00000"
    )
        port map (
      I0 => \state[0]_i_2_n_0\,
      I1 => \next_state18_out__0\,
      I2 => \state[0]_i_3_n_0\,
      I3 => \axi_araddr_reg_n_0_[1]\,
      I4 => AsyncPSRAMinst_n_11,
      I5 => state(0),
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => s00_axi_wstrb(1),
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      O => \state[0]_i_3_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFFEEEA0000"
    )
        port map (
      I0 => AsyncPSRAMinst_n_15,
      I1 => \state[1]_i_3_n_0\,
      I2 => s00_axi_wstrb(2),
      I3 => s00_axi_wstrb(3),
      I4 => AsyncPSRAMinst_n_11,
      I5 => state(1),
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      O => \state[1]_i_3_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFF0040000"
    )
        port map (
      I0 => \next_state18_out__0\,
      I1 => \axi_araddr_reg_n_0_[1]\,
      I2 => state(1),
      I3 => state(0),
      I4 => AsyncPSRAMinst_n_11,
      I5 => state(2),
      O => \state[2]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      R => reset_p
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => reset_p
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => state(2),
      R => reset_p
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Fast_IP_Clock_psram_ip_0_0_psram_ip_v1_0 is
  port (
    mem_cen_i_reg : out STD_LOGIC;
    MEM_ADDR_OUT : out STD_LOGIC_VECTOR ( 22 downto 0 );
    MEM_OEN : out STD_LOGIC;
    MEM_WEN : out STD_LOGIC;
    MEM_BEN : out STD_LOGIC_VECTOR ( 1 downto 0 );
    MEM_CRE : out STD_LOGIC;
    MEM_DATA_O : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rlast : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_wready_reg : out STD_LOGIC;
    axi_awready_reg : out STD_LOGIC;
    MEM_DATA_T : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    MEM_DATA_I : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 22 downto 0 );
    s00_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 21 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wlast : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Fast_IP_Clock_psram_ip_0_0_psram_ip_v1_0 : entity is "psram_ip_v1_0";
end Fast_IP_Clock_psram_ip_0_0_psram_ip_v1_0;

architecture STRUCTURE of Fast_IP_Clock_psram_ip_0_0_psram_ip_v1_0 is
begin
psram_ip_v1_0_S00_AXI_inst: entity work.Fast_IP_Clock_psram_ip_0_0_psram_ip_v1_0_S00_AXI
     port map (
      MEM_ADDR_OUT(22 downto 0) => MEM_ADDR_OUT(22 downto 0),
      MEM_BEN(1 downto 0) => MEM_BEN(1 downto 0),
      MEM_CRE => MEM_CRE,
      MEM_DATA_I(15 downto 0) => MEM_DATA_I(15 downto 0),
      MEM_DATA_O(15 downto 0) => MEM_DATA_O(15 downto 0),
      MEM_DATA_T(0) => MEM_DATA_T(0),
      MEM_OEN => MEM_OEN,
      MEM_WEN => MEM_WEN,
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      axi_wready_reg_0 => axi_wready_reg,
      mem_cen_i_reg => mem_cen_i_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(22 downto 0) => s00_axi_araddr(22 downto 0),
      s00_axi_arburst(1 downto 0) => s00_axi_arburst(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arlen(7 downto 0) => s00_axi_arlen(7 downto 0),
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(21 downto 0) => s00_axi_awaddr(21 downto 0),
      s00_axi_awburst(1 downto 0) => s00_axi_awburst(1 downto 0),
      s00_axi_awlen(7 downto 0) => s00_axi_awlen(7 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rlast => s00_axi_rlast,
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wlast => s00_axi_wlast,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Fast_IP_Clock_psram_ip_0_0 is
  port (
    MEM_ADDR_OUT : out STD_LOGIC_VECTOR ( 22 downto 0 );
    MEM_CEN : out STD_LOGIC;
    MEM_OEN : out STD_LOGIC;
    MEM_WEN : out STD_LOGIC;
    MEM_BEN : out STD_LOGIC_VECTOR ( 1 downto 0 );
    MEM_ADV : out STD_LOGIC;
    MEM_CRE : out STD_LOGIC;
    MEM_DATA_I : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MEM_DATA_O : out STD_LOGIC_VECTOR ( 15 downto 0 );
    MEM_DATA_T : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s00_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awlock : in STD_LOGIC;
    s00_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wlast : in STD_LOGIC;
    s00_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s00_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arlock : in STD_LOGIC;
    s00_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rlast : out STD_LOGIC;
    s00_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Fast_IP_Clock_psram_ip_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Fast_IP_Clock_psram_ip_0_0 : entity is "Fast_IP_Clock_psram_ip_0_0,psram_ip_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Fast_IP_Clock_psram_ip_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Fast_IP_Clock_psram_ip_0_0 : entity is "psram_ip_v1_0,Vivado 2018.3";
end Fast_IP_Clock_psram_ip_0_0;

architecture STRUCTURE of Fast_IP_Clock_psram_ip_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^mem_data_t\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s00_axi_arid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s00_axi_awid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of MEM_ADV : signal is "xilinx.com:interface:emc:1.0 psram_rtl ADV_LDN";
  attribute x_interface_info of MEM_CEN : signal is "xilinx.com:interface:emc:1.0 psram_rtl CE_N";
  attribute x_interface_info of MEM_CRE : signal is "xilinx.com:interface:emc:1.0 psram_rtl CRE";
  attribute x_interface_info of MEM_OEN : signal is "xilinx.com:interface:emc:1.0 psram_rtl OEN";
  attribute x_interface_info of MEM_WEN : signal is "xilinx.com:interface:emc:1.0 psram_rtl WEN";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RLAST";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WLAST";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of MEM_ADDR_OUT : signal is "xilinx.com:interface:emc:1.0 psram_rtl ADDR";
  attribute x_interface_info of MEM_BEN : signal is "xilinx.com:interface:emc:1.0 psram_rtl BEN";
  attribute x_interface_info of MEM_DATA_I : signal is "xilinx.com:interface:emc:1.0 psram_rtl DQ_I";
  attribute x_interface_info of MEM_DATA_O : signal is "xilinx.com:interface:emc:1.0 psram_rtl DQ_O";
  attribute x_interface_info of MEM_DATA_T : signal is "xilinx.com:interface:emc:1.0 psram_rtl DQ_T";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST";
  attribute x_interface_info of s00_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE";
  attribute x_interface_info of s00_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARID";
  attribute x_interface_info of s00_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS";
  attribute x_interface_info of s00_axi_arregion : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION";
  attribute x_interface_info of s00_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE";
  attribute x_interface_info of s00_axi_aruser : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARUSER";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_info of s00_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST";
  attribute x_interface_info of s00_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE";
  attribute x_interface_info of s00_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWID";
  attribute x_interface_parameter of s00_axi_awid : signal is "XIL_INTERFACENAME S00_AXI, WIZ.DATA_WIDTH 32, WIZ.MEMORY_SIZE 1024, SUPPORTS_NARROW_BURST 1, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 24, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS";
  attribute x_interface_info of s00_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION";
  attribute x_interface_info of s00_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE";
  attribute x_interface_info of s00_axi_awuser : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWUSER";
  attribute x_interface_info of s00_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BID";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_buser : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BUSER";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RID";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_ruser : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RUSER";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute x_interface_info of s00_axi_wuser : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WUSER";
begin
  MEM_ADV <= \<const0>\;
  MEM_DATA_T(15) <= \^mem_data_t\(0);
  MEM_DATA_T(14) <= \^mem_data_t\(0);
  MEM_DATA_T(13) <= \^mem_data_t\(0);
  MEM_DATA_T(12) <= \^mem_data_t\(0);
  MEM_DATA_T(11) <= \^mem_data_t\(0);
  MEM_DATA_T(10) <= \^mem_data_t\(0);
  MEM_DATA_T(9) <= \^mem_data_t\(0);
  MEM_DATA_T(8) <= \^mem_data_t\(0);
  MEM_DATA_T(7) <= \^mem_data_t\(0);
  MEM_DATA_T(6) <= \^mem_data_t\(0);
  MEM_DATA_T(5) <= \^mem_data_t\(0);
  MEM_DATA_T(4) <= \^mem_data_t\(0);
  MEM_DATA_T(3) <= \^mem_data_t\(0);
  MEM_DATA_T(2) <= \^mem_data_t\(0);
  MEM_DATA_T(1) <= \^mem_data_t\(0);
  MEM_DATA_T(0) <= \^mem_data_t\(0);
  \^s00_axi_arid\(1 downto 0) <= s00_axi_arid(1 downto 0);
  \^s00_axi_awid\(1 downto 0) <= s00_axi_awid(1 downto 0);
  s00_axi_bid(1 downto 0) <= \^s00_axi_awid\(1 downto 0);
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_buser(0) <= \<const0>\;
  s00_axi_rid(1 downto 0) <= \^s00_axi_arid\(1 downto 0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  s00_axi_ruser(0) <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.Fast_IP_Clock_psram_ip_0_0_psram_ip_v1_0
     port map (
      MEM_ADDR_OUT(22 downto 0) => MEM_ADDR_OUT(22 downto 0),
      MEM_BEN(1 downto 0) => MEM_BEN(1 downto 0),
      MEM_CRE => MEM_CRE,
      MEM_DATA_I(15 downto 0) => MEM_DATA_I(15 downto 0),
      MEM_DATA_O(15 downto 0) => MEM_DATA_O(15 downto 0),
      MEM_DATA_T(0) => \^mem_data_t\(0),
      MEM_OEN => MEM_OEN,
      MEM_WEN => MEM_WEN,
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
      axi_wready_reg => s00_axi_wready,
      mem_cen_i_reg => MEM_CEN,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(22 downto 0) => s00_axi_araddr(23 downto 1),
      s00_axi_arburst(1 downto 0) => s00_axi_arburst(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arlen(7 downto 0) => s00_axi_arlen(7 downto 0),
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(21 downto 0) => s00_axi_awaddr(23 downto 2),
      s00_axi_awburst(1 downto 0) => s00_axi_awburst(1 downto 0),
      s00_axi_awlen(7 downto 0) => s00_axi_awlen(7 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rlast => s00_axi_rlast,
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wlast => s00_axi_wlast,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
