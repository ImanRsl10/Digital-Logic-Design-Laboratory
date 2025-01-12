`timescale 1ns/1ns
module Accelarator_TB();

  reg clk = 1'b0, rst = 1'b0, start = 1'b0;
  reg [15:0] x = 16'b1111_1111_1111_1111; //1
  wire done;
  wire [1:0] intpart;
  wire [15:0] fracpart; 
  exponential CUT(clk, rst, start, x, done, intpart, fracpart);

  always #5 clk = ~clk;
  initial begin
  #11 rst = 1'b1;
  #10 rst = 1'b0;
  #5 start = 1'b1;
  #10 start = 1'b0;
  #500 x = 16'b1011110101110000; //0.74
  #5 start = 1'b1;
  #10 start = 1'b0;
  #500 x = 16'b0011001100110011; //0.2
  #5 start = 1'b1;
  #10 start = 1'b0;
  #500 $stop;
  end
endmodule