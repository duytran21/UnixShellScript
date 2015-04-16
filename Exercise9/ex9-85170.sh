#!/bin/bash
echo "Enter a number from 1 to 100: "
read N
expr $N + 1 &> /dev/null
if [ $? -eq 0 ]; then
	if [ $N -ge 1 -a $N -le 100 ]; then
		echo "Enter a text string: "
		read S
		i=1
		while [ "$i" -le "$N" ] 
		do
			echo "${i}.$S"
			i=`expr $i + 1`
		done
	else
		echo "Invalid input number"
	fi
else
	echo "Not a number"
fi
