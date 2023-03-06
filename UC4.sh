#!/bin/bash

isFulltime=1;
isParttime=2;
Emp_WPH=20;
Check=$((RANDOM%3));

case $Check in
	1)
		echo "Employee Work Full Time"
		WorkingHour=8;
	;;
	2)
		echo "Employee Work Part Time"
		WorkingHour=4;
	;;
	*)
		echo "Employee is Absent"
		WorkingHour=0;
	;;
esac

Empdailywage=$(($WorkingHour*$Emp_WPH));

echo "Employee has Earned $Empdailywage today"


