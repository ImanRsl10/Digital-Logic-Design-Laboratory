module ROM(input clk, input [7:0] Address, output reg [15:0] x);
  always@(posedge clk, posedge Address)begin
    case(Address) 
      8'd0: x = 16'b1111_1111_1111_1111;
      8'd1: x = 16'b1011110101110000;
      8'd2: x = 16'b0011001100110011;
      8'd3: x = 16'b1010100011110101;
      8'd4: x = 16'b0000000000000000;
    endcase 
  end
endmodule
