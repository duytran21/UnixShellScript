#!/bin/bash
echo "Enter a string:"
read s1
echo "Enter a search string:"
read s2
echo $s1 | grep "$s2" &> /dev/null
if [ $? -eq 0 ]; then
	echo "String '$s2' is found in the first string"
else
	echo "String '$s2' is not found in the frist string"
fi 

