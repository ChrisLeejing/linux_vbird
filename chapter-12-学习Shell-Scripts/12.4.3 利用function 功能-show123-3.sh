#!/bin/bash
# Program: 
# 	Use function to repeat information.	
# History: 
# 	2022/4/17	Coir	v1:release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
function printit() {
	echo -e "Your choice is ${1} \n" 		# 这个$1必须要参考下面命令的执行。 
}
echo "This program will print your selection!"
# read -p "Input your choice: " choice		# 暂时取消，可以替换。
# case ${choice} in 				# 暂时取消，可以替换。
case ${1} in 					# 现在使用，可以用上面两行替换。
	"one")
		printit 1 			# 请注意，printit 命令后面还有接参数。
		;;
	"two")
		printit 2
		;;
	"three")
		printit 3
		;;
	*)
		echo "Usage ${0} {one|two|three}"
		;;
esac
