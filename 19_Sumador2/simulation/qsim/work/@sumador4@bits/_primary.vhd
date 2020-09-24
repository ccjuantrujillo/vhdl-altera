library verilog;
use verilog.vl_types.all;
entity Sumador4Bits is
    port(
        A               : in     vl_logic_vector(4 downto 0);
        B               : in     vl_logic_vector(4 downto 0);
        S               : out    vl_logic_vector(4 downto 0)
    );
end Sumador4Bits;
