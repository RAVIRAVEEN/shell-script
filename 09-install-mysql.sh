#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo " Error:: stop the script and run with root access"
    Exit 1
else
    echo "you are root user"
fi


yum install mysql -y

 