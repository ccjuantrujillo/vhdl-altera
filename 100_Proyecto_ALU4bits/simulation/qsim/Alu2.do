onerror {quit -f}
vlib work
vlog -work work Alu2.vo
vlog -work work Alu2.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Alu2_vlg_vec_tst
vcd file -direction Alu2.msim.vcd
vcd add -internal Alu2_vlg_vec_tst/*
vcd add -internal Alu2_vlg_vec_tst/i1/*
add wave /*
run -all
