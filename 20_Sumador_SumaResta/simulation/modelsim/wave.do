onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /sumaresta/sor
add wave -noupdate -expand /sumaresta/a
add wave -noupdate -expand /sumaresta/b
add wave -noupdate /sumaresta/cout
add wave -noupdate /sumaresta/resultado
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {625 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {280 ps}
view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl -range 3 0 /sumaresta/a 
wave create -pattern none -portmode in -language vhdl -range 3 0 /sumaresta/b 
wave create -pattern none -portmode in -language vhdl /sumaresta/SoR 
wave create -pattern none -portmode out -language vhdl /sumaresta/cout 
wave create -pattern none -portmode out -language vhdl -range 3 0 /sumaresta/resultado 
wave modify -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 3 0 -starttime 0ns -endtime 2000ns Edit:/sumaresta/a 
wave modify -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Range -direction Up -period 100ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 3000ps Edit:/sumaresta/b 
wave modify -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Range -direction Up -period 800ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 5000ps Edit:/sumaresta/b 
WaveCollapseAll -1
wave clipboard restore
