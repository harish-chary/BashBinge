#!/bin/bash

# set -x
# echo -n "Enter: ";
clear;
echo "Positional parameters: ";
for parameter in "$@"; do {
    echo -n "$parameter ";
}
done
echo;
read -p "Enter value: " inp;
echo "$inp";
if [ "$inp" = "" ]; then {
    clear;
}
fi
# set +x