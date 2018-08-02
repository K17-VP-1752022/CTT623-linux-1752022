#! /bin/bash	
# ================================================
echo -n "Nhap vao duong dan : "

read file
while ! test -d $file
do
	echo "Khong ton tai. Nhap lai : "; 
	read file
done
cat $file
cd $file
echo "Ban co muon xoa toan bo noi dung thu muc hay khong ? [y/n] : "; 
read answer
if [ $answer == "y" ]
then
	rm -r * $file
else
	echo "Thu muc giu nguyen"
fi
cd ..
mkdir BTTL
mkdir BTTH
echo "Thu muc BTTH & BTTL da duoc tao."
cd BTTL
mkdir BTTL{1,2,3,4,5,6,7,8,9}
echo "Hoan thanh tao thu muc."
touch BTTL{1,2,3,4,5,6,7,8,9}/1752022.sh
chmod ugo+x BTTL{1,2,3,4,5,6,7,8,9}/1752022.sh
cd ..
k=1
while [ $k -le 9 ]
do
	for d in BTTL; do
	echo "# =============================================
# Ho va ten : Phan Thanh Khiet
# MSSV : 1752035
# Ma bai tap : BTTH03
# ===========================================
#" > BTTL/BTTL$k/1752022.sh
	((k++))
	done
done


cd BTTH
mkdir BTTH{1,2,3,4,5,6,7,8,9}
echo "Hoan thanh tao thu muc."
touch BTTH{1,2,3,4,5,6,7,8,9}/1752022.sh
chmod ugo+x BTTH{1,2,3,4,5,6,7,8,9}/1752022.sh
cd ..
l=1
while [ $l -le 9 ]
do 	
	for d in BTTH; do
	echo "# ============================================
# Ho va ten : Phan Thanh Khiet
# MSSV : 1752022
# Ma bai tap :   BTTH03
# ==========================================
#" > BTTH/BTTH$l/1752022.sh
	((l++))
	done
done
cd BTTH
ls BTTH[1-9]
ls -l BTTH[1-9]/1752022.sh
cd ..
cd BTTL
ls BTTL[1-9]
ls -l BTTL[1-9]/1752022.sh