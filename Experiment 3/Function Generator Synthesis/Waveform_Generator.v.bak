module Waveform_Generator (input clk, rst, input [2:0]Sel, output reg [7:0] WaveOut);
 	
	integer i = 0;
	reg [7:0] count, OutRec, OutSquare, OutTri;
	reg [15:0] OutSine, OutFWR, OutHWR, A = 16'b0, B = 16'd30000, C;

	always@(posedge clk, posedge rst)begin
	if(rst)
		count <= 8'b00000000;
	else
		count <= count + 1;
	end
	
	always@(posedge clk)begin
		OutRec <= 255/(255 - count);
	end

	always@(posedge clk)begin
		if (count < 128)
			OutSquare <= 8'b0000000;
		else
			OutSquare <= 8'b11111111;
	end

	always@(posedge clk)begin
		if (count < 128)
			OutTri <= count << 1;
		else 
			OutTri <= (511 - count << 1);
	end

	always@(posedge clk)begin
		OutSine = A + {B[15],B[15],B[15],B[15],B[15],B[15], B[15:5]};
		C = B - {OutSine[15], OutSine[15], OutSine[15], OutSine[15], OutSine[15], OutSine[15], OutSine[15:5]};
		A <= OutSine;
		B <= C;
	end

	always@(posedge clk)begin
	
		if (OutSine[15] == 1)
			OutFWR <= ~OutSine;
		else
			OutFWR <= OutSine;
	end	

	always@(posedge clk)begin
	
		if (OutSine[15] == 1)
			OutHWR <= 0;
		else
			OutHWR <= OutSine;
	end	

	always@(posedge clk)begin
		WaveOut = 8'b0; 
		case(Sel)
			3'b000 : WaveOut <= OutRec;
			3'b001 : WaveOut <= OutSquare;
			3'b010 : WaveOut <= OutTri;
			3'b011 : WaveOut <= OutSine[15:8] + 128;
			3'b100 : WaveOut <= OutFWR[15:8] + 128;
			3'b101 : WaveOut <= OutHWR[15:8] + 128;
		endcase
	end	
endmodule