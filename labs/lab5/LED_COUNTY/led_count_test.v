/* Demonstrates counting functionality of
 * led_count module. Very large delays
 * are a consequence of debouncing
 * hardware.
 */
module led_count_test;
  
  //initialize device under test
  reg clock;
  wire [9:0]leds;
  reg reset;
  reg button;

  led_count #(10) dut(clock, leds, reset, button);
  
  // initialize module, apply a reset signal after some time
  initial begin
    reset <= 1;
    button <= 1;
    clock <= 0;

    // reset for several button presses, to demonstrate
    // asynchronous reset hold
    #3000000 reset = 0;
    #2700000 reset = 1;
    #3000000 $stop;
  end
  
  // toggle main clock as fast as we can
  always forever #1 clock = ~clock;
  
  // toggle button regularly, so debouncing
  // code has time to work properly
  always forever begin
    // bounce on transition. Total period is
    // 2000000 ps.
    #920000 button = ~button;
    #20000  button = ~button;
    #20000  button = ~button;
    #20000  button = ~button;
    #20000  button = ~button;
  end
  
endmodule
