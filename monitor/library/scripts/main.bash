#!/bin/bash
# rargs gives the 4-x args
jdir=$1
dlabel=$2
cdir=$3

echo "jdir= " $jdir
echo "dlabel= " $dlabel

#Update PID file
echo "2" > ${cdir}/run/pid/pid_main_$$
# Start SAS job
/usr/local/bin/sas ${cdir}/library/sasprogs/fcreate.sas -set dlabel $dlabel -set work /temporary/mckin013/daemon/${dlabel} -log ${jdir}/${dlabel}/fcreate.log -print ${jdir}/${dlabel}/fcreate.lst &
echo "1" > ${cdir}/run/pid/pid_main_$$
wait
echo "0" > ${cdir}/run/pid/pid_main_$$
