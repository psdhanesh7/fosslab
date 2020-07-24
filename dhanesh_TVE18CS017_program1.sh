#!/bin/bash

# Author : Dhanesh P S
# Roll no : 17
# Date : 24-07-2020

# Problem Description : 
# 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145. 
# Write a shell script   to find the sum of all numbers which are
# equal to the sum of the factorial of their digits.  
# Note: as 1! = 1 and 2! = 2 are not sums they are not included. 


echo "This program takes more than 5 minutes to run completely as it loops over nearly 10^7 values"
echo "The values will be diplayed as the progrm iterates through each of them"
echo "Final sum will be displayed at last (The ans is 40733)"
sleep 10

FACT=(1)
for i in {1..9}
do
	FACT[$i]=$(( ${FACT[$i-1]} * $i ))
done

# Function to calculate the sum of the factorials of the digits
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

# Function to check whether the number is a curious number or not
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
