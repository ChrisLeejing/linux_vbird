#!/bin/bash
# Program: 
# 	Program creates three files, which named by user's input and date command. 
# History: 
# 	2022/4/10	Coir	v1-release
Path=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export Path

# 1. input the filename. 
echo -e "I will use 'touch' command to create 3 files."
read -p "Please input your filename: " fileuser

# 2. 为了避免使用者随意按Enter, 利用变量功能分析文件名是否有设置?
filename=${fileuser:-"filename"}

# 3. named the file with date. 
date1=$(date --date="2 days ago" +%Y%m%d)
date2=$(date --date="1 days ago" +%Y%m%d)
date3=$(date +%Y%m%d)

file1=${filename}-${date1}".txt"
file2=${filename}-${date2}".txt"
file3=${filename}-${date3}".txt"

# 4. create the file. 
touch "${file1}"
touch "${file2}"
touch "${file3}"
