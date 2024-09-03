library verilog;
use verilog.vl_types.all;
entity UART_TX is
    generic(
        DATA_WIDTH      : integer := 8
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        P_DATA          : in     vl_logic_vector;
        Data_Valid      : in     vl_logic;
        parity_enable   : in     vl_logic;
        parity_type     : in     vl_logic;
        TX_OUT          : out    vl_logic;
        busy            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
end UART_TX;
