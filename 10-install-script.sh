#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: you must have sudo access to execute this script"
    exit 1 #other than 0 
fi

dnf install mysql -y

if [ $? -ne 0 ]
then 
    echo "Installing MySQL ... Failure"
    exit 1
else
    echo "Installing MySQL ... Success"
fi

dnf install git -y

if [ $? -ne 0 ]
then 
    echo "Installing git ... Failure"
    exit 1
else
    echo "Installing git ... Success"
fi