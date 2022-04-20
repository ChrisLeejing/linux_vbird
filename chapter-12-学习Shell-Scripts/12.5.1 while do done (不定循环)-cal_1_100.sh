#!/bin/bash
# Program: 
# 	Calculate 1+2+3+...+100 = ?
# History:
# 	2022/4/18	Coir	v1:release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

s=0	
i=0
while [ ${i} != 100 ]
do 
	i=$(( ${i}+1 ))
	s=$(( ${s}+${i} ))
	echo -e "i = ${i} \t s = ${s}\n"
done
echo "The result of 1+2+3+...+100 = ${s}"
