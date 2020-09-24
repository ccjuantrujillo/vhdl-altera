onerror {quit -f}
vlib work
vlog -work work Sumador4Bits.vo
vlog -work work Sumador4Bits.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Sumador4Bits_vlg_vec_tst
vcd file -direction Sumador4Bits.msim.vcd
vcd add -internal Sumador4Bits_vlg_vec_tst/*
vcd add -internal Sumador4Bits_vlg_vec_tst/i1/*
add wave /*
run -all
