module repeat5(clk,rst,cnt);
  input clk,rst;
  output [1:0] cnt;
  
  reg [1:0] cnt;
  wire [2:0] b1,b2;
  wire [1:0] b3,b4,b5;
  wire s1,s2;
  reg [2:0] mod5;
 
  assign b1 = mod5 + 1;
  assign s1 = (mod5==4);
  assign b2 = s1 ? 0 : b1;
  
  always @ (posedge clk or posedge rst)
    begin
      if (rst)
        mod5 <= 0;
      else 
        mod5 <= b2;
    end
  
  //'ifdef five0123
  //assign b3 = cnt + 1;
  //assign b4 = s1 ? b3 : cnt;  //0123 five times
  //'endif
  
  //'ifdef five012
  assign b5 = cnt + 1;
  assign s2 = cnt == 2;
  assign b3 = s2 ? 0 : b5;
  assign b4 = s1 ? b3 : cnt;	//012 five times
  //'endif
  
  always @ (posedge clk or posedge rst)
    begin
      if (rst)
        cnt <= 0;
      else 
        cnt <= b4;
    end
  
endmodule 
