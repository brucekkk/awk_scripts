#terminal 下操作
sed -e's/^October.*//g;s/^Notes.*//g;'/^\s*$/d'' tst.txt |awk '{print NR,$0}'
#首先全选高亮笔记放入tst.txt中,注意月份的不同对应关键字为不同的月份
#1.删除 October 开头;2.删除 Notes 开头;3.删除空行
#awk 为给每一行加序号