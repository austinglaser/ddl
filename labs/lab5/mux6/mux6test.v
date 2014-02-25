module testbench();
	
	reg clk, reset;
	reg a0, a1, a2, a3, a4, a5;
	reg [2:0] p;
	wire y;
	reg yexpected;
	reg [5:0] vectornum, errors;
	reg [9:0] testvectors[56:0];
	
	integer n;
	
	mux6 dut(a0, a1, a2, a3, a4, a5, p, y);
	
	//gen. clk
	always
		begin
			clk = 1;
			#5;
			clk = 0;
			#5;
		end
	
	initial 
		begin	
			$readmemb("testbenchValues.tv", testvectors);
			for (n=0; n<57; n=n+1)
				$display("%b", testvectors[n]);
			vectornum = 0; 
			errors = 0;
			reset = 1; #27; reset = 0;
		end
	
	always @ (posedge clk)
		begin
			#1; 
			{a5, a4, a3, a2, a1, a0, p, yexpected} = testvectors[vectornum];
		end
	
	always @ (negedge clk)
		if (~reset) begin
			if (y !== yexpected) begin
				$display ("Error: inputs = %b", {a0, a1, a2, a3, a4, a5, p});
				$display (" outputs = %b (%b expected)", y, yexpected);
				errors = errors + 1;
			end
			if (y === yexpected) begin
				$display ("Success: inputs = %b", {a0, a1, a2, a3, a4, a5, p});
			end
			vectornum = vectornum + 1;
			if (vectornum === 56) begin
				$display("%d tests completed with %d errors", vectornum, errors);
				$stop;
			end
		end
endmodule