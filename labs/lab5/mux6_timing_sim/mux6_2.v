module mux6_2
	#(parameter width = 1)
	(input [width-1:0] d0, d1, d2, d3, d4, d5,
	 input [2:0] s, 
	 output [width-1:0] y);

	
	wire [width-1:0] d01, d23, d45, d0123;
	mux2 #(width) mux2_01(d0, d1, s[0], d01);
	mux2 #(width) mux2_23(d2, d3, s[0], d23);
	mux2 #(width) mux2_45(d4, d5, s[0], d45);
	
	mux2 #(width) mux2_0123(d01, d23, s[1], d0123);
	mux2 #(width) mux2_012345(d0123, d45, s[2], y);
	//assign y = s ? d1 : d0;

endmodule