module Frequency_Selector(input clk, rst, init, input[2:0] PI, output ClkWG);

	reg [8:0] count;
	wire ldCheck;
	assign ldCheck = init | ClkWG;
	
	always@(posedge clk, posedge rst, posedge ldCheck)begin
		if(rst)
			count <= 9'd0;
		else 
			if(ldCheck)
				count <= {6'b011001, PI};
		else
			count <= count + 1;
	end
	assign ClkWG = &count;
endmodule