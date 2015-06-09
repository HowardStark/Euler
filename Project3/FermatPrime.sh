#!/bin/bash
#SSL
#For larger numbers. Generates a 4bit number.
#a=$(openssl rand 4 | od -DAn)
MIN=0
MAX=102
a=$(( $RANDOM % ($MAX + 1 - $MIN) + $MIN ))
n=$1
powermod=$(( ($a^$n) % $n ))
mod=$(( $a%$n ))
for (( counter=0; counter<10; counter++ ))
do
    a=$(( $RANDOM % ($MAX + 1 - $MIN) + $MIN ))
    powermod=$(( ($a^$n) % $n ))
    mod=$(( $a%$n ))
    if [[ $powermod == $mod ]]
    then
        echo $powermod
        echo $mod
        echo "Probably Prime."
    else
        echo $powermod
        echo $mod
        echo "Not Prime."
        break;
    fi 
done
