#!/bin/bash
# Program: 
# 	Use for ... loop to print 3 animals.
# History:
# 	2022/4/18	Coir	v1:release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

for animal in dog cat pig
do 
	echo "There are ${animal}s."
done
