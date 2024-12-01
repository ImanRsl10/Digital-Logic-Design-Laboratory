module One_Pulser (input clk, ClkPB, rst, output Clk_EN);
	reg [1:0] ns,ps;
	
	parameter[1:0]
	A = 0, B = 1, C = 2;
	
	always@(ps, ClkPB) begin
		ns = A; 
		case(ps)
			A: ns = ClkPB ? B : A;
			B: ns = C; 
			C: ns = ClkPB ? C : A;
		endcase
	end
	
	assign Clk_EN = (ps == B)? 1'b1:1'b0;
	
	always@(posedge clk, posedge rst) begin
		if(rst) 
			ps <= A;
		else 
			ps <= ns;
	end
endmodule