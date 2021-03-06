-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity calc_in_parms_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 7;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC;
    setup                 :out  STD_LOGIC_VECTOR(0 downto 0);
    X0_V                  :out  STD_LOGIC_VECTOR(39 downto 0);
    Y0_V                  :out  STD_LOGIC_VECTOR(39 downto 0);
    X1_V                  :out  STD_LOGIC_VECTOR(39 downto 0);
    width_V               :out  STD_LOGIC_VECTOR(11 downto 0);
    maxWidth_V            :in   STD_LOGIC_VECTOR(11 downto 0);
    maxWidth_V_ap_vld     :in   STD_LOGIC;
    unroll                :in   STD_LOGIC_VECTOR(15 downto 0);
    unroll_ap_vld         :in   STD_LOGIC;
    maxIter               :out  STD_LOGIC_VECTOR(15 downto 0)
);
end entity calc_in_parms_s_axi;

-- ------------------------Address Info-------------------
-- 0x00 : Control signals
--        bit 0  - ap_start (Read/Write/COH)
--        bit 1  - ap_done (Read/COR)
--        bit 2  - ap_idle (Read)
--        bit 3  - ap_ready (Read)
--        bit 7  - auto_restart (Read/Write)
--        others - reserved
-- 0x04 : Global Interrupt Enable Register
--        bit 0  - Global Interrupt Enable (Read/Write)
--        others - reserved
-- 0x08 : IP Interrupt Enable Register (Read/Write)
--        bit 0  - Channel 0 (ap_done)
--        bit 1  - Channel 1 (ap_ready)
--        others - reserved
-- 0x0c : IP Interrupt Status Register (Read/TOW)
--        bit 0  - Channel 0 (ap_done)
--        bit 1  - Channel 1 (ap_ready)
--        others - reserved
-- 0x10 : Data signal of setup
--        bit 0  - setup[0] (Read/Write)
--        others - reserved
-- 0x14 : reserved
-- 0x18 : Data signal of X0_V
--        bit 31~0 - X0_V[31:0] (Read/Write)
-- 0x1c : Data signal of X0_V
--        bit 7~0 - X0_V[39:32] (Read/Write)
--        others  - reserved
-- 0x20 : reserved
-- 0x24 : Data signal of Y0_V
--        bit 31~0 - Y0_V[31:0] (Read/Write)
-- 0x28 : Data signal of Y0_V
--        bit 7~0 - Y0_V[39:32] (Read/Write)
--        others  - reserved
-- 0x2c : reserved
-- 0x30 : Data signal of X1_V
--        bit 31~0 - X1_V[31:0] (Read/Write)
-- 0x34 : Data signal of X1_V
--        bit 7~0 - X1_V[39:32] (Read/Write)
--        others  - reserved
-- 0x38 : reserved
-- 0x3c : Data signal of width_V
--        bit 11~0 - width_V[11:0] (Read/Write)
--        others   - reserved
-- 0x40 : reserved
-- 0x44 : Data signal of maxWidth_V
--        bit 11~0 - maxWidth_V[11:0] (Read)
--        others   - reserved
-- 0x48 : Control signal of maxWidth_V
--        bit 0  - maxWidth_V_ap_vld (Read/COR)
--        others - reserved
-- 0x4c : Data signal of unroll
--        bit 15~0 - unroll[15:0] (Read)
--        others   - reserved
-- 0x50 : Control signal of unroll
--        bit 0  - unroll_ap_vld (Read/COR)
--        others - reserved
-- 0x54 : Data signal of maxIter
--        bit 15~0 - maxIter[15:0] (Read/Write)
--        others   - reserved
-- 0x58 : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of calc_in_parms_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL           : INTEGER := 16#00#;
    constant ADDR_GIE               : INTEGER := 16#04#;
    constant ADDR_IER               : INTEGER := 16#08#;
    constant ADDR_ISR               : INTEGER := 16#0c#;
    constant ADDR_SETUP_DATA_0      : INTEGER := 16#10#;
    constant ADDR_SETUP_CTRL        : INTEGER := 16#14#;
    constant ADDR_X0_V_DATA_0       : INTEGER := 16#18#;
    constant ADDR_X0_V_DATA_1       : INTEGER := 16#1c#;
    constant ADDR_X0_V_CTRL         : INTEGER := 16#20#;
    constant ADDR_Y0_V_DATA_0       : INTEGER := 16#24#;
    constant ADDR_Y0_V_DATA_1       : INTEGER := 16#28#;
    constant ADDR_Y0_V_CTRL         : INTEGER := 16#2c#;
    constant ADDR_X1_V_DATA_0       : INTEGER := 16#30#;
    constant ADDR_X1_V_DATA_1       : INTEGER := 16#34#;
    constant ADDR_X1_V_CTRL         : INTEGER := 16#38#;
    constant ADDR_WIDTH_V_DATA_0    : INTEGER := 16#3c#;
    constant ADDR_WIDTH_V_CTRL      : INTEGER := 16#40#;
    constant ADDR_MAXWIDTH_V_DATA_0 : INTEGER := 16#44#;
    constant ADDR_MAXWIDTH_V_CTRL   : INTEGER := 16#48#;
    constant ADDR_UNROLL_DATA_0     : INTEGER := 16#4c#;
    constant ADDR_UNROLL_CTRL       : INTEGER := 16#50#;
    constant ADDR_MAXITER_DATA_0    : INTEGER := 16#54#;
    constant ADDR_MAXITER_CTRL      : INTEGER := 16#58#;
    constant ADDR_BITS         : INTEGER := 7;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(31 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(31 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC;
    signal int_ap_ready        : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_setup           : UNSIGNED(0 downto 0) := (others => '0');
    signal int_X0_V            : UNSIGNED(39 downto 0) := (others => '0');
    signal int_Y0_V            : UNSIGNED(39 downto 0) := (others => '0');
    signal int_X1_V            : UNSIGNED(39 downto 0) := (others => '0');
    signal int_width_V         : UNSIGNED(11 downto 0) := (others => '0');
    signal int_maxWidth_V      : UNSIGNED(11 downto 0) := (others => '0');
    signal int_maxWidth_V_ap_vld : STD_LOGIC;
    signal int_unroll          : UNSIGNED(15 downto 0) := (others => '0');
    signal int_unroll_ap_vld   : STD_LOGIC;
    signal int_maxIter         : UNSIGNED(15 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------

-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data <= (7 => int_auto_restart, 3 => int_ap_ready, 2 => int_ap_idle, 1 => int_ap_done, 0 => int_ap_start, others => '0');
                    when ADDR_GIE =>
                        rdata_data <= (0 => int_gie, others => '0');
                    when ADDR_IER =>
                        rdata_data <= (1 => int_ier(1), 0 => int_ier(0), others => '0');
                    when ADDR_ISR =>
                        rdata_data <= (1 => int_isr(1), 0 => int_isr(0), others => '0');
                    when ADDR_SETUP_DATA_0 =>
                        rdata_data <= RESIZE(int_setup(0 downto 0), 32);
                    when ADDR_X0_V_DATA_0 =>
                        rdata_data <= RESIZE(int_X0_V(31 downto 0), 32);
                    when ADDR_X0_V_DATA_1 =>
                        rdata_data <= RESIZE(int_X0_V(39 downto 32), 32);
                    when ADDR_Y0_V_DATA_0 =>
                        rdata_data <= RESIZE(int_Y0_V(31 downto 0), 32);
                    when ADDR_Y0_V_DATA_1 =>
                        rdata_data <= RESIZE(int_Y0_V(39 downto 32), 32);
                    when ADDR_X1_V_DATA_0 =>
                        rdata_data <= RESIZE(int_X1_V(31 downto 0), 32);
                    when ADDR_X1_V_DATA_1 =>
                        rdata_data <= RESIZE(int_X1_V(39 downto 32), 32);
                    when ADDR_WIDTH_V_DATA_0 =>
                        rdata_data <= RESIZE(int_width_V(11 downto 0), 32);
                    when ADDR_MAXWIDTH_V_DATA_0 =>
                        rdata_data <= RESIZE(int_maxWidth_V(11 downto 0), 32);
                    when ADDR_MAXWIDTH_V_CTRL =>
                        rdata_data <= (0 => int_maxWidth_V_ap_vld, others => '0');
                    when ADDR_UNROLL_DATA_0 =>
                        rdata_data <= RESIZE(int_unroll(15 downto 0), 32);
                    when ADDR_UNROLL_CTRL =>
                        rdata_data <= (0 => int_unroll_ap_vld, others => '0');
                    when ADDR_MAXITER_DATA_0 =>
                        rdata_data <= RESIZE(int_maxIter(15 downto 0), 32);
                    when others =>
                        rdata_data <= (others => '0');
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_gie and (int_isr(0) or int_isr(1));
    ap_start             <= int_ap_start;
    setup                <= STD_LOGIC_VECTOR(int_setup);
    X0_V                 <= STD_LOGIC_VECTOR(int_X0_V);
    Y0_V                 <= STD_LOGIC_VECTOR(int_Y0_V);
    X1_V                 <= STD_LOGIC_VECTOR(int_X1_V);
    width_V              <= STD_LOGIC_VECTOR(int_width_V);
    maxIter              <= STD_LOGIC_VECTOR(int_maxIter);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (ap_done = '1') then
                    int_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_ready <= ap_ready;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= "00";
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SETUP_DATA_0) then
                    int_setup(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_setup(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_X0_V_DATA_0) then
                    int_X0_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_X0_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_X0_V_DATA_1) then
                    int_X0_V(39 downto 32) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_X0_V(39 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_Y0_V_DATA_0) then
                    int_Y0_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_Y0_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_Y0_V_DATA_1) then
                    int_Y0_V(39 downto 32) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_Y0_V(39 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_X1_V_DATA_0) then
                    int_X1_V(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_X1_V(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_X1_V_DATA_1) then
                    int_X1_V(39 downto 32) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_X1_V(39 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WIDTH_V_DATA_0) then
                    int_width_V(11 downto 0) <= (UNSIGNED(WDATA(11 downto 0)) and wmask(11 downto 0)) or ((not wmask(11 downto 0)) and int_width_V(11 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_maxWidth_V <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (maxWidth_V_ap_vld = '1') then
                    int_maxWidth_V <= UNSIGNED(maxWidth_V); -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_maxWidth_V_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (maxWidth_V_ap_vld = '1') then
                    int_maxWidth_V_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_MAXWIDTH_V_CTRL) then
                    int_maxWidth_V_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_unroll <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (unroll_ap_vld = '1') then
                    int_unroll <= UNSIGNED(unroll); -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_unroll_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (unroll_ap_vld = '1') then
                    int_unroll_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_UNROLL_CTRL) then
                    int_unroll_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_MAXITER_DATA_0) then
                    int_maxIter(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_maxIter(15 downto 0));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
