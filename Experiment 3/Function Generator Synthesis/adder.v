module adder(input [7:0] regOut, input [1:0] Phase_cntrl, output [7:0] regIn);
	assign regIn = regOut + Phase_cntrl;
endmodule