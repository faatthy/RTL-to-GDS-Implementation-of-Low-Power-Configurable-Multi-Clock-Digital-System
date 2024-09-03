library verilog;
use verilog.vl_types.all;
entity SYS_CTRL is
    generic(
        D_WIDTH         : integer := 8;
        FUNC_ALU        : integer := 4;
        ADDRESS         : integer := 4
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        UART_RX_VLD     : in     vl_logic;
        ALU_OUT_VLD     : in     vl_logic;
        UART_RX_DATA    : in     vl_logic_vector;
        RF_RdData       : in     vl_logic_vector;
        RF_RdData_VLD   : in     vl_logic;
        FIFO_FULL       : in     vl_logic;
        ALU_OUT         : in     vl_logic_vector;
        ALU_EN          : out    vl_logic;
        ALU_FUN         : out    vl_logic_vector;
        CLKG_EN         : out    vl_logic;
        RF_Address      : out    vl_logic_vector;
        RF_WrEn         : out    vl_logic;
        RF_RdEn         : out    vl_logic;
        CLKDIV_EN       : out    vl_logic;
        UART_TX_DATA    : out    vl_logic_vector;
        UART_TX_VLD     : out    vl_logic;
        RF_WrData       : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of D_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of FUNC_ALU : constant is 1;
    attribute mti_svvh_generic_type of ADDRESS : constant is 1;
end SYS_CTRL;
