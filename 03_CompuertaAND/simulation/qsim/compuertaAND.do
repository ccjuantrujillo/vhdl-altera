onerror {quit -f}
vlib work
vlog -work work compuertaAND.vo
vlog -work work compuertaAND.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.compuertaAND_vlg_vec_tst
vcd file -direction compuertaAND.msim.vcd
vcd add -internal compuertaAND_vlg_vec_tst/*
vcd add -internal compuertaAND_vlg_vec_tst/i1/*
add wave /*
run -all
