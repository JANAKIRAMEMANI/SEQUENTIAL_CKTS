module rara (clk,rst,inp,eurika);
input clk,rst;
input [6:0] inp;
output eurika;
reg [2:0] state;
wire eurika;
`include "parameter.txt"

parameter NO=0,SR1=1,SA1=2,SR2=3,SA2=4;

always@(posedge clk or posedge rst)
begin
	if(rst) state<=NO;
	else
	case(state)
	NO: state <= (inp==R)? SR1: NO;
	SR1: case(inp)
		A:state<=SA1;
		R:state<=SR1;
		default: state <=  NO;
		endcase
		
	SA1: case(inp)
		R:state<=SR2;
		default: state <=  NO;
		endcase
		
	SR2: case(inp)
		A:state<=SA2;
		R:state<=SR1;
		default: state <=  NO;
		endcase
		
	SA2: case(inp)
		`ifdef NOL
			R:state<=SR1;
		`endif
		`ifdef OL
			R:state<=SR2;
		`endif
		default: state <=  NO;
		endcase
	endcase
	end
	assign eurika = (state == SA2);
	
	endmodule

//RARA PATTERN USING STATE DIAGRAM
