module compare_2_str_structural(A1,B1,A0,B0,A_lt_B,A_gt_B,A_eq_B);
input A1, B1, A0, B0;
output A_lt_B, A_gt_B, A_eq_B;
wire lt_1, lt_2, lt_3, gt_1, gt_2, gt_3, eq_1, eq_2, eq_3, eq_4;
wire A1_, B1_, A0_, B0_;

not(A1_, A1);
not(B1_, B1);
not(A0_, A0);
not(B0_, B0);

and(lt_1, A1_, B1);
and(lt_2, A1_, A0_, B0);
and(lt_3, A0_, B1, B1);
and(gt_1, A1, B1_);
and(gt_2, A0, B1_, B0_);
and(gt_3, A1, A0, B0_);
and(eq_1, A1_, A0_, B1_, B0_);
and(eq_2, A1_, A0, B1_, B0);
and(eq_3, A1, A0, B1, B0);
and(eq_4, A1, A0_, B1, B0_);

or(A_lt_B, lt_1, lt_2, lt_3);
or(A_gt_B, gt_1, gt_2, gt_3);
or(A_eq_B, eq_1, eq_2, eq_3, eq_4);

endmodule

module compare_2_str_RTL(A1,B1,A0,B0,A_lt_B,A_gt_B,A_eq_B);
input A1, B1, A0, B0;
output A_lt_B, A_gt_B, A_eq_B;

assign A_lt_B = (~A1&B1)|(~A1&~A0&B0)|(~A0&B1&B0);
assign A_gt_B = (~B1&A1)|(~B1&~B0&A0)|(~B0&A1&A0);
assign A_eq_B = (~A1&~A0&~B1&~B0)|(~A1&A0&~B1&B0)|(A1&A0&B1&B0)|(A1&~A0&B1&~B0);

endmodule

module compare_2_str_behavior(A1,B1,A0,B0,A_lt_B,A_gt_B,A_eq_B);
input A1, B1, A0, B0;
output A_lt_B, A_gt_B, A_eq_B;

assign A_lt_B = {A1,A0}<{B1,B0};
assign A_gt_B = {A1,A0}>{B1,B0};
assign A_eq_B = {A1,A0}=={B1,B0};

endmodule
