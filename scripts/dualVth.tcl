set timing_save_pin_arrival_and_slack true
proc dualVth {args} {
	parse_proc_arguments -args $args results
	set savings $results(-savings)
	
	if {$savings < 0 || $savings > 1} {
		puts "Wrong argument! Please specify a float in the range [0,1]"
		return
	}
	
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
	
	

	suppress_message NED-045
	suppress_message PWR-601
	suppress_message PWR-246
	
	set start_power [get_attribute [get_design] leakage_power]
	foreach_in_collection itr [get_cells *] {
		
		set cell_name [get_attribute $itr full_name]
		set delay_lvt($cell_name) [get_attribute [get_pins -of_object $cell_name] max_slack]
		set leak_pow_lvt($cell_name) [get_attribute [get_cell $cell_name] leakage_power]
		#Swap the cell
		cell_swapper $cell_name HVT
		#Retrieve data
		set delay_hvt($cell_name) [get_attribute [get_pins -of_object $cell_name] max_slack]
		set leak_pow_hvt($cell_name) [get_attribute [get_cell $cell_name] leakage_power]
		#Swap back
		cell_swapper $cell_name LVT
		if {[llength $delay_lvt($cell_name)] > 1} {
			foreach i $delay_lvt($cell_name) j $delay_hvt($cell_name) {
				lappend delta_delay($cell_name) [expr $j - $i]
			}
		} else {
			set delta_delay($cell_name) [expr $delay_hvt($cell_name) - $delay_lvt($cell_name)]
		}
		
		set delta_leak($cell_name) [expr $leak_pow_hvt($cell_name) - $leak_pow_lvt($cell_name)]
		
		if {[llength $delta_delay($cell_name)] > 1} {
			foreach i $delta_delay($cell_name) {
				lappend priority($cell_name) [expr $delta_leak($cell_name) / $i]
			}
		} else {
			set priority($cell_name) [expr $delta_leak($cell_name) / $delta_delay]
		}
	}
	
	#puts "Delay list: [array get delay_lvt]"
	#puts "leak_pow_lvt list: [array get leak_pow_lvt]"
	#puts "Delay list names: [array names delay_lvt]"
	#puts "leak_pow_lvt list names: [array names leak_pow_lvt]"
	#puts "Delay list hvt: [array get delay_hvt]"
	#puts "leak_pow_hvt list: [array get leak_pow_hvt]"
	#puts "Delay list names hvt: [array names delay_hvt]"
	#puts "leak_pow_hvt list names: [array names leak_pow_hvt]"
	#puts "delta_delay list: [array get delta_delay]"
	#puts "delta_leak list: [array get delta_leak]"
	#puts "priority list: [array get priority]"
	
	set actual_saving 0
	while {$actual_saving <= $savings} {
		set tmp_priority 0
		foreach {name value} [array get priority] {
			foreach i $value {
				if {$tmp_priority <= $i} {
					set tmp_priority $i
					set swap_name $name
					set index1 [lsearch $priority($name) $tmp_priority]
				}
			}
		}
		if {$tmp_priority == 0} break
		set priority($swap_name) [lreplace $priority($swap_name) $index1 $index1 0]
		cell_swapper $swap_name HVT
		set actual_power [get_attribute [get_design] leakage_power]
		set actual_saving [expr ($start_power - $actual_power) / $start_power]
		#puts "Found priority: $tmp_priority at $index1 of cell $swap_name"
		#puts "priority list: $priority($swap_name)"
		
	}
	puts "Actual saving: $actual_saving"
	
	return
}

define_proc_attributes dualVth \
-info "Post-Synthesis Dual-Vth cell assignment" \
-define_args \
{
	{-savings "minimum % of leakage savings in range [0, 1]" lvt float required}
}
