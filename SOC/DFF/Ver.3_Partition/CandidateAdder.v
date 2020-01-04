module CandidateAdder(
clk, 
rst, 
en, 
now_0,
count,
reg_mode,
result_0,
result_1,
result_2,
candidate
);
input[5:0] now_0;
input[1:0] reg_mode;
input clk, rst, en, count, result_0, result_1, result_2;
output[7:0] candidate;
reg[7:0] candidate;
reg[7:0] next_candidate;
reg tmp;

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

always@(*)begin
	if(~en) next_candidate = 8'd0;
	else
		case(reg_mode)
			2'b00: next_candidate = (now_0==6'd2)?	ADD(candidate, {2'b0, result_0}) :
													ADD(candidate, {result_0, result_1, result_2});
			2'b01: next_candidate = (~count)? 		ADD(candidate, {1'b0, (result_0&result_1), (result_2&tmp)}) : 
													ADD(candidate, {2'b0, (result_0&result_1)});
			2'b10: next_candidate = (~count)? 		ADD(candidate, {1'b0, (result_0^result_1), (result_2^tmp)}) :
													ADD(candidate, {2'b0, (result_0^result_1)});
			2'b11: next_candidate = ADD(candidate, {2'b0, ((result_0&result_1&~result_2)|(result_0&~result_1&result_2)|(~result_0&result_1&result_2))});
			default: next_candidate = 8'bx;
		endcase
end

always@(posedge clk or posedge rst) begin
	if(rst) begin
		candidate <= 8'd0;
		tmp <= 1'b0;
	end
	else begin
		candidate <= next_candidate;
		tmp <= result_2;
	end
end
endmodule
