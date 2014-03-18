module spi(
  reset,
  clock,
  ssel,
  mosi,
  miso,
  data_recieved,
  data_transmit,
  data_valid
);
  parameter width = 10;

  input      reset;
  input      clock;
  input      ssel;
  input      mosi;
  output reg miso;
  output     data_valid;

  output reg [width-1:0] data_recieved;
  input      [width-1:0] data_transmit;

  reg        [width-1:0] data_reg;

  assign data_valid = ssel;

  always @ (negedge reset or negedge ssel or posedge clock) begin
    if (!reset) begin
      // reset statements
      data_reg <= 0;
    end
    // if we're selected
    else if (!ssel) begin
      // if clock is high, we just saw a rising edge on clock
      if (clock) data_reg <= {data_reg[width-2:0], mosi};

      // otherwise load data to be transmitted -- we saw ssel negedge
      else       data_reg <= data_transmit;
    end
  end

  // load output data on clock negative edge
  always @(negedge reset or negedge ssel or negedge clock) begin
    if (!reset) miso <= 1;
    else        miso <= data_reg[width-1];
  end

  // latch recieved data when ssel goes high
  always @(negedge reset or posedge ssel) begin
    if (!reset) data_recieved = {width{1'b0}};
    else        data_recieved <= data_reg; 
  end

endmodule
