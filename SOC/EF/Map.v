`define MAP_INITIAL 0
`define MAP_SHIFT_X 1
`define MAP_SHIFT_Y 2
`define MAP_RESULT 3
`define TOTAL_MAP_BITS 256
`define MAP_BITS 64

module Map_Cell(init_D, x_D, y_D, state, clk, Q);
input[1:0] state;
input init_D, x_D, y_D, clk;
output reg Q;
always@(posedge clk) begin
	case(state)
		`MAP_INITIAL:
			Q <= init_D;
		`MAP_SHIFT_X:
			Q <= x_D;
		`MAP_SHIFT_Y:
			Q <= y_D;
	endcase
end
endmodule

module Map(x, y, r, clk, reset, map, done);
input[3:0] x, y, r;
input clk, reset;
output[`MAP_BITS-1:0] map;
output done;
reg[3:0] x_delta, next_x_delta, y_delta, next_y_delta;
reg[1:0] state, next_state;
wire[`TOTAL_MAP_BITS-1:0] temp_map;

assign done = (state == `MAP_RESULT)? 1:0;
assign map = {temp_map[15:8],temp_map[15+16*1:8+16*1],temp_map[15+16*2:8+16*2]
	,temp_map[15+16*3:8+16*3],temp_map[15+16*4:8+16*4],temp_map[15+16*5:8+16*5]
	,temp_map[15+16*6:8+16*6],temp_map[15+16*7:8+16*7]};

Map_Cell Cell[`TOTAL_MAP_BITS-1:0](.init_D(init_value(r)), 
	.x_D({temp_map[`TOTAL_MAP_BITS-1-1:`TOTAL_MAP_BITS-1-15], 1'b0,
	temp_map[`TOTAL_MAP_BITS-1-1-16*1 :`TOTAL_MAP_BITS-1-15-16*1], 1'b0,
	temp_map[`TOTAL_MAP_BITS-1-1-16*2 :`TOTAL_MAP_BITS-1-15-16*2], 1'b0,
	temp_map[`TOTAL_MAP_BITS-1-1-16*3 :`TOTAL_MAP_BITS-1-15-16*3], 1'b0,
	temp_map[`TOTAL_MAP_BITS-1-1-16*4 :`TOTAL_MAP_BITS-1-15-16*4], 1'b0,
	temp_map[`TOTAL_MAP_BITS-1-1-16*5 :`TOTAL_MAP_BITS-1-15-16*5], 1'b0,
	temp_map[`TOTAL_MAP_BITS-1-1-16*6 :`TOTAL_MAP_BITS-1-15-16*6], 1'b0,
	temp_map[`TOTAL_MAP_BITS-1-1-16*7 :`TOTAL_MAP_BITS-1-15-16*7], 1'b0,
	temp_map[`TOTAL_MAP_BITS-1-1-16*8 :`TOTAL_MAP_BITS-1-15-16*8], 1'b0,
	temp_map[`TOTAL_MAP_BITS-1-1-16*9 :`TOTAL_MAP_BITS-1-15-16*9], 1'b0,
	temp_map[`TOTAL_MAP_BITS-1-1-16*10:`TOTAL_MAP_BITS-1-15-16*10], 1'b0,
	temp_map[`TOTAL_MAP_BITS-1-1-16*11:`TOTAL_MAP_BITS-1-15-16*11], 1'b0,
	temp_map[`TOTAL_MAP_BITS-1-1-16*12:`TOTAL_MAP_BITS-1-15-16*12], 1'b0,
	temp_map[`TOTAL_MAP_BITS-1-1-16*13:`TOTAL_MAP_BITS-1-15-16*13], 1'b0,
	temp_map[`TOTAL_MAP_BITS-1-1-16*14:`TOTAL_MAP_BITS-1-15-16*14], 1'b0,
	temp_map[`TOTAL_MAP_BITS-1-1-16*15:`TOTAL_MAP_BITS-1-15-16*15], 1'b0}), 
	.y_D({16'b0,temp_map[`TOTAL_MAP_BITS-1:16]}), .state(state), .clk(clk), .Q(temp_map));

function[`TOTAL_MAP_BITS-1:0] init_value;
input[3:0] r;
begin
	case(r)
		4'd0:
			init_value = `TOTAL_MAP_BITS 'H0000_0000_0000_0000_0000_0000_0000_0000_0100_0000_0000_0000_0000_0000_0000_0000;
		4'd1:
			init_value = `TOTAL_MAP_BITS 'H0000_0000_0000_0000_0000_0000_0000_0100_0380_0100_0000_0000_0000_0000_0000_0000;
		4'd2:
			init_value = `TOTAL_MAP_BITS 'H0000_0000_0000_0000_0000_0000_0100_0380_07C0_0380_0100_0000_0000_0000_0000_0000;
		4'd3:
			init_value = `TOTAL_MAP_BITS 'H0000_0000_0000_0000_0000_0100_07C0_07C0_0FE0_07C0_07C0_0100_0000_0000_0000_0000;
		4'd4:
			init_value = `TOTAL_MAP_BITS 'H0000_0000_0000_0000_0100_07C0_0FE0_0FE0_1FF0_0FE0_0FE0_07C0_0100_0000_0000_0000;
		4'd5:
			init_value = `TOTAL_MAP_BITS 'H0000_0000_0000_0100_0FE0_1FF0_1FF0_1FF0_3FF8_1FF0_1FF0_1FF0_0FE0_0100_0000_0000;
		4'd6:
			init_value = `TOTAL_MAP_BITS 'H0000_0000_0100_0FE0_1FF0_3FF8_3FF8_3FF8_7FFC_3FF8_3FF8_3FF8_1FF0_0FE0_0100_0000;
		4'd7:
			init_value = `TOTAL_MAP_BITS 'H0000_0100_0FE0_1FF0_3FF8_7FFC_7FFC_7FFC_FFFE_7FFC_7FFC_7FFC_3FF8_1FF0_0FE0_0100;
		4'd8:
			init_value = `TOTAL_MAP_BITS 'H0100_0FE0_3FF8_7FFC_7FFC_FFFE_FFFE_FFFE_FFFF_FFFE_FFFE_FFFE_7FFC_7FFC_3FF8_0FE0;
		4'd9:
			init_value = `TOTAL_MAP_BITS 'H1FF0_3FF8_7FFC_FFFE_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFE_7FFC_3FF8;
		4'd10:
			init_value = `TOTAL_MAP_BITS 'H7FFC_FFFE_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFE;
		4'd11:
			init_value = `TOTAL_MAP_BITS 'HFFFE_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF;
		default:
			init_value = `TOTAL_MAP_BITS 'HFFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF;
	endcase
end
endfunction

always@(*) begin
	case(state)
		`MAP_INITIAL: begin
			next_state = (x==1)? (y==1)? `MAP_RESULT : `MAP_SHIFT_Y : `MAP_SHIFT_X;
			next_x_delta = x - 1;
			next_y_delta = y - 1;
			end
		`MAP_SHIFT_X: begin
			next_state = (x_delta==1)?  (y_delta==0)? `MAP_RESULT : `MAP_SHIFT_Y : `MAP_SHIFT_X;
			next_x_delta = x_delta - 1;
			next_y_delta = y_delta;
			end
		`MAP_SHIFT_Y: begin
			next_state = (y_delta==1)? `MAP_RESULT : `MAP_SHIFT_Y;
			next_x_delta = x_delta;
			next_y_delta = y_delta - 1;
			end
		`MAP_RESULT: begin
			next_state = `MAP_RESULT;
			next_x_delta = x_delta;
			next_y_delta = y_delta;
			end
	endcase
end

always@(posedge clk) begin
	state <= (reset)? `MAP_INITIAL : next_state;
	x_delta <= next_x_delta;
	y_delta <= next_y_delta;
end
endmodule
/*
module Set_line(x, y, r, line_out, clk, reset);
parameter LINE_NUM = 1;
input[3:0] x, y, r;
input clk, en;
output[7:0]line_out;
reg[4:0] in_count, out_count;

function[4:0]Get_Width;
input[3:0] delta_y, r;
begin
	case(r)
		4'd0:
			case(delta_y)
				4'd0: Get_Width = 1;
				default: Get_Width = 0;
			endcase
		4'd1:
			case(delta_y)
				4'd0: Get_Width = 2;
				4'd1: Get_Width = 1;
				default: Get_Width = 0;
			endcase
		4'd2:
			case(delta_y)
				4'd0: Get_Width = 3;
				4'd1: Get_Width = 2;
				4'd2: Get_Width = 1;
				default: Get_Width = 0;
			endcase
		//and so on...
	endcase
end
endfunction

function[4:0]Get_In_Count;
input[3:0] x, width;
assign Get_In_Count = (x>width)? (width>>2)+1 : x+width;
endfunction

function[4:0]Get_Out_Count;
input[3:0] x, width;
assign Get_Out_Count = (x>width)? x-width : 0;
endfunction

always@(posedge clk) begin 
	if(reset == 1)state = `IN_COUNT
end
endmodule

module Set_Map(x, y, r, map, clk);
input[3:0] x, y, r;
input clk;
output[63:0]map;


endmodule*/
