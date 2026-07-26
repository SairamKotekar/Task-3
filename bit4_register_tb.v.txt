`timescale 1ns/1ps
module bit4_register_tb;
  reg clk;
  reg [3:0] D;
  reg [3:0] Q;
  
  bit4_register uut(
    .clk(clk),
    .D(D),
    .Q(Q)
  );
  always #5 clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,bit4_register_tb);
    clk = 0;
    D = 4'b0000;
    #10;
    D = 4'b0001;
    #10;
    D = 4'b0010;
    #10;
    D = 4'b0011;
    #10;
    $finish;
  end
endmodule
    
