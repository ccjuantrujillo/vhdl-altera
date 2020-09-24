library verilog;
use verilog.vl_types.all;
entity Decoder3_6_vlg_check_tst is
    port(
        salida          : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end Decoder3_6_vlg_check_tst;
