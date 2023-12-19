ID=$(id -u)

validate(){
     if [ $? -ne 0 ]
    then
     echo "Error :: installing  FAILED"
     exit 1
    else
     echo "installing success"
    fi
}

if [ $ID -ne 0 ]
then
    echo " Error:: stop the script and run with root access"
    exit 1
else
    echo "you are root user"
fi

validate

yum install mysql -y

validate 

yum install git -y 