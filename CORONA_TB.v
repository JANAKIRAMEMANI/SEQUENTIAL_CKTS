module corona_tb;

reg clk = 0,rst =1;
always #5 clk = ~clk; 
initial #2 rst =0;
reg [6:0] inp = 65;
wire eurika;

`include "parameter.txt"


parameter NO=0,SC=1,SO1=2,SR=3,SO2=4, SN=5, SA=6;

corona C1 (clk,rst,inp,eurika);

initial
	begin
	#10; inp = A;
	#10; inp = A;
	#10; inp = X;
	#10; inp = W;
	#10; inp = M;
	#10; inp = C;
	#10; inp = O;
	#10; inp = R;
	#10; inp = O;
	#10; inp = C;
	#10; inp = N;
	#10; inp = P;
	#10; inp = A;
	#10; inp = P;
	#10; inp = Q;
	#10; inp = D;
	#10; inp = C;
	#10; inp = C;
	#10; inp = C;
	#10; inp = O;
	#10; inp = R;
	#10; inp = O;
	#10; inp = N;
	#10; inp = A;
	#10; inp = C;
	#10; inp = O;
	#10; inp = R;
	#10; inp = O;
	#10; inp = N;
	#10; inp = C;
	#10; inp = A;
	#10; inp = C;
	#10; inp = O;
	#10; inp = R;
	#10; inp = C;
	#10; inp = O;
	#10; inp = N;
	#10; inp = A;
	$finish;
	end
	endmodule
