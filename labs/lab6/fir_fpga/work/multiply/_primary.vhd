library verilog;
use verilog.vl_types.all;
entity multiply is
    generic(
        width_1         : integer := 10;
        width_2         : integer := 17
    );
    port(
        clock           : in     vl_logic;
        mult_1          : in     vl_logic_vector;
        mult_2          : in     vl_logic_vector;
        product         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width_1 : constant is 1;
    attribute mti_svvh_generic_type of width_2 : constant is 1;
end multiply;
