#!/bin/bash

isFulltime=1;
isParttime=2;
Emp_WPH=20;
WorkingHour=0;
totalSalary=0;

for (( day=1 ; day<=20 ; day++ ))
do

isPresent=$((RANDOM%3))
case $isPresent in
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

salary=$(($Emp_WPH*$WorkingHour));
totalSalary=$(($totalSalary+$salary));
Empwage=$(($WorkingHour*$Emp_WPH));
done

echo "Employee has Earned $totalSalary"

