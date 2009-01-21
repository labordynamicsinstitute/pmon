#!/bin/bash
# rargs gives the 4-x args
jdir=$1
dlabel=$2
cdir=$3

echo "PID= " $$
# Write out PID file
#echo "0" > ${cdir}/run/pid/pid_post_$$
echo "0" > ${cdir}/run/$(hostname)/pid/pid_post_$$
