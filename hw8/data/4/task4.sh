#!/bin/bash

is_number=0;
name=''
printf '' > fout

for line in $(cat fin)
do
	if [ $is_number -eq 1 ] 
	then
		is_number=0
		if [ $(echo $line | sed -n '/777/p') ]
		then
			echo $name >> fout
			echo $line >> fout
		fi
	else
		is_number=1
		name=$line
	fi
done
