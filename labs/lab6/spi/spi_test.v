module spi_test();

  parameter width=10;

  reg reset;
  reg clock;
  reg ssel;
  reg mosi;
  wire miso;
  wire data_valid;

  wire [width-1:0] data_recieved;
  reg [width-1:0] data_transmit;

  reg [width-1:0] slave_reads;
  reg [width-1:0] master_reads;

  spi #(width) DUT(reset, clock, ssel, mosi, miso, data_recieved, data_transmit, data_valid);

  reg [15:0] i;

  initial begin
    reset = 1;
    clock = 0;
    ssel = 1;
    mosi = 1;

    data_transmit = 10'h155;
    slave_reads = 10'h2AA;

    i = 0;
    
    #10 reset = 0;
    #10 reset = 1;

    #10 ssel = 0;

    for (i = 0; i < width;  i = i + 1) begin
      mosi = slave_reads[(width-1) - i];

      #10 clock = 1;
      master_reads[(width - 1) - i] = miso;

      #10 clock = 0;
    end

    #10 ssel = 1;
    mosi = 1;

  end

endmodule
