#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo " Error:: stop the script and run with root access"
    exit 1
else
    echo "you are root user"
fi


yum install mysqliii -y

 if [ $? -ne 0 ]
 then
   echo "Error :: installing mysql FAILED"
   exit 1
 else
   echo "installing mysql success"
fi


  yum install git -y 

  if [ $? -ne 0 ]
  then
     echo "Error :: installing git Failed"
     exit 1
  else
    echo " installing git SUCCESS"
