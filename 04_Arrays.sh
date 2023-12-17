#Arrays in shell
MyArr=( 1 2 "Hi" 3 "Four" 5.0 6.6)
#echo ${MyArr[*]}
#Length of array
#echo "Length is: ${#MyArr[6]}"

#retrieve contagious values
#echo ${MyArr[*]:0:6}

#Updating array
MyArr+=( "New1" "New2" "New3" )
echo ${MyArr[*]}
