`timescale 1 ns/1 ns
module controler
#(parameter DATA_WIDTH=24, parameter ADDR_WIDTH=16)
(

input wire clk_in,
input wire start_in,
input wire h_valid_in,
input wire h_jump_in,
input wire [(DATA_WIDTH-1):0] bmp_data,
input wire [(DATA_WIDTH-1):0] data_out,

output wire clk,
output reg wr,
output reg en,
output reg [(ADDR_WIDTH-1):0] addr,
output reg [(DATA_WIDTH-1):0] data_in,
output wire clk_out,
output reg start_out,
output reg h_valid_out,
output reg h_jump_out,
output reg [(DATA_WIDTH-1):0] r_bmp_data
);

reg [63:0] timer;
reg [3:0] stage_timer;
reg [3:0] mode;
reg [31:0] pixel_cnt;
reg [(ADDR_WIDTH/2-1):0] x,y;

assign clk=clk_in;
assign clk_out=clk_in;

always@(posedge start_in) begin
	//initial
	timer<=64'd0;
	mode<=4'b0000;
	
	wr<=1'b0;
	en<=1'b0;
	addr<=16'b0;
	data_in<=24'b0;
	start_out<=1'b1;
	h_valid_out<=1'b0;
	h_jump_out<=1'b0;
	r_bmp_data<=24'b0;
	pixel_cnt<=32'b0;
	x<=7'b0;
	y<=7'b0;
end
always@(negedge clk) begin
	en=1'b1;//memory module 1 use or not
end

//mode changer/////////////////////////////////
////read_out_mode 顺时针90 4'b1111
/*
always@(negedge start_in) begin
	//initial
	pixel_cnt<=32'b0;
	mode<=4'b1111;
	stage_timer<=4'd2;
	h_valid_out<=1'b0;
	h_jump_out<=1'b0;
	start_out<=1'b0;
	
	x<=8'd255;
	y<=8'd0;
end

always@(posedge start_out) begin
	//initial
	pixel_cnt<=32'b0;
	stage_timer<=4'b0;
	h_valid_out<=1'b0;
	h_jump_out<=1'b0;
	
	x<=8'd255;
	y<=8'd0;
end
*/
//read_out_mode 逆时针90 4'b0111
always@(negedge start_in) begin
	//initial
	pixel_cnt<=32'b0;
	mode<=4'b0111;
	stage_timer<=4'd2;
	h_valid_out<=1'b0;
	h_jump_out<=1'b0;
	start_out<=1'b0;
	
	x<=8'd0;
	y<=8'd255;
end

always@(posedge start_out) begin
	//initial
	pixel_cnt<=32'b0;
	stage_timer<=4'b0;
	h_valid_out<=1'b0;
	h_jump_out<=1'b0;
	
	x<=8'd0;
	y<=8'd255;
end
//write_in_mode 4'b0000/////////////////////////
always@(posedge h_valid_in) begin
	if(mode==4'b0000) begin
		stage_timer<=4'b0;
	end
end
always@(negedge clk) begin
	if(mode==4'b0000) begin
		stage_timer<=stage_timer+4'b1;
	end
end

always@(posedge h_jump_in) begin
	if(mode==4'b0000) begin
	
		pixel_cnt<=pixel_cnt+32'b1;
	
	end
end
always@(posedge clk) begin
	if(mode==4'b0000) begin
	
		if(start_in) begin
			addr<=pixel_cnt;
		end
	
		if (start_in) begin
			if (h_valid_in) begin
				data_in<=bmp_data;
			end
		end
	
	end
end

always@(negedge clk) begin
	if(mode==4'b0000) begin
	
		if (stage_timer==4'd1) begin
			wr<=1'b1;		
		end
		else begin
			wr<=1'b0;
		end
	
	end
end

//read_out_mode 顺时针90 4'b1111////////////////////////
always@(posedge clk) begin
	if(mode==4'b1111) begin
	
		if(stage_timer==4'd0) begin
			h_jump_out<=1'b1;
			stage_timer<=stage_timer+4'b0001;
		end	
		else if(stage_timer==4'd1) begin
			h_jump_out<=1'b0;
			stage_timer<=stage_timer+4'b0001;
		end		
		else if(stage_timer==4'd2) begin
			h_valid_out<=1'b1;
			stage_timer<=stage_timer+4'b0001;
		end
		else if(stage_timer==4'd7) begin
			h_valid_out<=1'b0;
			stage_timer<=4'b0;
		end
		else begin
			stage_timer<=stage_timer+4'b0001;
		end

	end
end

always@(negedge clk) begin
	if(mode==4'b1111) begin
		
		addr<=(x+256*y);
	
	end
end

always@(posedge h_valid_out) begin
	if(mode==4'b1111) begin
		
			r_bmp_data<=data_out;
	
	end
end

always@(posedge h_jump_out) begin
	if(mode==4'b1111) begin
	
		if(x==8'd0) begin
			if(y==8'd255) begin
				y<=8'd0;
				x<=8'd0;
				start_out<=1'b1;
				mode<=4'b0011;
			end
		end
		else if(y==8'd255) begin
			y<=8'd0;
			x<=x-8'd1;
		end
		else begin
			y<=y+8'd1;
		end
	
	end
end


//read_out_mode 逆时针90 4'b0111////////////////////////

always@(posedge clk) begin
	if(mode==4'b0111) begin
	
		if(stage_timer==4'd0) begin
			h_jump_out<=1'b1;
			stage_timer<=stage_timer+4'b0001;
		end	
		else if(stage_timer==4'd1) begin
			h_jump_out<=1'b0;
			stage_timer<=stage_timer+4'b0001;
		end		
		else if(stage_timer==4'd2) begin
			h_valid_out<=1'b1;
			stage_timer<=stage_timer+4'b0001;
		end
		else if(stage_timer==4'd7) begin
			h_valid_out<=1'b0;
			stage_timer<=4'b0;
		end
		else begin
			stage_timer<=stage_timer+4'b0001;
		end

	end
end

always@(negedge clk) begin
	if(mode==4'b0111) begin
		
		addr<=(x+256*y);
	
	end
end

always@(posedge h_valid_out) begin
	if(mode==4'b0111) begin
		
			r_bmp_data<=data_out;
	
	end
end

always@(posedge h_jump_out) begin
	if(mode==4'b0111) begin
	
		if(x==8'd255) begin
			if(y==8'd0) begin
				y<=8'd0;
				x<=8'd0;
				start_out<=1'b1;
				mode<=4'b0011;
			end
		end
		else if(y==8'd0) begin
			y<=8'd255;
			x<=x+8'd1;
		end
		else begin
			y<=y-8'd1;
		end
	
	end
end


























/*
wire clk_in;
wire start_in;
wire h_valid_in;
wire h_jump_in;
wire [(DATA_WIDTH-1):0] bmp_data;
wire [(DATA_WIDTH-1):0] data_out;
*/



sram sram_1(
.clk(clk),
.wr(wr),
.en(en),
.addr(addr),
.data_in(data_in),
.data_out(data_out)
);

/*
test test_1(
.clk_out(clk_out),
.start_out(start_out),
.h_valid_out(h_valid_out),
.h_jump_out(h_jump_out),
.r_bmp_data(r_bmp_data),

.clk_in(clk_in),
.start_in(start_in),
.h_valid_in(h_valid_in),
.h_jump_in(h_jump_in),
.bmp_data(bmp_data)
);
*/
endmodule
