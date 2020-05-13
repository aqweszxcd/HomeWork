`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/09 14:17:06
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

reg[7:0] sw_pin;
//sw_pin[7:5]: sel[2:0] 
//sw_pin[4]: cin
//sw_pin[3:2]: B[1:0]
//sw_pin[1:0]: A[1:0]
wire[15:0] led_pin;
//led_pin[2]: cout
//led_pin[1:0]: F[1:0]

initial begin
sw_pin=8'b0000_0000;
//000
#10 sw_pin=8'b000_0_10_01;//add a b cin=0 a=1 b=2 //3
#10 sw_pin=8'b000_1_01_01;//add a b cin=1 a=1 b=1 //3
//001
#10 sw_pin=8'b001_0_00_10;//sub a 1 cin=0 a=2 b=0 //1 overflow
//101(h-3) because 2bit is too smal, cannot work correct, but the logic in simu is correct
#10 sw_pin=8'b001_1_00_10;//sub a 1 cin=1 a=2 b=0 //0 overflow
//110(h-2) because 2bit is too smal, cannot work correct, but the logic in simu is correct
//010
#10 sw_pin=8'b010_0_01_01;//sub a b cin=0 a=1 b=1 //0
#10 sw_pin=8'b010_1_01_01;//sub a b cin=1 a=1 b=1 //-1
//011
#10 sw_pin=8'b011_0_01_01;//add a b cin=0 a=1 b=1 //0
#10 sw_pin=8'b011_1_01_01;//add a b cin=1 a=1 b=1 //0
//100
#10 sw_pin=8'b100_0_01_01;//xor a b cin=0 a=1 b=1 //0
#10 sw_pin=8'b100_0_10_01;//xor a b cin=0 a=1 b=2 //3
//101
#10 sw_pin=8'b101_0_01_01;//not a   cin=0 a=1 b=1 //2
#10 sw_pin=8'b101_0_00_10;//not a   cin=0 a=2 b=0 //1
//110
#10 sw_pin=8'b110_0_01_01;//or  a b cin=0 a=1 b=1 //1
#10 sw_pin=8'b110_0_10_01;//or  a b cin=0 a=1 b=2 //3
//111
#10 sw_pin=8'b111_0_01_01;//and a b cin=0 a=1 b=1 //1
#10 sw_pin=8'b111_0_10_01;//and a b cin=0 a=1 b=2 //0
end

top top_0(
.sw_pin(sw_pin),
//sw_pin[7:5]: sel[2:0] 
//sw_pin[4]: cin
//sw_pin[3:2]: B[1:0]
//sw_pin[1:0]: A[1:0]
.led_pin(led_pin)
//led_pin[2]: cout
//led_pin[1:0]: F[1:0]
);

endmodule
