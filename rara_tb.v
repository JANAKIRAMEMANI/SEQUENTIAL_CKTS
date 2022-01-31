module rara_tb;

reg clk = 0,rst =1;
always #5 clk = ~clk; 
initial #2 rst =0;
reg [6:0] inp = 65;
wire eurika;

`include "parameters.txt"

rara r1(clk,rst,inp,eurika);

initial
	begin
	#10; inp = W;
	#10; inp = P;
	#10; inp = R;
	#10; inp = A;
	#10; inp = R;
	#10; inp = A;
	#10; inp = R;
	#10; inp = A;
	#10; inp = R;
	#10; inp = A;
	#10; inp = X;
	#10; inp = Y;
	#10; inp = M;
	#10; inp = P;
	#10; inp = R;
	#10; inp = A;
	#10; inp = R;
	#10; inp = P;
	#10; inp = A;
	#10; inp = R;
	#10; inp = A;
	#10; inp = R;
	#10; inp = A;
	#10; inp = R;
	#10; inp = Z;
	#10; inp = A;
	#10; inp = R;
	#10; inp = A;
	
	$finish;
	end
	endmodule