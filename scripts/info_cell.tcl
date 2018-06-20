
foreach_in_collection point_cell [get_cells] {
	set cell_name [get_attribute $point_cell full_name]
	set cell_type [get_attribute $point_cell is_combinational]
	set cell_leakage [get_attribute $point_cell leakage_power]
	puts $cell_leakage
	#if { $cell_type == true } {
	#	puts "$cell_name is combinational"
		
	#	puts [lindex $cell_leakage 0]
		
	#} else {
	#	puts "$cell_name is not combinational"
	#}
}
#comand used for seing the atributes available for each cell
#list_attributes -class cell -application
#for the delay use the get_timming_path and extract the arrival timming of each node 
