`timescale 1ns/1ns
module Wrapper_TB();

  reg clk = 1'b0, rst = 1'b0, start = 1'b0;
  wire done, inc_cnt, rst_cnt, Co;
  wire [1:0] intpart;
  wire [15:0] fracpart;
  wire [7:0] address; 
  wire [2:0] psOut;
  
  Wrapper CUT(done, clk, rst, start, rst_cnt, inc_cnt, Co, address, fracpart, intpart, psOut);

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
  #1000 $stop;
  end
endmodule