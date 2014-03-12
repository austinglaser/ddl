module multiply (
  clock,
  mult_1,
  mult_2,
  product
);
	parameter width_1 = 10;
	parameter width_2 = 17;
	
	input clock;
	input  [width_1-1:0] mult_1;
	input  [width_2-1:0] mult_2;
	output reg [(width_1 + width_2)-1:0] product;
	
	always @(posedge clock) product <= (mult_1 * mult_2);
	
endmodule