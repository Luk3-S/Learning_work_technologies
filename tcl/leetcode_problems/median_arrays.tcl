proc median_value {l1 l2} {
    set total_length [expr [llength $l1] + [llength $l2]]
    set is_odd [expr $total_length %2]
    
    if {[expr $is_odd == 1]} { ;# if combined length of lists is odd
        set midpoint [expr $total_length /2]
        if {[expr $midpoint == [llength $l1]]} { ;# if midpoint == length of l1, then median is 0th element of 
            set median  [lindex $l2 0]
        } else {
            set median [lindex $l1 $midpoint] 
        }
    } else { ;# even combined list size
            if {[expr [llength $l1 ] > [llength $l2]]} { ;# if l1 > l2 in size and total length is equal, midpoints will be l1[end] & l1[end - 1]
                set median [expr {([lindex $l1 end] + [lindex $l1 end-1])} / 2.0]
            } 
            if {[expr [llength $l1] == [llength $l2]]} { ;# if l1 == l2 in size, midpoints are l1[end] & l2[0]
                set median [expr ([lindex $l1 end] + [lindex $l2 0]) / 2.0]
            } 
            if {[expr [llength $l1] < [llength $l2]]} { ;# l2 > l1 in size, midpoints are l2[0] & l2[1]
                set median  [expr {([lindex $l2 0] + [lindex $l2 1])} / 2.0]
            } 
        }
    return $median
}
puts "Median value is: [median_value {1 2 3 4} {4 6}]"
puts "Median value is: [median_value {1} {4 6}]"
puts "Median value is: [median_value {1 2} {4}]"
puts "Median value is: [median_value {1 2} {3 4 5 6}]"
puts "Median value is: [median_value {1 2 3 4} {5 6 7 8}]"


