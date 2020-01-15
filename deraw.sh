#! /bin/bash

line_no=0
for i in $(cat $1)
do
	col=$((line_no % 6))
	array[$col]=$i
	
	if [[ $col -eq 5 ]]
	then
		echo -e ${array[0]} '\t' ${array[1]} '\t' ${array[2]} '\t' ${array[3]} '\t' ${array[4]} '\t' ${array[5]}
	fi
	line_no=$((line_no + 1))
done
