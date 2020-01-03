// This module can only call for SET_v3.v
// Description: Controling 3 MapCell
// Date: 2019/11/30
// Author: Hu, Ren Bo
`define WAIT 2'd0
`define CALCULATE 2'd1
`define RESULT 2'd2

module Control(
// Special signal
clk, 
rst, 
// en=1, Read INPUT
en, 
central, 
radius, 
mode, 
// OUTPUT signal
busy, 
valid, 
// for MapCell
now_id, 
circle_data, 
// for Candidate_adder
reg_mode, 
Candidate_en,
count
);
input [23:0] central;
input [11:0] radius;
input [1:0] mode;
input clk, rst, en;
output[11:0] circle_data;
output[2:0] now_id;
output[1:0] reg_mode, count;
output valid, busy, Candidate_en;

// real register
reg[11:0] circle_A, circle_B, circle_C, circle_data;
reg[2:0] now_id;
reg[1:0] state, reg_mode, count;
reg valid, busy, Candidate_en;

// just wire
reg[11:0] next_circle;
reg[2:0] next_id;
reg[1:0] next_state, next_count;


// next_id, next_circle for Mapcell input(now_id, circle_data)
always@(*) begin
	next_id 	=	(count==2'd0)? now_id + 3'd1 : now_id;
	next_circle = 	(count==2'd0)? circle_A :
					(count==2'd1)? circle_B : circle_C;
					
	if 		(count==2'd0 && reg_mode==2'd0)						next_count = 2'd0;
	else if (count==2'd0 && (reg_mode==2'd1 || reg_mode==2'd2)) next_count = 2'd1;
	else if (count==2'd0 && reg_mode==2'd3) 					next_count = 2'd2;
	else 														next_count = count - 2'd1;
end

always@(*) begin
	case(state)
		`WAIT: 		next_state = `WAIT;
		`CALCULATE: next_state = (now_id==3'd7 && count==2'd0)? `RESULT : `CALCULATE;
		`RESULT: 	next_state = `WAIT;
		default: 	next_state = 2'bx;
	endcase
end

always@(posedge clk or posedge rst) begin // FSM(G), Generate the next state
	if(rst) begin
		state 		 <= `WAIT;
		circle_A 	 <= 12'd0;
		circle_B 	 <= 12'd0;
		circle_C 	 <= 12'd0;
		reg_mode 	 <= 2'd0;
					 
		busy 		 <= 1'd0;
		valid		 <= 1'd0;
					 
		count 		 <= 2'd0;
		Candidate_en <= 1'd0;
		now_id	 	 <= 3'd0;
		circle_data  <= 12'd0;
	end
	else if(en) begin
		state 		 <= `CALCULATE;
		circle_A 	 <= {central[23:16], radius[11: 8]};
		circle_B 	 <= {central[15: 8], radius[ 7: 4]};
		circle_C 	 <= {central[ 7: 0], radius[ 3: 0]};
		reg_mode 	 <= mode;
					 
		busy 		 <= 1'b1;
		valid		 <= 1'b0;
					 
		count 		 <= (mode==2'd0)? 2'd0 :
					    (mode==2'd3)? 2'd2 : 2'd1;
		Candidate_en <= 1'b1;
		now_id		 <= 3'd0;
		circle_data  <= {central[23:16], radius[11: 8]};
	end
	else begin
		state 		 <= next_state;
					 
		busy 		 <= (next_state==`CALCULATE)? 1'b1 : 1'b0;
		valid		 <= (next_state==`RESULT)? 1'b1 : 1'b0;
					 
		count 		 <= next_count;
		Candidate_en <= (next_state==`CALCULATE)? 1'b1 : 1'b0;
		now_id 		 <= next_id;
		circle_data  <= next_circle;
	end
end
endmodule
