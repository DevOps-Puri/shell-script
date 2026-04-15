#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: you must have sudo access to execute this script"
    exit 1 #other than 0 
fi

dnf list installed mysql

if [ $? -ne 0 ] #notinstalled
then
    dnf install mysql -y
    if [ $? -ne 0 ]
    then 
        echo "Installing MySQL ... Failure"
        exit 1
    else
        echo "Installing MySQL ... Success"
    fi
else
    echo "MySQL is already..... installed"
fi

dnf list installed git

if [ $? -ne 0 ]
then
    dnf install git -y
    if [ $? -ne 0 ]
    then 
        echo "Installing Git ... Failure"
        exit 1
    else
        echo "Installing Git ... Success"
    fi
else
    echo "Git is already..... installed"
fi