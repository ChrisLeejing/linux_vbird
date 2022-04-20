#!/bin/bash
# Program: 
# 	User input dir name, I find the permission of files.
# History: 
# 	2022/4/19	Coir	v1:release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1. 先看看这个目录是否存在？ 
read -p "Please input the directory path: " path

if [ "${path}" == "" -o ! -d "${path}" ]; then
	echo "directory ${path} is not exist."
	exit 1
fi

# 2. 开始进行测试。
filelist=$(ls ${path})
for filename in ${filelist} 
do
	perm=""
	test -r "${path}/${filename}" && perm="${perm} readable"
	test -w "${path}/${filename}" && perm="${perm} writable"
	test -x "${path}/${filename}" && perm="${perm} execuable"
	echo "The file ${path}/${filename} permission is ${perm}."
done
