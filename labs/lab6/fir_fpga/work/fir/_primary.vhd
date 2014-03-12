library verilog;
use verilog.vl_types.all;
entity fir is
    generic(
        width           : integer := 10;
        length          : integer := 465;
        n_coeffs        : integer := 465;
        ones            : integer := 0
    );
    port(
        clock           : in     vl_logic;
        data_in         : in     vl_logic_vector;
        data_out        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width : constant is 1;
    attribute mti_svvh_generic_type of length : constant is 1;
    attribute mti_svvh_generic_type of n_coeffs : constant is 1;
    attribute mti_svvh_generic_type of ones : constant is 1;
end fir;
