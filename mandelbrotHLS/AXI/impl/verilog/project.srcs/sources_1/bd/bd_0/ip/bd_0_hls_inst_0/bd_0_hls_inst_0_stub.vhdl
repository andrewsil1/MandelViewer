-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Jun  4 11:37:22 2019
-- Host        : AndrewSi64 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/andrewsi/Documents/GitHub/MandelViewer/mandelbrotHLS/AXI/impl/verilog/project.srcs/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_0_hls_inst_0 is
  Port ( 
    s_axi_in_parms_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_in_parms_AWVALID : in STD_LOGIC;
    s_axi_in_parms_AWREADY : out STD_LOGIC;
    s_axi_in_parms_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_in_parms_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_in_parms_WVALID : in STD_LOGIC;
    s_axi_in_parms_WREADY : out STD_LOGIC;
    s_axi_in_parms_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_in_parms_BVALID : out STD_LOGIC;
    s_axi_in_parms_BREADY : in STD_LOGIC;
    s_axi_in_parms_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_in_parms_ARVALID : in STD_LOGIC;
    s_axi_in_parms_ARREADY : out STD_LOGIC;
    s_axi_in_parms_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_in_parms_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_in_parms_RVALID : out STD_LOGIC;
    s_axi_in_parms_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_buf_r_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_buf_r_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_buf_r_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_buf_r_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buf_r_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buf_r_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_buf_r_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_AWVALID : out STD_LOGIC;
    m_axi_buf_r_AWREADY : in STD_LOGIC;
    m_axi_buf_r_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_buf_r_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_WLAST : out STD_LOGIC;
    m_axi_buf_r_WVALID : out STD_LOGIC;
    m_axi_buf_r_WREADY : in STD_LOGIC;
    m_axi_buf_r_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buf_r_BVALID : in STD_LOGIC;
    m_axi_buf_r_BREADY : out STD_LOGIC;
    m_axi_buf_r_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_buf_r_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_buf_r_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_buf_r_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buf_r_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buf_r_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_buf_r_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_ARVALID : out STD_LOGIC;
    m_axi_buf_r_ARREADY : in STD_LOGIC;
    m_axi_buf_r_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_buf_r_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buf_r_RLAST : in STD_LOGIC;
    m_axi_buf_r_RVALID : in STD_LOGIC;
    m_axi_buf_r_RREADY : out STD_LOGIC
  );

end bd_0_hls_inst_0;

architecture stub of bd_0_hls_inst_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_in_parms_AWADDR[6:0],s_axi_in_parms_AWVALID,s_axi_in_parms_AWREADY,s_axi_in_parms_WDATA[31:0],s_axi_in_parms_WSTRB[3:0],s_axi_in_parms_WVALID,s_axi_in_parms_WREADY,s_axi_in_parms_BRESP[1:0],s_axi_in_parms_BVALID,s_axi_in_parms_BREADY,s_axi_in_parms_ARADDR[6:0],s_axi_in_parms_ARVALID,s_axi_in_parms_ARREADY,s_axi_in_parms_RDATA[31:0],s_axi_in_parms_RRESP[1:0],s_axi_in_parms_RVALID,s_axi_in_parms_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_buf_r_AWADDR[31:0],m_axi_buf_r_AWLEN[7:0],m_axi_buf_r_AWSIZE[2:0],m_axi_buf_r_AWBURST[1:0],m_axi_buf_r_AWLOCK[1:0],m_axi_buf_r_AWREGION[3:0],m_axi_buf_r_AWCACHE[3:0],m_axi_buf_r_AWPROT[2:0],m_axi_buf_r_AWQOS[3:0],m_axi_buf_r_AWVALID,m_axi_buf_r_AWREADY,m_axi_buf_r_WDATA[31:0],m_axi_buf_r_WSTRB[3:0],m_axi_buf_r_WLAST,m_axi_buf_r_WVALID,m_axi_buf_r_WREADY,m_axi_buf_r_BRESP[1:0],m_axi_buf_r_BVALID,m_axi_buf_r_BREADY,m_axi_buf_r_ARADDR[31:0],m_axi_buf_r_ARLEN[7:0],m_axi_buf_r_ARSIZE[2:0],m_axi_buf_r_ARBURST[1:0],m_axi_buf_r_ARLOCK[1:0],m_axi_buf_r_ARREGION[3:0],m_axi_buf_r_ARCACHE[3:0],m_axi_buf_r_ARPROT[2:0],m_axi_buf_r_ARQOS[3:0],m_axi_buf_r_ARVALID,m_axi_buf_r_ARREADY,m_axi_buf_r_RDATA[31:0],m_axi_buf_r_RRESP[1:0],m_axi_buf_r_RLAST,m_axi_buf_r_RVALID,m_axi_buf_r_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "calc,Vivado 2019.1";
begin
end;
