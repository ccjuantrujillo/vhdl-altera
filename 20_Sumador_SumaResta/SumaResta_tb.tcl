
set labelCount 4                                             
set uniqueLabel 206313208

############################Common TCL Procedures################################

proc IntegerToBinary  {intValue width} {
	set nextvaltmp ""
	set nextval ""
	for {set i $width} {$i > 0 } {set i [expr {$i - 1}]} {
		if {[expr {$intValue % 2}] == 0} { 
			append nextvaltmp "0"
		} else {
			append nextvaltmp "1" 
		}
		set intValue [expr {$intValue / 2}]
	}
	for {set i [expr {$width - 1}]} {$i >=  0 } {set i [expr {$i - 1}]} {
		append nextval [string range $nextvaltmp $i $i]
	}
	return $nextval
}
proc CreateRangeUpCounter {startValue loopCount step curTime period unit width driveType signal} {
     global uniqueLabel labelCount
     set absTime ""
     append absTime "@" $curTime 
     set value $startValue 
     set label $uniqueLabel 

     for {set i 0 } {$i <= $loopCount} {incr i} {
             set labelCount [expr {$labelCount + 1}]
             append label "_"
             append label $labelCount

             if {$absTime != "@0" && $::now != $curTime} {
                     when -label $label "\$now = $absTime $unit" " 
                             set whenArray($label) $label
                             noforce $signal
                             force -$driveType $signal [eval IntegerToBinary $value $width] 0 
                     "
             }
             if {$step < [expr pow(2, $width)]} {
             	set value [expr {$value + $step}]
             }
             set curTime [expr {$period + $curTime}] 
             set absTime ""
             append absTime "@" $curTime 
             set label $uniqueLabel
     }
}

#################################################################################


##Editing for Signal sim:/sumaresta/a
# "Counter Pattern"(Range-Up) : step = 1 Range(0000-1111)
# Start Time = 0 ps, End Time = 2 us, Period = 50 ps
#################################################################################
        noforce sim:/sumaresta/a
        force -freeze sim:/sumaresta/a [eval IntegerToBinary 0 4] 0
        CreateRangeUpCounter 1 14 1 50  50 ps 4 freeze {sim:/sumaresta/a} 

set cumulativeTime 800
set repeatPeriod 800
for {set i 0 } {$i < 1} {incr i} {
        CreateRangeUpCounter 0 15 1 $cumulativeTime 50 ps 4 freeze {sim:/sumaresta/a} 
        set cumulativeTime [expr {$cumulativeTime + $repeatPeriod}]
}

when -label 206313208_1 {$now = @1600 ps} {
        set whenArray(206313208_1) 206313208_1
        noforce sim:/sumaresta/a
        force -freeze sim:/sumaresta/a [eval IntegerToBinary 0 4] 0
        CreateRangeUpCounter 1 6 1 1650  50 ps 4 freeze {sim:/sumaresta/a} 
}

when -label 206313208_2 {$now = @2000 ps} {
        set whenArray(206313208_2) 206313208_2
        noforce sim:/sumaresta/a
        force -freeze sim:/sumaresta/a  1000 0 ps
}

when -label 206313208_3 {$now = @2000 ps} {
        set whenArray(206313208_3) 206313208_3
        noforce sim:/sumaresta/a
        force -freeze sim:/sumaresta/a 1000 0 ps
}


##Editing for Signal sim:/sumaresta/b
# "Counter Pattern"(Range-Up) : step = 1 Range(0000-1111)
# Start Time = 0 ps, End Time = 5 ns, Period = 800 ps
#################################################################################
        noforce sim:/sumaresta/b
        force -freeze sim:/sumaresta/b [eval IntegerToBinary 0 4] 0
        CreateRangeUpCounter 1 1 1 800  800 ps 4 freeze {sim:/sumaresta/b} 

when -label 206313208_4 {$now = @2000 ps} {
        set whenArray(206313208_4) 206313208_4
        noforce sim:/sumaresta/b
        force -freeze sim:/sumaresta/b 0010 0 ps
}
