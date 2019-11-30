// This module can only check MapCell_v2.v, MapCell_v3, MapCell_v4.v
// Description: Checking MapCell module's function
// Range: 
//		{now_y, now_x} = 0~63
// 		center_x = 0~9
// 		center_y = 0~9
// 		center_r = 0~15
// Date: 2019/11/30
// Author: Hu, Ren Bo
module TB_MapCell;
reg[3:0] center_x, center_y, center_r;
reg[2:0] now_x, now_y;
wire result;

reg ans;
integer a,b,c,d,e,error,count;

MapCell U0({now_y, now_x}, center_x, center_y, center_r, result);

initial begin
error = 0;
count = 0;
for(a=0;a<=7;a=a+1)
for(b=0;b<=9;b=b+1)
for(c=0;c<=7;c=c+1)
for(d=0;d<=9;d=d+1)
for(e=0;e<=15;e=e+1)
begin
	now_x = a;
	center_x = b;
	now_y = c;
	center_y = d;
	center_r = e;
	if(((a-b+1)*(a-b+1) + (c-d+1)*(c-d+1)) <= e*e)ans = 1;
	else ans = 0;
	#10;
	if(ans != result) begin
		$display("FAIL@ %3d %3d %3d %3d %3d",a,b,c,d,e);
		error = error+1;
	end
	count = count+1;
end
$display("\tTotal Pattern: %d",count);
$display("\tERROR: %d",error);
if(error==0) $display("\tPASS!!!");
$finish;
end
endmodule
