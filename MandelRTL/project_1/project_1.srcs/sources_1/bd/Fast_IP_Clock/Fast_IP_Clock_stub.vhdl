-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Jan 29 15:56:33 2019
-- Host        : AndrewSi64 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/andrewsi/OneDrive/fpgaproducts/Vivado/MandelRTL/project_1/project_1.srcs/sources_1/bd/Fast_IP_Clock/Fast_IP_Clock_stub.vhdl
-- Design      : Fast_IP_Clock
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Fast_IP_Clock is
  Port ( 
    btnCpuReset : in STD_LOGIC;
    clk : in STD_LOGIC;
    psram_rtl_0_addr : out STD_LOGIC_VECTOR ( 22 downto 0 );
    psram_rtl_0_adv_ldn : out STD_LOGIC;
    psram_rtl_0_ben : out STD_LOGIC_VECTOR ( 1 downto 0 );
    psram_rtl_0_ce_n : out STD_LOGIC;
    psram_rtl_0_cre : out STD_LOGIC;
    psram_rtl_0_dq_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    psram_rtl_0_dq_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    psram_rtl_0_dq_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    psram_rtl_0_oen : out STD_LOGIC;
    psram_rtl_0_wen : out STD_LOGIC;
    push_buttons_5bits_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );

end Fast_IP_Clock;

architecture stub of Fast_IP_Clock is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "btnCpuReset,clk,psram_rtl_0_addr[22:0],psram_rtl_0_adv_ldn,psram_rtl_0_ben[1:0],psram_rtl_0_ce_n,psram_rtl_0_cre,psram_rtl_0_dq_i[15:0],psram_rtl_0_dq_o[15:0],psram_rtl_0_dq_t[15:0],psram_rtl_0_oen,psram_rtl_0_wen,push_buttons_5bits_tri_i[4:0],usb_uart_rxd,usb_uart_txd";
begin
end;
