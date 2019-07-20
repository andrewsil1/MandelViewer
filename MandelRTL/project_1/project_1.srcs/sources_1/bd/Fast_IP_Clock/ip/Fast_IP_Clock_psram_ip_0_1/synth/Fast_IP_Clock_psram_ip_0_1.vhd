-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: QuickSilverIP_LLC:user:psram_ip:1.1
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Fast_IP_Clock_psram_ip_0_1 IS
  PORT (
    MEM_ADDR_OUT : OUT STD_LOGIC_VECTOR(22 DOWNTO 0);
    MEM_CEN : OUT STD_LOGIC;
    MEM_OEN : OUT STD_LOGIC;
    MEM_WEN : OUT STD_LOGIC;
    MEM_BEN : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    MEM_ADV : OUT STD_LOGIC;
    MEM_CRE : OUT STD_LOGIC;
    MEM_DATA_I : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    MEM_DATA_O : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    MEM_DATA_T : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    s00_axi_aclk : IN STD_LOGIC;
    s00_axi_aresetn : IN STD_LOGIC;
    s00_axi_awid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_awaddr : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    s00_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s00_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_awlock : IN STD_LOGIC;
    s00_axi_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_awuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_awvalid : IN STD_LOGIC;
    s00_axi_awready : OUT STD_LOGIC;
    s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_wlast : IN STD_LOGIC;
    s00_axi_wuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_wvalid : IN STD_LOGIC;
    s00_axi_wready : OUT STD_LOGIC;
    s00_axi_bid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_buser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_bvalid : OUT STD_LOGIC;
    s00_axi_bready : IN STD_LOGIC;
    s00_axi_arid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_araddr : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    s00_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s00_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_arlock : IN STD_LOGIC;
    s00_axi_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_aruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_arvalid : IN STD_LOGIC;
    s00_axi_arready : OUT STD_LOGIC;
    s00_axi_rid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_rlast : OUT STD_LOGIC;
    s00_axi_ruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_rvalid : OUT STD_LOGIC;
    s00_axi_rready : IN STD_LOGIC
  );
END Fast_IP_Clock_psram_ip_0_1;

ARCHITECTURE Fast_IP_Clock_psram_ip_0_1_arch OF Fast_IP_Clock_psram_ip_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Fast_IP_Clock_psram_ip_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT psram_ip_v1_1 IS
    GENERIC (
      C_S00_AXI_ID_WIDTH : INTEGER;
      C_S00_AXI_DATA_WIDTH : INTEGER;
      C_S00_AXI_ADDR_WIDTH : INTEGER;
      C_S00_AXI_AWUSER_WIDTH : INTEGER;
      C_S00_AXI_ARUSER_WIDTH : INTEGER;
      C_S00_AXI_WUSER_WIDTH : INTEGER;
      C_S00_AXI_RUSER_WIDTH : INTEGER;
      C_S00_AXI_BUSER_WIDTH : INTEGER
    );
    PORT (
      MEM_ADDR_OUT : OUT STD_LOGIC_VECTOR(22 DOWNTO 0);
      MEM_CEN : OUT STD_LOGIC;
      MEM_OEN : OUT STD_LOGIC;
      MEM_WEN : OUT STD_LOGIC;
      MEM_BEN : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      MEM_ADV : OUT STD_LOGIC;
      MEM_CRE : OUT STD_LOGIC;
      MEM_DATA_I : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      MEM_DATA_O : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      MEM_DATA_T : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      s00_axi_aclk : IN STD_LOGIC;
      s00_axi_aresetn : IN STD_LOGIC;
      s00_axi_awid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axi_awaddr : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      s00_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s00_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_awlock : IN STD_LOGIC;
      s00_axi_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_awuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axi_awvalid : IN STD_LOGIC;
      s00_axi_awready : OUT STD_LOGIC;
      s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_wlast : IN STD_LOGIC;
      s00_axi_wuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axi_wvalid : IN STD_LOGIC;
      s00_axi_wready : OUT STD_LOGIC;
      s00_axi_bid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_buser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axi_bvalid : OUT STD_LOGIC;
      s00_axi_bready : IN STD_LOGIC;
      s00_axi_arid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axi_araddr : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      s00_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s00_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_arlock : IN STD_LOGIC;
      s00_axi_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_aruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axi_arvalid : IN STD_LOGIC;
      s00_axi_arready : OUT STD_LOGIC;
      s00_axi_rid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_rlast : OUT STD_LOGIC;
      s00_axi_ruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axi_rvalid : OUT STD_LOGIC;
      s00_axi_rready : IN STD_LOGIC
    );
  END COMPONENT psram_ip_v1_1;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF Fast_IP_Clock_psram_ip_0_1_arch: ARCHITECTURE IS "psram_ip_v1_1,Vivado 2019.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF Fast_IP_Clock_psram_ip_0_1_arch : ARCHITECTURE IS "Fast_IP_Clock_psram_ip_0_1,psram_ip_v1_1,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Fast_IP_Clock_psram_ip_0_1_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_buser: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi BUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi BID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_awid: SIGNAL IS "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 24, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1" & 
", RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_aclk: SIGNAL IS "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF MEM_DATA_T: SIGNAL IS "xilinx.com:interface:emc:1.0 PSRAM DQ_T";
  ATTRIBUTE X_INTERFACE_INFO OF MEM_DATA_O: SIGNAL IS "xilinx.com:interface:emc:1.0 PSRAM DQ_O";
  ATTRIBUTE X_INTERFACE_INFO OF MEM_DATA_I: SIGNAL IS "xilinx.com:interface:emc:1.0 PSRAM DQ_I";
  ATTRIBUTE X_INTERFACE_INFO OF MEM_CRE: SIGNAL IS "xilinx.com:interface:emc:1.0 PSRAM CRE";
  ATTRIBUTE X_INTERFACE_INFO OF MEM_ADV: SIGNAL IS "xilinx.com:interface:emc:1.0 PSRAM ADV_LDN";
  ATTRIBUTE X_INTERFACE_INFO OF MEM_BEN: SIGNAL IS "xilinx.com:interface:emc:1.0 PSRAM BEN";
  ATTRIBUTE X_INTERFACE_INFO OF MEM_WEN: SIGNAL IS "xilinx.com:interface:emc:1.0 PSRAM WEN";
  ATTRIBUTE X_INTERFACE_INFO OF MEM_OEN: SIGNAL IS "xilinx.com:interface:emc:1.0 PSRAM OEN";
  ATTRIBUTE X_INTERFACE_INFO OF MEM_CEN: SIGNAL IS "xilinx.com:interface:emc:1.0 PSRAM CE_N";
  ATTRIBUTE X_INTERFACE_INFO OF MEM_ADDR_OUT: SIGNAL IS "xilinx.com:interface:emc:1.0 PSRAM ADDR";
BEGIN
  U0 : psram_ip_v1_1
    GENERIC MAP (
      C_S00_AXI_ID_WIDTH => 1,
      C_S00_AXI_DATA_WIDTH => 32,
      C_S00_AXI_ADDR_WIDTH => 24,
      C_S00_AXI_AWUSER_WIDTH => 0,
      C_S00_AXI_ARUSER_WIDTH => 0,
      C_S00_AXI_WUSER_WIDTH => 0,
      C_S00_AXI_RUSER_WIDTH => 0,
      C_S00_AXI_BUSER_WIDTH => 0
    )
    PORT MAP (
      MEM_ADDR_OUT => MEM_ADDR_OUT,
      MEM_CEN => MEM_CEN,
      MEM_OEN => MEM_OEN,
      MEM_WEN => MEM_WEN,
      MEM_BEN => MEM_BEN,
      MEM_ADV => MEM_ADV,
      MEM_CRE => MEM_CRE,
      MEM_DATA_I => MEM_DATA_I,
      MEM_DATA_O => MEM_DATA_O,
      MEM_DATA_T => MEM_DATA_T,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_awid => s00_axi_awid,
      s00_axi_awaddr => s00_axi_awaddr,
      s00_axi_awlen => s00_axi_awlen,
      s00_axi_awsize => s00_axi_awsize,
      s00_axi_awburst => s00_axi_awburst,
      s00_axi_awlock => s00_axi_awlock,
      s00_axi_awcache => s00_axi_awcache,
      s00_axi_awprot => s00_axi_awprot,
      s00_axi_awqos => s00_axi_awqos,
      s00_axi_awregion => s00_axi_awregion,
      s00_axi_awuser => s00_axi_awuser,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_wdata => s00_axi_wdata,
      s00_axi_wstrb => s00_axi_wstrb,
      s00_axi_wlast => s00_axi_wlast,
      s00_axi_wuser => s00_axi_wuser,
      s00_axi_wvalid => s00_axi_wvalid,
      s00_axi_wready => s00_axi_wready,
      s00_axi_bid => s00_axi_bid,
      s00_axi_bresp => s00_axi_bresp,
      s00_axi_buser => s00_axi_buser,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_arid => s00_axi_arid,
      s00_axi_araddr => s00_axi_araddr,
      s00_axi_arlen => s00_axi_arlen,
      s00_axi_arsize => s00_axi_arsize,
      s00_axi_arburst => s00_axi_arburst,
      s00_axi_arlock => s00_axi_arlock,
      s00_axi_arcache => s00_axi_arcache,
      s00_axi_arprot => s00_axi_arprot,
      s00_axi_arqos => s00_axi_arqos,
      s00_axi_arregion => s00_axi_arregion,
      s00_axi_aruser => s00_axi_aruser,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_arready => s00_axi_arready,
      s00_axi_rid => s00_axi_rid,
      s00_axi_rdata => s00_axi_rdata,
      s00_axi_rresp => s00_axi_rresp,
      s00_axi_rlast => s00_axi_rlast,
      s00_axi_ruser => s00_axi_ruser,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_rready => s00_axi_rready
    );
END Fast_IP_Clock_psram_ip_0_1_arch;
