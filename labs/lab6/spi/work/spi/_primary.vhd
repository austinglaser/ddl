library verilog;
use verilog.vl_types.all;
entity spi is
    generic(
        width           : integer := 10
    );
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        ssel            : in     vl_logic;
        mosi            : in     vl_logic;
        miso            : out    vl_logic;
        data_recieved   : out    vl_logic_vector;
        data_transmit   : in     vl_logic_vector;
        data_valid      : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width : constant is 1;
end spi;
