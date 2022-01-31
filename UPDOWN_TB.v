module tb;
  reg clk,rst;
  wire  [2:0] cnt;
  
  updown ud (clk,rst,cnt);
  
  initial clk = 0;
  always #5 clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
  end
  
  initial begin
    rst = 1;
    #2
    rst = 0; #1; $display(clk,rst,":",cnt);
  end
  
  initial #3000 $stop;
endmodule
