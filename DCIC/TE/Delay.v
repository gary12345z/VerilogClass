module test;
	reg [5:0] a;
	integer fp;	

	initial begin 
	fp = $fopen("output.txt","w");
	a = 0; 
	#1;
	a = 1;
	a <= 2;
	$display("%d display: %d",$time, a);
	$write("%d write: %d\n",$time, a);
	$monitor("%d monitor: %d",$time, a);
	$strobe("%d strobe: %d",$time, a);
	$fdisplay(fp,"%d fdisplay: %d",$time, a);
	$fwrite(fp,"%d fwrite: %d\n",$time, a);
	$fmonitor(fp,"%d fmonitor: %d",$time, a);
	$fstrobe(fp,"%d fstrobe: %d",$time, a);
	#1;
	$display("%d display: %d",$time, a);
	$write("%d write: %d\n",$time, a);
	$monitor("%d monitor: %d",$time, a);
	$strobe("%d strobe: %d",$time, a);
	$fdisplay(fp,"%d fdisplay: %d",$time, a);
	$fwrite(fp,"%d fwrite: %d\n",$time, a);
	$fmonitor(fp,"%d fmonitor: %d",$time, a);
	$fstrobe(fp,"%d fstrobe: %d",$time, a);
	#1;
	$fclose(fp);
	$finish;
	end
	initial begin 
	$dumpfile("test.fsdb");
	$dumpvars;
	end
endmodule

