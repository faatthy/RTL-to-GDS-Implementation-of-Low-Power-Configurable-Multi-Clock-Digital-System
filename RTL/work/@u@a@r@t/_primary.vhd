library verilog;
use verilog.vl_types.all;
entity UART is
    generic(
        DATA_WIDTH      : integer := 8
    );
    port(
        RST             : in     vl_logic;
        TX_CLK          : in     vl_logic;
        RX_CLK          : in     vl_logic;
        RX_IN_S         : in     vl_logic;
        RX_OUT_P        : out    vl_logic_vector;
        RX_OUT_V        : out    vl_logic;
        TX_IN_P         : in     vl_logic_vector;
        TX_IN_V         : in     vl_logic;
        TX_OUT_S        : out    vl_logic;
        TX_OUT_V        : out    vl_logic;
        Prescale        : in     vl_logic_vector(5 downto 0);
        parity_enable   : in     vl_logic;
        parity_type     : in     vl_logic;
        parity_error    : out    vl_logic;
        framing_error   : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
end UART;
