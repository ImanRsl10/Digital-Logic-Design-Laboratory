`timescale 1ns/1ns

module TB();

	reg ClkPB, clk=0, rst=0, SerIn;
	wire [6:0] SSD;
	wire SerOut, SerOutValid;
	Serial_Transmitter CUT(ClkPB, clk, rst, SerIn, SSD, SerOut, SerOutValid);

	always #5 clk = ~clk;

	initial begin
	SerIn = 1'b0;
	#7 ClkPB = 1;
	#10 ClkPB = 0;

	#10 SerIn = 1'b1;
	#10 ClkPB = 1;
	#10 ClkPB = 0;

	#10 SerIn = 1'b0;
	#10 ClkPB = 1;
	#10 ClkPB = 0;

	#10 SerIn = 1'b1;
	#10 ClkPB = 1;
	#10 ClkPB = 0;

	#10 SerIn = 1'b1;
	#10 ClkPB = 1;
	#10 ClkPB = 0;

	#10 SerIn = 1'b1;
	#10 ClkPB = 1;
	#10 ClkPB = 0;

	repeat (15) begin
		#10 SerIn = $random;
		#10 ClkPB = 1;
		#10 ClkPB = 0;
	end
	#100 $stop;

	end

endmodule