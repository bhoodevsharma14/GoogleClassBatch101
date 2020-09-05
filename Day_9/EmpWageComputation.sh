#! /bin/bash -x

	echo "Welcome to Employee Wage Computation"

	TotalWage=0
	TotalWorkingHrs=100
	EmpWorkingHrs=0
	WorkingDays=0

	function getWorkingHrs()
	{
		echo "Employee Work For $EmpWorkingHrs hr In This Month"
	}


	for((day=1;day<=20;day++))
	do

		EmpAttendance=$((RANDOM%3))

		EmpWagePerHr=20

		case $EmpAttendance in

		0) WorkingHrs=0	# Employee is Absent
		;;

		1)	WorkingHrs=4 	# Employee is Present for Half Day
			((WorkingDays++))
			((EmpWorkingHrs+=WorkingHrs))
		;;

		2)	WorkingHrs=8	# Employee Work For Full Day
			((WorkingDay++))
			((EmpWorkingHrs+=WorkingHrs))
		;;

		esac

		DailyWage=$(($WorkingHrs*$EmpWagePerHr))

		DailyWageData+=($DailyWage)

		((TotalWage+=DailyWage))

		if [ $EmpWorkingHrs -ge $TotalWorkingHrs ]
		then
			break
		fi

	done

	getWorkingHrs

	echo "Employee earn Rs.$TotalWage ,this Month"

	echo "Employee Daily Wage Data is ${DailyWageData[@]}"
