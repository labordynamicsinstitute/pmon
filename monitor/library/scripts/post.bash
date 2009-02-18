#!/bin/bash
# Structure of a pmon script
#
# These arguments are always available to the script when 
# called. Any other arguments needed by the script would
# need to be passed through by a file.
# 
jdir=$1
dlabel=$2
cdir=$3

# Some derived variables. Note that these should be
# kept for later compulsory processing.
sect=$(basename $0 .bash)
pid=$$
# The use of the PID file is COMPULSORY
pid_file=${cdir}/run/$(hostname)/pid/pid_${sect}_${pid}
# The use of a log file is OPTIONAL. Note that all
# screen output from this script is already captured to a log file

#=================================================================
# The following section is where the work is done. Insert here
# whatever you need
# 
echo "$(date) Starting job" 
echo "jdir= " $jdir
echo "dlabel= " $dlabel "(state)"
echo "PID= " $pid

# Create temp directory
#mkdir -p /temporary/saswork2/tr0612mckin013/daemon/${dlabel}
# Write out PID file
#echo "0" > ${cdir}/run/pid/pid_pre_$$
      ran_range=30
      slptime=61
      rannum=$RANDOM
      let "rannum %= $dran_range"
      let "slptime -= $ran_range"
      let "slptime += $rannum"
echo "$(date) Ending job" 
#=================================================================
# 
# The following line is COMPULSORY. Unless pmon finds
# a ZERO ('0') in the pid_file, it will consider the job
# failed.
#

echo "0" > $pid_file
