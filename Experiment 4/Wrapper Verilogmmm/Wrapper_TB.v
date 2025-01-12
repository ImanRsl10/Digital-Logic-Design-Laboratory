`timescale 1ns/1ns
module Wrapper_TB();

  reg clk = 1'b0, rst = 1'b0, start = 1'b0;
  wire done, eng_done, Co, eng_start, inc_count, rst_count;
  wire [1:0] intpart;
  wire [7:0] address;
  wire [15:0] fracpart, eng_x; 

  exponential CUT1(clk, rst, eng_start, eng_x, eng_done, intpart, fracpart);
  Wrapper_Controller UUT1(clk, rst, start, Co, eng_done, done, inc_count, rst_count, eng_start);
  Wrapper_Counter UUT2(clk, rst_count, inc_count, address, Co);
  ROM UUT3(clk, address, eng_x);

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
