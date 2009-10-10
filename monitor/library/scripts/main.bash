#!/bin/bash
# Structure of a pmon script
#
# These arguments are always available to the script when 
# called. Any other arguments needed by the script would
# need to be passed through by a file.
# 
export jdir=$1
export dlabel=$2
export cdir=$3

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
# sample SAS job that passes the state via -sysparm
sas ${cdir}/library/sasprogs/read_in_state.sas -sysparm $2 -log ${jdir}/${dlabel}/read_in_state.log -print ${jdir}/${dlabel}/read_in_state.lst

#Update PID file. This is optional, but see the end of the script.
echo "${?}"  > $pid_file

echo "$(date) Ending job" 
#=================================================================
# 
# The following line is COMPULSORY if no such line is above. 
# Unless pmon finds
# a ZERO ('0') in the pid_file, it will consider the job
# failed.
#

#echo "0" > $pid_file
