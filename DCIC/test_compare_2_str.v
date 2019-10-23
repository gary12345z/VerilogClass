`include "compare_2_str.v"

module test();
reg A1, B1, A0, B0;
wire A_lt_B, A_gt_B, A_eq_B;
integer i;

compare_2_str_behavior U0(A1,B1,A0,B0,A_lt_B,A_gt_B,A_eq_B);

initial begin 
	for(i=0;i<16;i=i+1) begin
		{A1, A0, B1, B0} = i[3:0];
		#10;
	end
	$finish;
end

initial begin
	$monitor("A = %d, B = %d:\n\tA_lt_B = %b, A_gt_B = %b, A_eq_B = %b \n"
	,{A1, A0}, {B1,B0}, A_lt_B, A_gt_B, A_eq_B);
	#1000;
	$finish;
end

endmodule
