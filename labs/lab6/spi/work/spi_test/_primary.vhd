library verilog;
use verilog.vl_types.all;
entity spi_test is
    generic(
        width           : integer := 10
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width : constant is 1;
end spi_test;
