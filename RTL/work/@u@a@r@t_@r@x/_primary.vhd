library verilog;
use verilog.vl_types.all;
entity UART_RX is
    generic(
        DATA_WIDTH      : integer := 8
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        RX_IN           : in     vl_logic;
        parity_enable   : in     vl_logic;
        parity_type     : in     vl_logic;
        Prescale        : in     vl_logic_vector(5 downto 0);
        P_DATA          : out    vl_logic_vector;
        data_valid      : out    vl_logic;
        parity_error    : out    vl_logic;
        framing_error   : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
end UART_RX;
