module shift(
  clock,
  reset,
  data_in,
  data_out
);
	parameter width=10;
	
	input clock;
  input reset;
	input      [width-1:0] data_in;
	output reg [width-1:0] data_out;
 
	always @(posedge clock or negedge reset) begin
    if (reset == 0) data_out <= {width{1'b0}};
    else            data_out <= data_in;
  end
	
 endmodule
