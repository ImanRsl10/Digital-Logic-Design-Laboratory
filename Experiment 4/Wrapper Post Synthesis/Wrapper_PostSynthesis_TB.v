`timescale 1ns/1ns
module Wrapper_PostSynthesis_TB();
  reg clk = 1'b0, rst = 1'b0, start = 1'b0;
  wire done;
  wire [1:0] intpart;
  wire [15:0] fracpart;
  
  Wrapper CUT (done, clk, rst, start, fracpart, intpart);
   
 always #5 clk = ~clk;
  initial begin
  #11 rst = 1'b1;
  #10 rst = 1'b0;
  #5 start = 1'b1;
  #10 start = 1'b0;
  #500;
  #5 start = 1'b1;
  #10 start = 1'b0;
  #500;
  #5 start = 1'b1;
  #10 start = 1'b0;
  #500;
  #5 start = 1'b1;
  #10 start = 1'b0;
  #500;
  #5 start = 1'b1;
  #10 start = 1'b0;
  #500 $stop;
  end 
endmodule