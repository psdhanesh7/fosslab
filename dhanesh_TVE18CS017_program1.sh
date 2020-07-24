#!/bin/bash

echo "This program takes more than 5 minutes to run completely as it loops over nearly 10^7 values"
echo "The values will be diplayed as the progrm iterates through each of them"
echo "Final sum will be displayed at last (The ans is 40733)"
sleep 10

FACT=(1)
for i in {1..9}
do
	FACT[$i]=$(( ${FACT[$i-1]} * $i ))
done
# echo "${FACT[@]}"
function factorialSum(){
	n=$1
	factSum=0
	while [ $n -gt 0 ]
	do
		d=$(( $n % 10 ))
		factSum=$(( $factSum + ${FACT[$d]} ))
		n=$(( $n / 10 ))
	done
}

function isCuriousNumber(){
	factorialSum $1
	if [ $1 -eq $factSum ]
	then
		sum=$(( $sum + $1 ))
	fi		
}

sum=0
for i in {10..1499999}
do
	# echo $i
	isCuriousNumber $i
done

echo "Sum of all curious numbers is : $sum"
