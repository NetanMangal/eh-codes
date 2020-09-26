#!/bin/bash

if [ "$1" == "" ]
then 
echo "Usage ./pingsweep.sh [network ip]"
echo "Example ./pingsweep.sh 10.0.2"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | cut -d ":" -f 1 &
done

fi
