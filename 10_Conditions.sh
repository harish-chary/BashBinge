#Conditional Statements

#read -p "enter value: " val
#if [[ $val -ge 40 ]]
#then 
#	echo "Value grater than 39"
#elif [[ $val -gt 0 ]]
#then 
#	echo "Value < 40"
#else
#	echo "Value is negative"	
#fi

#clear
#read -p "Enter day: " day
#if [[ $day == "Sunday" || "$day" == "Saturday" ]]; then 
#	echo "It is a weekday"
#	date
#	
#else
#	echo "It is not a weekday"
#fi
#echo -e "\nPress any key to exit."
#read
#clear

#Switch condition
clear
read -p "Enter day number: " marks
case $marks in
	1)
		echo "Monday" ;;
	2)
		echo "Tueday" ;;
	3)
		echo "Wednesday" ;;
	4)
		echo "Thursday" ;;
	5)
		echo "Friday" ;;
	6)
		echo "Saturday" ;;
	7)
		echo "Sunday" ;;
	*)
		echo "Not a valid day number"
esac
