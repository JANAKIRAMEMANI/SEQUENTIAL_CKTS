module tb_mod5;
  reg clk,rst;
  wire [2:0] tod;
  
  mod5 dut (clk,rst,tod);
  
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end
  
  initial begin
    clk = 0; rst = 0;
    #21;
    rst = 1;
    #2;
    rst = 0;
    #100;
    $finish;
  end
  
  always #5 clk = ~clk;
endmodule
