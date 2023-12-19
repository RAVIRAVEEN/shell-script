#!/bin/bash

NUMBER=$1

if [ $NUMBER -lt 100 ]
then
   echo "given number $NUMBER is less than 100"
else
   echo "given number $NUMBER is not less than 100"
fi