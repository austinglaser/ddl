library verilog;
use verilog.vl_types.all;
entity shift is
    generic(
        width           : integer := 10
    );
    port(
        clock           : in     vl_logic;
        data_in         : in     vl_logic_vector;
        data_out        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width : constant is 1;
end shift;
