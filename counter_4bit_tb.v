`timescale 1ns/1ps
module counter_4bit_tb;
  reg clk,rst;
  wire [3:0] count;
  
  counter_4bit uut(
    .clk(clk),
    .rst(rst),
    .count(count)
  );
  always #5 clk = ~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,counter_4bit_tb);
    clk = 0;
    rst = 1;
    #10;
    rst = 0;
    #100
    $finish;
  end
endmodule

  
