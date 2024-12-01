module Frequency_Selector(input clk, rst, init, input[8:0] PI, output ClkWG);

	reg [8:0] count;
	
	always@(posedge clk, posedge rst, posedge init)begin
		if(rst)
			count <= 9'b0;
		else 
			if(init | ClkWG)
				count <= PI;
		else
			count <= count + 1;
	end
	assign ClkWG = &count;
endmodule
