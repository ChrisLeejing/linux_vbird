#!/bin/bash
# Program: 
# 	User input 2 integer numbers; program will cross these two numbers. 
# History:
# 	2022/4/10	Coir	v1-release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo -e "You should input 2 integer number, I'll multiplying them!\n"
read -p "first number: " n1
read -p "second number: " n2
total=$(( ${n1} * ${n2} ))
echo -e "\nThe result of ${n1} x ${n2} is => ${total}"

