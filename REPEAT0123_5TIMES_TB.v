module tb;
  reg clk,rst;
  wire [1:0] cnt;
  
  repeat5 DUT (clk,rst,cnt);
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
  end
  
  initial clk = 0;
  always #5 clk = ~clk;
  initial #1000 $finish;
    
  initial begin
    rst = 1;
    #2;
    rst = 0;
  end
  
endmodule
