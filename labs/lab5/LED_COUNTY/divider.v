/* divides input clock frequency by 'div',
 */
module divider
              (input clock,
               output clock_div
              );
#parameter div=50000; // defaults to creating 1kHz tick
  
  reg clock_div_hold; // intermediate reg
  reg [31:0] i;       // counter reg
  
  // initialize values
  initial begin
    clock_div_hold <= 0;
    i <= 0;
  end
  
  // count on clock positive edge.
  // toggle output and reset every
  // div/2 cycles
  always @(posedge clock) begin
    if (i >= floor(div/2)) begin
      clock_div <= ~clock_div;
      i <= 0;
    end
    else i = i + 1;
  end
  
  // pipe to output
  assign clock_div = clock_div_hold;
  
endmodule //divider
