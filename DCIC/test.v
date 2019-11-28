module test_module(a,b,c);
	input a,c;
	output reg b;
	always@(a)begin
		b <= c;
		if(b==c)$display("SAME");
	end
endmodule

module testbench;
	reg a,c;
	wire b;
	test_module U(a,b,c);
	initial begin
		a = 0;
		c = 0;
		#1 a = 1;
		#1 c = 1;
		#1 a = 0; 
	end
	initial $monitor("%d, a=%b, c=%b, b=%b", $time, a, c, b);
	initial	$sdf_annotate("test_syn.sdf",U);
endmodule

