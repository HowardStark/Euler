# Euler

#!/bin/bash


prime_check() {
	given=$1
    ceil=`echo "\`. sqrt.sh 8\`" | awk '{printf("%d\n",$0+=$0<0?0:0.9)}'`
	counter=2
	potential=0
	while (( $counter < $given ))
	do	
		let "counter++"
		if (( $given % $counter == 0 )) && ! (( $counter == $given ))
		then
			echo "$given is not prime"
			return 0
		fi
	done
	echo "$given is prime"
	return 1
}

factors() {
	input=$1
	factor=1
	prime_check $input
	while (( $factor < $input ))
	do
		let "factor++"
		if (( $input % $factor == 0 )) && ! (( $factor == $input ))
		then
			echo $factor
			prime_check $factor
		fi
	done
}
prime_check 14
factors $1


#!/bin/bash
if [[ -n $1 ]]
then    
    calc=$(echo "sqrt ( $1 )" | bc -l) ; echo $calc
fi
