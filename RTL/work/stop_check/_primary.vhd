library verilog;
use verilog.vl_types.all;
entity stop_check is
    port(
        Enable          : in     vl_logic;
        sampled_bit     : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        stop_error      : out    vl_logic
    );
end stop_check;
