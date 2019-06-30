-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Jun 29 21:10:15 2019
-- Host        : AndrewSi64 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/andrewsi/Documents/GitHub/MandelViewer/MandelRTL/project_1/project_1.srcs/sources_1/bd/Fast_IP_Clock/ip/Fast_IP_Clock_clk_wiz_0_0/Fast_IP_Clock_clk_wiz_0_0_stub.vhdl
-- Design      : Fast_IP_Clock_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Fast_IP_Clock_clk_wiz_0_0 is
  Port ( 
    AXIclk : out STD_LOGIC;
    CalcClk : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end Fast_IP_Clock_clk_wiz_0_0;

architecture stub of Fast_IP_Clock_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "AXIclk,CalcClk,locked,clk_in1";
begin
end;
