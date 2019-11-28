`define MapCell
`define cycle 10
// `timescale 1ns/10ps

module TB;
reg clk = 0;
reg reset = 0;

always #(`cycle/2) clk = ~clk;

initial begin
	#10 reset = 1;
	#10 reset = 0;
end

`ifdef Map
reg[3:0] x, y, r;
wire[63:0] map;
wire done;

Map U0(x, y, r, clk, reset, map, done);

initial begin
	x = 1;
	y = 1;
	r = 1;
	#10 reset = 1;
	#10 reset = 0;
	#1000;
	x = 1;
	y = 2;
	r = 3;
	#10 reset = 1;
	#10 reset = 0;
	#1000;
	x = 2;
	y = 1;
	r = 3;
	#10 reset = 1;
	#10 reset = 0;
	#1000;
	x = 4;
	y = 4;
	r = 3;
	#10 reset = 1;
	#10 reset = 0;
	#1000;
	x = 5;
	y = 8;
	r = 6;
	#10 reset = 1;
	#10 reset = 0;
	#1000;
	$finish;
end

initial $monitor("@%5d(%b),\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n",$time, done, map[7:0], map[15:8], map[23:16], map[31:24], map[39:32], map[47:40], map[55:48], map[63:56]);
`endif

`ifdef MapCell
reg[3:0] now_x, now_y, center_x, center_y, center_r;
wire in_out;
reg ans;
integer a,b,c,d,e,error;

MapCell U0(now_x, now_y, center_x, center_y, center_r, in_out);

initial begin
error = 0;
for(a=1;a<=8;a=a+1)
for(b=1;b<=8;b=b+1)
for(c=1;c<=8;c=c+1)
for(d=1;d<=8;d=d+1)
for(e=1;e<=12;e=e+1)
begin
	now_x = a;
	center_x = b;
	now_y = c;
	center_y = d;
	center_r = e;
	if(((a-b)*(a-b) + (c-d)*(c-d))<=e*e)ans = 1;
	else ans = 0;
	#10;
	if(ans!=in_out)error=error+1;
	#10;
end
$display("ERROR=%d",error);
$finish;
end

initial $monitor("@%5d, %d-%d=%d, %d-%d=%d\n", $time, now_x, center_x, U0.delta_x, now_y, center_y, U0.delta_y);
`endif

endmodule
