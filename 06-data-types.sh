#!/bin/bash

NUMBER1=$1
NUMBER2=$2

sum=$(($NUMBER1+$NUMBER2))

echo "total :: $sum"

echo " script-name : $0"
echo " all arguments : $@"
echo "print how many arguments :$#"