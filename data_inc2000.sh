#terminal 下操作
#隔行选取和隔行打印某一列
awk 'NR%2000==1' $latilongfile > cdp_inc2000_coor.txt #隔 2000 行选取
awk 'NR%2000==1{print $1}' $latilongfile > cdp_annotation_2000_list.txt #隔 2000 行选取并打印第一列