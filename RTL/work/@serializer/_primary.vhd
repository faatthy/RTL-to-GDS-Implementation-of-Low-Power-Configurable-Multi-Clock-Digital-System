library verilog;
use verilog.vl_types.all;
entity Serializer is
    generic(
        WIDTH           : integer := 8
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        DATA            : in     vl_logic_vector;
        Enable          : in     vl_logic;
        Busy            : in     vl_logic;
        Data_Valid      : in     vl_logic;
        ser_out         : out    vl_logic;
        ser_done        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end Serializer;
