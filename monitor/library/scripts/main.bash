#!/bin/bash
# rargs gives the 4-x args
jdir=$1
dlabel=$2
cdir=$3

echo "jdir= " $jdir
echo "dlabel= " $dlabel
echo "PID= " $$

#Update PID file
echo "2" > ${cdir}/run/$(hostname)/pid/pid_main_$$
# Start SAS job
#/usr/local/bin/sas ${cdir}/library/sasprogs/fcreate.sas -set dlabel $dlabel -set work /temporary/saswork2/tr0612mckin013/daemon/${dlabel} -log ${jdir}/${dlabel}/fcreate.log -print ${jdir}/${dlabel}/fcreate.lst
echo "$(date) Starting job" > ${jdir}/${dlabel}/mylog
sleep 60
echo "$(date) Ending job" >> ${jdir}/${dlabel}/mylog
echo "${?}" > ${cdir}/run/$(hostname)/pid/pid_main_$$
