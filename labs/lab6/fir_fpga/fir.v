module fir(
  clock,
  data_in,
  data_out
);
  //parameters
	parameter width =  10;
	parameter length = 465;
	parameter n_coeffs = 465;
	parameter ones = 0;
  parameter n = 5;
	
	// define arguments
	input clock;
	input      [width-1:0] data_in;
	output reg [width-1:0] data_out;

  reg shift_clock;
  reg [2:0] cycle;
	
	// two-dimensional coefficient registers (initialized in generate block)
	reg [16:0] coeff [n_coeffs-1:0];
	
	// internal signals
	wire [width-1:0] 			  data_value  [length-1:0];
	wire [width-1:0]	      mux_data    [(length/n)-1:0];
  wire [16:0]             mux_coeff   [(length/n)-1:0];
	wire [(width + 17)-1:0]	mult_value  [(length/n)-1:0];
	wire [(width + 17)-1:0]	sum_value   [(length/n)-1:0];

  reg [(width + 17)-1:0] accumulator;
	
  // define shift register of correct length. Note that this introduces
  // one extra cycle of delay at entry
	shift_reg #(width, length) data_shift(shift_clock, data_in, data_value);

  initial begin
    cycle = 0;
    accumulator = 0;
    shift_clock = 0;
  end

  always @(posedge clock) begin
    if (cycle >= n - 1) begin
      data_out <= accumulator >> 15;

      cycle <= 0;
      shift_clock <= 1;
      accumulator <= 0;
    end
    else begin
      if (cycle == 0) shift_clock <= 0;
      accumulator <= accumulator + sum_value[(length/n)-1];
      cycle <= cycle + 1;
    end
  end

  // generate the entire filter
	genvar i, j;
	generate
		for (i = 0; i < length; i = i+1) begin:coeff_gen
      // calculate appropriate coefficient (note reversed order in parameter)
      coeff_calc #((n_coeffs-1) - i, ones) ARRAY_CELL(coeff[i]);
    end

    for (i = 0; i < length/n; i = i + 1) begin:fir_gen
      multiplex #(width, n, 3) DATA_MUX(cycle, data_value[((i + 1)*n - 1):(i * n)], mux_data[i]);

      multiplex #(17, n, 3)    COEFF_MUX(cycle, coeff[((i + 1)*n - 1):(i * n)], mux_coeff[i]);

      assign mult_value[i] = mux_data[i] * mux_coeff[i];

      if (i == 0) assign sum_value[i] = mult_value[i];
      else        assign sum_value[i] = sum_value[i-1] + mult_value[i];
		end
	endgenerate

endmodule
