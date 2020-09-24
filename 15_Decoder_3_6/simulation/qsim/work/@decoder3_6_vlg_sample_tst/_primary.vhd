library verilog;
use verilog.vl_types.all;
entity Decoder3_6_vlg_sample_tst is
    port(
        entrada         : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end Decoder3_6_vlg_sample_tst;
