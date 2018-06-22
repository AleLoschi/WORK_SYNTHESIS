
set lista [list]
set paths [get_timing_paths]
	foreach_in_collection path $paths {
		foreach_in_collection timing_point [get_attribute $path points] {			
			set point_name [get_attribute [get_attribute $timing_point object] full_name]
			set point_inc [get_attribute $timing_point arrival ]
			lappend lista $point_inc	
				
		}
	}
puts $lista
echo "----------------------------------------"
set incremental_list [list]
set largo [llength $lista]
set i 1
while {$i<$largo} {
	set inter1 [lindex $lista [expr ($i + 2)]]
	set inter2 [lindex $lista $i]
	set result [expr ($inter1 - $inter2)]
	lappend incremental_list $result

	incr i
	incr i
}

set incremental_list [lreplace $incremental_list end end]
puts $incremental_list

set transitionTime [get_attribute [get_attribute [get_timing_paths] points] transition]
