module Serial_Transmitter(input ClkPB, clk, rst, SerIn, output [6:0] SSD, output SerOut, SerOutValid);
	wire Clk_EN;
	wire [3:0] count;

	OTHFSM A (Clk_EN, SerIn, clk, rst, SerOutValid, SerOut, count);
	One_Pulser B (clk, ClkPB, rst, Clk_EN);
	Seven_Segment C (count, SSD);
endmodule