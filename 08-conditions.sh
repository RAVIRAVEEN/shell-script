#!/bin/bash

NUMBER=$1

if [ $NUMBER -ne 100 ]
then
   echo "given number $NUMBER is not equal to 100"
else
   echo "given number $NUMBER is equal to  100"
fi