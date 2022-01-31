module mod100(clk,rst,tod);
  input clk,rst;
  output [6:0] tod;
  
  wire [6:0] raja,tom;
  wire s1;
  reg [6:0] tod;
  
  //core logic - combo ckt
  assign raja = tod + 7'd1;
  assign s1 = (tod == 7'd99);
  assign tom = s1 ? 7'd0 : raja;
  
  //core logic - seq' ckt
  always @ (posedge clk or posedge rst)
    begin
      if(rst)
        tod <= 0;
      else
        tod <= tom;
    end
endmodule
