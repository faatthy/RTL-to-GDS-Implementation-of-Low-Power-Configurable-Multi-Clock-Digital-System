library verilog;
use verilog.vl_types.all;
entity CLKDIV is
    generic(
        RATIO_WD        : integer := 8
    );
    port(
        i_ref_clk       : in     vl_logic;
        i_rst_n         : in     vl_logic;
        i_clk_en        : in     vl_logic;
        i_div_ratio     : in     vl_logic_vector;
        o_div_clk       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of RATIO_WD : constant is 1;
end CLKDIV;
