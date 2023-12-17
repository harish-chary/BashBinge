#!/bin/bash

# number=0
# until [ "$number" -gt 10 ]; do
#     echo $number;
#     number=$((number+1))
# done
clear_screen(){
    echo -en "\nPress Enter to continue"
    read
    clear
}

selection=
while [ "$selection" != "0" ]; do
    echo "
    PROGRAM MENU
    1 - Display free disk space
    2 - Display free memory

    0 - exit program
"
    echo -n "Enter selection: "
    read selection
    echo ""
    case $selection in
        1 ) df ;;
        2 ) free ;;
        0 ) exit ;;
        * ) echo "Please enter 1, 2, or 0"
    esac
    clear_screen
done