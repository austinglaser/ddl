module shift_reg (
  clock,
  data_in,
  data_out
);
  // parameters; width and length of reg
  parameter width = 10;
  parameter length = 5;
  
  // define input arguments. We allow all
  // values in the register to be accessible
	input clock;
	input [width-1:0]  data_in;
	output reg [width-1:0] data_out[length - 1:0];

  // first shifter must be defined manually; 
  // subsequent ones must be generated
	shift U0(clock, data_in, data_out[0]);
	
	genvar i;
	generate
		for (i = 1; i < length; i = i+1) begin:shifters
			shift U(clock, data_out[i-1], data_out[i]);
		end
	endgenerate
	
endmodule
