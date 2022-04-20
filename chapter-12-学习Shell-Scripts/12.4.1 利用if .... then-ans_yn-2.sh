#!/bin/bash
# Program: 
# 	Input a character to continue, or to interrupt?
#	1. Y/y -> continue
# 	2. N/n -> interrupte
# History:
# 	2022/4/16	Coir	v1:release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1. 输入提示语。
echo -e "Input a character to continue(Y/y), or to interrupt(N/n). \n"
read -p "Please input the character: " yn
 
# 2. 输出结果。
#[ ${yn} == "Y" -o ${yn} == "y" ] && echo "ok, continue." && exit 0
#[ ${yn} == "N" -o ${yn} == "n" ] && echo "no, interrupte." && exit 0
if [ "${yn}" == "Y" ] || [ "${yn}" == "y" ]; then
	echo "ok, continue."
        exit 0
fi
if [ "${yn}" == "N" ] || [ "${yn}" == "n" ]; then
	echo "no, interrupte."
        exit 0
fi

echo "I don't know what your character is." && exit 0
