proc median_value {l1 l2} {
    set total_length [expr [llength $l1] + [llength $l2]]
    set is_odd [expr $total_length %2]
    if {[expr $is_odd == 1]} {
        set midpoint [expr $total_length /2]
        if {[expr $midpoint == [llength $l1]]} { ;# if midpoint == length of l1, then median is 0th element of 
            set median  [lindex $l2 0]
            return $median
        } else {
            set median [lindex $l1 $midpoint]
            return $median
        }
    } else {
        set midpoint2 [expr $total_length /2]
        set midpoint1 [expr $midpoint2 - 1]
            if {[expr [llength $l1 ] > [llength $l2]]} {
                set ll $l1
                set sl $l2
                set med2 [expr $total_length /2]
                set med1 [expr $midpoint2 - 1]
            } else {
                set ll $l2
                set sl $l1
                set med1 [expr ($midpoint1 - [llength $sl])]
                set med2 [expr ($midpoint2 - [llength $sl])]
            }
            set median  [expr ([lindex $ll $med1] + [lindex $ll $med2]) / 2.0]
            return $median
        }
    }
puts "Median value is: [median_value {1} {2 3 4}]"