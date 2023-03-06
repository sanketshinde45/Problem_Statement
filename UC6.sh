#!/bin/bash

isFulltime=1;
isParttime=2;
WorkingHours=0;
Wage_PH=20;
day=1;

while [[ $day -le 20 && $WorkingHours -lt 100 ]]
do
	isPresent=$((RANDOM%3));
	case $isPresent in
		1)
			echo "Emp Working Full Time"
			WorkingHours=8;
		;;
		2)
			echo "Emp Working Part Time"
			WorkingHours=4;
		;;
		*)
			echo "Emp is Absent"
			WorkingHours=0;
		;;
  	esac

	totalWorkingHours=$(($WorkingHours + $Wage_PH));
	
	if [ $totalWorkingHours -gt 100 ]
	then
		totalworkingHours=$(($totalWorkingHours - $WorkingHours));
		break;
	fi
	
	salary=$(($WorkingHours*$Wage_PH));
	totalSalary=$(($totalSalary + $salary));
	((day++));

done

echo "Employee has earned $totalSalary"



