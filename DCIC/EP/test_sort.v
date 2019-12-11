module test_sort;
wire[6*`SORT_DATA_LENGTH-1 : 0] unsort_data;
wire[6*`SORT_FLAG_LENGTH-1 : 0] unsort_flag;
reg[`SORT_DATA_LENGTH-1 : 0] update_data;
reg[`SORT_FLAG_LENGTH-1 : 0] update_flag;
reg[2:0] num;
reg clk, set, update_en;
wire[6*`SORT_DATA_LENGTH-1 : 0] sorted_data;
wire[6*`SORT_FLAG_LENGTH-1 : 0] sorted_flag;
wire done;

reg[`SORT_DATA_LENGTH-1 : 0] data_in0, data_in1, data_in2, data_in3, data_in4, data_in5;
assign unsort_data = {data_in0, data_in1, data_in2, data_in3, data_in4, data_in5};
reg[`SORT_FLAG_LENGTH-1 : 0] flag_in0, flag_in1, flag_in2, flag_in3, flag_in4, flag_in5;
assign unsort_flag = {flag_in0, flag_in1, flag_in2, flag_in3, flag_in4, flag_in5};

wire[`SORT_DATA_LENGTH-1 : 0] data_out0, data_out1, data_out2, data_out3, data_out4, data_out5;
assign {data_out0, data_out1, data_out2, data_out3, data_out4, data_out5} = sorted_data;
wire[`SORT_FLAG_LENGTH-1 : 0] flag_out0, flag_out1, flag_out2, flag_out3, flag_out4, flag_out5;
assign {flag_out0, flag_out1, flag_out2, flag_out3, flag_out4, flag_out5} = sorted_flag;

Sort U1(unsort_data, unsort_flag, clk, set, num, update_data, update_flag, update_en, done, sorted_data, sorted_flag);

initial clk = 0;
always clk = #5 ~clk;

initial begin
	set = 0;
	#10;
	num = 3'd6;
	set = 1;
	update_en = 0;
	data_in0 = 1;
	flag_in0 = 6'b000001;
	data_in1 = 5;
	flag_in1 = 6'b000010;
	data_in2 = 6;
	flag_in2 = 6'b000100;
	data_in3 = 2;
	flag_in3 = 6'b001000;
	data_in4 = 3;
	flag_in4 = 6'b010000;
	data_in5 = 4;
	flag_in5 = 6'b100000;
	#10;
	set = 0;
	#1000;
	num = 3'd5;
	update_en = 1;
	update_data = 10;
	update_flag = 6'b111111;
	#10;
	update_en = 0;
	#1000;
	$finish;
end
initial $monitor("%d %d %d %d %d %d\n\t%d %d %d %d %d %d(%d)",data_out0, data_out1, data_out2, data_out3, data_out4, data_out5,flag_out0, flag_out1, flag_out2, flag_out3, flag_out4, flag_out5,done);
//initial $monitor("%b",U1.data);
endmodule
