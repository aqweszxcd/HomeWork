`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/05 21:58:09
// Design Name: 
// Module Name: top
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

module top(
input wire [7:0]sw_pin,
//sw_pin[7:5]: sel[2:0] 
//sw_pin[4]: cin
//sw_pin[3:2]: B[1:0]
//sw_pin[1:0]: A[1:0]
output reg [2:0]led_pin
//led_pin[2]: cout
//led_pin[1:0]: F[1:0]
);

wire pass;

ALU_core ALU_core_0(
.sel(sw_pin[7:5]),//opcode
.cin(sw_pin[4]),//carry
.cout(pass),
.A(sw_pin[0]),//data
.B(sw_pin[2]),
.F(led_pin[0])
);

ALU_core ALU_core_1(
.sel(sw_pin[7:5]),//opcode
.cin(pass),//carry
.cout(led_pin[2]),
.A(sw_pin[1]),//data
.B(sw_pin[3]),
.F(led_pin[1])
);

endmodule
