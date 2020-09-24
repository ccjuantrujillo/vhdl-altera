library verilog;
use verilog.vl_types.all;
entity Sumador4Bits_vlg_check_tst is
    port(
        S               : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end Sumador4Bits_vlg_check_tst;
