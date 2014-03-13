library verilog;
use verilog.vl_types.all;
entity coeff_calc is
    generic(
        coeffIndex      : integer := 0;
        ones            : integer := 0
    );
    port(
        coeff           : out    vl_logic_vector(16 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of coeffIndex : constant is 1;
    attribute mti_svvh_generic_type of ones : constant is 1;
end coeff_calc;
