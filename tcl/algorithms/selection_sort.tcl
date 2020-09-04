proc selection_sort {unsorted_list length} {
    for {set i 0} { $i < ($length-1)} { incr i } {
        set min_index  $i
        for {set j [expr {$i + 1}]} {$j < $length} {incr j} {
            if {[lindex $unsorted_list $j] < [lindex $unsorted_list $min_index]} {
                set min_index $j  
            }
        }
        set tmp [lindex $unsorted_list $i] ;# Temporary variable to hold unsorted_list[i] pre-replacement
        set unsorted_list [lset unsorted_list  $i [lindex $unsorted_list $min_index]]
        set unsorted_list [lset unsorted_list $min_index $tmp]
    }
    return $unsorted_list
}
set l {1 5 3 2 10 4 19 20 6 12 7}
puts [selection_sort $l [llength $l]]
