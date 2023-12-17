#Shell dictionary
#Why is it called array?!

declare -A dict
dict=( [name]="M!les" [age]=36 [art]="GT40" [aa]="aa")
echo ${#dict[name]}
