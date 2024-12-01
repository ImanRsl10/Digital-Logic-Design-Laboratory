module Wrapper_Controller(input clk, rst, start, Co, eng_done, output reg done, inc_count, rst_count, eng_start);
  reg [2:0] ps, ns;
  parameter [2:0]
  St0 = 0, St1 = 1, St2 = 2, wait_exp = 3, cnt = 4, wait_St1 = 5, wait_St0 = 6;

  always@(clk,start,Co)begin
    ns = St0;
    case(ps)
      St0: ns = (start) ? St1 : St0;
      St1: ns = (start) ? St1 : St2;
      St2: ns = wait_exp;
      wait_exp: ns = (eng_done) ? cnt : wait_exp;
      cnt: ns = (Co) ? St0 : wait_St1;
      wait_St1: ns = (start) ? wait_St0 : wait_St1;
      wait_St0: ns = (start) ? wait_St0 : St2;
    endcase
  end

  always@(ps)begin
    {done, inc_count, rst_count, eng_start} = 4'b0000;
    case(ps)
      St0: done = 1'b1;
      St1: rst_count = 1'b1;
      St2: eng_start = 1'b1;
      wait_exp:;
      cnt: inc_count = 1'b1;
      wait_St1:;
      wait_St0:;
    endcase
  end

  always@(posedge clk, posedge rst)begin
   if(rst)
     ps <= St0;
   else
     ps <= ns;
   end
endmodule