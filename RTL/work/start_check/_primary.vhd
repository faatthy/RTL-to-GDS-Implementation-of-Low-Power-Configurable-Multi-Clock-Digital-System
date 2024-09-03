library verilog;
use verilog.vl_types.all;
entity start_check is
    port(
        Enable          : in     vl_logic;
        sampled_bit     : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        start_glitch    : out    vl_logic
    );
end start_check;
