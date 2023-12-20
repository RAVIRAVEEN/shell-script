ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"
 
 LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started  and exicuted at $TIMESTAMP" $LOGFILE

validate(){
     if [ $1 -ne 0 ]
    then
     echo  -e  "Error :: $2......  $R FAILED $N"
     exit 1
    else
     echo  -e  "$2..... $G success $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e " Error:: $R stop the script and run with root access"
    exit 1
else
    echo -e  " $G you are root user"
fi


yum install mysql -y &>> $LOGFILE

validate $? "installing MYSQL"

yum install git -y &>> $LOGFILE

validate $? "installing GIT"