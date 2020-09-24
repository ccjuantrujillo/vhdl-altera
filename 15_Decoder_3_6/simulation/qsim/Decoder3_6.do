onerror {quit -f}
vlib work
vlog -work work Decoder3_6.vo
vlog -work work Decoder3_6.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Decoder3_6_vlg_vec_tst
vcd file -direction Decoder3_6.msim.vcd
vcd add -internal Decoder3_6_vlg_vec_tst/*
vcd add -internal Decoder3_6_vlg_vec_tst/i1/*
add wave /*
run -all
