proc selection_sort {unsorted_list length} {
   

    for {set i 0} { $i < ($length-1)} { incr i } {
        set min_index  $i
        
        for {set j [expr {$i + 1}]} {$j < $length} {incr j} {
            if {[lindex $unsorted_list $j] < [lindex $unsorted_list $min_index]} {
                set min_index $j
                
            }
        }

        set tmp [lindex $unsorted_list $i]
        set tmp2 [lindex $unsorted_list $min_index]

        
        set unsorted_list [lreplace $unsorted_list $i $i $tmp2]
        set unsorted_list [lreplace $unsorted_list $min_index $min_index $tmp]

    }
    puts "sorted list: $unsorted_list"
    return $unsorted_list
}

set l {1 5 3 2 10 4 19 20 6 12 7}
set l_length [llength $l]
set sorted_list [selection_sort $l $l_length]
