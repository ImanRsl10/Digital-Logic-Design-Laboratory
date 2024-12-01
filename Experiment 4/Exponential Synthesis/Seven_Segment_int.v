module Seven_Segment_int(input[1:0] count, output reg [6:0] SSD);
	always@(count)begin
		case(count)
			4'b0000: SSD = 7'b1000000;
			4'b0001: SSD = 7'b1111001;
			4'b0010: SSD = 7'b0100100;
		endcase
	end
endmodule