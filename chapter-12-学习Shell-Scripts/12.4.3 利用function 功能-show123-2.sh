#!/bin/bash
# Program: 
# 	Use function to repeat information.	
# History: 
# 	2022/4/17	Coir	v1:release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
function printit() {
	echo -n "Your choice is " 		# 加上-n可以不换行继续在同一行显示。
}
echo "This program will print your selection!"
# read -p "Input your choice: " choice		# 暂时取消，可以替换。
# case ${choice} in 				# 暂时取消，可以替换。
case ${1} in 					# 现在使用，可以用上面两行替换。
	"one")
		printit; echo ${1} | tr 'a-z' 'A-Z'
		;;
	"two")
		printit; echo ${1} | tr 'a-z' 'A-Z'
		;;
	"three")
		printit; echo ${1} | tr 'a-z' 'A-Z'
		;;
	*)
		echo "Usage ${0} {one|two|three}"
		;;
esac
