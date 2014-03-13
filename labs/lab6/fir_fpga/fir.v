module fir(
  clock,
  data_in,
  data_out
);
  //parameters
	parameter width =  10;
	parameter length = 200;
	parameter n_coeffs = 465;
	parameter ones = 0;
  parameter N = 5;
	
	// define arguments
	input clock;
	input  [width-1:0] data_in;
	output [width-1:0] data_out;
	
	// two-dimensional coefficient registers (initialized in generate block)
	reg [16:0] coeff [n_coeffs-1:0];
	
	// internal signals
	wire [width-1:0] 			  data_values [length-1:0];
	wire [(width + 17)-1:0]	mult_values [length-1:0];
	wire [(width + 17)-1:0]	sum_values  [length-1:0];
	
  // output data must be shifted, to account for shifted
  // non-integer coefficients
	assign data_out = sum_values[length-1] >> 15;
	
  // define shift register of correct length. Note that this introduces
  // one extra cycle of delay at entry
	shift_reg #(width, length) data_shift(clock, data_in, data_values);
	
  // generate the entire filter
	genvar i;
	generate
		for (i = 0; i < length; i = i+1) begin:coeff_gen
      // calculate appropriate coefficient (note reversed order in parameter)
      coeff_calc #((n_coeffs-1) - i, ones) ARRAY_CELL(coeff[i]);
    end

    for (i = 0; i < length/N; i = i + 1) begin:fir_gen
      // hook up multiplier
      assign mult_values[i] = coeff[i] * data_values[i];
			
      // create adder. Not necessary for first value
			if (i == 0) assign sum_values[i] = mult_values[i];
			else			  assign sum_values[i] = mult_values[i] + sum_values[i-1];
		end
	endgenerate

endmodule
