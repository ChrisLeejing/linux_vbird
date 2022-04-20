#!/bin/bash
# Program: 
# 	Use id, finger command to check system account's information.
# History: 
# 	2022/4/18	Coir	v1:release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# for user in $(cut -d ":" -f1 /etc/passwd)
# do 
# 	id "${user}"
# done

# cut命令参考：https://www.linuxcool.com/cut
users=$(cut -d ":" -f1 /etc/passwd)
for username in ${users}
do 
	id "${username}"
done
