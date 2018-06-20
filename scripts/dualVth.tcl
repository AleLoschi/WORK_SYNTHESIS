proc dualVth {args} {
	parse_proc_arguments -args $args results
	set savings $results(-savings)

	set timing_save_pin_arrival_and_slack TRUE
	set timing_save_arrival_and_slack TRUE
	suppress_message NED-045
	
	set all_cells_list [get_cells]

	set paths [get_timing_paths]
	foreach_in_collection path $paths {
		foreach_in_collection timing_point [get_attribute $path points] {			
			set point_name [get_attribute [get_attribute $timing_point object] full_name]
			# Is this timing point an output?
			if { [expr [string first "U" $point_name] == 0] && [expr [ string first "/Z" $point_name ] > 0] } {
				# puts "Found output node $point_name;"
				# Get the name of the cell
				set cell_name [ lindex [ split $point_name "/" ] 0 ]
				# Have we already analyzed this cell?
				if {![info exists leakage_lvt($cell_name)]} {
					# Get the arrival time and leakage power for LVT
					set delay_lvt($cell_name) [ get_attribute [ get_timing_paths -through $point_name ] arrival ]
					puts "Delay of $cell_name for LVT is $delay_lvt($cell_name) ns"
					set leakage_lvt($cell_name) [get_attribute $cell_name leakage_power]
					puts "Leakage of $cell_name for LVT is $leakage_lvt($cell_name) nW"
				} else {
					puts "$cell_name already analyzed, skipping..."
				}
			}
		}
		
	}
	
	# Now get the HVT values
		puts "Swapping to HVT"
		set HVT_count 0
		foreach_in_collection cell_name $all_cells_list {
		set cell_ref_name [get_attribute -class cell $cell_name ref_name]			
		regsub -all "_LL" $cell_ref_name "_LH" cell_ref_name	
		size_cell $cell_name CORE65LPHVT_nom_1.20V_25C.db:CORE65LPHVT/$cell_ref_name
		set HVT_count [expr $HVT_count +1]		
		}	
		# Get values for HVT
		set delay_hvt($cell_name) [ get_attribute [ get_timing_paths -through $cell_name/Z ] arrival ]
		puts "Delay of $cell_name for HVT is $delay_hvt($cell_name) ns"
		set leakage_hvt($cell_name) [get_attribute $cell_name leakage_power]
		puts "Leakage of $cell_name for HVT is $leakage_hvt($cell_name) nW"
		# Swap back to LVT
		puts "Swapping to LVT"
		set LVT_count 0
		foreach_in_collection cell_name $all_cells_list {
		set cell_ref_name [get_attribute -class cell $cell_name ref_name]			
		regsub -all "_LH" $cell_ref_name "_LL" cell_ref_name	
		size_cell $cell_name CORE65LPLVT_nom_1.20V_25C.db:CORE65LPLVT/$cell_ref_name
		set LVT_count [expr $LVT_count +1]		
		}	
	
	
	
	set_user_attribute [find library CORE65LPLVT] default_threshold_voltage_group LVT
	set_user_attribute [find library CORE65LPHVT] default_threshold_voltage_group HVT
	return
}




define_proc_attributes dualVth \
-info "Post-Synthesis Dual-Vth cell assignment" \
-define_args \
{
	{-savings "minimum % of leakage savings in range [0, 1]" lvt float required}
}
