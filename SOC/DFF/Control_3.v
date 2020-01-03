// This module can only call for SET_v3.v
// Description: Controling 3 MapCell
// Date: 2019/11/30
// Author: Hu, Ren Bo
`define WAIT 3'd0
`define SETUP 3'd1
`define CALCULATE 3'd2
`define LAST_CALCULATE 3'd3
`define RESULT 3'd4

module Control(clk , rst, en, central, radius, mode, candidate, busy, valid, 
now_0, now_1, now_2, center_x0, center_x1, center_x2, center_y0, center_y1, center_y2, 
center_r0, center_r1, center_r2, tmp_0, tmp_1, tmp_2);
input [23:0] central;
input [11:0] radius;
input [1:0] mode;
input clk, rst, en, tmp_0, tmp_1, tmp_2;
output[7:0] candidate;
output[5:0] now_0, now_1, now_2;
output[3:0] center_x0, center_x1, center_x2, center_y0, center_y1, center_y2, center_r0, center_r1, center_r2;
output busy, valid;

// real register
reg[7:0] candidate;
reg[5:0] now_0, now_1, now_2;
reg[3:0] Ax, Ay, Bx, By, Cx, Cy, Ar, Br, Cr;
reg[2:0] state;
reg[1:0] reg_mode;
reg count, tmp_3;

// just wire
reg[7:0] next_candidate;
reg[5:0] next_0, next_1, next_2;
reg[3:0] center_x0, center_x1, center_x2, center_y0, center_y1, center_y2, center_r0, center_r1, center_r2;
reg[2:0] next_state;
reg next_count, busy, valid;

function[7:0] ADD;
	input[7:0] sum;
	input[2:0] n;
	integer i;
	begin
		ADD = sum;
		for(i=0;i<3;i=i+1)
			if(n[i]) ADD = ADD + 8'd1;
	end
endfunction

// busy & valid for output
always@(*) begin
	case(state)
		`WAIT: begin
			busy = 0;
			valid = 0;
		end
		`SETUP: begin
			busy = 1;
			valid = 0;
		end
		`CALCULATE: begin
			busy = 1;
			valid = 0;
		end
		`LAST_CALCULATE: begin
			busy = 1;
			valid = 0;
		end
		`RESULT: begin
			busy = 1;
			valid = 1;
		end
		default: begin
			busy = 1'bx;
			valid = 1'bx;
		end
	endcase
end

// candidate & count
always@(*) begin
	case(state)
		`WAIT: begin
			next_candidate = 8'b0;
			next_count = 1'b0;
		end
		`SETUP: begin
			next_candidate = 8'b0;
			next_count = ~count;
		end
		`CALCULATE: begin
			case(reg_mode)
				2'b00: begin
					next_candidate = ADD(candidate, {tmp_0, tmp_1, tmp_2});
					next_count = 1'bx;
				end
				2'b01: begin
					if(!count)
						next_candidate = ADD(candidate, {1'b0, (tmp_0&tmp_1), (tmp_2&tmp_3)});
					else
						next_candidate = ADD(candidate, {2'b0, (tmp_0&tmp_1)});
					next_count = ~count;
				end
				2'b10: begin
					if(!count)
						next_candidate = ADD(candidate, {1'b0, (tmp_0^tmp_1), (tmp_2^tmp_3)});
					else
						next_candidate = ADD(candidate, {2'b0, (tmp_0^tmp_1)});
					next_count = ~count;
				end	
				2'b11: begin
					next_candidate = ADD(candidate, {2'b0, ((tmp_0&tmp_1&~tmp_2)|(tmp_0&~tmp_1&tmp_2)|(~tmp_0&tmp_1&tmp_2))});
					next_count = 1'bx;
				end	
				default: begin
					next_candidate = 8'bx;
					next_count = 1'bx;
				end	
			endcase	
		end
		`LAST_CALCULATE: begin
			case(reg_mode)
				2'b00: begin
					next_candidate = ADD(candidate, {2'b0, tmp_0});
					next_count = 1'bx;
				end
				2'b01: begin
					next_candidate = ADD(candidate, {2'b0, (tmp_0&tmp_1)});
					next_count = 1'bx;
				end
				2'b10: begin
					next_candidate = ADD(candidate, {2'b0, (tmp_0^tmp_1)});
					next_count = 1'bx;
				end	
				2'b11: begin
					next_candidate = ADD(candidate, {2'b0, ((tmp_0&tmp_1&~tmp_2)|(tmp_0&~tmp_1&tmp_2)|(~tmp_0&tmp_1&tmp_2))});
					next_count = 1'bx;
				end	
				default: begin
					next_candidate = 8'bx;
					next_count = 1'bx;
				end	
			endcase	
		end
		default: begin
			next_candidate = 8'bx;
			next_count = 1'bx;
		end
	endcase
end

// next_0, next_1, next_2 for Mapcell input
always@(*) begin
	case(state)
		`SETUP: begin
			case(reg_mode)
				2'b00: begin
					next_0 = now_0 + 3;
					next_1 = now_1 + 3;
					next_2 = now_2 + 3;
				end
				2'b01: begin
					next_0 = now_0 + 1;
					next_1 = now_1 + 1;
					next_2 = now_2;
				end
				2'b10: begin
					next_0 = now_0 + 1;
					next_1 = now_1 + 1;
					next_2 = now_2;
				end
				2'b11: begin
					next_0 = now_0 + 1;
					next_1 = now_1 + 1;
					next_2 = now_2 + 1;
				end
				default: begin
					next_0 = 6'bx;
					next_1 = 6'bx;
					next_2 = 6'bx;
				end	
			endcase	
		end
		`CALCULATE: begin
			case(reg_mode)
				2'b00: begin
					next_0 = now_0 + 3;
					next_1 = now_1 + 3;
					next_2 = now_2 + 3;
				end
				2'b01: begin
					next_0 = now_0 + 1;
					next_1 = now_1 + 1;
					next_2 =(count)? now_2 + 1 : now_2;
				end
				2'b10: begin
					next_0 = now_0 + 1;
					next_1 = now_1 + 1;
					next_2 =(count)? now_2 + 1 : now_2;
				end
				2'b11: begin
					next_0 = now_0 + 1;
					next_1 = now_1 + 1;
					next_2 = now_2 + 1;
				end
				default: begin
					next_0 = 6'bx;
					next_1 = 6'bx;
					next_2 = 6'bx;
				end	
			endcase	
		end
		default: begin
			next_0 = 6'bx;
			next_1 = 6'bx;
			next_2 = 6'bx;
		end
	endcase
end

// center_0, center_1, center_2 for Mapcell input
always@(*) begin 
	case(reg_mode)
		2'b00: begin
			{center_x0, center_y0, center_r0} = {Ax, Ay, Ar};
			{center_x1, center_y1, center_r1} = {Ax, Ay, Ar};
			{center_x2, center_y2, center_r2} = {Ax, Ay, Ar};
		end	
		2'b01: begin
			{center_x0, center_y0, center_r0} = {Ax, Ay, Ar};
			{center_x1, center_y1, center_r1} = {Bx, By, Br};
			{center_x2, center_y2, center_r2} = (count)? {Ax, Ay, Ar} : {Bx, By, Br};
		end	
		2'b10: begin
			{center_x0, center_y0, center_r0} = {Ax, Ay, Ar};
			{center_x1, center_y1, center_r1} = {Bx, By, Br};
			{center_x2, center_y2, center_r2} = (count)? {Ax, Ay, Ar} : {Bx, By, Br};
		end	
		2'b11: begin
			{center_x0, center_y0, center_r0} = {Ax, Ay, Ar};
			{center_x1, center_y1, center_r1} = {Bx, By, Br};
			{center_x2, center_y2, center_r2} = {Cx, Cy, Cr};
		end	
		default: begin
			{center_x0, center_y0, center_r0} = 12'bx;
			{center_x1, center_y1, center_r1} = 12'bx;
			{center_x2, center_y2, center_r2} = 12'bx;
		end	
	endcase	
end

always@(*) begin
	case(state)
		`WAIT:
			next_state = `WAIT;
		`SETUP:
			next_state = `CALCULATE;
		`CALCULATE: 
			case(reg_mode)
				2'b00: 
					next_state = (now_0==6'd63)? `LAST_CALCULATE : `CALCULATE;
				2'b11:
					next_state = (now_0==6'd63)? `LAST_CALCULATE : `CALCULATE;
				2'b01:
					next_state = (now_0==6'd42)? `LAST_CALCULATE : `CALCULATE;
				2'b10:				
					next_state = (now_0==6'd42)? `LAST_CALCULATE : `CALCULATE;
				default: 
					next_state = 3'bx;
			endcase	
		`LAST_CALCULATE:
			next_state = `RESULT;
		`RESULT: 
			next_state = `WAIT;
		default: 
			next_state = 2'bx;
	endcase
end

always@(posedge clk or posedge rst) begin // FSM(G), Generate the next state
	if(rst)
		state <= `WAIT;
	else if(en)
		state <= `SETUP;
	else
		state <= next_state;
end
	
always@(posedge clk or posedge rst) begin
	if(rst) begin
		{Ax, Ay, Bx, By, Cx, Cy} <= 24'd0;
		{Ar, Br, Cr} <= 12'd0;
		reg_mode <= 2'd0;
		candidate <= 8'd0;
		count <= 1'b0;	
		now_0 <= 6'd0;
		now_1 <= 6'd0;
		now_2 <= 6'd0;
		tmp_3 <= 1'd0;
	end
	else if(en) begin
		{Ax, Ay, Bx, By, Cx, Cy} <= central;
		{Ar, Br, Cr} <= radius;
		reg_mode <= mode;
		candidate <= 8'b0;
		count <= 1'b0;
		case(mode)
			2'b00: begin	
				now_0 <= 6'd0;
				now_1 <= 6'd1;
				now_2 <= 6'd2;
			end
			2'b01: begin
				now_0 <= 6'd0;
				now_1 <= 6'd0;
				now_2 <= 6'd43;
			end
			2'b10: begin
				now_0 <= 6'd0;
				now_1 <= 6'd0;
				now_2 <= 6'd43;
			end
			2'b11: begin
				now_0 <= 6'd0;
				now_1 <= 6'd0;
				now_2 <= 6'd0;
			end
		endcase
		tmp_3 <= tmp_2;
	end
	else begin
		candidate <= next_candidate;
		count <= next_count;
		now_0 <= next_0;
		now_1 <= next_1;
		now_2 <= next_2;
		tmp_3 <= tmp_2;
	end
	
end

endmodule
