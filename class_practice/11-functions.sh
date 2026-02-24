#1/bin/bash

USERID=$(id -u)

if [$USERID -ne 0]; then
    echo "Please run this script with root user access"
    exit 1
fi

#by default shell will not execute, only executed when called
VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2... Failure"
        exit 1
    else
        echo "$2... Success"
    fi
}

echo "Installing Nginx"
dnf install nginx -y

VALIDATE $? "Installing Nginx..."

dnf install mysql -y

VALIDATE $? "Installing mysql..."

dnf install nodejs -y

VALIDATE $? "Installing Nodejs ..."
