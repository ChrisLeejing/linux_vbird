#/bin/bash
# Program:
# 	Program shows the script name, parameters...	
# History: 
# 	2022/4/16	Coir	v1:release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1. 程序的文件名是什么；
echo "the script name is 	==> ${0}"
echo "the script name is 	==> $0"

# 2. 共有几个参数；
echo "Total parameter number is 	==> ${#}"
echo "Total parameter number is 	==> $#"

# 3. 若参数的个数小于2，则告知用户参数数量太少；
[ $# -lt 2 ] && echo "The number of parameter is less than 2. Stop here." && exit 0

# 4. 全部的参数内容是什么；
echo "Your parameter number is 	==> '$@'"

# 5. 第一个参数是什么；
echo "The 1st paramter 	==> '${1}'"

# 6. 第二个参数是什么。
echo "The 2nd paramter	==> '${2}'"

