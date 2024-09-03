library verilog;
use verilog.vl_types.all;
entity SYS_TOP_TB is
    generic(
        D_WIDTH         : integer := 8;
        ADDRESS         : integer := 4;
        WR_CMD          : integer := 170;
        RD_CMD          : integer := 187;
        ALU_WOP_CMD     : integer := 204;
        ALU_WNOP_CMD    : integer := 221;
        REF_CLK_period  : integer := 20;
        UART_CLK_period : real    := 271.267000
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of D_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDRESS : constant is 1;
    attribute mti_svvh_generic_type of WR_CMD : constant is 1;
    attribute mti_svvh_generic_type of RD_CMD : constant is 1;
    attribute mti_svvh_generic_type of ALU_WOP_CMD : constant is 1;
    attribute mti_svvh_generic_type of ALU_WNOP_CMD : constant is 1;
    attribute mti_svvh_generic_type of REF_CLK_period : constant is 1;
    attribute mti_svvh_generic_type of UART_CLK_period : constant is 1;
end SYS_TOP_TB;
