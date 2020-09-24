library verilog;
use verilog.vl_types.all;
entity Multiplexor4 is
    port(
        E               : in     vl_logic_vector(3 downto 0);
        F               : out    vl_logic;
        S               : in     vl_logic_vector(1 downto 0)
    );
end Multiplexor4;
