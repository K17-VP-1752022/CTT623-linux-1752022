#! /bin/bash
# ================================================
# Ho va ten : Phan Thanh Khiet
# MSSV : 1752022
# Ma bai tap : BTTH03
# ================================================

echo -n "Nhap duong dan: "

read a
while ! test -d $a
do
	echo "Duong dan khong ton tai. Nhap lai: "
	read a
done
cat $a
cd $a
echo "Ban co muon xoa toan bo noi dung thu muc va tiep tuc khong?[y/n]: "
read b
if [ $b == "y" ]
then
    rm -f * $b
else
    echo "Giu nguyen"
fi
cd ..
mkdir BTTL
mkdir BTTH
echo "Thu muc BTTL va BTTH da duoc tao"
cd BTTL
mkdir BTTL{1,2,3,4,5,6,7,8,9}
echo "Thu muc da tao xong"
touch BTTL{1,2,3,4,5,6,7,8,9}/1752022.sh
chmod ugo+x BTTL{1,2,3,4,5,6,7,8,9}/1752022.sh
cd ..
c=1
while [ $c -le 9 ]
do
	for d in BTTL; do
	echo "# ================================================
# Ho va ten: Phan Thanh Khiet
# MSSV: 1752022
# Ma bai tap: BTTH03
# ================================================
#" > BTTL/BTTL$c/1752022.sh
	((c++))
	done
done


cd BTTH
mkdir BTTH{1,2,3,4,5,6,7,8,9}
echo "Thu muc da tao xong"
touch BTTH{1,2,3,4,5,6,7,8,9}/1752022.sh
chmod ugo+x BTTH{1,2,3,4,5,6,7,8,9}/1752022.sh
cd ..
e=1
while [ $e -le 9 ]
do
	for d in BTTH; do
	echo "# ================================================
# Ho va ten: Phan Thanh Khiet
# MSSV: 1752022
# Ma bai tap: BTTH03
# ================================================
#" > BTTH/BTTH$e/1752022.sh
	((e++))
	done
done
cd BTTH
ls BTTH[1-9]
ls -l BTTH[1-9]/1752022.sh
cd ..
cd BTTL
ls BTTL[1-9]
ls -l BTTL[1-9]/1752022.sh

