module half_adder(x, y, s, c);
input x, y;
output s, c;
xor(s, x, y);
and(c, x, y);
endmodule

module full_adder(x, y, z, s, c);
input x, y, z;
output s, c;
half_adder HA1(x, y, hs, hc);
half_adder HA2(hs, z, s, tc);
or(c, hc, tc);
endmodule

module adder_4(B, A, C0, S, C4);
input[3:0] B, A;
input C0;
output[3:0] S;
output C4;
wire[3:1] C;
full_adder Bit0(B[0], A[0], C0, S[0], C[1]);
full_adder Bit1(B[1], A[1], C[1], S[1], C[2]);
full_adder Bit2(B[2], A[2], C[2], S[2], C[3]);
full_adder Bit3(B[3], A[3], C[3], S[3], C4);
endmodule

module adder_16(B, A, C0, S, C16);
input[15:0] B, A;
input C0;
output[15:0] S;
output C16;
wire[3:1] C;
adder_4 HalfByte0(B[3:0], A[3:0], C0, S[3:0], C[1]);
adder_4 HalfByte1(B[7:4], A[7:4], C[1], S[7:4], C[2]);
adder_4 HalfByte2(B[11:8], A[11:8], C[2], S[11:8], C[3]);
adder_4 HalfByte3(B[15:12], A[15:12], C[3], S[15:12], C16);
endmodule
