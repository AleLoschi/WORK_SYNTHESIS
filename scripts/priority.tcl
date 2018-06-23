proc cell_swapper { cellName type } {
	if [string equal $type HVT] {
		set cell_ref_name [get_attribute -class cell $cellName ref_name]
		regsub -all "_LL" $cell_ref_name "_LH" cell_ref_name
		size_cell $cellName CORE65LPHVT_nom_1.20V_25C.db:CORE65LPHVT/$cell_ref_name
	} elseif [string equal $type LVT] {
		set cell_ref_name [get_attribute -class cell $cellName ref_name]
		regsub -all "_LH" $cell_ref_name "_LL" cell_ref_name
		size_cell $cellName CORE65LPLVT_nom_1.20V_25C.db:CORE65LPLVT/$cell_ref_name
	} else {
		puts "Type is wrong: select HVT or LVT"
		return 0
	}
	return 1
}

set paths [get_timing_paths]
foreach_in_collection path $paths {
	foreach_in_collection timing_point [get_attribute $paths points] {
		#retrieve cell name from timing point
		set point_name [get_attribute [get_attribute $timing_point object] full_name] 
		#check if an output
		if { [expr [string first "U" $point_name] == 0] && [expr [string first "/Z" $point_name] > 0]} {
			#get cell name
			set cell_name [ lindex [ split $point_name "/" ] 0 ]
			#control if we already analyze this cell, else skip it
			if {![info exists leak_pow_lvt($cell_name)]} {
				set delay_lvt($cell_name) [get_attribute [get_timing_paths -through $point_name] arrival]
				set leak_pow_lvt($cell_name) [get_attribute [get_cell $cell_name] leakage_power]
			} else {
				puts "$cell_name already analyzed, skipped!"
			}
		}
	}
}
#Acquire HVT data 
foreach {name value} [array get leak_pow_lvt] {
	#Swap the cell
	cell_swapper $name HVT
	#Retrieve data
	set delay_hvt($name) [get_attribute [ get_timing_paths -through $name/Z ] arrival]
	set leak_pow_hvt($name) [get_attribute [get_cell $name] leakage_power]
	#Swap back
	cell_swapper $name LVT
}
#Make a priority list where P(i)=Delta_Leak(i)/Delta_delay(i)
foreach {name value} [array get leak_pow_hvt] {
	#Calculate Delta
	set delta_delay [expr $delay_hvt($name) - $delay_lvt($name)]
	set delta_leak [expr $value - $leak_pow_lvt($name)]
	#Calculate Priorities (*100000000 to have more readable output)
	set Priorities [expr $delta_leak * 100000000 / $delta_delay]	
	set priority_list [lappend priority_list $Priorities]
}
set priority_list [lsort -real -increasing $priority_list]
puts "Priority list is: $priority_list"