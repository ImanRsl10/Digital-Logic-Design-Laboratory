`timescale 1ns/1ns

module TB();
	reg clk = 1'b0, rst = 1'b1, init = 1'b1;
	reg [1:0] AmpSel = 2'b00, Phase_cntrl = 2'b01;
	reg [2:0] Sel = 3'b110;
	reg [2:0] PI = 3'b101;
	wire PWM_out, ClkWG; 
	wire [7:0] WaveOut;

	function_generator CUT(PWM_out, clk, rst, AmpSel, init, PI, Phase_cntrl, Sel, ClkWG, WaveOut);
	
	always #5 clk = ~clk;

	initial begin
		#7 rst = 1'b0;
		#8 init = 1'b0;
		#16 rst = 1'b1;
		init = 1'b1;
		//#5000000 Sel = 3'b000;
		//#1000000 Sel = 3'b110;
		//#200000 Sel = 3'b010; 
		//#200000 Sel = 3'b010;
		//#200000 Sel = 3'b011; PI = 9'b000000011;
		//#200000 Sel = 3'b100; 
		//#200000 Sel = 3'b101; AmpSel = 2'b10;
		#2000000 Phase_cntrl = 2'b10;
		#2000000 Phase_cntrl = 2'b11;
		//Sel = 3'b110;
		#2000000 $stop;
	end
endmodule