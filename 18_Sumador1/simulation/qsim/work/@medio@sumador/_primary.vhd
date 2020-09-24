library verilog;
use verilog.vl_types.all;
entity MedioSumador is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        cout            : out    vl_logic;
        f               : out    vl_logic
    );
end MedioSumador;
