onerror {quit -f}
vlib work
vlog -work work Tutorial2.vo
vlog -work work Tutorial2.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Tutorial2_vlg_vec_tst
vcd file -direction Tutorial2.msim.vcd
vcd add -internal Tutorial2_vlg_vec_tst/*
vcd add -internal Tutorial2_vlg_vec_tst/i1/*
add wave /*
run -all
