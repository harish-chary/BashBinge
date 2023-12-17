#Loops
#For loop
clear
values=({1..10});
for ((i=0; i<${#values[*]}; i++))
do
	echo "printing ${values[$i]}"
done

path="08_UserInput.sh"
for line in $(cat $path)
do
	echo $line
done

#While loop
clear
i=0
while [[ $i -lt ${#values[*]} ]]
do
	printf "%d " ${values[$i]}
	((i++));
done
echo

i=0;
while [[ true ]]
do
	((i++));
	echo $i;
	sleep 0.5s;
done
