#!/bin/bash
# Program: 
# 	This script only accepts the flowing parameters: one, two or three.
# History: 
# 	2022/4/17	Coir	v1:release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "This program will print your selection!"
# read -p "Input your choice: " choice		# 暂时取消，可以替换。
# case ${choice} in 				# 暂时取消，可以替换。
case ${1} in 					# 现在使用，可以用上面两行替换。
	"one")
		echo "Your choice is ONE"
		;;
	"two")
		echo "Your choice is TWO"
		;;
	"three")
		echo "Your choice is THREE"
		;;
	*)
		echo "Usage ${0} {one|two|three}"
		;;
esac
