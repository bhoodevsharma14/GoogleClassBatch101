#!/bin/bash -x

echo "Welcome to Employee Wage Computation Prgram on Master Branch"



	EmpAttendance=$((RANDOM%2))

	EmpWagePerHr=20

	if [ $EmpAttendance -eq 0 ]
	then
		echo "Employee is Absent"
		WorkingHrs=0
	else
		echo "Employee is Present"
		WorkingHrs=8
	fi

	DailyWage=$(($WorkingHrs*$EmpWagePerHr))

	echo "Employee got $DailyWage Today"
