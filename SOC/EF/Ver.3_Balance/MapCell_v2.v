// This module can only call for SET_v2.v, SET_v3.v
// Description: using table to calculate square then compare X^2 + Y^2 with R^2 to know if 'now' inside the circle or not 
// Range: 
// 		center_x = 0~9
// 		center_y = 0~9
// 		center_x = 0~15
// Date: 2019/11/30
// Author: Hu, Ren Bo
module MapCell(now, center_x, center_y, center_r, result);
input[5:0] now;
input[3:0] center_x, center_y, center_r;
output reg result;
wire[3:0]delta_x, delta_y, now_x, now_y;

function[3:0] delta;
input[3:0] A, B;
begin 
	if(A>B) delta = A - B;
	else delta = B - A;
end
endfunction

function[7:0] square;
input[3:0] A;
begin 
	case(A)
		4'd0: square = 8'd0;
		4'd1: square = 8'd1;
		4'd2: square = 8'd4;
		4'd3: square = 8'd9;
		4'd4: square = 8'd16;
		4'd5: square = 8'd25;
		4'd6: square = 8'd36;
		4'd7: square = 8'd49;
		4'd8: square = 8'd64;
		4'd9: square = 8'd81;
		4'd10: square = 8'd100;
		4'd11: square = 8'd121;
		4'd12: square = 8'd144;
		4'd13: square = 8'd169;
		4'd14: square = 8'd196;
		4'd15: square = 8'd225;
		default: square = 8'bx;
	endcase
end
endfunction

assign now_x = now[2:0]+1;
assign now_y = now[5:3]+1;
assign delta_x = delta(now_x, center_x);
assign delta_y = delta(now_y, center_y);

always@(*) begin
	if(square(delta_x) + square(delta_y) > square(center_r)) result = 0;
	else result = 1;
end
endmodule
