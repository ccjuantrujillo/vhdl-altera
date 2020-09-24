library verilog;
use verilog.vl_types.all;
entity SumaResta is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        SoR             : in     vl_logic;
        cout            : out    vl_logic;
        resultado       : out    vl_logic_vector(3 downto 0)
    );
end SumaResta;
