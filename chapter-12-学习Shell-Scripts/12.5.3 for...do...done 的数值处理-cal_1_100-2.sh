#!/bin/bash
# Program: 
# 	Calculate 1+2+3+...+your_input_num = ?
# History:
# 	2022/4/18	Coir	v1:release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

s=0	
i=0
read -p "Please input the num:" num
for (( i=1; i<=${num}; i++ ))
do 
	s=$(( ${s}+${i} ))
	echo -e "i = ${i} \t s = ${s}\n"
done
echo "The result of 1+2+3+...+${num} = ${s}"
