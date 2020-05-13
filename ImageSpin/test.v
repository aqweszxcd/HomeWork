`timescale 1 ns/1 ns
//test 35ms
module test
#(parameter DATA_WIDTH=24, parameter ADDR_WIDTH=16)
(

output reg clk_in,
output reg start_in,
output reg h_valid_in,
output reg h_jump_in,
output reg [(DATA_WIDTH-1):0] bmp_data,

input wire clk_out,
input wire start_out,
input wire h_valid_out,
input wire h_jump_out,
input wire [(DATA_WIDTH-1):0] r_bmp_data
);

integer fp_r, fp_w, step1;
reg [7:0] bmp_data_i[0:200000];
reg [31:0] timer,start_in_timer,h_valid_in_timer,h_jump_in_timer,bmp_timer,r_bmp_timer;
reg [31:0] bmp_width,bmp_hight,data_start_index,bmp_size;
reg [63:0] system_timer;

initial begin
timer = 31'b0;
system_timer = 64'b0;
start_in_timer = 31'b0;
h_valid_in_timer = 31'b0;
h_jump_in_timer = 31'b0;
bmp_timer = 31'd54;
r_bmp_timer = 31'd51;
clk_in = 1'b0;
start_in = 1'b0;
h_valid_in = 1'b0;
h_jump_in = 1'b0;
bmp_data = 24'b0;



fp_r = $fopen("lena256color24bit.bmp", "rb");
fp_w = $fopen("lena256color24bit_out.bmp", "wb");

step1 = $fread(bmp_data_i, fp_r);
bmp_width = {bmp_data_i[21],bmp_data_i[20],bmp_data_i[19],bmp_data_i[18]};
bmp_hight = {bmp_data_i[25],bmp_data_i[24],bmp_data_i[23],bmp_data_i[22]};
data_start_index = {bmp_data_i[13],bmp_data_i[12],bmp_data_i[11],bmp_data_i[10]};
bmp_size = {bmp_data_i[5],bmp_data_i[4],bmp_data_i[3],bmp_data_i[2]};





	//run 35ms
	#35000000
	$fclose(fp_r);
	/*
	attention : must use fclose at the end of the programme,
	else modelsim will be easily crashed and very slow beacause of no source file,
	(i mean it's not wise to read reg when sorce file of reg is close).
	it's horrible.
	*/
	$fclose(fp_w);

end

//print////////
always@(posedge clk_in) begin
	if (system_timer>=64'd2190000) begin
		if (timer < (bmp_size+1)) begin
			$fwrite(fp_w,"%c",bmp_data_i[timer]);
			timer=timer+1'b1;
		end
	end
end
/////////////
always #10 begin
	clk_in=~clk_in;
	system_timer=system_timer+1'b1;
end

always@(posedge clk_in)begin

	if(system_timer%64'd16==64'd5)begin
		h_valid_in=~h_valid_in;
	end
	else if(system_timer%64'd16==64'd15)begin
		h_valid_in=~h_valid_in;
	end
	
	if(system_timer%64'd16==64'd1)begin
		if(system_timer<64'd5) begin
		end
		else begin
			h_jump_in=~h_jump_in;
		end
	end
	else if(system_timer%64'd16==64'd3)begin
		if(system_timer<64'd5) begin
		end
		else begin
			h_jump_in=~h_jump_in;
		end
	end
	
	if(system_timer==64'd3)begin//64'd1048579==256*256*16+5-2
		start_in=~start_in;
	end
	else if(system_timer==64'd1048579)begin//64'd1048579==256*256*16+5-2
		start_in=~start_in;
	end
	
end

always@(posedge h_valid_in) begin
	bmp_data<={bmp_data_i[bmp_timer],bmp_data_i[(bmp_timer+32'd1)],bmp_data_i[(bmp_timer+32'd2)]};
	bmp_timer<=bmp_timer+32'd3;
end

//output////////////////////////////////////////
always@(posedge h_valid_out) begin
	if(system_timer>=64'd10) begin
		if(start_out==1'b0) begin
			if(h_valid_out==1'b1) begin
				{bmp_data_i[r_bmp_timer],bmp_data_i[(r_bmp_timer+32'd1)],bmp_data_i[(r_bmp_timer+32'd2)]}<=r_bmp_data;
				r_bmp_timer<=r_bmp_timer+32'd3;
			end
		end
	end
end


controler controler_1(
.clk_in(clk_in),
.start_in(start_in),
.h_valid_in(h_valid_in),
.h_jump_in(h_jump_in),
.bmp_data(bmp_data),

.clk_out(clk_out),
.start_out(start_out),
.h_valid_out(h_valid_out),
.h_jump_out(h_jump_out),
.r_bmp_data(r_bmp_data)
);



endmodule
