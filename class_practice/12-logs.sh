#1/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

if [$USERID -ne 0]; then
    echo "Please run this script with root user access"
    exit 1
fi

mkdir -p $LOG_FOLDER

#by default shell will not execute, only executed when called
VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2... Failure" | tee -a $LOGS_FILE
        exit 1
    else
        echo "$2... Success" | tee -a $LOGS_FILE
    fi
}

echo "Installing Nginx"
dnf install nginx -y &>> $LOG_FILE

VALIDATE $? "Installing Nginx..."

dnf install mysql -y &>> $LOG_FILE

VALIDATE $? "Installing mysql..."

dnf install nodejs -y &>> $LOG_FILE

VALIDATE $? "Installing Nodejs ..."
