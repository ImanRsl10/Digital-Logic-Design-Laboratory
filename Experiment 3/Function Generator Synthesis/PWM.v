module PWM(input clk, rst, input [7:0] Wave_out, output reg PWM_out);
  reg [7:0] count;
  
  always@(posedge clk, posedge rst)begin
    if(rst)
      count <= 8'd0;
    else
      count <= count + 1'b1;
  end
  
  always@(posedge clk)begin
    if (count < Wave_out)
      PWM_out <= 1'b1;
    else
      PWM_out <= 1'b0;
  end
endmodule  