`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/05 21:00:45
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
//时钟100M

//signal input
`define rst_en 1'b0
`define en_en 1'b1
`define load_en 1'b1
`define dir_up 1'b1
`define dir_down 1'b0
`define mod_8 2'b00
`define mod_10 2'b01
`define mod_16 2'b10

//signal inside
//en==1 dis==0

//const number

//`define half_second 50000000 //0.5s clk100MHZ
//`define second 100000000 //1s clk100MHZ
`define half_second 50 //0.5us clk100MHZ //for simu
`define second 100 //1us clk100MHZ //for simu

`define num_blank 8'b1111_1111
`define num_0 8'b1100_0000
`define num_1 8'b1111_1001
`define num_2 8'b1010_0100
`define num_3 8'b1011_0000
`define num_4 8'b1001_1001
`define num_5 8'b1001_0010
`define num_6 8'b1000_0010
`define num_7 8'b1111_1000
`define num_8 8'b1000_0000
`define num_9 8'b1001_0000
`define num_A 8'b0000_1000//disp dot mean A/B/C/D/E/F or 0-9
`define num_B 8'b0000_0000
`define num_C 8'b0100_0110
`define num_D 8'b0100_0000
`define num_E 8'b0000_0110
`define num_F 8'b0000_1110


module top(
input wire sys_clk_in,
input wire sys_rst_n,
//input wire en,//SW7

output reg [7:0]seg_data_0_pin,//disp on board 0 //low en
output reg [7:0]seg_data_1_pin,//disp on board 1 //low en
output reg [7:0]seg_cs_pin,//bit choose of disp //high en

//input wire [3:0]data,//SW0-SW3
input wire [4:0]btn_pin,//S3 //[3] the forth button
input wire [7:0]sw_pin
//input wire [1:0]mod_sel,//SW4-SW5
//input wire dir_sel//SW6
);

//mod change judgement //clear counter when mod changed
reg [1:0] mod_last;
reg mod_change;
always@(posedge sys_clk_in)begin
if (sw_pin[7]==`en_en) begin
    mod_last<=sw_pin[5:4];
end
if ( mod_last!=sw_pin[5:4] ) begin
    mod_change<=1;
end else begin
    mod_change<=0;
end
end

//100MHZ->1Hz //when reach 1s, reg second have a one clk en
reg second;
reg [31:0]second_counter;
always@(posedge sys_clk_in)begin
if (sw_pin[7]==`en_en) begin
    if ( (sys_rst_n==`rst_en)||(mod_change==1)||(btn_pin[3]==`load_en) ) begin
        second<=0;
        second_counter<=0;
    end 
    else if ( second_counter==`second ) begin
        second<=1;
        second_counter<=0;
    end
    else begin
        second<=0;
        second_counter<=second_counter+1;
    end
end
end

//main counter
reg [3:0] data_inside;//result
always@(posedge sys_clk_in)begin
if ( (sys_rst_n==`rst_en)||(mod_change==1) )begin
    data_inside<=4'b0000;
end
else if ( btn_pin[3]==`load_en ) begin
    data_inside<=sw_pin[3:0];
end
else if ( second==1 ) begin
    if ( sw_pin[6]==`dir_up ) begin//++
        if (sw_pin[5:4]==`mod_8) begin
            if (data_inside==7)data_inside<=4'b0000;
            else data_inside<=data_inside+1;
        end
        else if (sw_pin[5:4]==`mod_10) begin
            if (data_inside==9)data_inside<=4'b0000;
            else data_inside<=data_inside+1;
        end
        else if (sw_pin[5:4]==`mod_16) begin
            if (data_inside==15)data_inside<=4'b0000;
            else data_inside<=data_inside+1;
        end
    end
    else begin//--
        if (sw_pin[5:4]==`mod_8) begin
            if (data_inside==0)data_inside<=4'd7;
            else data_inside<=data_inside-1;
        end
        else if (sw_pin[5:4]==`mod_10) begin
            if (data_inside==0)data_inside<=4'd9;
            else data_inside<=data_inside-1;
        end
        else if (sw_pin[5:4]==`mod_16) begin
            if (data_inside==0)data_inside<=4'd15;
            else data_inside<=data_inside-1;
        end
    end
end
end

//number display
always@(posedge sys_clk_in)begin
if ( sw_pin[7]==`en_en ) begin
    seg_cs_pin<=8'b0000_0001;
    case(data_inside)
        4'd0:seg_data_0_pin<=`num_0;
        4'd1:seg_data_0_pin<=`num_1;
        4'd2:seg_data_0_pin<=`num_2;
        4'd3:seg_data_0_pin<=`num_3;
        4'd4:seg_data_0_pin<=`num_4;
        4'd5:seg_data_0_pin<=`num_5;
        4'd6:seg_data_0_pin<=`num_6;
        4'd7:seg_data_0_pin<=`num_7;
        4'd8:seg_data_0_pin<=`num_8;
        4'd9:seg_data_0_pin<=`num_9;
        4'd10:seg_data_0_pin<=`num_A;
        4'd11:seg_data_0_pin<=`num_B;
        4'd12:seg_data_0_pin<=`num_C;
        4'd13:seg_data_0_pin<=`num_D;
        4'd14:seg_data_0_pin<=`num_E;
        4'd15:seg_data_0_pin<=`num_F;
        default:seg_data_0_pin<=`num_blank;
    endcase
end else begin
    seg_data_0_pin<=`num_blank;
end
end


endmodule
