#!/bin/bash -x

echo "Welcome to Employee Wage Computation Prgram on Master Branch"



	EmpAttendance=$((RANDOM%2))

	if [ $EmpAttendance -eq 0 ]
	then
		echo "Employee is Absent"
	else
		echo "Employee is Present"
	fi
