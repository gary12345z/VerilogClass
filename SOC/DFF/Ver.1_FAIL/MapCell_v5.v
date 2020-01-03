// 
// Description: using table to calculate square then compare X^2 + Y^2 with R^2 to know if 'now' inside the circle or not 
// Range: 
// 		center_x = 0~9
// 		center_y = 0~9
// 		center_x = 0~15
// Date: 2020/01/02
// Author: Hu, Ren Bo
module MapCell(
now_id, 	 // [ 5: 3] = now_x, 	[ 2: 0] = now_y
circle_data, // [11: 8] = center_x, [ 7: 4] = center_y, [ 3: 0] = center_r
result  // if "now" inside the circle of "center" or not
);
input[11:0] circle_data;
input[2:0] now_id;
output[7:0] result;
reg[7:0] result;
wire[3:0] now_y, center_x, center_y, center_r;
wire[3:0] delta_x_1, delta_x_2, delta_x_3, delta_x_4, delta_x_5, delta_x_6, delta_x_7, delta_x_8, delta_y;

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
		4'd 0: square = 8'd  0;
		4'd 1: square = 8'd  1;
		4'd 2: square = 8'd  4;
		4'd 3: square = 8'd  9;
		4'd 4: square = 8'd 16;
		4'd 5: square = 8'd 25;
		4'd 6: square = 8'd 36;
		4'd 7: square = 8'd 49;
		4'd 8: square = 8'd 64;
		default: square = 8'bx;
	endcase
end
endfunction

assign {center_x, center_y, center_r} = circle_data;
assign now_y = now_id+1;
assign delta_x_1 = delta(4'd1, center_x);
assign delta_x_2 = delta(4'd2, center_x);
assign delta_x_3 = delta(4'd3, center_x);
assign delta_x_4 = delta(4'd4, center_x);
assign delta_x_5 = delta(4'd5, center_x);
assign delta_x_6 = delta(4'd6, center_x);
assign delta_x_7 = delta(4'd7, center_x);
assign delta_x_8 = delta(4'd8, center_x);
assign delta_y 	 = delta(now_y, center_y);

always@(*) begin
	result = 8'b0;
	if(square(delta_x_1) + square(delta_y) <= square(center_r)) result[0] = 1;
	if(square(delta_x_2) + square(delta_y) <= square(center_r)) result[1] = 1;
	if(square(delta_x_3) + square(delta_y) <= square(center_r)) result[2] = 1;
	if(square(delta_x_4) + square(delta_y) <= square(center_r)) result[3] = 1;
	if(square(delta_x_5) + square(delta_y) <= square(center_r)) result[4] = 1;
	if(square(delta_x_6) + square(delta_y) <= square(center_r)) result[5] = 1;
	if(square(delta_x_7) + square(delta_y) <= square(center_r)) result[6] = 1;
	if(square(delta_x_8) + square(delta_y) <= square(center_r)) result[7] = 1;
end
endmodule
