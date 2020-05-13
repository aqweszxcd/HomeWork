`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/09 11:52:38
// Design Name: 
// Module Name: ALU_core
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

module ALU_core(
input wire [2:0]sel,//opcode

input wire cin,//carry
output wire cout,

input wire A,//data
input wire B,
output wire F
);

assign F=
(   (sel==3'b000)?(A^B^cin):1'b0    )   |
(   (sel==3'b001)?(A^1'b1^cin):1'b0 )   |
(   (sel==3'b010)?(A^B^cin):1'b0    )   |
(   (sel==3'b011)?(1'b0):1'b0       )   |
(   (sel==3'b100)?(A^B):1'b0        )   |
(   (sel==3'b101)?(~A):1'b0         )   |
(   (sel==3'b110)?(A|B):1'b0        )   |
(   (sel==3'b111)?(A&B):0           )   ;

assign cout=
(   (sel==3'b000)?( (A&B) | (cin&(A^B)) ):1'b0    )   |
(   (sel==3'b001)?(A|cin):1'b0                    )   |
(   (sel==3'b010)?( (~A&B) | (cin&(A^~B)) ):1'b0  )   ;
//(   (sel==3'b011)?(1'b0):1'b0                   )   |
//(   (sel==3'b100)?(1'b0):1'b0                   )   |
//(   (sel==3'b101)?(1'b0):1'b0                   )   |
//(   (sel==3'b110)?(1'b0):1'b0                   )   |
//(   (sel==3'b111)?(1'b0):0                      )   ;

endmodule
