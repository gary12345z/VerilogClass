// This module can only call for SET_v2.v
// Description: Controling 4 MapCell
// Date: 2019/11/30
// Author: Hu, Ren Bo
`define WAIT 0
`define CALCULATE 1
`define RESULT 2

module Control(clk , rst, en, next_candidate, candidate, busy, valid, tmp_0, tmp_1, tmp_2, tmp_3, 
next_0, next_1, next_2, next_3, now_0, now_1, now_2, now_3, reg_mode, count);
input[7:0] candidate;
input[5:0] now_0, now_1, now_2, now_3;
input[1:0] reg_mode;
input clk, rst, en, tmp_0, tmp_1, tmp_2, tmp_3;
output reg[7:0] next_candidate;
output reg[5:0] next_0, next_1, next_2, next_3;
output[1:0] count;
output reg busy, valid;

reg[1:0] state, next_state;
reg[1:0] count, next_count;
reg tmp_31, tmp_32;

always@(posedge clk or posedge rst) begin // FSM(G), Generate the next state
	if(rst) begin
		state <= `WAIT;
	end
	else if(en) begin
		count <= 2'd0;
		state <= `CALCULATE;
	end
	else begin
		count <= next_count;
		state <= next_state;
		{tmp_31, tmp_32} <= {tmp_3, tmp_31};
	end
end

always@(*) begin	// FSM(T), Do something in different state
	case(state)
		`WAIT: begin
			busy = 0;
			valid = 0;
			next_candidate = 8'bx;
			next_0 = 6'bx;
			next_1 = 6'bx;
			next_2 = 6'bx;
			next_3 = 6'bx;
			next_count = 2'bx;
			next_state = `WAIT;
		end
		`CALCULATE: begin
			busy = 1;
			valid = 0;
			case(reg_mode)
				2'b00: begin
					next_candidate = candidate + tmp_0 + tmp_1 + tmp_2 + tmp_3;
					next_0 = now_0 + 4;
					next_1 = now_1 + 4;
					next_2 = now_2 + 4;
					next_3 = now_3 + 4;
					next_count = 2'bx;
				end	
				2'b01: begin
					next_candidate = candidate + (tmp_0&tmp_1) + (tmp_2&tmp_3);
					next_0 = now_0 + 2;
					next_1 = now_1 + 2;
					next_2 = now_2 + 2;
					next_3 = now_3 + 2;
					next_count = 2'bx;
				end	
				2'b10: begin
					next_candidate = candidate + (tmp_0^tmp_1) + (tmp_2^tmp_3);
					next_0 = now_0 + 2;
					next_1 = now_1 + 2;
					next_2 = now_2 + 2;
					next_3 = now_3 + 2;
					next_count = 2'bx;
				end	
				2'b11: begin
					next_candidate = (count==2'd2)? 
					candidate + ((tmp_0&tmp_1&~tmp_2)|(tmp_0&~tmp_1&tmp_2)|(~tmp_0&tmp_1&tmp_2)) 
					+ ((tmp_3&tmp_31&~tmp_32)|(tmp_3&~tmp_31&tmp_32)|(~tmp_3&tmp_31&tmp_32)):
					candidate + ((tmp_0&tmp_1&~tmp_2)|(tmp_0&~tmp_1&tmp_2)|(~tmp_0&tmp_1&tmp_2));
					next_0 = now_0 + 1;
					next_1 = now_1 + 1;
					next_2 = now_2 + 1;
					next_3 = (count==2'd2)? now_3 + 1 : now_3;
					next_count = (count==2'd2)? 2'd0 : count + 1;
				end	
				default: begin
					next_candidate = 8'bx;
					next_0 = 6'bx;
					next_1 = 6'bx;
					next_2 = 6'bx;
					next_3 = 6'bx;
					next_count = 2'bx;
				end	
			endcase	
			next_state = ((now_3==6'd63&&reg_mode!=2'b11)||(now_2==6'd47&&reg_mode==2'b11))? `RESULT : `CALCULATE;
		end
		`RESULT: begin
			busy = 1;
			valid = 1;
			next_candidate = 8'bx;
			next_0 = 6'bx;
			next_1 = 6'bx;
			next_2 = 6'bx;
			next_3 = 6'bx;
			next_count = 2'bx;
			next_state = `WAIT;
		end
		default: begin
			busy = 1'bx;
			valid = 1'bx;
			next_candidate = 8'bx;
			next_0 = 6'bx;
			next_1 = 6'bx;
			next_2 = 6'bx;
			next_3 = 6'bx;
			next_count = 2'bx;
			next_state = 2'bx;
		end
	endcase
end
endmodule
