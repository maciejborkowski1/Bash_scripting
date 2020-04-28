#!/usr/bin/bash

#this script delete an empty lines in a text file

#run script with two parameters - for input source and output file
fileSource=$1
fileOut=$2

#this strings contain value for lines - current and previous
current=""
previous=""

#create an empty output file
echo "" > $fileOut

#while loop who read file line by line - look at the end of the while loop
while read line
do
current=$line

#now we check contain of two lines - if they are empty - do nothing - if not - save the current line to output file
if [[ -z $current && -z $previous ]]
then
	echo $current >> $fileOut
	continue
fi
echo $current >> $fileOut
previous=$current

done < $fileSource
