#!/bin/bash
# Program: 
# 	Use ping command to check the network's PC state.
# History: 
# 	2022/4/19	Coir	v1:release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

site="10.28.2"
for n in {241..244}			# 方式1：使用".."连续。
#for n in $(seq 241 244)		# 方式2：使用"seq"连续。
do
	ping -c 1 -w 1 ${site}.${n} &> /dev/null && result=0 || result=1
	if [ "${result}" == 0 ]; then 
		echo "Server ${site}.${n} network is UP."
	else
		echo "Server ${site}.${n} network is DOWN."
	fi	
done
