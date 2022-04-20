#!/bin/bash
# Program: 
#       Using netstat and grep to detect www, ssh, ftp, and mail services.
# History: 
# 	2022/4/17	Coir	v1:release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1. 先写一些告知的操作。
echo "Now, I will detect your linux server's services!"
echo -e "The www, ftp, ssh, and mail(smtp) will be detect! \n"

# 2. 开始进行一些测试的任务，并且也输出一些信息。
testfile=/dev/shm/netstat_checking.txt
netstat -tuln > ${testfile} # 先转存数据到内存中，不用一直执行netstat.
testing=$(grep ":80 " ${testfile})	# 检测看80端口在否？
if [ "${testing}" != "" ]; then 
	echo "www is running in your system."
fi
testing=$(grep ":22 " ${testfile})	# 检测看22端口在否？
if [ "${testing}" != "" ]; then 
	echo "SSH is running in your system."
fi
testing=$(grep ":21 " ${testfile})	# 检测看21端口在否？
if [ "${testing}" != "" ]; then 
	echo "FTP is running in your system."
fi
testing=$(grep ":25 " ${testfile})	# 检测看25端口在否？
if [ "${testing}" != "" ]; then 
	echo "Mail is running in your system."
fi

