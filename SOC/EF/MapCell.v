`timescale 1ns/10ps
module MapCell(now_x, now_y, center_x, center_y, center_r, in_out);
input[3:0] now_x, now_y, center_x, center_y, center_r;
output reg in_out;
wire[3:0]delta_x, delta_y;

function[3:0] abs;
input [3:0]A;
begin 
	abs =(A[3])? ~A+1:A;
end
endfunction

assign delta_x = abs(now_x - center_x);
assign delta_y = abs(now_y - center_y);

always@(*) begin
	case(center_r)
4'd 0: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	default: in_out = 1'bx;
	endcase
4'd 1: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	default: in_out = 1'bx;
	endcase
4'd 2: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	default: in_out = 1'bx;
	endcase
4'd 3: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	default: in_out = 1'bx;
	endcase
4'd 4: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	default: in_out = 1'bx;
	endcase
4'd 5: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	default: in_out = 1'bx;
	endcase
4'd 6: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	default: in_out = 1'bx;
	endcase
4'd 7: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: in_out = 0;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	default: in_out = 1'bx;
	endcase
4'd 8: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 0;
		4'd 2: in_out = 0;
		4'd 3: in_out = 0;
		4'd 4: in_out = 0;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	default: in_out = 1'bx;
	endcase
4'd 9: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 0;
		4'd 6: in_out = 0;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	default: in_out = 1'bx;
	endcase
4'd10: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 0;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	default: in_out = 1'bx;
	endcase
4'd11: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 0;
		default: in_out = 1'bx;
		endcase
	default: in_out = 1'bx;
	endcase
4'd12: 
	case(delta_x)
	4'd 0: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 1: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 2: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 3: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 4: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 5: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 6: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 7: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	4'd 8: 
		case(delta_y)
		4'd 0: in_out = 1;
		4'd 1: in_out = 1;
		4'd 2: in_out = 1;
		4'd 3: in_out = 1;
		4'd 4: in_out = 1;
		4'd 5: in_out = 1;
		4'd 6: in_out = 1;
		4'd 7: in_out = 1;
		4'd 8: in_out = 1;
		default: in_out = 1'bx;
		endcase
	default: in_out = 1'bx;
	endcase
default: in_out = 1'bx;
endcase
end

endmodule
