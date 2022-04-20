#!/bin/bash
# Program: 
# 	User input a filename, program will check the flowing: 
# 	1. exist? 2. file/directory? 3. file permissions
# History: 
# 	2022/4/14	Coir 	v1:release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1. 让使用者输入文件名，并且判断使用者是否真的有输入字符？
echo -e "Please input a filename, I will check the filename's type and permission. \n\n"
read -p "Input a filename: " filename
test -z ${filename} && echo "You must input a filename" && exit 0

# 2. 判断文件是否存在？若不存在则显示信息并结束脚本。
test ! -e ${filename} && echo "File '${filename}' is not exist" && exit 0

# 3. 开始判断文件类型与属性。
test -f ${filename} && fileType="regulare file"
test -d ${filename} && fileType="directory"
test -r ${filename} && filePerm="readable"
test -w ${filename} && filePerm="'${filePerm}' writable"
test -x ${filename} && filePerm="'${filePerm}' executable"

# 4. 开始输出信息。
echo "The filename: ${filename} is a ${fileType}"
echo "And the permissions for you are : ${filePerm}"

