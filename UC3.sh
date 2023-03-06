#!/bin/bash

isParttime=1;
isFulltime=2;
Emp_Wage_PH=20;
Check=$((RANDOM%3));

if [ $Check -eq 1 ]
then
	echo "Employee is Part time"
	WorkingHour=4;
elif [ $Check -eq 2 ]
then
	echo "Employee is Full time "
	WorkingHour=8;
else [ $Check -eq 0 ]
	echo "Employee is Absent "
	WorkingHour=0;
fi

EmpWage=$(($Emp_Wage_PH*$WorkingHour));

echo "Employee daily Wage is $EmpWage"
