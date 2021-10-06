#######################################################################################################
#                                                                                                     #
#BSDLCustomizer Version 2.4                                                                           #
#                                  		                                                            #
#Version history:  														#
#																	#
#   Version 2.4 - 24th November 2008		   									#
#		    - Add support for Arria GX	                			    	                  #
#		    - Update the algorithm for handling the last BSC group                                #	
# 																      #
#   Version 2.3 - 20th July 2007		   										#
#		    - Include "RESERVED_INPUT_WITH_WEAK_PULLUP" as untestable pin    	                  #
#		    - LVDS pin pair set to untestable									# 
#								              	                  			#	
#   Version 2.2 - 24th May 2007												#
#               - Remove extra , at the last BSC group								#
#		    - Add support for Cyclone III and Stratix III                                         #
#														                  #	 
#   Version 2.1 - 15th January 2007                                                                   #
#               - Add support for the following I/O standard: 					            #
#			1.5-V/1.8-V HSTL I/II, 1.8V, AGP 1X/2X,Compact PCI, CTT, GTL/+, 	                  # 
#                 SSTL-18/2/3 Class I/II							                        #
#  												                              #	 
#   Version 2.0 - 3rd October 2006                                                                    #
#               - Fix pin name space bug 							                        #
#												                              #
#   Version 1.9 - 23rd August 2006                                                                    #
#               - Add support for HardCopy II   					                        #
#												                              #	
#   Version 1.8 - 1st August 2006                                                                     #
#               - Add HyperTransport support                                                          #
#                                                                                                     #
#   Version 1.7 - 1st March 2006                                                                      #
#               - Hardware tested and released version                                                #
#                                                                                                     #
#   Version 1.6 - 12th October 2005                                                                   #
#               - Added support for Cyclone II                                                        #
#                                                                                                     #
#   Version 1.5 - 26th August 2005                                                                    #
#               - Fix unused dedicated input pin                                                      #
#                                                                                                     #
#   Version 1.4 - 8th June 2005                                                                       #
#               - Fix ouput only pin bug                                                              #
#               - Changed BSCG pins description                                                       #
#                                                                                                     #
#   Version 1.3B- 6th April 2005                                                                      #
#               - Fix bidirectional pin bug                                                           #
#                                                                                                     #
#   Version 1.3A- 1st April 2005                                                                      #
#               - Modified pins are named according to original format                                #
#                                                                                                     #
#   Version 1.3 - 1st February 2005                                                                   #
#               - Added support for LVDS pins                                                         #
#               - LVDS (p) pin is testable as input or output, LVDS (n) pin is untestable             #
#               - LVDS bidirectional (p) pin is consider as I/O pin                                   #
#                                                                                                     #
#   Version 1.2 - 5th January 2005                                                                    #
#               - Make unused pins as untestable                                                      #
#               - Correct the mapping for pins that has a comma in BSDL file (e.g. AE10, to be AE10)  #
#                                                                                                     #
#   Version 1.1 - 24th December 2004                                                                  #
#               - Script named as BSDLCustomizer                                                      #
#               - Added extra feature to be able to modify the file by creating a pseudo pin file     #
#                                                                                                     #
#   Version 1.0 - 29th October 2004                                                                   #
#               - Support for all devices available at this time                                      #
#               - New BSDL file generated does not have sequence like the original BSDL file	      #
#               - Outputs are considered as out bit                                                   #
#               - All differential pairs are not testable and treated as linkage bits                 #
#               - IEEE1149.1 BSDL file posted on the web and PIN file from Quartus II required        #
#               - Currently only support for LVTTL pins                                               #
#                                                                                                     #
#######################################################################################################

set version "2.4"

puts "\n*********************************************************************"
puts "*                                                                   *"
puts "*  BSDLCustomizer version $version                                       *"
puts "*                                                                   *"
puts "*********************************************************************\n"

set dirnow [pwd]
puts "Current directory is $dirnow/"

set temp_filename "$dirnow/tempfile.tmp"
set map_filename "$dirnow/pinfile.tmp"

set err 0

set filesearch [glob $dirnow/*.bsd]
set bsdl_filename "$filesearch"
set name [split $bsdl_filename "."]
if {[lindex $name 2] != ""} {
	puts "There are more than one BSDL file in the directory"
	set err 1
} else {
	set new_bsdl_filename "[lindex $name 0]_new.bsd"
	puts "\nCurrent BSDL filename is $bsdl_filename"
	puts "New bsdl filename will be $new_bsdl_filename"
}

set filesearch [glob $dirnow/*.pin]
set pin_filename "$filesearch"
set name [split $pin_filename "."]
if {[lindex $name 2] != ""} {
	puts "There are more than one PIN file in the directory"
	set err 2
} else {
	puts "Current PIN file name is $pin_filename"
}
#-------------------------------------------------------------------------------------------------------------

if {$err == 0} {

set tempfile [open "$temp_filename" w]	
set pinfile [open "$pin_filename" r+]

puts "\nStart reading pin file"

seek $pinfile 0 start		

set line [gets $pinfile]	

if {[lindex $line 0] != "test"} {							;#Test if pseudo PIN file is used

	while {[lindex $line 0] != "Pin"} {		
		set line [gets $pinfile]
	}

	set line [gets $pinfile]
	set line [gets $pinfile]								;#two times to get to the first pin

	while {[eof $pinfile] == 0} {							;#This is to log all the pin informations
	

  	#This is to make sure that the tcl file ignore pin name space
		
		if {[lindex $line 1] != ":"} {
			#puts "\n pin name contains spaces\n"
			
				while {[lindex $line 1] != ":"} {
					
		 	            set a [concat [lindex $line 0] [lindex $line 1] ]
					set line [lreplace $line 0 1 ] 
					set line [linsert $line 0 $a ]
					#puts $line 
					#puts [lindex $line 0]

				}

		}
	#End of ignoring pin name space	

		
		if {[lindex $line 0] == "RESERVED_INPUT"} {
			puts $tempfile "[lindex $line 2]\t reserved_input"
		}
		
            if {[lindex $line 0] == "RESERVED_INPUT_WITH_WEAK_PULLUP"} {
			puts $tempfile "[lindex $line 2]\t reserved_input"
		}
			
	
		if {[lindex $line 0] == "RESERVED"} {
			puts $tempfile "[lindex $line 2]\t reserved_input"
		}
		
		if {[lindex $line 0] == "GND*"} {
			puts $tempfile "[lindex $line 2]\t gnd"
		}

		if {[lindex $line 0] == "GND+"} {
			puts $tempfile "[lindex $line 2]\t gnd"
		}

	
		if {[lindex $line 6] == "LVTTL" || [lindex $line 8] == "LVTTL"} { ;#check if the standards of pin is LVTTL
					
			if {[lindex $line 0] != "TDI"} {				;#This part is to detect the Jtag pins
				if {[lindex $line 0] != "TDO"} {			;#If any Jtag pins are found, it will be ignored
					if {[lindex $line 0] != "TCK"} {		
						if {[lindex $line 0] != "TMS"} {	;#Include TDI,TDO,TMS and TCK
							if {[lindex $line 2] == "RESERVED_INPUT"} {
								puts $tempfile "[lindex $line 4]\t [lindex $line 6]"	;#Some special pin found in stratix
							} else {
								puts $tempfile "[lindex $line 2]\t [lindex $line 4]" 	;#Write pin number and function
							}															;#into temporary file
						}														
					}
				}
			}
		}

		if {[lindex $line 6] == "LVDS"} {					;#check if the standards of pin is LVDS
			set length [string length [lindex $line 0]]		;#get the line length
			set newline [string range $line [expr $length-3] [expr $length-1]]	;#take only last 3 characters
			if {$newline == "(n)"} {						;#check if the LVDS pin is negative
				puts $tempfile "[lindex $line 2]\t maskn"	;#flag pin to be masked negative if found LVDS
			} else {
				if {[lindex $line 4] == "input"} {
					puts $tempfile "[lindex $line 2]\t maskn"	;#flag pin to be masked negative if found LVDS
				}
				if {[lindex $line 4] == "output"} {
					puts $tempfile "[lindex $line 2]\t maskn"	;#flag pin to be masked negative if found LVDS
				}
				if {[lindex $line 4] == "bidir"} {
					puts $tempfile "[lindex $line 2]\t maskn"	;#flag pin to be masked negative if found LVDS
				}
			}
		}

		if {[lindex $line 6] == "Differential"} {			;#check if the standards of pin is Differential pair
			set length [string length [lindex $line 0]]		;#get the line length
			set newline [string range $line [expr $length-3] [expr $length-1]]	;#take only last 3 characters
			if {$newline == "(n)"} {						;#check if the LVDS pin is negative
				puts $tempfile "[lindex $line 2]\t maskn"	;#flag pin to be masked negative if found LVDS
			} else {
				if {[lindex $line 4] == "input"} {
					puts $tempfile "[lindex $line 2]\t maskpi"	;#flag pin to be masked positive if found LVDS input
				}
				if {[lindex $line 4] == "output"} {
					puts $tempfile "[lindex $line 2]\t maskpo"	;#flag pin to be masked positive if found LVDS output
				}
				if {[lindex $line 4] == "bidir"} {
					puts $tempfile "[lindex $line 2]\t maskpb"	;#flag pin to be masked positive if found LVDS bidirectional
				}
			}
		}

		if {[lindex $line 6] == "HyperTransport"} {			;#check if the standards of pin is Differential pair I/O std HyperTransport
			set length [string length [lindex $line 0]]		;#get the line length
			set newline [string range $line [expr $length-3] [expr $length-1]]	;#take only last 3 characters
			if {$newline == "(n)"} {						;#check if the LVDS pin is negative
				puts $tempfile "[lindex $line 2]\t maskn"	;#flag pin to be masked negative if found LVDS
			} else {
				if {[lindex $line 4] == "input"} {
					puts $tempfile "[lindex $line 2]\t maskpi"	;#flag pin to be masked positive if found HyperTransport input
				}
				if {[lindex $line 4] == "output"} {
					puts $tempfile "[lindex $line 2]\t maskpo"	;#flag pin to be masked positive if found HyperTransport output
				}
				if {[lindex $line 4] == "bidir"} {
					puts $tempfile "[lindex $line 2]\t maskpb"	;#flag pin to be masked positive if found HyperTransport bidirectional
				}
			}
		}
		

	     if {[lindex $line 6] == "1.5-V"} { 				;#check if the standards of pin is 1.5V HSTL Class I/II
			puts $tempfile "[lindex $line 2]\t [lindex $line 4]"
		}

	     if {[lindex $line 6] == "1.8"} { 				;#check if the standards of pin is 1.8 V 
			puts $tempfile "[lindex $line 2]\t [lindex $line 4]"
		}

	     if {[lindex $line 6] == "1.8-V"} { 				;#check if the standards of pin is 1.8-V HSTL Class I/II 
			puts $tempfile "[lindex $line 2]\t [lindex $line 4]"
		}

	     if {[lindex $line 6] == "AGP"} { 				;#check if the standards of pin is AGP 1X/2X
			puts $tempfile "[lindex $line 2]\t [lindex $line 4]"
		}
	  
	     if {[lindex $line 6] == "Compact"} { 			;#check if the standards of pin is Compact PCI
			puts $tempfile "[lindex $line 2]\t [lindex $line 4]"
		}

	     if {[lindex $line 6] == "CTT"} { 			      ;#check if the standards of pin is CTT
			puts $tempfile "[lindex $line 2]\t [lindex $line 4]"
		}

	     if {[lindex $line 6] == "GTL"} { 			      ;#check if the standards of pin is GTL
			puts $tempfile "[lindex $line 2]\t [lindex $line 4]"
		}
	   
           if {[lindex $line 6] == "GTL+"} { 			      ;#check if the standards of pin is GTL+
			puts $tempfile "[lindex $line 2]\t [lindex $line 4]"
		}
		
	
           if {[lindex $line 6] == "SSTL-18"} { 			 ;#check if the standards of pin is SSTL-18 Class I/II
			puts $tempfile "[lindex $line 2]\t [lindex $line 4]"
		}


           if {[lindex $line 6] == "SSTL-2"} { 			       ;#check if the standards of pin is SSTL-2 Class I/II
			puts $tempfile "[lindex $line 2]\t [lindex $line 4]"
		}


           if {[lindex $line 6] == "SSTL-3"} { 			       ;#check if the standards of pin is SSTL-3 Class I/II
			puts $tempfile "[lindex $line 2]\t [lindex $line 4]"
		}


		if {[lindex $line 6] == "LVCMOS"} { 				;#check if the standards of pin is LVCMOS
			puts $tempfile "[lindex $line 2]\t [lindex $line 4]"
		}
		
		if {[lindex $line 6] == "1.5"} { 					;#check if the standards of pin is 1.5 V
			puts $tempfile "[lindex $line 2]\t [lindex $line 4]"
		}
		
		if {[lindex $line 6] == "2.5"} { 					;#check if the standards of pin is 2.5 V
			puts $tempfile "[lindex $line 2]\t [lindex $line 4]"
		}
		
		if {[lindex $line 6] == "3.3-V"} { 					;#check if the standards of pin is 3.3-V PCI
			puts $tempfile "[lindex $line 2]\t [lindex $line 4]"
		}
		
		set line [gets $pinfile]	
	} 
} else {
	
	puts "Test file exist. Modification will be based on test file"
	
	set line [gets $pinfile]
	
	while {[eof $pinfile] == 0} {
		puts $tempfile $line
		set line [gets $pinfile]
	}
}


close $tempfile
close $pinfile

puts "Pin file reading completed\n"

#Done reading the pin file

#set tempfile [open "$temp_filename" r]			;#for debugging purpose
#set debugfile [open "$dirnow/debug.txt" w]

#seek $tempfile 0 start
#set line [gets $tempfile]

#while {[eof $tempfile] == 0} {
#	puts $debugfile $line
#	set line [gets $tempfile]
#}

#close $tempfile
#close $debugfile

#Map the read pin into BSDL file

set tempfile [open "$temp_filename" r]
set bsdlfile [open "$bsdl_filename" r]
set mapfile [open "$map_filename" w]	

puts "Start mapping BSDL pin"
						
seek $tempfile 0 start					
set tempfileline [gets $tempfile]

while {[eof $tempfile] == 0} {

	seek $bsdlfile 0 start			

	set line [gets $bsdlfile]		

	while {$line != "--I/O Pins"} {	;#loop until found the --I/O pins
		set line [gets $bsdlfile]	
	}	
	set line [gets $bsdlfile]		;#next line, which is the pin lines

	while {$line != "--I/O Pins"} {
		set line [gets $bsdlfile]	;#search for next --I/O Pins again
	}

	set line [gets $bsdlfile]		;#next line, the pin mapping line

	set pinnumber [lindex $tempfileline 0]	
	set done 0				
	set length [string length $line]						;#get the line length
	set newline [string range $line 5 [expr $length - 3]]	;#take away the quotes and &
	set length [string length $newline]
	while {[lindex $newline 0] != "G" && $done == 0} {		;#Search till JTAG pins
															;#because it's from 5th location of the string
															;#it becomes G instead of --JTAG
		for {set i 2} {$i < 15 && $done == 0} {incr i 1} {	
			
			if {[lindex $newline $i] != "," && [lindex $newline $i] != ":" && [lindex $newline $i] != ""} {

				set newstring [lindex $newline $i]				;#This part is to separate the comma from the
				set stringlength [string length $newstring]		;#  pin name.
				
				if {[string index $newstring [expr $stringlength - 1]] == ","} {
					set newstring1 [string range $newstring 0 [expr $stringlength - 2]]
					set newline [lreplace $newline $i $i "$newstring1"] 
					
				}

				if {[lindex $newline $i] == $pinnumber} {		;#check pin number
					puts $mapfile "[lindex $newline [expr $i - 2]]\t $tempfileline"	;#write name into mapfile
					set done 1									;#set done flag if pin found to escape loop
					
				}
			}
		}
					
		set line [gets $bsdlfile]			
		set length [string length $line]					
		set newline [string range $line 5 [expr $length - 3]]	;#again from 5th location of line to remove
																;#the quotes and &		
	}
	set tempfileline [gets $tempfile]
}	

close $tempfile
close $bsdlfile
close $mapfile


puts "Pin mapping completed\n"

#-------------------------------------------------------------------------------------------------------------

set tempfile [open "$temp_filename" w]	;#temporary file to create pin list
set bsdlfile [open "$bsdl_filename" r]	;#open BSDL file to read the pin list
set mapfile [open "$map_filename" r]	;#read pin mapped earlier that needs to change type

puts "Start pin listing"

seek $bsdlfile 0 start					;#origin of BSDL file

set line [gets $bsdlfile]

while {[string range $line 3 8] != "Device"} {	;#Search PIN file until the Device to look for device type
	set line [gets $bsdlfile]
}

set device [string range $line 19 22]			;#Get the device type

if {$device == "EP1C"} {						;#Assign the correct safebit for each dfferent devices
	set safebit 1
	puts "\nDevice is Cyclone\n"				;#Just for checking purpose to display the device type
}
if {$device == "EP2C"} {						
	set safebit 1
	puts "\nDevice is Cyclone II\n"				
}

if {$device == "EP3C"} {						
	set safebit 1
	puts "\nDevice is Cyclone III\n"				
}

if {$device == "EP1S"} {
	set safebit 1
	puts "\nDevice is Stratix or Stratix GX\n"
}
if {$device == "EP2A"} {
	set safebit 1
	puts "\nDevice is APEX II\n"
}
if {$device == "EPC1" || $device == "EPC2" || $device == "EPC4" || $device == "EPC8"} {
	set safebit 1
	puts "\nDevice is EPC\n"
}
if {$device == "EP1M"} {
	set safebit 1
	puts "\nDevice is Mercury\n"
}
if {$device == "EP1K"} {
	set safebit 1
	puts "\nDevice is ACEX\n"
}
if {$device == "EP20"} {
	set safebit 1
	puts "\nDevice is APEX 20K\n"
}
if {$device == "EPX7" || $device == "EPX8"} {
	set safebit 1
	puts "\nDevice is ALTERA FLASHLOGIC\n"
}
if {$device == "EPF6"} {
	set safebit 1
	puts "\nDevice is FLEX6000\n"
}
if {$device == "EPF8"} {
	set safebit 1
	puts "\nDevice is FLEX8000\n"
}
if {$device == "EPF1"} {
	set safebit 1
	puts "\nDevice is FLEX 10K\n"
}
if {$device == "EP2S"} {
	set safebit 1
	puts "\nDevice is Stratix II or Stratix II GX\n"
}

if {$device == "EP3S"} {
	set safebit 1
	puts "\nDevice is Stratix III\n"
}


if {$device == "EP1A"} {
	set safebit 1
	puts "\nDevice is Arria GX\n"
}

if {$device == "EPXA"} {
	set safebit 1
	puts "\nDevice is Excalibur\n"
}
if {$device == "EPM3" || $device == "EPM7" || $device == "EPM9"} {
	set safebit 0
	puts "\nDevice is MAX\n"
}
if {$device == "EPM1" || $device == "EPM2" || $device == "EPM5"} {
	set safebit 1
	puts "\nDevice is MAX II\n"
}
if {$device == "HC1S"} {
	set safebit 1
	puts "\nDevice is HardCopy Stratix\n"
}
if {$device == "HC20"} {
	set safebit 1
	puts "\nDevice is HardCopy APEX 20K\n"
}

if {$device == "HC21" || $device == "HC22" || $device == "HC23" || $device == "HC24"} {
	set safebit 1
	puts "\nDevice is HardCopy II\n"

}
while {$line != "--I/O Pins"} {	;#search for --I/O pins in BSDL file
	set line [gets $bsdlfile]	;#next line
}	

set line [gets $bsdlfile]		;#next line, which is the pin lines

set done 0						;#flag for end of pin names

;#Start pin listing--------------------------------------------	

set iolines "inout"		;#All the temporary lines to hold each category
set inlines "in"
set outlines "out"
set lklines "linkage"
set templine ""

while {[lindex $line 0] != "--JTAG"} {
		
	set done 0		;#To complete one whole list or not flag
	
	for {set i 0} {$i < 15 && $done == 0} {incr i} {
		
		set skip 0	;#To search or not flag
		set ok 1	;#Write or not flag
		
		if {[lindex $line $i] == "inout" || [lindex $line $i] == ":inout" } {			
			set done 1								;#if inout found, break from the search
			set skip 1								;#also don't search anymore
			set iolines "$iolines $templine"		;#Copy the line into the variable
			set templine ""
		}
		
		if {[lindex $line $i] == "in" || [lindex $line $i] == ":in" } {			
			set done 1								;#if in found, break from the search
			set skip 1								
			set inlines "$inlines $templine"
			set templine ""		
		}
		
		if {[lindex $line $i] == "out" || [lindex $line $i] == ":out" } {			
			set done 1								;#if out found, break from the search
			set skip 1								
			set outlines "$outlines $templine"		
			set templine ""
		}
		
		if {[lindex $line $i] == "linkage" || [lindex $line $i] == ":linkage" } {			
			set done 1								;#if linkage found, break from the search
			set skip 1								
			set lklines "$lklines $templine"		
			set templine ""
		}
		
		if {[string index $line 0] == "-"} {		;#If comment found but not equal JTAG,
			set done 1								;#just break from all the loops
			set skip 1
		}
		
		if {[lindex $line $i] == ""} {			
			set skip 1								;#if no comma found, don't search at all
		}											;#Just go to next line coz it's end of the pin list
		
		seek $mapfile 0 start						;#To start search in mapfile
		set mapline [gets $mapfile]
		
		while {[eof $mapfile] == 0 && $skip == 0} {	;#To search the whole mapfile

			if {[lindex $line $i] != [lindex $mapline 0] && $ok == 1} {	
				set ok 1							;#If not match can write in
			}	
			if {[lindex $line $i] == [lindex $mapline 0]} {
				set ok 0							;#if match, don't write in
			}
			if {[lindex $line $i] == "," || [lindex $line $i] == ":"} {
				set ok 0							;#Don't write in if it is a comma or ":"
			}

			set mapline [gets $mapfile]				;#next mapped pin until end of file
		}

		if {$ok == 1 && $skip == 0} {
			set templine "$templine [lindex $line $i]"	;#write the pin into temporary line if not matched
		}
		
	}												;#Next pin name in the for loop

	set line [gets $bsdlfile]						;#Next pin line in BSDL file
	
}	

seek $mapfile 0 start	
set mapline [gets $mapfile]

while {[eof $mapfile] == 0} {						;#Loop to write in all the input pins from design
	if {[lindex $mapline 2] == "input"} {			
		if {[lindex $mapline 3] == ""} {
			set inlines "$inlines [lindex $mapline 0]"
		} else {
			set inlines "$inlines [lindex $mapline 3]"
		}
	}	
	set mapline [gets $mapfile]
}

seek $mapfile 0 start	
set mapline [gets $mapfile]

while {[eof $mapfile] == 0} {						;#Loop to write in all the output pins from design
	if {[lindex $mapline 2] == "output"} {
		if {[lindex $mapline 3] == ""} {
			set outlines "$outlines [lindex $mapline 0]"
		} else {
			set outlines "$outlines [lindex $mapline 3]"
		}
	}	
	set mapline [gets $mapfile]
}

seek $mapfile 0 start	
set mapline [gets $mapfile]

while {[eof $mapfile] == 0} {						;#Loop to write in all the unused pins from design
	if {[lindex $mapline 2] == "reserved" || [lindex $mapline 2] == "reserved_input" || [lindex $mapline 2] == "gnd"} {
		if {[lindex $mapline 3] == ""} {
			set lklines "$lklines [lindex $mapline 0]"
		} else {
			set lklines "$lklines [lindex $mapline 3]"
		}
	}	
	set mapline [gets $mapfile]
}


seek $mapfile 0 start	
set mapline [gets $mapfile]

while {[eof $mapfile] == 0} {						;#Loop to write in all the linkage pins from design
	if {[lindex $mapline 2] == "maskn" || [lindex $mapline 2] == "untestable" || [lindex $mapline 2] == "unused"} {
		if {[lindex $mapline 3] == ""} {			;#Differential pairs are considered as linkage
			set lklines "$lklines [lindex $mapline 0]"
		} else {
			set lklines "$lklines [lindex $mapline 3]"
		}
	}												;#Untestable and unused pins also considered as linkage
	set mapline [gets $mapfile]
}

seek $mapfile 0 start	
set mapline [gets $mapfile]

while {[eof $mapfile] == 0} {						;#Loop to write in differential pair pins from design
	if {[lindex $mapline 2] == "maskpi"} {
		if {[lindex $mapline 3] == ""} {			;#Differential input pairs (p) are considered as input
			set inlines "$inlines [lindex $mapline 0]"
		} else {
			set inlines "$inlines [lindex $mapline 3]"
		}
	}												
	set mapline [gets $mapfile]
}

seek $mapfile 0 start	
set mapline [gets $mapfile]

while {[eof $mapfile] == 0} {						;#Loop to write in differential pair pins from design
	if {[lindex $mapline 2] == "maskpo"} {
		if {[lindex $mapline 3] == ""} {			;#Differential output & bidirectional pairs (p) are considered as output
			set outlines "$outlines [lindex $mapline 0]"
		} else {
			set outlines "$outlines [lindex $mapline 3]"
		}
	}												
	set mapline [gets $mapfile]
}

seek $mapfile 0 start	
set mapline [gets $mapfile]

while {[eof $mapfile] == 0} {						;#Loop to write in bidirectional pins from design
	if {[lindex $mapline 2] == "bidir" || [lindex $mapline 2] == "maskpb"} {
		if {[lindex $mapline 3] == ""} {			;#Differential bidirectional pairs (p) & bidirectional pins are considered as I/O
			set iolines "$iolines [lindex $mapline 0]"
		} else {
			set iolines "$iolines [lindex $mapline 3]"
		}
	}												
	set mapline [gets $mapfile]
}


puts $tempfile "$iolines"							;#Write in all the pins into temporary file
puts $tempfile "$inlines"
puts $tempfile "$outlines"
puts $tempfile "$lklines"



;#Pin listing completed

;#Starts JTAG and the rest of the ports here---------------------------------

puts $tempfile "$line"					;#Write in --JTAG ports

set line [gets $bsdlfile]				;#next line in BSDL file

while {$line != "--I/O Pins"} {
	puts $tempfile "$line"				;#Just write in everything into the temporary file
	set line [gets $bsdlfile]			;#until the next --I/O pins comment found
}

puts "Pin listing completed"

;#Done all pin for the Entity

;#Pin mapping section starts here-------------------------------------------

puts "\nWriting mapped pins into temporary file"

puts $tempfile "Mapping"	;#Write this into temporary file for marker purpose

set line [gets $bsdlfile]	;#next line, which is the pin lines

set length [string length $line]						;#get the line length
set newline [string range $line 5 [expr $length - 3]]	;#take away the space and " in front
														;#  and the "& at the back
set pin_count 0											;#Counter to count number of mapped pins
														
while {$newline != "G por"} {							;#Check for JTAG ports description
	
	set done 0											;#flag for end of pin names
	
	if {[string index $line 0] == "-"} {				;#If comment found, don't search
		set done 1
	}

	for {set i 2} {$i < 17 && $done == 0} {incr i 4} {	;#move index per line of pin in BSDL
		
		seek $mapfile 0 start		
		set mapline [gets $mapfile]							
			
		if {[string index [lindex $newline $i] 4] == ","} {	;#if the pin number stays with the ","
															;#need to break out the comma
			set templine1 [lindex $newline $i]												
			set newline [lreplace $newline $i $i "[string range $templine1 0 3]"]
			set newline [linsert $newline [expr $i+1] ","]	;#insert a comma as a list

		}
		
		set mapnew 0										;#Marker for mapping new pinname
		while {[eof $mapfile] == 0} {
			
			if {[lindex $mapline 1] == [lindex $newline $i] && $mapnew == 0} { ;#if new pinname found
				set mapnew 1
	
				if {[lindex $newline [expr $i - 2]]!= "" && [lindex $newline $i] != "," && [lindex $mapline 3] != ""} {
					set templine1 "[lindex $mapline 3]              "			;#write in new pinname instead
					set templine2 "[lindex $newline $i]     "
					puts $tempfile "[string range $templine1 0 12]: [string range $templine2 0 3]"
					incr pin_count	
				} 
				if {[lindex $mapline 3] == ""} {			
					set mapnew 0
				}
			} 
			set mapline [gets $mapfile]
		}	
		if {$mapnew == 0} {							;#If no new pinname, write in the conventional pinname	
			if {[lindex $newline [expr $i - 2]]!= "" && [lindex $newline $i] != ","} {
				set templine1 "[lindex $newline [expr $i - 2]]              "
				set templine2 "[lindex $newline $i]     "
				puts $tempfile "[string range $templine1 0 12]: [string range $templine2 0 3]"	
				incr pin_count
			} 
		}					
								
	}

	set line [gets $bsdlfile]								;#next line in BSDL file
	set length [string length $line]						
	set newline [string range $line 5 [expr $length - 3]]	
}	

;#Starts JTAG and the rest of the ports mapping here----------------------------

puts $tempfile $line										;#Write the --JTAG ports line

set line [gets $bsdlfile]									;#next line in BSDL file

while {[string range $line 10 26] != "BOUNDARY_REGISTER"} {	;#Just write until Boundary register line 
	puts $tempfile $line									;#since no pin change
	
	set line [gets $bsdlfile]								;#next line in BSDL file
}

puts $tempfile $line										;#Write in the Boundary register line

puts "Temporary mapping completed"

;#Done all pins mapping

;#Start BSC group attributes changes-------------------------------------------------

puts "\nStarts BSCG modification"

set line [gets $bsdlfile]									;#Get the next line, the BSC groups attribute line

seek $mapfile 0 start	

while {[string range $line 0 6] == "  --BSC"} {				;#Detection for BSC groups

	set length [string length $line]						;#get the line length
	set newline [string range $line 5 [expr $length - 4]]	;#take away the space and " in front
															;#and the "& at the back
	set mapline [gets $mapfile]								;#next mapped pin until end of file
	
	set done 0
	
	while {[eof $mapfile] == 0 && $done == 0} {			;#Loop for all captured pins from pin file

		if {[lindex $line 6] != [lindex $mapline 1] && [lindex $line 7] != [lindex $mapline 1]} {
														;#Check for pin number
			set ok 1									;#flag to write into temp file
		}	else {
			set ok 0									;#flag not to write to temp file
			if {[lindex $line 6] == [lindex $mapline 1]} {
				set pinname [lindex $line 6]			;#Store pin number, some is index number
			} else {									;#7 and some number 8
				set pinname [lindex $line 7]
			}
		}
		
		if {$ok == 1} {
			set mapline [gets $mapfile]					;#next mapped pin until end of file
		} else {
			set done 1
		}
	}
		
	if {$ok == 1} {
		puts $tempfile "$line"			;#BSC group line
		set line [gets $bsdlfile]		;#Cell 1
		puts $tempfile "$line"
		set line [gets $bsdlfile]		;#Cell 2
		puts $tempfile "$line"
		set line [gets $bsdlfile]		;#And cell 3
		puts $tempfile "$line"
		set line [gets $bsdlfile]		;#Next empty line to be truncated
	}	else {
		if {[lindex $mapline 2] == "input"} {		;#if pin is input
			puts $tempfile "  [lindex $line 0] [lindex $line 1] [lindex $line 2] for input pin $pinname"
			
			set line [gets $bsdlfile]								;#Cell 1
			set length [string length $line]						;#get the line length
			set newline [string range $line 3 [expr $length - 4]]	;#take away the space and " in front
																	;#and the " & at the back
			if {[lindex $mapline 3] == ""} {		;#Check if there is new name for it in pseudo PIN file												
				puts $tempfile "  \"[lindex $newline 0] (BC_4, [lindex $mapline 0], input, X),\" &"
			} else {
				puts $tempfile "  \"[lindex $newline 0] (BC_4, [lindex $mapline 3], input, X),\" &"
			}
			
			set line [gets $bsdlfile]								;#Cell 2
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			puts $tempfile "  \"[lindex $newline 0] (BC_4, *, internal, $safebit),\" &"
			
			set line [gets $bsdlfile]								;#Cell 3
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			puts $tempfile "  \"[lindex $newline 0] (BC_4, *, internal, X),\" &"
			set line [gets $bsdlfile]		;#Next empty line to be truncated
		}
;#Below here are all the changes for output if necessary
		if {[lindex $mapline 2] == "output"} {						;#if pin is output, set as output only
			puts $tempfile "  [lindex $line 0] [lindex $line 1] [lindex $line 2] for output pin $pinname"
			
			set line [gets $bsdlfile]								;#Cell 1
			set length [string length $line]						;#get the line length
			set newline [string range $line 3 [expr $length - 4]]	;#take away the space and " in front
																	;#and the "& at the back
			puts $tempfile "  \"[lindex $newline 0] (BC_4, *, internal, X),\" &"
			
			set line [gets $bsdlfile]								;#Cell 2
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			puts $tempfile "  \"[lindex $newline 0] (BC_1, *, control, $safebit),\" &"
			set previndex "[lindex $newline 0]"					;#For next cell usage
						
			set line [gets $bsdlfile]								;#Cell 3
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			if {[lindex $mapline 3] == ""} {			;#Check if there is new name for it in pseudo PIN file	
				puts $tempfile "  \"[lindex $newline 0] (BC_1, [lindex $mapline 0], output3, X, $previndex, $safebit, Z),\" &"
			} else {
				puts $tempfile "  \"[lindex $newline 0] (BC_1, [lindex $mapline 3], output3, X, $previndex, $safebit, Z),\" &"
			}
			set line [gets $bsdlfile]		;#Next empty line to be truncated
		}
#Below are chnages for bidirectional pins		
		if {[lindex $mapline 2] == "bidir"} {		;#if pin is output/bidir, currently is unchanged
			puts $tempfile "$line"
			
			set line [gets $bsdlfile]								;#Cell 1
			set length [string length $line]						;#get the line length
			set newline [string range $line 3 [expr $length - 4]]	;#take away the space and " in front
																	;#and the "& at the back
			if {[lindex $mapline 3] == ""} {			;#Check if there is new name for it in pseudo PIN file											
				puts $tempfile "  \"[lindex $newline 0] (BC_4, [lindex $mapline 0], input, X),\" &"
			} else {
				puts $tempfile "  \"[lindex $newline 0] (BC_4, [lindex $mapline 3], input, X),\" &"
			}
			
			set line [gets $bsdlfile]								;#Cell 2
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			puts $tempfile "  \"[lindex $newline 0] (BC_1, *, control, $safebit),\" &"
			set previndex "[lindex $newline 0]"					;#For next cell usage
						
			set line [gets $bsdlfile]								;#Cell 3
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			if {[lindex $mapline 3] == ""} {			;#Check if there is new name for it in pseudo PIN file	
				puts $tempfile "  \"[lindex $newline 0] (BC_1, [lindex $mapline 0], output3, X, $previndex, $safebit, Z),\" &"
			} else {
				puts $tempfile "  \"[lindex $newline 0] (BC_1, [lindex $mapline 3], output3, X, $previndex, $safebit, Z),\" &"
			}
			set line [gets $bsdlfile]		;#Next empty line to be truncated
		}
#maskpi is consider as input pin
		if {[lindex $mapline 2] == "maskpi"} {						;#if pin is differential positive
			puts $tempfile "  [lindex $line 0] [lindex $line 1] [lindex $line 2] for differential input pin $pinname"
						
			set line [gets $bsdlfile]								;#Cell 1
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			if {[lindex $mapline 3] == ""} {		;#Check if there is new name for it in pseudo PIN file												
				puts $tempfile "  \"[lindex $newline 0] (BC_4, [lindex $mapline 0], input, X),\" &"
			} else {
				puts $tempfile "  \"[lindex $newline 0] (BC_4, [lindex $mapline 3], input, X),\" &"
			}
			
			set line [gets $bsdlfile]								;#Cell 2
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			puts $tempfile "  \"[lindex $newline 0] (BC_4, *, internal, $safebit),\" &"
			
			set line [gets $bsdlfile]								;#Cell 3
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			puts $tempfile "  \"[lindex $newline 0] (BC_4, *, internal, X),\" &"
			set line [gets $bsdlfile]		;#Next empty line to be truncated
		}
#maskpo is considered as output pin
		if {[lindex $mapline 2] == "maskpo"} {						;#if pin is differential output positive
			puts $tempfile "  [lindex $line 0] [lindex $line 1] [lindex $line 2] for differential output pin $pinname"
						
			set line [gets $bsdlfile]								;#Cell 1
			set length [string length $line]						;#get the line length
			set newline [string range $line 3 [expr $length - 4]]	;#take away the space and " in front
																	;#and the "& at the back
			puts $tempfile "  \"[lindex $newline 0] (BC_4, *, internal, X),\" &"
			
			set line [gets $bsdlfile]								;#Cell 2
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			puts $tempfile "  \"[lindex $newline 0] (BC_1, *, control, $safebit),\" &"
			set previndex "[lindex $newline 0]"					;#For next cell usage
						
			set line [gets $bsdlfile]								;#Cell 3
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			if {[lindex $mapline 3] == ""} {			;#Check if there is new name for it in pseudo PIN file	
				puts $tempfile "  \"[lindex $newline 0] (BC_1, [lindex $mapline 0], output3, X, $previndex, $safebit, Z),\" &"
			} else {
				puts $tempfile "  \"[lindex $newline 0] (BC_1, [lindex $mapline 3], output3, X, $previndex, $safebit, Z),\" &"
			}
			set line [gets $bsdlfile]		;#Next empty line to be truncated
		}

#maskpb is considered as I/O pin
		if {[lindex $mapline 2] == "maskpb"} {						;#if pin is differential bidirectional
			puts $tempfile "  [lindex $line 0] [lindex $line 1] [lindex $line 2] for differential I/O pin $pinname"
						
			set line [gets $bsdlfile]								;#Cell 1
			set length [string length $line]						;#get the line length
			set newline [string range $line 3 [expr $length - 4]]	;#take away the space and " in front
																	;#and the "& at the back
			if {[lindex $mapline 3] == ""} {			;#Check if there is new name for it in pseudo PIN file											
				puts $tempfile "  \"[lindex $newline 0] (BC_4, [lindex $mapline 0], input, X),\" &"
			} else {
				puts $tempfile "  \"[lindex $newline 0] (BC_4, [lindex $mapline 3], input, X),\" &"
			}
			
			set line [gets $bsdlfile]								;#Cell 2
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			puts $tempfile "  \"[lindex $newline 0] (BC_1, *, control, $safebit),\" &"
			set previndex "[lindex $newline 0]"					;#For next cell usage
						
			set line [gets $bsdlfile]								;#Cell 3
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			if {[lindex $mapline 3] == ""} {			;#Check if there is new name for it in pseudo PIN file	
				puts $tempfile "  \"[lindex $newline 0] (BC_1, [lindex $mapline 0], output3, X, $previndex, $safebit, Z),\" &"
			} else {
				puts $tempfile "  \"[lindex $newline 0] (BC_1, [lindex $mapline 3], output3, X, $previndex, $safebit, Z),\" &"
			}
			set line [gets $bsdlfile]		;#Next empty line to be truncated
		}
		
#maskn is untestable
		if {[lindex $mapline 2] == "maskn"} {						;#if pin is differential negative
			puts $tempfile "  [lindex $line 0] [lindex $line 1] [lindex $line 2] for differential pin $pinname"
						
			set line [gets $bsdlfile]								;#Cell 1
			set length [string length $line]						;#get the line length
			set newline [string range $line 3 [expr $length - 4]]	;#take away the space and " in front
																	;#and the "& at the back
			puts $tempfile "  \"[lindex $newline 0] (BC_4, *, internal, X),\" &"
			
			set line [gets $bsdlfile]								;#Cell 2
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			puts $tempfile "  \"[lindex $newline 0] (BC_4, *, internal, $safebit),\" &"
						
			set line [gets $bsdlfile]								;#Cell 3
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			puts $tempfile "  \"[lindex $newline 0] (BC_4, *, internal, X),\" &"
			set line [gets $bsdlfile]				;#Next empty line to be truncated
		}
;#Added lines for unused and untestable pins
		if {[lindex $mapline 2] == "untestable"} {						
			puts $tempfile "  [lindex $line 0] [lindex $line 1] [lindex $line 2] for untestable pin $pinname"
						
			set line [gets $bsdlfile]								
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			puts $tempfile "  \"[lindex $newline 0] (BC_4, *, internal, X),\" &"
			
			set line [gets $bsdlfile]							
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			puts $tempfile "  \"[lindex $newline 0] (BC_4, *, internal, $safebit),\" &"
						
			set line [gets $bsdlfile]								
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			puts $tempfile "  \"[lindex $newline 0] (BC_4, *, internal, X),\" &"
			set line [gets $bsdlfile]			
		}
		
		if {[lindex $mapline 2] == "unused"} {						
			puts $tempfile "  [lindex $line 0] [lindex $line 1] [lindex $line 2] for untestable pin $pinname"
						
			set line [gets $bsdlfile]								
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			puts $tempfile "  \"[lindex $newline 0] (BC_4, *, internal, X),\" &"
			
			set line [gets $bsdlfile]							
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			puts $tempfile "  \"[lindex $newline 0] (BC_4, *, internal, $safebit),\" &"
						
			set line [gets $bsdlfile]								
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			puts $tempfile "  \"[lindex $newline 0] (BC_4, *, internal, X),\" &"
			set line [gets $bsdlfile]			
		}
#Added lines for output driving gnd or input tristated or output driving unspecified signal 	
		if {[lindex $mapline 2] == "reserved" || [lindex $mapline 2] == "reserved_input" || [lindex $mapline 2] == "gnd"} {						
			puts $tempfile "  [lindex $line 0] [lindex $line 1] [lindex $line 2] for untestable pin $pinname"
						
			set line [gets $bsdlfile]								
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			puts $tempfile "  \"[lindex $newline 0] (BC_4, *, internal, X),\" &"
			
			set line [gets $bsdlfile]							
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
																	
			puts $tempfile "  \"[lindex $newline 0] (BC_4, *, internal, $safebit),\" &"
						
			set line [gets $bsdlfile]								
			set length [string length $line]						
			set newline [string range $line 3 [expr $length - 4]]	
			
			puts $tempfile "  \"[lindex $newline 0] (BC_4, *, internal, X),\" &"
			set line [gets $bsdlfile]			
		}

	
	}

	seek $mapfile 0 start							;#loop one more time for next BSDL pin line

	set line [gets $bsdlfile]						;#next line in BSDL file
	
};#Done BSC groups listing----------------------------------------------------

puts "BSCG modification completed"

#And here is the rest of BSDL file

puts $tempfile "last"

while {[eof $bsdlfile] == 0} {
	puts $tempfile "$line"
	set line [gets $bsdlfile]
}

puts $tempfile "\nNumber of mapped pins is $pin_count."
puts $tempfile "Please add in JTAG pins, NC, Power pins and Ground pins to get the correct pin count."

puts "\nTemporary file prepared\n"

close $bsdlfile
close $tempfile	
close $mapfile

#-------------------------------------------------------------------------------------------------------------

set tempfile [open "$temp_filename" r]	;#temporary file to trace pin funtion
set bsdlfile [open "$bsdl_filename" r]	;#open BSDL file to read
set bsdlnew [open "$new_bsdl_filename" w]		;#for newly generated bsdl file

set systemTime [clock seconds]			

puts "Start writing new BSDL file..."

seek $bsdlfile 0 start				
seek $tempfile 0 start				

set bsdlline [gets $bsdlfile]		

while {[lindex $bsdlline 1] != "File"} {
	puts $bsdlnew "$bsdlline"					;#This part is to change the file name
	set bsdlline [gets $bsdlfile]
}

set last [string last "/" $new_bsdl_filename];
set new_bsdl_file [string range $new_bsdl_filename $last end];

puts $bsdlnew "-- File Name     : [string range $new_bsdl_file 1 30]"

set bsdlline [gets $bsdlfile]		

while {[lindex $bsdlline 1] != "Date"} {
	puts $bsdlnew "$bsdlline"					;#This part is to change the date of creation
	set bsdlline [gets $bsdlfile]
}

puts $bsdlnew "-- Date Created  : [clock format $systemTime -format %D]"
puts $bsdlnew "-- Created by    : Altera BSDLCustomizer ver. $version"
puts $bsdlnew "-- Note          : Syntax verified for all devices and hardware verified."
puts $bsdlnew "--                 File generation tested for all device family."
puts $bsdlnew "--                 Hardware verified for CPLD & FPGA devices."

while {[lindex $bsdlline 1] != "Documentation"} {
	set bsdlline [gets $bsdlfile]
}

while {$bsdlline != "--I/O Pins"} {
	puts $bsdlnew "$bsdlline"		;#write whatever in BSDL file until --I/O pins
	set bsdlline [gets $bsdlfile]
}
puts $bsdlnew "$bsdlline"			;#write in --I/O Pins as well

;#Start I/O pin listing----------------------------------------------

set templine [gets $tempfile]		;#Get the first pin from temporary file

set element 1

while {[lindex $templine $element] != ""} {		

	set templine1 ""
	set done 0
	
	if {[lindex $templine $element] != ""} {
		set templine1 "    [lindex $templine $element]         "	;#I/O 1
		set column 10												;#counter for last inout bit
		incr element												;#next i/o pin
	} 

	for {set i 1} {$i < 6} {incr i} {								;#I/O 2 to 6
		if {[lindex $templine $element] != ""} {					;#All the formulas are for spacing purposes
			set templine1 "[string range $templine1 0 [expr $i* 9 + 1]], [lindex $templine $element]      " 	
			set column [expr $i* 9 + 10]
			incr element
		} 
	}
	
	if {[lindex $templine $element] != ""} {
		set templine1 "[string range $templine1 0 55], [lindex $templine $element]      "		;#I/O 7
		incr element
		if {[lindex $templine $element] != ""} {
			puts $bsdlnew "[string range $templine1 0 64],"			;#if not the last one, put a comma at the end
		} else {
			puts $bsdlnew "[string range $templine1 0 64]"			;#if the last one, no comma at the end
		}
		set done 1
	} else {
		puts $bsdlnew "[string range $templine1 0 $column]: inout bit;"	;#if last one, put the inout bit			
		
	}
	
	if {[lindex $templine $element] == "" && $done == 1} {						
		puts $bsdlnew "    : inout bit;"				;#if last one after 7, put inout bit
	}
		
}	

;#Start Input pin listing----------------------------------------------

puts $bsdlnew "--Modified input-output pins"

set templine [gets $tempfile]		;#Get the next pin line which is the input pins

set element 1

while {[lindex $templine $element] != ""} {		

	set templine1 ""
	set done 0
	
	if {[lindex $templine $element] != ""} {
		set templine1 "    [lindex $templine $element]         "	;#I/O 1
		set column 15												;#counter for last inout bit
		incr element												;#next i/o pin
	} 

	for {set i 1} {$i < 3} {incr i} {								;#I/O 2 to 3
		if {[lindex $templine $element] != ""} {					;#All the formulas are for spacing purposes
			set templine1 "[string range $templine1 0 [expr $i* 14 + 1]], [lindex $templine $element]          " 	
			set column [expr $i* 14 + 15]
			incr element
		} 
	}
	
	if {[lindex $templine $element] != ""} {
		set templine1 "[string range $templine1 0 43], [lindex $templine $element]          "		;#I/O 4
		incr element
		if {[lindex $templine $element] != ""} {
			puts $bsdlnew "[string range $templine1 0 57],"			;#if not the last one, put a comma at the end
		} else {
			puts $bsdlnew "[string range $templine1 0 57]"			;#if the last one, no comma at the end
		}
		set done 1
	} else {
		puts $bsdlnew "[string range $templine1 0 $column]: in bit;"	;#if last one, put the inout bit			
		
	}
	
	if {[lindex $templine $element] == "" && $done == 1} {						
		puts $bsdlnew "    : in bit;"				;#if last one after 4, put inout bit
	}
		
}	
;#Start Output pin listing----------------------------------------------

set templine [gets $tempfile]		;#Get the next pin line which is the output pins

set element 1

while {[lindex $templine $element] != ""} {		

	set templine1 ""
	set done 0
	
	if {[lindex $templine $element] != ""} {
		set templine1 "    [lindex $templine $element]         "	;#I/O 1
		set column 15												;#counter for last inout bit
		incr element												;#next i/o pin
	} 

	for {set i 1} {$i < 3} {incr i} {								;#I/O 2 to 3
		if {[lindex $templine $element] != ""} {					;#All the formulas are for spacing purposes
			set templine1 "[string range $templine1 0 [expr $i* 14 + 1]], [lindex $templine $element]          " 	
			set column [expr $i* 14 + 15]
			incr element
		} 
	}
	
	if {[lindex $templine $element] != ""} {
		set templine1 "[string range $templine1 0 43], [lindex $templine $element]          "		;#I/O 4
		incr element
		if {[lindex $templine $element] != ""} {
			puts $bsdlnew "[string range $templine1 0 57],"			;#if not the last one, put a comma at the end
		} else {
			puts $bsdlnew "[string range $templine1 0 57]"			;#if the last one, no comma at the end
		}
		set done 1
	} else {
		puts $bsdlnew "[string range $templine1 0 $column]: out bit;"	;#if last one, put the inout bit			
		
	}
	
	if {[lindex $templine $element] == "" && $done == 1} {						
		puts $bsdlnew "    : out bit;"				;#if last one after 4, put inout bit
	}
		
}	
;#Start Linkage pin listing----------------------------------------------

set templine [gets $tempfile]		;#Get the next pin line which is the linkage pins

set element 1

while {[lindex $templine $element] != ""} {		

	set templine1 ""
	set done 0
	
	if {[lindex $templine $element] != ""} {
		set templine1 "    [lindex $templine $element]         "	;#I/O 1
		set column 15												;#counter for last inout bit
		incr element												;#next i/o pin
	} 

	for {set i 1} {$i < 3} {incr i} {								;#I/O 2 to 3
		if {[lindex $templine $element] != ""} {					;#All the formulas are for spacing purposes
			set templine1 "[string range $templine1 0 [expr $i* 14 + 1]], [lindex $templine $element]         " 	
			set column [expr $i* 14 + 15]
			incr element
		} 
	}
	
	if {[lindex $templine $element] != ""} {
		set templine1 "[string range $templine1 0 43], [lindex $templine $element]        "		;#I/O 4
		incr element
		if {[lindex $templine $element] != ""} {
			puts $bsdlnew "[string range $templine1 0 57],"			;#if not the last one, put a comma at the end
		} else {
			puts $bsdlnew "[string range $templine1 0 57]"			;#if the last one, no comma at the end
		}
		set done 1
	} else {
		puts $bsdlnew "[string range $templine1 0 $column]: linkage bit;"	;#if last one, put the inout bit
		
	}
	
	if {[lindex $templine $element] == "" && $done == 1} {						
		puts $bsdlnew "    : linkage bit;"				;#if last one after 4, put inout bit
	}
		
}	
;#Starts JTAG and the rest of the files writing here------------------------------------------

set templine [gets $tempfile]		;#Get the next pin line which is the JTAG line

while {$templine != "Mapping"} {
	puts $bsdlnew "$templine"		;#Write whatever in the temporary file until found the marker "Mapping"
	set templine [gets $tempfile]
}

;#Start pins mapping---------------------------------------------------------------------

puts $bsdlnew "--All pins"

set templine [gets $tempfile]		;#Get the first pin mapping from temporary file

while {$templine != "--JTAG ports"} {		
	set templine1 ""
	set done 0
	
	if {$templine != "--JTAG ports"} {
		set templine1 "    \"$templine              "						;#input 1
		set templine [gets $tempfile]
		set column 23
	} 

	if {$templine != "--JTAG ports"} { 
		set templine1 "[string range $templine1 0 23], $templine           "		;#input 2
		set templine [gets $tempfile]
		set column 44
	} 
	
	if {$templine != "--JTAG ports"} {
		set templine1 "[string range $templine1 0 44], $templine           "		;#input 3
		puts $bsdlnew "[string range $templine1 0 65], \"&"			;#if not the last one, put a comma and "& at the end
		set templine [gets $tempfile]
		set done 1
	} else {
		puts $bsdlnew "[string range $templine1 0 $column], \"&"			;#this is for last one if last one			
		
	}
}	

;#Starts JTAG and the rest of the ports mapping here----------------------------

while {[string range $templine 10 26] != "BOUNDARY_REGISTER"} {	;#Just write until Boundary register line 
	puts $bsdlnew $templine									;#since no pin change
	
	set templine [gets $tempfile]							;#next line in temp file
}

puts $bsdlnew $templine							;#Write in the Boundary register line


;#Done all pins mapping-----------------------------------------------------------

;#Start here with BSC groups writing--------------------------------------------------

set templine [gets $tempfile]			;#Next line which is the BSCG line



while {$templine != "last"} {			;#This is the marker set earlier to detect for end of BSCG list
	for {set i 0} {$i < 4} {incr i} {	;#repeat to write 4 rows each time
		set bsdlline "$templine"
		set templine [gets $tempfile]	;#And next line again
		if {$templine == "last"} {
			set length [string length $bsdlline]						;#get the line length
			set newline [string range $bsdlline 0 [expr $length - 4]]	;#take away the ,& at the back
                  set length1 [string length $newline] 
	            if { [string index $newline [expr $length1 - 1]] !=")"} {   #removing another character if the last character is not ")"
			set newline [string range $bsdlline 0 [expr $length1 - 2]]	}
   
			puts $bsdlnew "$newline\" \;"	;#Write in the line
		} else {
			puts $bsdlnew "$bsdlline"	;#Write in the line
		}
	}
	puts $bsdlnew ""					;#Just an empty line each time after one BSCG list
}

;#Here's for the last comments-------------------------------------------------------------------

set templine [gets $tempfile]			;#Skip the "last" in the tempfile

while {[string index $templine 0] != "e"} {
		set templine [gets $tempfile]	;#And next line again
}	

puts $bsdlnew "$templine"				

close $bsdlnew
close $bsdlfile
close $tempfile	

file delete -force -- $temp_filename
file delete -force -- $map_filename

#-------------------------------------------------------------------------------------------------------------
	
	puts "\nNew BSDL file was generated successfully!!!\n"
} else {
	puts "\nNew BSDL file is not generated due to the error(s) below:" 
}

if {$err == 1} {
	puts "- There are multiple BSDL files in the same directory, please remain only the needed BSDL file\n"
}
if {$err == 2} {
	puts "- There are multiple PIN files in the same directory, please remain only the needed PIN file\n"
} 