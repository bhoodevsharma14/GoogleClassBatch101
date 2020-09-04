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
		EmoFullHalf=$((RANDOM%2)) # 0 for Half Day , 1 for Full Day
		if [ $EmpFullHalf -eq 0 ]
		then
			WorkingHrs=4
			echo "Employee Work For Half Day"
		else
			WorkingHrs=8
			echo "Employee Work For Full Day"
		fi
	fi

	DailyWage=$(($WorkingHrs*$EmpWagePerHr))

	echo "Employee earn $DailyWage Today"
