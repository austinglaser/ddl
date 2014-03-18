module fir_test;
  parameter width = 10;
  parameter length = 20;
  parameter n_coeffs = 465;
  parameter ones = 0;
  
  reg clock;
  reg reset;
  reg calculate;
  reg [width-1:0] data_in;
  reg [width-1:0] data_out;
  reg data_good;
  
  fir #(width, length, n_coeffs, ones) DUT(clock, reset, calculate, data_in, data_out, data_good);
  
  initial begin
    data_in = 10'd200;

    reset = 1;
    #5 reset = 0;
    #5 reset = 1;
  end
  
  initial begin
    clock = 0;

    forever #5 clock = ~clock;
  end

  initial begin
    calculate = 0;

    forever begin
      #100 calculate = 1;
      #5   calculate = 0;
    end
  end
  
endmodule
