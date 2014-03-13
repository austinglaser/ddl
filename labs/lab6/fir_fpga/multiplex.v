module multiplex(
  select,
  data_in,
  data_out
);
  parameter width = 10;
  parameter n = 5;
  parameter n_select = 3;
  
  input  [n_select-1:0] select;
  input  [width-1:0] data_in [n-1:0];
  output [width-1:0] data_out;

  assign data_out = select < n ? data_in[select] : {width{1'bx}};

endmodule
