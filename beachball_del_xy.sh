#terminal 下操作
#以 gcmt 数据为例,想删除最后X,Y 以及 2014...A 这三列数据,由于每个数据长短不一,没有对齐,用 vi 列操作没法准确选中
#sed 主要是行操作,这个命令意思是对应的替换为空
sed 's/X//g;s/Y//g;s/2014.*//g;w output' gcmt_examp.txt
#awk 由于数据有十三列,所以打印前十列,就是删除后三列
awk '{print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10}' gcmt_examp.txt