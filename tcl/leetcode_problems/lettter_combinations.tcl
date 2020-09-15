set keypad_nums {2 {a b c} 3 {d e f} 4 {g h i} 5 {j k l} 6 {m n o} 7 {p q r} 8 {s t u} 9 {v w x y} 1 {z }}

proc letter_combinations {test_string} {
    upvar keypad_nums keypad_nums
    set out_string ""
    set curr_char_count 0
    set prev_char ""
    
    for {set index 0 } { $index <= [string length $test_string] } { incr index} {
        set curr_char [string index $test_string $index ]
        if { ($prev_char eq $curr_char) && $curr_char_count <2 } {
            incr curr_char_count
             
        } else {
            if {$index != 0} {
            set selected [lindex [dict get $keypad_nums $prev_char] $curr_char_count]
            set out_string [concat $out_string $selected]
            set curr_char_count 0
            }
        }
        set prev_char $curr_char   
    }
    return $out_string
}
puts "result: [letter_combinations 443355555566611996667775553]"

