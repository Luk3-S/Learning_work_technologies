 proc two_sum {nums target} {
     set fixed [lindex $nums 0];#get zeroth element for comparison
     for {set i 1} { $i < [llength $nums] } { incr i } {
         if {[expr {( $target - $fixed) == [lindex $nums $i ]}]} {
             return "[lsearch $nums $fixed], $i"  
         }
        set fixed [lindex $nums $i]
     }
 }
puts "Indices used are [two_sum {3 2 4} 6]"