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

for package in $@ #sudo sh 14-loops.sh nginx mysql nodejs
do
    dns list installed $package &>> $LOG_FILE
    if ( $? -ne 0 ); then
        echo "$package not installed, installing now"
        dnf install $package -y &>> $LOG_FILE
        VALIDATE $? "$package installation"
    else
        echo "$package already installed, skipping"
done