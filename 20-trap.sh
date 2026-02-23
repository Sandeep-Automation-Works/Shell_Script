#1/bin/bash

set -e

echo 'echo "There is an error in $LINENO, Command: $BASH_COMMAND"' ERR


USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [$USERID -ne 0]; then
    echo "Please run this script with root user access"
    exit 1
fi

mkdir -p $LOG_FOLDER


for package in $@ #sudo sh 14-loops.sh nginx mysql nodejs
do
    dns list installed $package &>> $LOG_FILE
    if ( $? -ne 0 ); then
        echo "$package not installed, installing now"
        dnf install $package -y &>> $LOG_FILE
    else
        echo "$package $R already installed, skippin $N"
done