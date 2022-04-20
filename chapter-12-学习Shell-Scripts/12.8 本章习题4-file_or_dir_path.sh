#!/bin/bash
# Program: 
# 	12.8 本章习题4：撰写一支程序，他的作用是: 
#		1.) 先查看一下/root/test/logical 这个名称是否存在； 
#		2.) 若不存在，则建立一个文件，使用touch 来建立，建立完成后离开； 
#		3.) 如果存在的话，判断该名称是否为文件，若为文件则将之删除后建立一个目录，文件名为logical ，之后离开； 
#		4.) 如果存在的话，而且该名称为目录，则移除此目录！
# History: 
# 	2022/4/20	Coir	v1:release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

if [ ! -e logical ]; then 
	touch logical
	echo "touch file: logical."
	exit 1
elif [ -e logical ] && [ -f logical ]; then 
	rm logical
	mkdir logical
	echo "rm file: logical."
	echo "make directory: logical."
elif [ -e logical ] && [ -d logical ]; then
	rm -rf logical
	echo "remove directory: logical."
else
	echo "Does here hava anything?"
fi
