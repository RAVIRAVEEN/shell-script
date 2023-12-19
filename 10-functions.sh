ID=$(id -u)

validate(){
     if [ $1 -ne 0 ]
    then
     echo "Error :: $2......  FAILED"
     exit 1
    else
     echo "$2..... success"
    fi
}

if [ $ID -ne 0 ]
then
    echo " Error:: stop the script and run with root access"
    exit 1
else
    echo "you are root user"
fi


yum install mysql -y

validate $? "installing MYSQL"

yum install git -y 

validate $? "installing GIT"

