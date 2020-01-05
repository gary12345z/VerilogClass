`timescale 1ns/10ps

module PE(
// CNT form CNTcounter
CNT1,
CNT2,
CNT3,
CNT4,
CNT5,
CNT6,
// next {CNT, flag} to CNTcounter
CNT1_n,
CNT2_n,
CNT3_n,
CNT4_n,
CNT5_n,
CNT6_n,

sum,
flag
);
	input	[14:0]	CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
	output	[14:0]	CNT1_n, CNT2_n, CNT3_n, CNT4_n, CNT5_n, CNT6_n;
	output 	[7:0]	sum;
	output	[6:0]	flag;
	
	wire [14:0]	U0_min, U0_mid, U0_max, U1_min, U1_mid, U1_max, U2_min, U2_max, U3_min, U3_mid, U3_max;
	CMP3 U0(
		.Ain	(CNT1), 
		.Bin	(CNT2), 
		.Cin	(CNT3), 
		.Aout	(U0_max), 
		.Bout	(U0_mid), 
		.Cout	(U0_min)
	);
	CMP3 U1(
		.Ain	(CNT4), 
		.Bin	(CNT5), 
		.Cin	(CNT6), 
		.Aout	(U1_max), 
		.Bout	(U1_mid), 
		.Cout	(U1_min)
	);
	CMP2 U2(
		.Ain	(U0_min), 
		.Bin	(U1_min),  
		.Aout	(U2_max), 
		.Bout	(U2_min)
	);
	CMP3 U3(
		.Ain	(U0_mid), 
		.Bin	(U1_mid), 
		.Cin	(U2_max), 
		.Aout	(U3_max), 
		.Bout	(U3_mid), 
		.Cout	(U3_min)
	);
	
	assign {CNT1_n, CNT2_n, CNT3_n, CNT4_n} = {U0_max, U1_max, U3_max, U3_mid};
	assign {CNT5_n, CNT6_n} = {U3_min, U2_min};
	assign sum = CNT5_n[14:7] + CNT6_n[14:7];
	assign flag[5:0] = CNT5_n[5:0]|CNT6_n[5:0];
	assign flag[6] = 1'b0;
	
endmodule

`define BITS 15
module CMP3(Ain, Bin, Cin, Aout, Bout, Cout);
input[`BITS-1:0] Ain, Bin, Cin;
output reg[`BITS-1:0] Aout, Bout, Cout;
wire A_lt_B, A_lt_C, B_lt_C;
assign A_lt_B = (Ain < Bin);
assign A_lt_C = (Ain < Cin);
assign B_lt_C = (Bin < Cin);
always@(*) begin
	case({A_lt_B, A_lt_C, B_lt_C})
		3'b111: {Aout, Bout, Cout} = {Cin, Bin, Ain};
		3'b110: {Aout, Bout, Cout} = {Bin, Cin, Ain};
		3'b011: {Aout, Bout, Cout} = {Cin, Ain, Bin};
		3'b100: {Aout, Bout, Cout} = {Bin, Ain, Cin};
		3'b001: {Aout, Bout, Cout} = {Ain, Cin, Bin};
		3'b000: {Aout, Bout, Cout} = {Ain, Bin, Cin};
		default: {Aout, Bout, Cout} = 3*`BITS 'bx;
	endcase
end
endmodule

module CMP2(Ain, Bin, Aout, Bout);
input	[`BITS-1:0] Ain, Bin;
output	[`BITS-1:0] Aout, Bout;
assign {Aout, Bout} = (Ain > Bin)? {Ain, Bin} : {Bin, Ain};
endmodule
