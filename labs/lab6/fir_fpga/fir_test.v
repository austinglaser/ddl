module fir_test;
  parameter width = 10;
  parameter length = 465;
  parameter n_coeffs = 465;
  parameter ones = 1;
  
  reg clock;
  reg [width-1:0] data_in;
  reg [width-1:0] data_out;
  
  fir #(width, length, n_coeffs, ones) DUT(clock, data_in, data_out);
  
  initial begin
    clock <= 0;
    data_in <= 10'd200;
    
    forever #5 clock <= ~clock;
  end
  
  initial begin
    #5000 $stop;
  end
  
endmodule
