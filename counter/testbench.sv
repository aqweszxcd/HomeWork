`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/08 21:52:57
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench(

);


reg sys_clk_in;
reg sys_rst_n;
//input wire en,//SW7

wire [7:0]seg_data_0_pin;//disp on board 0 //low en
wire [7:0]seg_data_1_pin;//disp on board 1 //low en
wire [7:0]seg_cs_pin;//bit choose of disp //high en

//input wire [3:0]data,//SW0-SW3
reg [4:0]btn_pin;//S3 //[3] the forth button
reg [7:0]sw_pin;

initial begin
sys_clk_in=0;
sys_rst_n=1;
btn_pin=5'b00000;
sw_pin=8'b1100_0011;//en up 8 0011
//input wire [3:0]data,//SW0-SW3
//input wire [1:0]mod_sel,//SW4-SW5
//input wire dir_sel//SW6
//input wire en,//SW7
#30 sys_rst_n=0;
#30 sys_rst_n=1;

#20000 sw_pin=8'b1101_0011;//change mod from 8 to 10 //en up 10 0011
#20000 sw_pin=8'b1110_0011;//change mod from 10 to 16 //en up 16 0011
#20000 sw_pin=8'b1010_0011;//change mod from up to down //en down 16 0011
#20000 btn_pin=5'b01000;//load num //en down 16 0011
#20 btn_pin=5'b00000;
#20000 sw_pin=8'b0010_0011;//change mod from en to disable //disable down 16 0011
end

always #5 sys_clk_in=~sys_clk_in;


top top_0(
.sys_clk_in(sys_clk_in),
.sys_rst_n(sys_rst_n),
//input wire en,//SW7

.seg_data_0_pin(seg_data_0_pin),//disp on board 0 //low en
.seg_data_1_pin(seg_data_1_pin),//disp on board 1 //low en
.seg_cs_pin(seg_cs_pin),//bit choose of disp //high en

//input wire [3:0]data,//SW0-SW3
.btn_pin(btn_pin),//S3 //[3] the forth button
.sw_pin(sw_pin)
//input wire [1:0]mod_sel,//SW4-SW5
//input wire dir_sel//SW6
);

endmodule
