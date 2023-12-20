ID=$(id -u)


TIMESTAMP=$(date +"%d-%m-%y-%H-%M-%S")

LOGFILE="/tmp/$0-$TIMESTAMP/.log"

validate(){
     if [ $1 -ne 0 ]
    then
     echo  -e "Error :: $2......   FAILED "
     exit 1
    else
     echo -e  "$2.....  success "
    fi
}

if [ $ID -ne 0 ]
then
    echo -e  " Error:: stop the script and run with root access"
    exit 1
else
    echo -e "  you are root user"
fi


yum install mysql -y &>> $LOGFILE

validate $? "installing MYSQL"

yum install git -y  &>> $LOGFILE

validate $? "installing GIT"
