`timescale 1ns/10ps



module	PE	(CNT1,CNT2,CNT3,CNT4,CNT5,CNT6,CNT1_n,CNT2_n,CNT3_n,CNT4_n,CNT5_n,CNT6_n,sum,flag);
	

	input	[14:0]	CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
	output	[14:0]	CNT1_n, CNT2_n, CNT3_n, CNT4_n, CNT5_n, CNT6_n;
	//5 will be min2, 6 is min
	output 	[7:0]	sum;
	output	[6:0]	flag;
	//the info register should update with
	//CNT1_n,CNT2_n,CNT3_n,CNT4_n,13'b1_1111_1111_1111,{sum,flag}
	
	//CNT5_n,CNT6_n should go to result register
	reg	[14:0]	CNT1_n, CNT2_n, CNT3_n, CNT4_n, CNT5_n, CNT6_n;
	reg [7:0]	sum;
	reg	[6:0]	flag;
	
	always @ (*)
	begin
		find_min_2in6(CNT1_n,CNT2_n,CNT3_n,CNT4_n,CNT5_n,CNT6_n,CNT1,CNT2,CNT3,CNT4,CNT5,CNT6);
		sum = CNT5_n[14:7] + CNT6_n[14:7];
		flag[5:0] = CNT5_n[5:0]|CNT6_n[5:0];
		flag[6] = 0;
	end
	
	
	task find_min_2in6;
		output	reg [14:0] max1,max2,max3,max4;
		output	reg	[14:0] min1,min2; //min1>min2
		input	[14:0]	in1, in2, in3, in4, in5, in6;
		reg		[14:0]	stage1_1, stage1_2, stage1_3, stage1_4, stage1_5, stage1_6;
		reg		[14:0]	stage2_3, stage2_4, stage2_5, stage2_6;
		begin
			evenodd13bits_6(in1, in2, in3, in4, in5, in6, stage1_1, stage1_2, stage1_3, stage1_4, stage1_5, stage1_6);
			evenodd13bits_6(stage1_1, stage1_2, stage1_3, stage1_4, stage1_5, stage1_6, max1, max2, stage2_3, stage2_4, stage2_5, stage2_6);
			evenodd13bits_4(stage2_3, stage2_4, stage2_5, stage2_6, max3, max4, min1, min2);
		end
	endtask
	
	task evenodd13bits_4;
		input	[14:0]	in1,in2,in3,in4;			
		output	[14:0]	out1,out2,out3,out4;									
		reg		[14:0]	mid1,mid2,mid3,mid4;	
		
		begin
			{mid1,mid2} = comparator_14bits(in1,in2);
			{mid3,mid4} = comparator_14bits(in3,in4);
			{out1,out4} = {mid1,mid4};
			{out2,out3} = comparator_14bits(mid2,mid3);
		end
	endtask
	
	task evenodd13bits_6;
		input	[14:0]	in1,in2,in3,in4,in5,in6;			
		output	[14:0]	out1,out2,out3,out4,out5,out6;									
		reg		[14:0]	mid1,mid2,mid3,mid4,mid5,mid6;	
		
		begin
			{mid1,mid2} = comparator_14bits(in1,in2);
			{mid3,mid4} = comparator_14bits(in3,in4);
			{mid5,mid6} = comparator_14bits(in5,in6);
			{out1,out6} = {mid1,mid6};
			{out2,out3} = comparator_14bits(mid2,mid3);
			{out4,out5} = comparator_14bits(mid4,mid5);
		end
	endtask
	
	function [29:0] comparator_14bits;
	input	[14:0]	in1, in2;
	begin
		if(in2>in1)
			comparator_14bits = {in2,in1};
		else
			comparator_14bits = {in1,in2};
	
	end
	endfunction
	
endmodule