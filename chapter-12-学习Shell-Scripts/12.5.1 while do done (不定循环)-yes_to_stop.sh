#!/bin/bash # Program: 
# 	Repeat question until user input correct answer. 
# History: 
# 	2022/4/18	Coir	v1:release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

while [ "${yn}" != "yes" -a "${yn}" != "YES" ]
do
	read -p "Please input yes/YES to stop this program: " yn
done
echo "Ok, you input the correct answer."
