// debounce module, looking for a consistent signal over
// 'nshifts' ms (default 8). Assumes input is 50 MHz clock
// signal, which is divided down to 1 kHz ticks
module debounce 
               (input clock,
                input raw, 
                output debounced
               );
#parameter nshifts=8;

reg [31:0] i;
reg [nshifts-1:0] shift;

initial i = 0;

reg debounced_hold;
reg clock_div;

always@(posedge clock_div) begin
  shift = {shift[nshifts-2:0],raw};
  if(shift == {(nshifts) {1'b1}}) debounced_hold <= 1;
  if(shift == {(nshifts) {1'b0}}) debounced_hold <= 0;
end

always@(posedge clock) begin
  if (i >= 25000) begin
    clock_div <= ~clock_div;
    i <= 0;
  end else i = i + 1;
end

assign debounced = debounced_hold;

endmodule
