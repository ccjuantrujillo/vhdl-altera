library verilog;
use verilog.vl_types.all;
entity Tutorial2_vlg_check_tst is
    port(
        Yand            : in     vl_logic;
        Ynot            : in     vl_logic;
        Yor             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Tutorial2_vlg_check_tst;
