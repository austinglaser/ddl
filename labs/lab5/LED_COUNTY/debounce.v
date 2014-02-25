/* debounce module, looking for a consistent signal over
 * 'nshifts' ms (default 8). Assumes input is 50 MHz clock
 * signal, which is divided down to 1 kHz ticks
 */
module debounce 
               (input clock,
                input raw, 
                output debounced
               );
#parameter nshifts=8;
  
  // shift register to look for conistent value
  reg [nshifts-1:0] shift;
  
  // divided clock, ticking at 1 kHz
  reg clock_1k;
  divider #(50000) div_50M_to_1k(clock, clock_1k);
  
  // shifting logic, checking for consistent value over 'nshifts' ms.
  reg debounced_hold;
  always@(posedge clock_1k) begin
    shift = {shift[nshifts-2:0],raw};
    if(shift == {(nshifts) {1'b1}}) debounced_hold <= 1;
    if(shift == {(nshifts) {1'b0}}) debounced_hold <= 0;
  end
  
  // pipe to output
  assign debounced = debounced_hold;
  
endmodule //debounce
