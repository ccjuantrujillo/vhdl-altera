onerror {quit -f}
vlib work
vlog -work work MedioSumador.vo
vlog -work work MedioSumador.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MedioSumador_vlg_vec_tst
vcd file -direction MedioSumador.msim.vcd
vcd add -internal MedioSumador_vlg_vec_tst/*
vcd add -internal MedioSumador_vlg_vec_tst/i1/*
add wave /*
run -all
