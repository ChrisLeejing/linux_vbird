#/bin/bash
# Program: 
# 	Program shows the effect of shift function. 
# History:
# 	2022/4/16	Coir	v1:release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1. 总的参数数量；
echo "Total parameter number is	==> $#"

# 2. 所有参数；
echo "Your whole parameter is	==> $@"

# 3. 第1次偏移后，剩余参数总数量；
shift # 进行第1次【1个变量的shift】
echo "Total parameter number is	==> $#"
echo "Your whole parameter is	==> $@"

# 4. 第2次偏移后，剩余参数总数量； 
shift 3 # 进行第2次【3个变量的shift】
echo "Total parameter number is	==> $#"
echo "Your whole parameter is	==> $@"
