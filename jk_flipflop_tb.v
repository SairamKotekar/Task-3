`timescale 1ns/1ps
module jk_flipflop_tb;
  reg clk,J,K;
  wire Q;
  jk_flipflop uut(
    .clk(clk),
    .J(J),
    .K(K),
    .Q(Q)
  );
  always #5 clk = ~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,jk_flipflop_tb);
    
    clk = 0;
    
    J = 0; K = 0;
    #10;
    J = 0; K = 1;
    #10;
    J = 1; K = 0;
    #10;
    J = 1; K = 1;
    #20;
    
    $finish;
  end
endmodule
