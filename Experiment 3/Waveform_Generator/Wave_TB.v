`timescale 1ns/1ns

module Wave_TB();
	
	reg clk = 0, rst = 1, init = 0;
	reg [2:0] Sel;
	reg [1:0] AmpSel;
	reg [8:0] PI = 9'b111111100;
	//reg [8:0] PI = 9'b100111111;
	wire [7:0] WaveOut, AmpWave;
	Waveform_Generator CUT1(ClkWG, rst, Sel, WaveOut);
	Amplitude_Selector CUT2(AmpSel, WaveOut, AmpWave);
	Frequency_Selector CUT3(clk, rst, init, PI, ClkWG);

	always #5 clk = ~clk;

	initial begin
		Sel = 3'b000;
		AmpSel = 2'b00;
		#50 rst = 1'b0;
		#50 init = 1'b1;
		#50 init = 1'b0;
		#50000 Sel = 3'b001;
		#50000 Sel = 3'b010;
		#50000 Sel = 3'b011;
		#50000 Sel = 3'b100;
		#50000 Sel = 3'b101;
		//#20000 PI = 9'b111111101;
		//#20000 PI = 9'b111111110;
		//#2000000 PI = 9'b1101111111;
		//#2000000 PI = 9'b1011111111;
		#50000 $stop;
	end
endmodule