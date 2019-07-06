
`timescale 1 ns / 1 ps

	module SevenSegController_v1_0 #
	(
	
	    // This design implements a flexible AXI4LITE interface to control seven-segment LED displays with several register-controlled features, including:
	    // * Parametric number of display digits from 1 to 8, which can be set at design time.  Defaults to 8 to match the Digilent Nexys4 series boards. 
	    // * 32-bit register for display value, addresses 04-07
	    // * Control register determines whether display is direct hexadecimal decoding of the display value (set to 0), or decimal (set to 1). Decimal decoding implemented via the "double dabble" algorithm - see on Wikipedia. (Slave register 0, addresses 00-03)
	    // * Decimal point display implemented via 8-bit bitfield (LSB of register 2, addresses 0x8-0xB) 
	
		// Users to add parameters here
		parameter integer NUMDIGITS = 8,
		// User parameters ends
		// Do not modify the parameters beyond this line

		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here
        output reg [NUMDIGITS-1:0] anode,
        output [6:0] cathode,
        output reg dp,
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
	
// Declaration of data registers accessible via Axi Bus Interface S00_AXI	
	wire [C_S00_AXI_DATA_WIDTH-1:0] slv_reg0, slv_reg1, slv_reg2, slv_reg3;
	    
// Instantiation of Axi Bus Interface S00_AXI
	SevenSegController_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) SevenSegController_v1_0_S00_AXI_inst (
	    .slv_reg0(slv_reg0),
	    .slv_reg1(slv_reg1),
	    .slv_reg2(slv_reg2),
	    .slv_reg3(slv_reg3),
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready)
	);

	// Add user logic here
	wire decimal;
	wire global_enable;
    wire trim_zeroes;
	wire clock_100Mhz;
	wire reset;
    
    assign clock_100Mhz = s00_axi_aclk;
    assign reset = ~s00_axi_aresetn;
    assign decimal = slv_reg0[0];               // Specify 0=hex output, 1=decimal output in first register
    assign trim_zeroes = slv_reg0[1];           // Display leading zeroes = 0, blank leading zeroes = 1
    assign global_enable = slv_reg0[7];         // MSB specifies 0 = display OFF, 1 = anode refresh enabled, display ON.
    
    
    reg [($clog2(NUMDIGITS)+17):0] refresh_counter; 
    // the first 18-bit for creating 2.6ms digit period
    // the other log2(NUMDIGITS) bits are for creating the LED-activating anode signals
    wire [$clog2(NUMDIGITS)-1:0] LED_activating_counter; 
    // count        0    ->  1  ->  2  ->  3 -> ...
    // activates    LED1    LED2   LED3   LED4 -> LED(NUMDIGITS-1)
    // and repeat
    
    always @(posedge clock_100Mhz or posedge reset)
    begin 
        if(reset==1)
            refresh_counter <= 0;
        else
            refresh_counter <= refresh_counter + 1;
    end 
    assign LED_activating_counter = refresh_counter[$clog2(NUMDIGITS)+17 -: $clog2(NUMDIGITS)];
    
    // anode activating signals for (NUMDIGITS) LEDs
    // decoder to generate anode signals 
    
   reg[3:0] LED_HEX;
   reg[6:0] cathode_a;
   
   // Cathode patterns of the 7-segment LED display. The 7 bit pattern is ABCDEFG segments of each digit, left to right, with inverted logic. (0 = lit, 1 = off.)
   always @(posedge clock_100Mhz)
   begin
        case(LED_HEX)
            4'b0000: cathode_a <= 7'b0000001; // "0"                   AAAA  
            4'b0001: cathode_a <= 7'b1001111; // "1"                 F      B
            4'b0010: cathode_a <= 7'b0010010; // "2"                 F      B
            4'b0011: cathode_a <= 7'b0000110; // "3"                   GGGG
            4'b0100: cathode_a <= 7'b1001100; // "4"                 E      C
            4'b0101: cathode_a <= 7'b0100100; // "5"                 E      C
            4'b0110: cathode_a <= 7'b0100000; // "6"                   DDDD
            4'b0111: cathode_a <= 7'b0001111; // "7" 
            4'b1000: cathode_a <= 7'b0000000; // "8"  
            4'b1001: cathode_a <= 7'b0000100; // "9"
            4'b1010: cathode_a <= 7'b0001000; // "A"
            4'b1011: cathode_a <= 7'b1100000; // "B"
            4'b1100: cathode_a <= 7'b1110010; // "C"
            4'b1101: cathode_a <= 7'b1000010; // "D"
            4'b1110: cathode_a <= 7'b0110000; // "E"
            4'b1111: cathode_a <= 7'b0111000; // "F" 
            default: cathode_a <= 7'b1111111; // " "
        endcase
    end
    
    genvar i;     // This bit-reversal simply allows one to use the predefined Nexus constraints without having to reverse A-G above when designing patterns.
    for (i = 0; i < 7; i=i+1)
    begin
        assign cathode[6-i] = cathode_a[i];
    end
    
    reg go = 1'b0;
    wire [(NUMDIGITS*4)-1:0] bcd;
    wire done;
    wire overflow;
    
   Binary_to_BCD bcb(
    .i_Clock(clock_100Mhz),
    .i_Binary(slv_reg1),
    .i_Start(go),
    .o_BCD(bcd),
    .o_DV(done),
    .o_OV(overflow)
    );
    
    reg [31:0] old_slv1;
    
    localparam s_INIT = 2'b00;
    localparam s_GO   = 2'b01;
    localparam s_WAIT = 2'b10;
    
    reg [1:0] state = 2'b00;
    
    always @(posedge clock_100Mhz or posedge reset)
    begin
        if (reset)
        begin
            old_slv1 <= 32'b0;
            state <= s_INIT;
            go <= 1'b0;
        end
        else
        begin
            case (state)
                s_INIT: 
                    begin
                        if (old_slv1 != slv_reg1)
                        begin
                            state <= s_GO;
                            old_slv1 <= slv_reg1;
                            go <= 1'b1;
                        end
                    end
                s_GO: 
                    begin
                        go <= 1'b0;
                        state <= s_WAIT;
                    end
                s_WAIT:
                    begin
                        if (!done)
                            state <= s_WAIT;
                        else
                            state <= s_INIT;
                    end
                default:
                    begin
                        state <= s_INIT;
                    end
            endcase
        end    
    end
                    

    // Calculate an array of bits that tell us whether any given anode position contains a leading zero but not an embedded zero.
    reg leading_zero[NUMDIGITS-1:0];
    genvar j;
    generate
    for (j = 0; j < NUMDIGITS; j = j+1)
    begin
        always @(*)
        begin
           if (slv_reg0[0] == 1'b0)  // Need to pay attention to whether we're doing hex or decimal display
                leading_zero[j] = ~|slv_reg1[NUMDIGITS*4-1: j*4];  //NOR all the bits from current digit through the leftmost, only 1 when all bits are zero, but must use hex or decimal digits as selected
           else
                leading_zero[j] = ~|bcd[NUMDIGITS*4-1: j*4];   
        end
    end     
    endgenerate               
                    
    // The Nexys series has the LED 7-segment displays wired such that both anodes and cathodes to be enabled must be grounded with the remainder held high. (Inverted logic.)
    always @(posedge clock_100Mhz)
    begin
        if (!global_enable || (trim_zeroes && leading_zero[LED_activating_counter])) //Turn anodes off if globally disabled, or trim-zeroes is enabled and the current digit is a leading zero.
            anode = {NUMDIGITS{1'b1}};                              // MSB of control register determines whether display is globally disabled or not. (Anodes must be 1 to be off).
        else
            anode = ~(1'b1 << LED_activating_counter);          // Enable each digit in turn by shifting 1 to the left the correct number of digits, then invert the bit pattern.
        
        if (decimal == 1'b1 && overflow)
            dp = 0;                                                 // Light ALL decimal points to indicate integer overflow.
        else
            dp = ~slv_reg2[LED_activating_counter];                 // Decimal point enabled/disabled by selecting the relevant bit from slave register 2
            
        if (decimal == 1'b0)
            LED_HEX = slv_reg1[LED_activating_counter * 4 +: 4];    // Hex digit to display is determined by selecting 4-bit groups from slave register 1
        else
            LED_HEX = bcd[LED_activating_counter * 4 +: 4];         // Decimal digits are extracted from bcd, which is in turn calculated from slave register 1.
    end
    
	// User logic ends

	endmodule
