#!/bin/bash
# Program: 
# 	User inputs the first name and last name, Program show the full name. 
# History: 
# 	2022/4/10	Coir	First release
Path=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export Path
read -p "Please input your first name: " firstname
read -p "Please input your last name: " lastname
echo -e "\nYour full name is: ${firstname} ${lastname}" 
