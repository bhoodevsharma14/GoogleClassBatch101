#!/bin/bash -x

echo "Welcome to Employee Wage Computation Prgram on Master Branch"



	EmpAttendance=$((RANDOM%3))

	EmpWagePerHr=20

	case $EmpAttendance in

	0) echo "Employee is Absent"
		WorkingHrs=0
	;;

	1)	echo "Employee is Present for Half Day"
		WorkingHrs=4
	;;

	2)	echo "Employee Work For Full Day"
		WorkingHrs=8
	;;

	esac

	DailyWage=$(($WorkingHrs*$EmpWagePerHr))

	echo "Employee earn $DailyWage Today"
