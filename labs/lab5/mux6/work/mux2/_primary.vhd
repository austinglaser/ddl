library verilog;
use verilog.vl_types.all;
entity mux2 is
    generic(
        width           : integer := 1
    );
    port(
        d0              : in     vl_logic_vector;
        d1              : in     vl_logic_vector;
        s               : in     vl_logic;
        y               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width : constant is 1;
end mux2;
