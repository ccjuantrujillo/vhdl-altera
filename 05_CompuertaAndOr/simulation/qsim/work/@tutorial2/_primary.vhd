library verilog;
use verilog.vl_types.all;
entity Tutorial2 is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        Yand            : out    vl_logic;
        Yor             : out    vl_logic;
        Ynot            : out    vl_logic
    );
end Tutorial2;
