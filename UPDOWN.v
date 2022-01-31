module updown(clk,rst,cnt);
  input clk,rst;
  output [2:0] cnt;
  
  wire s1,s2,s3,s4,s5,s6,s7;
  reg state;
  wire [2:0] b1,b2,b3,b4,b5;
  reg [2:0] cnt;
  
  parameter UP=0, DOWN=1;
  assign s1 = (cnt==6);
  assign s3 = s1 ? DOWN : UP;
  assign s2 = (cnt==1);
  assign s4 = s2 ? UP : DOWN;
  assign s5 = state ? s4 : s3;
  
  always @ (posedge clk or posedge rst)
    begin
      if(rst)
        state <= UP;
      else
        state <= s5;
    end
  
  assign b1 = cnt + 1;
  assign b2 = cnt - 1;
  assign b3 = state ? b2 : b1;
  assign s6 = (cnt==0);
  assign s7 = (cnt==7);
  assign b4 = s6 ? 1 : b3;
  assign b5 = s7 ? 6 : b4;
  
  always @ (posedge clk or posedge rst)
    begin
      if(rst)
        cnt <= 0;
      else
        cnt <= b5;
    end
endmodule 
