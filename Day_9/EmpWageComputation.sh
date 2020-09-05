#!/bin/bash -x

	echo "Welcome to Employee Wage Computation"

	TotalWage=0

	for((day=1;day<=20;day++))
	do

		EmpAttendance=$((RANDOM%3))

		EmpWagePerHr=20

		case $EmpAttendance in

		0) WorkingHrs=0	# Employee is Absent
		;;

		1)	WorkingHrs=4 	# Employee is Present for Half Day
		;;

		2)	WorkingHrs=8	# Employee Work For Full Day
		;;

		esac

	DailyWage=$(($WorkingHrs*$EmpWagePerHr))

	((TotalWage+=DailyWage))

	done



	echo "Employee earn $TotalWage This Month"
