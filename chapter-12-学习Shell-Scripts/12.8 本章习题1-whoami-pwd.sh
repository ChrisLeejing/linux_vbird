#!/bin/bash
# Program: 
#	12.8 本章习题1：请建立一支script ，当你执行该script 的时候，该script 可以显示：
#		 1. 你目前的身份(用whoami) 。
#		 2. 你目前所在的目录(用pwd)。
# History: 
# 	2022/4/20	Coir	v1:release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "The current name: " $(whoami)
echo "The current path: " $(pwd)
