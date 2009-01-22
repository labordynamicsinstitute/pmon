#!/bin/bash
# rargs gives the 4-x args
jdir=$1
dlabel=$2
cdir=$3

echo "PID= " $$
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

echo "0" > ${cdir}/run/$(hostname)/pid/pid_pre_$$
