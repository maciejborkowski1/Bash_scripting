#!/bin/bash

#this script sorting numbers from lowest to highest

#run script with any arguments (only integers) as you want

#init table with numbers
table=($@)
number=$#
i=0

#untill with numbers to sort exist do
while [[ $i -lt $number ]]
do
	#find the lowest number in table
	j=$(($number - 1))
	min=""
	while [[ $j -ge $i ]]
	do
		if [[ -z $min || ${table[$j]} -lt ${table[$min]} ]]
		then
			min=$j
		fi
		((j--))
	done
	#put the number on the begin table in first free space, overwrite number put to the previous location on find minimum and dont check this space again
	temp=${table[$i]}
	table[i]=${table[$min]}
	table[min]=$temp
	((i++))
done
echo "${table[@]}"

	
		
