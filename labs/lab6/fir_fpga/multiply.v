module multiply (
  clock,
  mult_1,
  mult_2,
  product
);
  // parameters; widths of operands
	parameter width_1 = 10;
	parameter width_2 = 17;
	
  // define arguments. Note: output width must be at minimum
  // the sum of the two input widths
	input clock;
	input  [width_1-1:0] mult_1;
	input  [width_2-1:0] mult_2;
	output reg [(width_1 + width_2)-1:0] product;
	
  // multiply on clock edge
	always @(posedge clock) product <= (mult_1 * mult_2);
	
endmodule
