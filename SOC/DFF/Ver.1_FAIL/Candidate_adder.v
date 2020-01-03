module Candidate_adder(
// Special signal
clk, 
rst, 
// output of MapCell
result, 
// from Control
reg_mode,
Candidate_en,
count,
// candidate
candidate
);
input[7:0] result;
input[1:0] reg_mode, count;
input Candidate_en, clk, rst;
output[7:0] candidate;
reg[7:0] candidate;
reg[7:0] next_candidate;
reg[7:0] old_result_0, old_result_1;

function[7:0] MODE_0;
	input[7:0] n;
	integer i;
	begin
		MODE_0 = 8'd0;
		for (i=0;i<8;i=i+1)
			if (n[i]) 
				MODE_0 = MODE_0 + 8'd1;
	end
endfunction

function[7:0] MODE_1;
	input[15:0] n;
	integer i;
	begin
		MODE_1 = 8'd0;
		for (i=0;i<8;i=i+1)
			if (n[i]&n[i+8])
				MODE_1 = MODE_1 + 8'd1;
	end
endfunction

function[7:0] MODE_2;
	input[15:0] n;
	integer i;
	begin
		MODE_2 = 8'd0;
		for (i=0;i<8;i=i+1)
			if (n[i]^n[i+8]) 
				MODE_2 = MODE_2 + 8'd1;
	end
endfunction

function[7:0] MODE_3;
	input[23:0] n;
	integer i;
	begin
		MODE_3 = 8'd0;
		for (i=0;i<8;i=i+1)
			if ((n[i]&n[i+8]&~n[i+16])|(n[i]&~n[i+8]&n[i+16])|(~n[i]&n[i+8]&n[i+16])) 
				MODE_3 = MODE_3 + 8'd1;
	end
endfunction

always@(*) begin
	case(reg_mode)
		2'b00: 		next_candidate = candidate + MODE_0({result});
		2'b01: 		next_candidate = (count==2'd0)? candidate + MODE_1({result, old_result_0}) : candidate;
		2'b10: 		next_candidate = (count==2'd0)? candidate + MODE_2({result, old_result_0}) : candidate;
		2'b11: 		next_candidate = (count==2'd0)? candidate + MODE_3({result, old_result_0, old_result_1}) : candidate;
		default: 	next_candidate = 8'bx;
	endcase
end

always@(posedge clk or posedge rst) begin
	if(rst) begin
		candidate <= 8'b0;
		{old_result_0, old_result_1} <= 16'b0;
	end
	else if(~Candidate_en) begin
		candidate <= 8'b0;
		{old_result_0, old_result_1} <= {result, 8'd0};
	end
	else begin
		candidate <= next_candidate;
		{old_result_0, old_result_1} <= {result, old_result_0};
	end
end
endmodule