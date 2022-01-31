module watch(clk,rst,mins,secs);
  input clk,rst;
  output reg [5:0] mins,secs;
  
  parameter FN=59;
  
/*  //'ifdef data
  wire [5:0] b1,b2,b3,b4,b5;
  wire s1,s2;
  
  assign b1 = secs + 1;
  assign s1 = (secs==FN);
  assign b2 = s1 ? 0 : b1;
  
  always @ (posedge clk or posedge rst)
    begin
      if (rst)
        secs <= 0;
      else 
        secs <= b2;
    end
  
  assign b5 = mins + 1;
  assign s2 = (mins == FN);
  assign b3 = s2 ? 0 : b5;
  assign b4 = s1 ? b3 : mins;	
  
  always @ (posedge clk or posedge rst)
    begin
      if (rst)
        mins <= 0;
      else 
        mins <= b4;
    end
  //'endif */
  
 //'ifdef BEH
   always @ (posedge clk or posedge rst)
    begin
      if (rst)
        secs <= 0;
      else 
        begin
          if(secs==FN) 
            secs <= 0;
          else
            secs <= secs + 1;
        end
    end
  
  
  always @ (posedge clk or posedge rst)
    begin
      if (rst)
        mins <= 0;
      else 
        begin
          if(secs==FN)
            begin
              if(mins == FN) 
                mins <= 0;
              else
                mins <= mins + 1;
            end
          else 
            mins <= mins;
        end
    end     
  //'endif 

endmodule 

//WATCH - HOURS : MINS : SECS
