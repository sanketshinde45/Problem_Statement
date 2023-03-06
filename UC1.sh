#!/bin/bash

isPresent=1;
Check=$((RANDOM%2));

if [ $Check -eq 1 ]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi


