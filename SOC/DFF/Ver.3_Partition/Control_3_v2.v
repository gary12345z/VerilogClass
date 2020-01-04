// This module can only call for SET_v3.v
// Description: Controling 3 MapCell
// Date: 2019/11/30
// Author: Hu, Ren Bo
`define WAIT 3'd0
`define SETUP 3'd1
`define CALCULATE 3'd2
`define LAST_CALCULATE 3'd3
`define RESULT 3'd4

module Control(
clk, 
rst, 
en, 
central, 
radius,
circle_A,
circle_B,
circle_C, 
mode, 
reg_mode,
busy, 
valid, 
now_0, 
now_1, 
now_2, 
count,
Candidate_en,
MapCell_en
);
input [23:0] central;
input [11:0] radius;
input [1:0] mode;
input clk, rst, en;
output[5:0] now_0, now_1, now_2;
output[11:0] circle_A, circle_B, circle_C;
output[1:0] reg_mode;
output busy, valid, count, Candidate_en, MapCell_en;

// real register
reg[5:0] now_0, now_1, now_2;
reg[11:0] circle_A, circle_B, circle_C;
reg[2:0] state;
reg[1:0] reg_mode;
reg count, Candidate_en, MapCell_en, busy, valid;

// just wire
reg[5:0] next_0, next_1, next_2;
reg[2:0] next_state;
wire next_count;

assign next_count = (state==`WAIT)? 1'b0 : ~count;

// next_0, next_1, next_2 for Mapcell input
always@(*) begin
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
		circle_A 	 <= 12'd0;
		circle_B 	 <= 12'd0;
		circle_C 	 <= 12'd0;
		reg_mode 	 <= 2'd0;
		count 		 <= 1'd0;	
		now_0 		 <= 6'd0;
		now_1 		 <= 6'd0;
		now_2 		 <= 6'd0;
		busy		 <= 1'd0;
		valid		 <= 1'd0;
		Candidate_en <= 1'd0;
		MapCell_en	 <= 1'd0;
	end
	else if(en) begin
		circle_A 	 <= {central[23:16], radius[11: 8]};
		circle_B 	 <= {central[15: 8], radius[ 7: 4]};
		circle_C 	 <= {central[ 7: 0], radius[ 3: 0]};
		reg_mode 	 <= mode;
		count 		 <= 1'd0;
		busy		 <= 1'd1;
		valid		 <= 1'd0;
		Candidate_en <= 1'd0;
		MapCell_en	 <= 1'd1;
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
	end
	else begin
		busy		 <=	(next_state==`LAST_CALCULATE)? 	0 : busy;
		valid		 <=	(state==`LAST_CALCULATE)?		1 : 0;
		Candidate_en <= (state==`SETUP)? 				1 :
						(state==`LAST_CALCULATE)? 		0 : Candidate_en;
		MapCell_en	 <= (state==`SETUP)? 				1 :
						(next_state==`LAST_CALCULATE)? 	0 : MapCell_en;
		count 		 <= next_count;
		now_0 		 <= next_0;
		now_1 		 <= next_1;
		now_2 		 <= next_2;
	end
	
end

endmodule
