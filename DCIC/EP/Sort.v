`define SORT_NUMBER 6
`define SORT_DATA_LENGTH 7
`define SORT_FLAG_LENGTH 6
module Sort(unsort_data, unsort_flag, mode, clk, set, sort_data, sort_flag);
input[`SORT_DATA_LENGTH*`SORT_NUMBER-1 : 0] unsort_data;
input[`SORT_FLAG_LENGTH*`SORT_NUMBER-1 : 0] unsort_flag;
input mode, clk, set;
output[`SORT_DATA_LENGTH*`SORT_NUMBER-1 : 0] sort_data;
output[`SORT_FLAG_LENGTH*`SORT_NUMBER-1 : 0] sort_flag;

reg[`SORT_DATA_LENGTH*`SORT_NUMBER-1 : 0] data;
reg[`SORT_FLAG_LENGTH*`SORT_NUMBER-1 : 0] flag;

endmodule

module SortCell(data_in, flag_in, control, mode, data_out, flag_out);
input[`SORT_DATA_LENGTH*3-1 : 0] data_in;
input[`SORT_FLAG_LENGTH*3-1 : 0] flag_in; // flag = {A6,A5,A4,A3,A2,A1}
input mode, control;
output reg[`SORT_DATA_LENGTH-1 : 0] data_out; // next_din_B
output reg[`SORT_FLAG_LENGTH-1 : 0] flag_out; // next_fin_B
wire[`SORT_DATA_LENGTH-1 : 0] din_A, din_B, din_C;
wire[`SORT_FLAG_LENGTH-1 : 0] fin_A, fin_B, fin_C;

assign {din_A, din_B, din_C} = data_in;
assign {fin_A, fin_B, fin_C} = flag_in;

always@(*) begin // final goal is to let "din_A > din_B > din_C"
	if(control) begin // compare din_A & din_B (data_out should be the smaller one)
		if(din_A < din_B) begin
			data_out = din_A;
			flag_out = fin_A;
		end
		else if(din_A == din_B) begin
			if(mode==0) begin // mode 0: sort index "index_A < index_B" (flag_out should be the smaller one) 
				data_out = din_B;
				flag_out = fin_B;
			end
			else begin
				data_out = din_B;
				flag_out = fin_B;
			end
		end
		else begin // din_A > din_B
			data_out = din_B;
			flag_out = fin_B;
		end
	end
	else begin // compare din_C & din_B (data_out should be the larger one)
		if(din_C < din_B) begin
			data_out = din_B;
			flag_out = fin_B;
		end
		else if(din_C == din_B) begin
			if(mode==0) begin
				data_out = din_B;
				flag_out = fin_B;
			end
			else begin
				data_out = din_B;
				flag_out = fin_B;
			end
		end
		else begin // din_C > din_B
			data_out = din_C;
			flag_out = fin_C;
		end
	end
end
endmodule
