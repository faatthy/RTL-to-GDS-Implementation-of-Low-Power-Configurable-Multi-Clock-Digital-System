library verilog;
use verilog.vl_types.all;
entity parity_check is
    generic(
        DATA_WIDTH      : integer := 8
    );
    port(
        Enable          : in     vl_logic;
        sampled_bit     : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        parity_type     : in     vl_logic;
        P_DATA          : in     vl_logic_vector;
        par_err         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
end parity_check;
