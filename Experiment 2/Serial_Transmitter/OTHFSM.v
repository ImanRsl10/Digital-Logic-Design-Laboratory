module OTHFSM(input Clk_EN, SerIn, clk, rst, output reg SerOutValid, output SerOut, output reg [3:0] count);
	reg [2:0] ps,ns;
	reg inc_cnt, rst_cnt;
	wire Co;
	
	parameter[2:0]
	A = 0, B = 1, C = 2, D = 3, E = 4;

	always@(ps, Clk_EN, SerIn, Co) begin
		ns = A;
		case(ps)
			A: ns = ~Clk_EN ? A : (SerIn ? B : A);
			B: ns = ~Clk_EN ? B : (SerIn ? B : C);
			C: ns = ~Clk_EN ? C : (SerIn ? D : A);
			D: ns = ~Clk_EN ? D : (SerIn ? E : C);
			E: ns = Co ? A : E;
		endcase
	end
	
	always@(ps) begin
		{rst_cnt, inc_cnt, SerOutValid} = 3'b000;
		case(ps)
			A: rst_cnt = 1;
			E: begin inc_cnt = 1; SerOutValid = 1; end
		endcase
	end

	always@(posedge clk, posedge rst) begin
		if (rst)
			ps <= A;
		else
			ps <= ns;
	end

	
	assign SerOut = (ps == E) ? SerIn : 1'bz;	

	always@(posedge clk, posedge rst_cnt) begin
		if (rst_cnt)
			count <= 3'b101;
		else if (Clk_EN == 1 && inc_cnt == 1)
			count <= count + 1; 
	end
	
	assign Co = &count;
	
endmodule