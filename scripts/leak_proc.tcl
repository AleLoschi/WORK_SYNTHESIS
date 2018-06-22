proc tot_leak {} {
	set report_text ""  ;# Contains the output of the report_power command
	set lnr 18         ;# Leakage info is in the 2nd line from the bottom prima 4
	set wnr 4           ;# Leakage info is the 5 word in the $lnr line 
	set unit 5           ;# measure unit info is the 6 word in the $lnr line 
	redirect -variable report_text {report_power -nosplit}
	set report_text [split $report_text "\n"]
	set value_power [lindex [regexp -inline -all -- {\S+} [lindex $report_text [expr [llength $report_text] - $lnr]]] $wnr]
	set unit_power [lindex [regexp -inline -all -- {\S+} [lindex $report_text [expr [llength $report_text] - $lnr]]] $unit]
	  
	if { $unit_power == "mW" } {
		return [expr $value_power * 1000.0 ]
	} elseif {$unit_power == "uW"} {
		return $value_power
	} elseif {$unit_power == "nW"} {
		return [expr $value_power / 1000.0 ]
	} elseif {$unit_power == "pW"} {
		return [expr $value_power / 1000000.0 ]
	}
}