#!/bin/bash

EMPLOYEE_WAGE_PER_HOUR=20;
WORKING_HOUR=8;
PRESENT=1;
PART_TIME=2;
MAX_WORKING_HOUR=40;
MAX_WORKING_DAYS=20;
totalWorkingHour=0;
day=0;

function calculateWorkingHour() {
	case $1 in
		$PRESENT)
			 workingHour=$WORKING_HOUR;
		;;
		$PART_TIME)
			workingHour=$((WORKING_HOUR/2));
		;;
		*)
			workingHour=0;
		;;
	esac
	echo $workingHour;
}


while [[ $day -le MAX_WORKING_HOUR && $totalWorkingHour -lt MAX_WORKING_HOUR ]]
do
	if [ $totalWorkingHour -eq $((MAX_WORKING_HOUR-WORKING_HOUR/2)) ]
	then
		isPresent=$PART_TIME;
	else
		isPresent=$((RANDOM%3));
	fi
	
	empHour=$(calculateWorkingHour $isPresent);
	dailyWage[((day++))]=$((empHour * EMPLOYEE_WAGE_PER_HOUR));

	totalWorkingHour=$((totalWorkingHour + empHour));
done

totalSalary=$(($totalWorkingHour * EMPLOYEE_WAGE_PER_HOUR))

echo "Employee Total Working Hour: " $totalWorkingHour;
echo "Monthly Wage : " $totalSalary;
echo "Total Working Days : " $day;

echo "-------------------------------------------------";

echo "DailyWage : " ${dailyWage[@]};

echo "-------------------------------------------------";

for((i=0;i<${#dailyWage[@]};i++))
do
	echo "Day $i earning : " ${dailyWage[i]} "USD";
done
