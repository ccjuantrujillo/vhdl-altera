library verilog;
use verilog.vl_types.all;
entity Alu2_vlg_check_tst is
    port(
        acarreo         : in     vl_logic;
        S               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Alu2_vlg_check_tst;
