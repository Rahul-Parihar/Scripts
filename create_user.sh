#!/bin/bash

<<help

  This ia a shell script
  to crate user 

help
echo "====user creation started====="

read -p "Enter ther username" username

read -p "enter your password" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "====user creation completed====="

sudo userdel $username

echo "===== user is deleted======="

cat /etc/passwd |grep $username | wc

echo "as wc is zero the user is deleted"

