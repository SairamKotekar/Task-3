`timescale 1ns/1ps

module d_flipflop_tb;
  reg clk, D;
  wire Q;
  
  d_flipflop uut(
    .clk(clk),
    .D(D),
    .Q(Q)
  );
  
  always #5 clk = ~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,d_flipflop_tb);
    
    clk = 0;
    D = 0;
    
    #10 D = 1;
    #10 D = 0;
    #10 D = 1;
    #10 D = 0;
    
    #20 $finish;
  end
  
endmodule
  
