module Wrapper_Counter (input clk, rst_count, inc_count, output reg [7:0] address, output Co);
	always@(posedge clk, posedge rst_count)begin
		if(rst_count == 1'b1)
			address <= 8'b0;
		else
		  if(inc_count == 1'b1)
		      address <= address + 1'b1;
	end
	assign Co = (address == 8'b00000100) ? 1'b1 : 1'b0;
endmodule