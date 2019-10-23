module test_test();
integer count, count1;

initial
begin
	$monitor("2.count=(%d)",count1);
end

initial
begin
	count = 0;
	count1 = 0;
	while(count<128)
	begin
		$monitor("1.count=%d",count);
		count=count+1;
		count1=count1+1;
		#1;
	end
end




endmodule
