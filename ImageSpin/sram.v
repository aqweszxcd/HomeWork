`timescale 1 ns/1 ns
module sram
#(parameter DATA_WIDTH=24, parameter ADDR_WIDTH=16)
(
	input wire [(DATA_WIDTH-1):0] data_in,
	input wire [(ADDR_WIDTH-1):0] addr,
	input wire wr, en, clk,
	output reg [(DATA_WIDTH-1):0] data_out
);

	// Declare the RAM variable
	reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];

	always @ (posedge clk) begin
		if (en) begin
			if (wr) begin
				ram[addr] <= data_in;
			end
			else begin
				data_out <= ram[addr];
			end
		end
	end

endmodule
