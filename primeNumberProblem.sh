#!/bin/bash

count=0;

printPrimeNumbers () {
	for (( i=$count; i>0; i-- ))
	do
	 echo ${primeNumbers[i]};
	done
}

primeMain () {

	for (( i=700; i<900; i++ ))
	do
		flag=0;
		for (( j=2; j<=i/2; j++ ))
		do
			checkNum=$(($i%$j));
			if [ $checkNum -eq 0 ]
			then
				flag=1;
			fi
		done
		if [ $flag -eq 0 ]
		then
			primeNumbers[count]=$i;
			(( count++ ));
		fi
	done

echo "Printing "$count" prime Numbers between 700 and 900 in reverse order : "
printPrimeNumbers $count;

}
primeMain;

