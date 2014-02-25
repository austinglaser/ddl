module led_count_test;
  
  reg clock;
  wire [9:0]leds;
  reg reset_button;
  reg button;
  
  initial
  begin
    reset_button <= 1;
    button <= 1;
    clock <= 0;
    #3000000
    reset_button = 0;
    #2700000
    reset_button = 1;
    #10000000
    $stop;
  end
  
  always
  begin
    forever #1 clock = ~clock;
  end
  
  always
  begin
    forever #1000000 button = ~button;
  end
  
  led_count dut(clock, leds, reset_button, button);

endmodule