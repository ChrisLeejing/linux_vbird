#!/bin/bash
# Program: 
# 	12.8 本章习题2：请自行建立一支程序，该程序可以用来计算『你还有几天可以过生日』啊？
# History: 
# 	2022/4/20	Coir	v1:release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input your birthday(MMDD, ex:0101): " bir
now=`date +%m%d`
year=`date +%Y`

if [ ${bir} == ${now} ]; then
	echo "Happy birthday to you!!!"
elif [ ${bir} -gt ${now} ]; then
	total_d=$(( $(( `date --date="${year}${bir}" +%s` - `date +%s` )) / 60 / 60 / 24))
	echo "Your birthday is ${total_d} days later. "
else 
	next_year=$(( ${year} + 1 ))
	total_d=$(( $(( `date --date="${next_year}${bir}" +%s` - `date +%s` )) / 60 / 60 / 24))
	echo "Your birthday is ${total_d} days later. "
fi
