#1/bin/bash

USERID=$(id -u)

if [$USERID -ne 0]; then
    echo "Please run this script with root user access"
    exit 1
fi

#by default shell will not execute, only executed when called
VALIDATE(){
    if [ $? -ne 0 ]; then
        echo "Installing Nginx... Failure"
        exit 1
    else
        echo "Installing Nginx... Success"
    fi
}

echo "Installing Nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Installing Nginx... Failure"
    exit 1
else
    echo "Installing Nginx... Success"
fi