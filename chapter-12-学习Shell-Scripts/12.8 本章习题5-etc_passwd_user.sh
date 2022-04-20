#!/bin/bash: 
# Program: 
# 	12.8 本章习题5：我们知道/etc/passwd 里面以: 来分隔，第一栏为账号名称。请写一只程序，可以将/etc/passwd 的第一栏取出，而且每一栏都以一行字符串『The 1 account is "root" 』来显示，那个1 表示行数。
# History: 
# 	2022/4/20	Coir	v1:release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

users=`cat /etc/passwd | cut -d ":" -f 1`
for user in ${users}
do 
	declare -i i=$(( ${i} + 1 ))
	echo "The ${i} account is ${user}"
done
