module Wrapper_Controller(input clk, rst, start, Co, eng_done, output reg done, inc_count, rst_count, eng_start);
  reg [2:0] ps, ns;
  parameter [2:0]
  A = 0, B = 1, C = 2, D = 3, E = 4, F = 5, G = 6;

  always@(posedge clk)begin
    ns = A;
    case(ps)
      A: ns = B;
      B: ns = (start) ? C : B;
      C: ns = (start) ? C : D;
      D: ns = E;
      E: ns = (eng_done) ? F:
              (Co) ? G : E;
      F: ns = B;
      G: ns = A;
    endcase
  end

  always@(ps)begin
    {done, inc_count, rst_count, eng_start} = 4'b0000;
    case(ps)
      A: {rst_count, done} = 2'b11;
      B:;
      C: eng_start = 1'b1;
      D:;
      E:;
      F: inc_count = 1'b1;
      G: done = 1'b1;
    endcase
  end

  always@(posedge clk, posedge rst)begin
   if(rst)
     ps <= A;
   else
     ps <= ns;
   end
endmodule
