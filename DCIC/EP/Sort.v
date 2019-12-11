`define SORT_DATA_LENGTH 8
`define SORT_FLAG_LENGTH 6

// Description: Counting the number of different pattern(A1~A6) with an enable
// Architecture: with 6 counter(CNT1~CNT6) inside
// Date: 2019/12/11
// Author: Hu, Ren Bo
module Counter(rst, en, clk, gray_data , CNT1, CNT2, CNT3, CNT4, CNT5, CNT6);
parameter A1 = 8'h01, A2 = 8'h02, A3 = 8'h03, A4 = 8'h04, A5 = 8'h05, A6 = 8'h06;
input [7:0] gray_data;
input rst, en, clk;
output reg[7:0] CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
reg[7:0] next_CNT1, next_CNT2, next_CNT3, next_CNT4, next_CNT5, next_CNT6;
always@(*) begin
	{next_CNT1, next_CNT2, next_CNT3, next_CNT4, next_CNT5, next_CNT6} = {CNT1, CNT2, CNT3, CNT4, CNT5, CNT6};
	case(gray_data)
		A1: next_CNT1 = CNT1 + 8'd1;
		A2: next_CNT2 = CNT2 + 8'd1;
		A3: next_CNT3 = CNT3 + 8'd1;
		A4: next_CNT4 = CNT4 + 8'd1;
		A5: next_CNT5 = CNT5 + 8'd1;
		A6: next_CNT6 = CNT6 + 8'd1;
	endcase
end
always@(posedge clk or posedge rst) begin
	if(rst) {CNT1, CNT2, CNT3, CNT4, CNT5, CNT6} <= 48'b0;
	else {CNT1, CNT2, CNT3, CNT4, CNT5, CNT6} <= {next_CNT1, next_CNT2, next_CNT3, next_CNT4, next_CNT5, next_CNT6};
end
endmodule

// Description: This module is a basic operation of sorting with an enable, if this module enable, dout_A always >= dout_B
// Architecture: Only combination
// Date: 2019/12/11
// Author: Hu, Ren Bo
module SortCell(data_in, flag_in, en, data_out, flag_out);
input[`SORT_DATA_LENGTH*2-1 : 0] data_in;
input[`SORT_FLAG_LENGTH*2-1 : 0] flag_in; // represent the group of {A6,A5,A4,A3,A2,A1}
input en;
output[`SORT_DATA_LENGTH*2-1 : 0] data_out;
output[`SORT_FLAG_LENGTH*2-1 : 0] flag_out;
wire[`SORT_DATA_LENGTH-1 : 0] din_A, din_B;
wire[`SORT_FLAG_LENGTH-1 : 0] fin_A, fin_B;
reg[`SORT_DATA_LENGTH-1 : 0] dout_A, dout_B;
reg[`SORT_FLAG_LENGTH-1 : 0] fout_A, fout_B;
assign {din_A, din_B} = data_in;
assign {fin_A, fin_B} = flag_in;
assign data_out = {dout_A, dout_B};
assign flag_out = {fout_A, fout_B};
always@(*) begin
	if(en==1 && din_A<din_B) begin
		{dout_A, fout_A} = {din_B, fin_B};
		{dout_B, fout_B} = {din_A, fin_A};
	end
	else begin // if (din_A == din_B) do not switch A & B
		{dout_A, fout_A} = {din_A, fin_A};
		{dout_B, fout_B} = {din_B, fin_B};
	end
end
endmodule

// Description: Sorting using odd even sort
//              "num" is use to define how many data should be sorted (data[5~0](num=6), data[5~1](num=5), ..., data[5~5](num=1))
//              "set" is use to refresh all register(num, data, flag)
//              "done" is use to show "Control" that if this module finished or not
//              "update_en" is use for Merge function of Huffman Codeing algorithm, this will only replace the last data according to num
//              "update_data", "update_flag" are use to replace the last data according to num
// Architecture: Include 5 SortCell and some register(num_reg, data, flag)
// Date: 2019/12/11
// Author: Hu, Ren Bo
module Sort(unsort_data, unsort_flag, clk, set, num, update_data, update_flag, update_en, done, sorted_data, sorted_flag, num_reg);
input[6*`SORT_DATA_LENGTH-1 : 0] unsort_data;
input[6*`SORT_FLAG_LENGTH-1 : 0] unsort_flag;
input[`SORT_DATA_LENGTH-1 : 0] update_data;
input[`SORT_FLAG_LENGTH-1 : 0] update_flag;
input[2:0] num;
input clk, set, update_en;
output[6*`SORT_DATA_LENGTH-1 : 0] sorted_data;
output[6*`SORT_FLAG_LENGTH-1 : 0] sorted_flag;
output done, num_reg;
// These are register
reg[2:0] num_reg;
reg[6*`SORT_DATA_LENGTH-1 : 0] data;
reg[6*`SORT_FLAG_LENGTH-1 : 0] flag;
// These are wire
reg[4:0] en;
wire[6*`SORT_DATA_LENGTH-1 : 0] mid_data;
wire[6*`SORT_FLAG_LENGTH-1 : 0] mid_flag;
// data(register) -> mid_data(wire), compare odd with even(54,32,10)
SortCell Cell0(.data_in(data[6*`SORT_DATA_LENGTH-1 : 4*`SORT_DATA_LENGTH]), .flag_in(flag[6*`SORT_FLAG_LENGTH-1 : 4*`SORT_FLAG_LENGTH]), 
.en(en[0]), .data_out(mid_data[6*`SORT_DATA_LENGTH-1 : 4*`SORT_DATA_LENGTH]), .flag_out(mid_flag[6*`SORT_FLAG_LENGTH-1 : 4*`SORT_FLAG_LENGTH]));
SortCell Cell2(.data_in(data[4*`SORT_DATA_LENGTH-1 : 2*`SORT_DATA_LENGTH]), .flag_in(flag[4*`SORT_FLAG_LENGTH-1 : 2*`SORT_FLAG_LENGTH]), 
.en(en[2]), .data_out(mid_data[4*`SORT_DATA_LENGTH-1 : 2*`SORT_DATA_LENGTH]), .flag_out(mid_flag[4*`SORT_FLAG_LENGTH-1 : 2*`SORT_FLAG_LENGTH]));
SortCell Cell4(.data_in(data[2*`SORT_DATA_LENGTH-1 : 0*`SORT_DATA_LENGTH]), .flag_in(flag[2*`SORT_FLAG_LENGTH-1 : 0*`SORT_FLAG_LENGTH]), 
.en(en[4]), .data_out(mid_data[2*`SORT_DATA_LENGTH-1 : 0*`SORT_DATA_LENGTH]), .flag_out(mid_flag[2*`SORT_FLAG_LENGTH-1 : 0*`SORT_FLAG_LENGTH]));
// mid_data(wire) -> data_out(wire), compare even with odd(43,21)
SortCell Cell1(.data_in(mid_data[5*`SORT_DATA_LENGTH-1 : 3*`SORT_DATA_LENGTH]), .flag_in(mid_flag[5*`SORT_FLAG_LENGTH-1 : 3*`SORT_FLAG_LENGTH]), 
.en(en[1]), .data_out(sorted_data[5*`SORT_DATA_LENGTH-1 : 3*`SORT_DATA_LENGTH]), .flag_out(sorted_flag[5*`SORT_FLAG_LENGTH-1 : 3*`SORT_FLAG_LENGTH]));
SortCell Cell3(.data_in(mid_data[3*`SORT_DATA_LENGTH-1 : 1*`SORT_DATA_LENGTH]), .flag_in(mid_flag[3*`SORT_FLAG_LENGTH-1 : 1*`SORT_FLAG_LENGTH]), 
.en(en[3]), .data_out(sorted_data[3*`SORT_DATA_LENGTH-1 : 1*`SORT_DATA_LENGTH]), .flag_out(sorted_flag[3*`SORT_FLAG_LENGTH-1 : 1*`SORT_FLAG_LENGTH]));
assign sorted_data[6*`SORT_DATA_LENGTH-1 : 5*`SORT_DATA_LENGTH] = mid_data[6*`SORT_DATA_LENGTH-1 : 5*`SORT_DATA_LENGTH];
assign sorted_data[1*`SORT_DATA_LENGTH-1 : 0*`SORT_DATA_LENGTH] = mid_data[1*`SORT_DATA_LENGTH-1 : 0*`SORT_DATA_LENGTH];
assign sorted_flag[6*`SORT_FLAG_LENGTH-1 : 5*`SORT_FLAG_LENGTH] = mid_flag[6*`SORT_FLAG_LENGTH-1 : 5*`SORT_FLAG_LENGTH];
assign sorted_flag[1*`SORT_FLAG_LENGTH-1 : 0*`SORT_FLAG_LENGTH] = mid_flag[1*`SORT_FLAG_LENGTH-1 : 0*`SORT_FLAG_LENGTH];
// singnal for control to show that if this module finished or not
assign done = (set==0 && data == sorted_data)? 1:0;
// decode input "num" into "en" signal
always@(*) begin
	case(num_reg)
		3'd6: en = 5'b11111;
		3'd5: en = 5'b01111;
		3'd4: en = 5'b00111;
		3'd3: en = 5'b00011;
		3'd2: en = 5'b00001;
		3'd1: en = 5'b00000;
		default: en = 5'bx;
	endcase
end
always@(posedge clk) begin
	if(set) {num_reg, data, flag} <= {num, unsort_data, unsort_flag}; // Refresh all register
	else if(update_en) begin // Update only one of data(Merge)
		{num_reg, data, flag} <= {num, sorted_data, sorted_flag};
		case(num)
			3'd5: {data[2*`SORT_DATA_LENGTH-1 : 1*`SORT_DATA_LENGTH], flag[2*`SORT_FLAG_LENGTH-1 : 1*`SORT_FLAG_LENGTH]} <= {update_data, update_flag};
			3'd4: {data[3*`SORT_DATA_LENGTH-1 : 2*`SORT_DATA_LENGTH], flag[3*`SORT_FLAG_LENGTH-1 : 2*`SORT_FLAG_LENGTH]} <= {update_data, update_flag};
			3'd3: {data[4*`SORT_DATA_LENGTH-1 : 3*`SORT_DATA_LENGTH], flag[4*`SORT_FLAG_LENGTH-1 : 3*`SORT_FLAG_LENGTH]} <= {update_data, update_flag};
			3'd2: {data[5*`SORT_DATA_LENGTH-1 : 4*`SORT_DATA_LENGTH], flag[5*`SORT_FLAG_LENGTH-1 : 4*`SORT_FLAG_LENGTH]} <= {update_data, update_flag};
		endcase
	end
	else {data, flag} <= {sorted_data, sorted_flag}; // Keep sorting 
end
endmodule

// Description: Selecting the last two data and flag(data_A, data_B, flag_A, flag_B) uses num(How many data you was sort in "Sort" module?)
// Architecture: Only combination(MUX)
// Date: 2019/12/11
// Author: Hu, Ren Bo
module SelectLast(data_in, flag_in, num, data_A, data_B, flag_A, flag_B);
input[6*`SORT_DATA_LENGTH-1 : 0] data_in;
input[6*`SORT_FLAG_LENGTH-1 : 0] flag_in;
input[2:0] num;
output reg[`SORT_DATA_LENGTH-1 : 0] data_A, data_B;
output reg[`SORT_FLAG_LENGTH-1 : 0] flag_A, flag_B;
always@(*) begin
	case(num)
		3'd6: begin // Get data[1] & data[0]
			{data_A, data_B} = data_in[2*`SORT_DATA_LENGTH-1 : 0*`SORT_DATA_LENGTH];
			{flag_A, flag_B} = flag_in[2*`SORT_FLAG_LENGTH-1 : 0*`SORT_FLAG_LENGTH];
		end
		3'd5: begin // Get data[2] & data[1]
			{data_A, data_B} = data_in[3*`SORT_DATA_LENGTH-1 : 1*`SORT_DATA_LENGTH];
			{flag_A, flag_B} = flag_in[3*`SORT_FLAG_LENGTH-1 : 1*`SORT_FLAG_LENGTH];
		end
		3'd4: begin // Get data[3] & data[2]
			{data_A, data_B} = data_in[4*`SORT_DATA_LENGTH-1 : 2*`SORT_DATA_LENGTH];
			{flag_A, flag_B} = flag_in[4*`SORT_FLAG_LENGTH-1 : 2*`SORT_FLAG_LENGTH];
		end
		3'd3: begin // Get data[4] & data[3]
			{data_A, data_B} = data_in[5*`SORT_DATA_LENGTH-1 : 3*`SORT_DATA_LENGTH];
			{flag_A, flag_B} = flag_in[5*`SORT_FLAG_LENGTH-1 : 3*`SORT_FLAG_LENGTH];
		end
		3'd2: begin // Get data[5] & data[4]
			{data_A, data_B} = data_in[6*`SORT_DATA_LENGTH-1 : 4*`SORT_DATA_LENGTH];
			{flag_A, flag_B} = flag_in[6*`SORT_FLAG_LENGTH-1 : 4*`SORT_FLAG_LENGTH];
		end
		default: begin
			{data_A, data_B} = `SORT_DATA_LENGTH*2'bx;
			{flag_A, flag_B} = `SORT_FLAG_LENGTH*2'bx;
		end
	endcase
end
endmodule

// Description: Merge data_A & data_B into merge_data, merge flag_A, flag_B into merge_flag
// Architecture: Only combination
// Date: 2019/12/11
// Author: Hu, Ren Bo
module Merge(data_A, data_B, flag_A, flag_B, merge_data, merge_flag);
input[`SORT_DATA_LENGTH-1 : 0] data_A, data_B;
input[`SORT_FLAG_LENGTH-1 : 0] flag_A, flag_B;
output[`SORT_DATA_LENGTH-1 : 0] merge_data;
output[`SORT_FLAG_LENGTH-1 : 0] merge_flag;
assign merge_data = data_A + data_B;
assign merge_flag = flag_A | flag_B;
endmodule

// Description: This module is a submodule of "Split" that only handle 1 group in A1~A6
// Architecture: This module have register inside
// Date: 2019/12/11
// Author: Hu, Ren Bo
module SplitCell(rst, en, clk, flag_A, flag_B, HC, M);
input flag_A, flag_B;
input clk, rst, en;
output reg[7:0] HC;
output reg[7:0] M;
reg[7:0] next_HC, next_M; // Not Real register
always@(*) begin
	if(en) begin
		if(flag_A) begin // ADD 0 into HC's left hand side && ADD 1 bit of Mask
			next_HC = HC;
			next_M = {M[6:0], 1'b1};
		end
		else if(flag_B) begin // ADD 1 into HC's left hand side && ADD 1 bit of Mask
			next_HC = HC;
			casex(M)
				8'b01xxxxxx: next_HC[7] = 1;
				8'b001xxxxx: next_HC[6] = 1;
				8'b0001xxxx: next_HC[5] = 1;
				8'b00001xxx: next_HC[4] = 1;
				8'b000001xx: next_HC[3] = 1;
				8'b0000001x: next_HC[2] = 1;
				8'b00000001: next_HC[1] = 1;
				8'b00000000: next_HC[0] = 1;
			endcase
			next_M = {M[6:0], 1'b1};
		end
		else begin // keep
			next_HC = HC;
			next_M = M;
		end
	end
	else begin // keep
		next_HC = HC;
		next_M = M;
	end		
end
always@(posedge clk or posedge rst) begin
	if(rst) begin // reset mode
		HC <= 8'b0;
		M <= 8'b0;
	end
	else begin // normal mode
		HC <= next_HC;
		M <= next_M;
	end
end
endmodule

// Description: Adding Huffman Code(HC1~HC6) and Mask(M1~M6) uses the "flag_A, flag_B"
//              "flag_A, flag_B" represent the group(A1~A6)
//              flag_A should add 0 in to every group member's Huffman Code at right hand side && ADD 1 bit of Mask
//              flag_B should add 1 in to every group member's Huffman Code at right hand side && ADD 1 bit of Mask
// Architecture: Group of 6 SplitCell
// Date: 2019/12/11
// Author: Hu, Ren Bo
module Split(rst, en, clk, flag_A, flag_B, HC1, HC2, HC3, HC4, HC5, HC6, M1, M2, M3, M4, M5, M6);
input[`SORT_FLAG_LENGTH-1 : 0] flag_A, flag_B;
input rst, en, clk;
output [7:0] HC1, HC2, HC3, HC4, HC5, HC6;
output [7:0] M1, M2, M3, M4, M5, M6;
SplitCell SC[`SORT_FLAG_LENGTH-1 : 0](.rst(rst), .en(en), .clk(clk), .flag_A(flag_A), .flag_B(flag_B), 
.HC({HC6, HC5, HC4, HC3, HC2, HC1}), .M({M6, M5, M4, M3, M2, M1}));
endmodule

module Control(clk, reset, gray_valid, counter_en, CNT_valid, sort_set, sort_update_en, sort_done, sort_num, split_en, code_valid);
input clk, reset, gray_valid, sort_done;
output[2:0] sort_num;
output counter_en, CNT_valid, sort_set, sort_update_en, split_en, code_valid;
// state define
`define WAIT 3'd0
`define COUNTING 3'd1
`define COUNTING_RESULT 3'd2
`define SORTING 3'd3
`define MERGER_AND_SPLIT 3'd4
`define RESULT 3'd5
`define SETUP 3'd6
// These are register
reg[2:0] state, sort_num;
// These are wire
reg[2:0] next_state, next_sort_num;
reg counter_en, CNT_valid, sort_set, sort_update_en, split_en, code_valid;
always@(*) begin
	case(state)
		`WAIT: begin
			// module control signal
			counter_en = 1'b0;
			{sort_set, sort_update_en} = 2'b00;
			split_en = 1'b0;
			// output signal
			{CNT_valid, code_valid} = 2'b00;
			// next_state
			next_sort_num = sort_num;
			next_state = (gray_valid)? `COUNTING : state;
		end
		`COUNTING: begin
			// module control signal
			counter_en = 1'b1;
			{sort_set, sort_update_en} = 2'b00;
			split_en = 1'b0;
			// output signal
			{CNT_valid, code_valid} = 2'b00;
			// next_state
			next_sort_num = sort_num;
			next_state = (gray_valid)? state : `COUNTING_RESULT;
		end
		`COUNTING_RESULT: begin
			// module control signal
			counter_en = 1'b0;
			{sort_set, sort_update_en} = 2'b10;
			split_en = 1'b0;
			// output signal
			{CNT_valid, code_valid} = 2'b10;
			// next_state
			next_sort_num = sort_num;
			next_state = `SORTING;
		end
		`SETUP: begin
			// module control signal
			counter_en = 1'bx;
			{sort_set, sort_update_en} = 2'b01;
			split_en = 1'b0;
			// output signal
			{CNT_valid, code_valid} = 2'b00;
			// next_state
			next_sort_num = sort_num;
			next_state = `SORTING;
		end
		`SORTING: begin
			// module control signal
			counter_en = 1'bx;
			{sort_set, sort_update_en} = 2'b00;
			split_en = 1'b0;
			// output signal
			{CNT_valid, code_valid} = 2'b00;
			// next_state
			next_sort_num = sort_num;
			next_state = (sort_done)? `MERGER_AND_SPLIT : state;
		end
		`MERGER_AND_SPLIT: begin
			// module control signal
			counter_en = 1'bx;
			{sort_set, sort_update_en} = 2'b00;
			split_en = 1'b1;
			// output signal
			{CNT_valid, code_valid} = 2'b00;
			// next_state
			next_sort_num = sort_num - 3'd1;
			next_state = (sort_num > 3'd2)? `SETUP : `RESULT;
		end
		`RESULT: begin
			// module control signal
			counter_en = 1'bx;
			{sort_set, sort_update_en} = 2'bx;
			split_en = 1'bx;
			// output signal
			{CNT_valid, code_valid} = 2'b01;
			// next_state
			next_sort_num = 3'd6;
			next_state = `WAIT;
		end
		default: begin
			counter_en = 1'bx;
			{sort_set, sort_update_en} = 2'bx;
			split_en = 1'bx;
			{CNT_valid, code_valid} = 2'bx;
			next_sort_num = 3'bx;
			next_state = 3'bx;
		end
	endcase
end
always@(posedge clk or posedge reset) begin
	if(reset) begin
		state <= `WAIT;
		sort_num <= 3'd6;
	end
	else begin
		state <= next_state;
		sort_num <= next_sort_num;
	end
end
endmodule

module huffman(clk, reset, gray_valid, gray_data, CNT_valid, CNT1, CNT2, CNT3, CNT4, CNT5, CNT6,
code_valid, HC1, HC2, HC3, HC4, HC5, HC6, M1, M2, M3, M4, M5, M6);
input clk;
input reset;
input gray_valid;
input [7:0] gray_data;
output CNT_valid;
output [7:0] CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
output code_valid;
output [7:0] HC1, HC2, HC3, HC4, HC5, HC6;
output [7:0] M1, M2, M3, M4, M5, M6;

wire[6*`SORT_DATA_LENGTH-1 : 0] sorted_data;
wire[6*`SORT_FLAG_LENGTH-1 : 0] sorted_flag;
wire[`SORT_DATA_LENGTH-1 : 0] update_data, data_A, data_B;
wire[`SORT_FLAG_LENGTH-1 : 0] update_flag, flag_A, flag_B;
wire[2:0] sort_num, num_reg;
wire counter_en, sort_set, sort_done, sort_update_en, split_en;
Control Control_U(.clk(clk), .reset(reset), 
	.gray_valid(gray_valid), .counter_en(counter_en), .CNT_valid(CNT_valid),
	.sort_set(sort_set), .sort_update_en(sort_update_en), .sort_done(sort_done), .sort_num(sort_num), 
	.split_en(split_en), .code_valid(code_valid));
Counter Counter_U(.rst(reset), .en(counter_en), .clk(clk), 
	.gray_data(gray_data), .CNT1(CNT1), .CNT2(CNT2), .CNT3(CNT3), .CNT4(CNT4), .CNT5(CNT5), .CNT6(CNT6));
Sort Sort_U(.clk(clk), .set(sort_set), .update_en(sort_update_en),
	.unsort_data({CNT1, CNT2, CNT3, CNT4, CNT5, CNT6}), 
	.unsort_flag({6'b000001, 6'b000010, 6'b000100, 6'b001000, 6'b010000, 6'b100000}), 
	.num(sort_num), .done(sort_done), .sorted_data(sorted_data), .sorted_flag(sorted_flag),
	.update_data(update_data), .update_flag(update_flag), .num_reg(num_reg));
SelectLast SelectLast_U(.data_in(sorted_data), .flag_in(sorted_flag), .num(num_reg), 
	.data_A(data_A), .data_B(data_B), .flag_A(flag_A), .flag_B(flag_B));
Merge Merge_U(.data_A(data_A), .data_B(data_B), .flag_A(flag_A), .flag_B(flag_B), 
	.merge_data(update_data), .merge_flag(update_flag));
Split Split_U(.rst(reset), .en(split_en), .clk(clk), 
	.flag_A(flag_A), .flag_B(flag_B), .HC1(HC1), .HC2(HC2), .HC3(HC3), .HC4(HC4), .HC5(HC5), .HC6(HC6), 
	.M1(M1), .M2(M2), .M3(M3), .M4(M4), .M5(M5), .M6(M6));
endmodule
