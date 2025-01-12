module register(input clk, rst, input [7:0] regIn, output reg [7:0] regOut);

	always@(posedge clk, posedge rst) begin
		if(rst)
			regOut <= 8'd0;
		else
			regOut <= regIn;
	end

endmodule