#!/bin/bash

WagePH=20;
WorkingHour=0;
isPresent=1;


for (( day=1 ; day <=10 ; day++ ))
do
	isPresent=$((RANDOM%2));
	case $isPresent in
		1)
			echo "Employee is Present : "
			WorkingHour=8;
			
		;;
		*)
			echo "Employee is Absent : "
			WorkingHour=0;
		;;
	esac

EmpdailyWage=$(($WorkingHour*$WagePH));

echo "Employee has Earned $EmpdailyWage "
done
