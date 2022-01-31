module tb;
  reg clk,rst;
  wire [1:0] mins,secs;
  
  watch HMS (clk,rst,mins,secs);
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
  end
  
  initial clk = 0;
  always #5 clk = ~clk;
  initial #100000 $finish;
    
  initial begin
    rst = 1;
    #2;
    rst = 0;
  end
  
  always@(negedge clk)
    begin
      $display(mins,":",secs);
    end
  
endmodule
