#!/bin/bash

echo "Printing the first hundred prime number having 1 on the unit place";
count=0;

checkForUnit () {
	local unitPrime;
	unitPrime=$(($i%10));
	if [ $unitPrime -eq 1 ]
	then
		primeNumbers[count]=$i;
		(( count++ ));
		echo $i $count;
	fi
}

printPrimeNumbers () {
	echo "Hundred prime Numbers having unit digit as 1 are :"${primeNumbers[*]};
}

primeMain () {
while [ $count -lt 100 ]
do
	for (( i=2; i<2802; i++ ))
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
			checkForUnit $i;
		fi
	done
done

printPrimeNumbers;

}
primeMain;

