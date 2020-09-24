onerror {quit -f}
vlib work
vlog -work work Altera3.vo
vlog -work work Altera3.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Altera3_vlg_vec_tst
vcd file -direction Altera3.msim.vcd
vcd add -internal Altera3_vlg_vec_tst/*
vcd add -internal Altera3_vlg_vec_tst/i1/*
add wave /*
run -all
