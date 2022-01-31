module tb;
  reg clk,rst;
  wire [6:0] tod;
  
  mod100 kabali (clk,rst,tod);
  
  initial clk = 0;
  always #5 clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
  end
  
  initial begin
    rst = 1;
    #2
    rst = 0; #1; $display(clk,rst,":",tod);
  end
  
  initial #3000 $stop;
endmodule
