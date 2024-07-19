library verilog;
use verilog.vl_types.all;
entity Alu2 is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        S               : out    vl_logic_vector(3 downto 0);
        acarreo         : out    vl_logic
    );
end Alu2;
