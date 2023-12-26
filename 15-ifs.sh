#!/bin/bash

FILE="/etc/passwd"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ ! -f $SOURCE_DIR ] #! denotes oppsite 
then
 echo -e "$R source directory: $FILE does not exists $N"
 fi


while IFS=":" read -r username password user_id group_id user_fullname home_dir shell_path 
do 

echo "username: $username"
echo "password: $password"
echo "user_id : $user_id"
echo "user_fullname :$user_fullname" 
done <  $FILE
