module Amplitude_Selector(input [1:0] AmpSel, input [7:0] WaveOut, output reg [7:0] AmpWave);
	always@(AmpSel, WaveOut)begin
		case(AmpSel)
			2'b00 : AmpWave <= WaveOut;
			2'b01 : AmpWave <= WaveOut >> 1;
			2'b10 : AmpWave <= WaveOut >> 2;
			2'b11 : AmpWave <= WaveOut >> 3;
		endcase
	end
endmodule