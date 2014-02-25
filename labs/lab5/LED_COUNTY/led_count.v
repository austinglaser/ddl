/* A variable-width, debounced counter module. Output is value is incremented
 * each falling edge of the debounced button signal. Uses an asynchronous
 * reset, active low.
 *
 * Uses a 50 MHz clock for debouncing purposes.
 */
module led_count
                (input clock, 
                 output [width-1:0] count,
                 input reset,
                 input button
                );
#parameter width=10;
  
  // define debounced signals, hook up debouncing modules
  wire button_deb;
  wire reset_deb;
  
  debounce #(8) button_deb(clock, button, button_deb);
  debounce #(8) reset_deb(clock, reset, reset_deb);
  
  // intermediate register for counter value (to be assinged
  // during 'always' block)
  reg [width-1:0] count_hold;
  
  initial count_hold = {(width) {1'b0}};
  
  // update at appropriate negative edges
  // (good for de0 because the built-in buttons
  // are grounded when depressed)
  always @(negedge button_deb or negedge reset_deb) begin
  	if(reset_deb == 1'b0) count_hold = {(width) {1'b0}}; // don't count when reset low
    else                  count_hold = count_hold + 1;
  end
  
  // pipe output
  assign count = count_hold;
  
endmodule //led_count
