module DDS_In(input clk, rst,input [1:0] Phase_cntrl, output reg [7:0] regOut);

	reg [7:0] regIn;

	always@(posedge clk, posedge rst)begin
		if(rst)
			regOut <= 8'b0;
		else
			regOut <= regIn;
	end

	assign regIn = regOut + Phase_cntrl;
endmodule