#!/bin/bash -x

count=0;

printPrimeNumbers () {

	echo ${primeNumbers[*]};
}

checkPalindrome () {

for (( i=4; i<$count; i++ ))
do
	local temp=${primeNumbers[$i]};
	local pali=$temp;
	local r=0;
	while [ $temp -gt 0 ]
	do
		r=$(($r*10));
		r=$(($r+($temp%10)));
		temp=$(($temp/10));
		if [ $r == $pali ]
		then
			echo $pali "is palindrome";
		fi
	done
done
}

primeMain () {

   for (( i=2; i<200; i++ ))
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

echo "Printing  prime Numbers between 1 and 200 : "
printPrimeNumbers $count;

checkPalindrome $count;

}
primeMain;

