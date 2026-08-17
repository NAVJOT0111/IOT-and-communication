#generate the TCL file in Ubuntu:
 nano simple.tcl
#Then check whether the trace file was generated:
ls

#to view to reselt of this file : ctrl O, Enter, Ctrl X
ns simple.tcl

#to generate trace file: Add this near the beginning of your TCL file:
# Open trace file
set tf [open out.tr w]

# Enable tracing
$ns trace-all $tf

#In your finish procedure, close the trace file
proc finish {} {
    global ns tf nf

    $ns flush-trace

    # Close trace file
    close $tf

    # Close NAM file
    close $nf

    # Run NAM
    exec nam out.nam &

    exit 0
}

cat out.tr
#if the trace file is large : 
less out.tr
#to generate only head of trace file :
head out.tr
#or 
head -10 out.tr
#or for the end part of trace file
tail out.tr

# im running it in Ubuntu 20.04, WSL, NS-2.35 , using NAM

