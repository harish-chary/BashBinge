#!/bin/bash

if [[ "$#" -ne 3 ]] || ! [[ "$2" =~ ^[0-9]+$ ]] || ! [[ "$3" =~ ^[0-9]+$ ]]; then
    echo "Usage: $0 <operation> <num1> <num2>" 1>&2
    exit 1
fi

operation="$1";
num1="$2";
num2="$3";
operand=;
result=;

case "$operation" in
    "-a" | "--add") result=$((num1 + num2)); operand="+";;
    "-s" | "--subtract") result=$((num1 - num2)); operand="-";;
    "-m" | "--multiply") result=$((num1 * num2)); operand="*";;
    "-d" | "--divide") {
        if [ "$num2" -ne 0 ]; then
            result=$((num1 / num2)); operand="/"
        else
            echo "Cannot divide by 0";
            exit 2;
        fi
    };;
    "-p" | "--power") result=$((num1 ** num2)); operand="^";;
    "-r" | "--remainder") result=$((num1 % num2)); operand="%";;
    # *) echo "Enter correct input";
esac
if [ "$result" ]; then {
    echo "$num1 $operand $num2 = $result";
}
else
    echo "Enter correct input";
fi