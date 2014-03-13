library verilog;
use verilog.vl_types.all;
entity multiplex is
    generic(
        width           : integer := 10;
        n               : integer := 5;
        n_select        : integer := 3
    );
    port(
        \select\        : in     vl_logic_vector;
        data_in         : in     vl_logic;
        data_out        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width : constant is 1;
    attribute mti_svvh_generic_type of n : constant is 1;
    attribute mti_svvh_generic_type of n_select : constant is 1;
end multiplex;
