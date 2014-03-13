module fir_test;
  parameter width = 10;
  parameter length = 20;
  parameter n_coeffs = 465;
  parameter ones = 0;
  
  reg clock;
  reg reset;
  reg [width-1:0] data_in;
  reg [width-1:0] data_out;
  
  fir #(width, length, n_coeffs, ones) DUT(clock, reset, data_in, data_out);
  
  initial begin
    clock = 0;
    data_in = 10'd200;

    reset = 1;
    #5 reset = 0;
    #5 reset = 1;
    
    forever #5 clock <= ~clock;
  end
  
  initial begin
    //#500 $stop;
  end
  
endmodule
