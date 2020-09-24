library verilog;
use verilog.vl_types.all;
entity Decoder3_6 is
    port(
        entrada         : in     vl_logic_vector(2 downto 0);
        salida          : out    vl_logic_vector(5 downto 0)
    );
end Decoder3_6;
