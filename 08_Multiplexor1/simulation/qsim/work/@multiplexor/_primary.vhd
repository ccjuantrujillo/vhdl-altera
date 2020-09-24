library verilog;
use verilog.vl_types.all;
entity Multiplexor is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        Sel             : in     vl_logic;
        s               : out    vl_logic_vector(3 downto 0)
    );
end Multiplexor;
