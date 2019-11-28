`include "MapCell.v"
`timescale 1ns/10ps

module SET( clk , rst, en, central, radius, mode, busy, valid, candidate );
`define WAIT 0
`define CALCULATE 1
`define RESULT 2
`define END 3
input clk, rst;
input en;
input [23:0] central;
input [11:0] radius;
input [1:0] mode;
output reg busy, valid;
output reg[7:0] candidate;

reg[3:0] x1, y1, x2, y2, x3, y3, r1, r2, r3, now_x, now_y;
reg[1:0] reg_mode;
reg[1:0] state, next_state;
reg t1, t2, t3;

MapCell C1(.now_x(now_x), .now_y(now_y), .center_x(x1), .center_y(y1), .center_r(r1), .in_out(in_out_1));
MapCell C2(.now_x(now_x), .now_y(now_y), .center_x(x2), .center_y(y2), .center_r(r2), .in_out(in_out_2));
MapCell C3(.now_x(now_x), .now_y(now_y), .center_x(x3), .center_y(y3), .center_r(r3), .in_out(in_out_3));

function TempResult;
input[1:0] mode;
input A,B,C;
begin
	case(mode)
		2'b00: TempResult = A;
		2'b01: TempResult = A&B;
		2'b10: TempResult = A^B;
		2'b11: TempResult = ((A&B)|(B&C)|(C&A))^(A&B&C);
		default: TempResult = 1'bx;
	endcase
end
endfunction
always@(negedge clk or posedge rst) begin
	if(rst)
		{t1, t2, t3} <= 3'b0;
	else 
		{t1, t2, t3} <= {in_out_1, in_out_2, in_out_3};
end
always@(posedge clk or posedge rst or posedge en) begin
	if(rst) begin
		state <= `WAIT;
	end
	else if(en) begin
		{x1, y1, x2, y2, x3, y3} <= central;
		{r1, r2, r3} <= radius;
		reg_mode <= mode;
		busy <= 1;
		valid <= 0;
		now_x <= 1;
		now_y <= 1;
		candidate <= 0;
		state <= `CALCULATE;
	end
	else
		case(state)
			`WAIT: begin
				busy <= 0;
				valid <= 0;
			end
			`CALCULATE: begin
				candidate <= candidate + TempResult(reg_mode, t1, t2, t3);
				if(now_x==8)begin
					now_x <= 1;
					now_y <= now_y+1;
					if(now_y==8) 
						state <= `RESULT;
				end
				else
					now_x <= now_x+1;
			end
			`RESULT: begin
				state <= `WAIT;
				busy <=1;
				valid <=1;
			end
		endcase		
end
endmodule
