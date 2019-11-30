// This module can only call for SET_v2.v, SET_v3.v
// Description: using table to know if 'now' inside the circle or not
// Range: 
// 		center_x = 0~9
// 		center_y = 0~9
// 		center_r = 0~15
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

assign now_x = now[2:0]+1;
assign now_y = now[5:3]+1;
assign delta_x = delta(now_x, center_x);
assign delta_y = delta(now_y, center_y);

always@(*) begin
case(center_r)
4'd 0: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	default: result = 1'bx;
	endcase
4'd 1: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	default: result = 1'bx;
	endcase
4'd 2: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	default: result = 1'bx;
	endcase
4'd 3: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	default: result = 1'bx;
	endcase
4'd 4: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	default: result = 1'bx;
	endcase
4'd 5: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	default: result = 1'bx;
	endcase
4'd 6: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	default: result = 1'bx;
	endcase
4'd 7: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: result = 0;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	default: result = 1'bx;
	endcase
4'd 8: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 0;
		4'd 2: result = 0;
		4'd 3: result = 0;
		4'd 4: result = 0;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	default: result = 1'bx;
	endcase
4'd 9: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 0;
		4'd 6: result = 0;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	default: result = 1'bx;
	endcase
4'd10: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 0;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	default: result = 1'bx;
	endcase
4'd11: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 0;
		default: result = 1'bx;
		endcase
	default: result = 1'bx;
	endcase
4'd12: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: result = 1;
		4'd 1: result = 1;
		4'd 2: result = 1;
		4'd 3: result = 1;
		4'd 4: result = 1;
		4'd 5: result = 1;
		4'd 6: result = 1;
		4'd 7: result = 1;
		4'd 8: result = 1;
		default: result = 1'bx;
		endcase
	default: result = 1'bx;
	endcase
default: result = 1;
endcase
end

endmodule
