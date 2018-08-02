#! /bin/bash

inpuxt="$1"
outpuxt="$2"
DemTu ()
{
    echo "So tu $#"
   
}

LietKe ()
{
    for i in $*; do
	echo "$i"
    done
}
dem=0
DemSoLanLap ()
{
   a="b"
   for i in $*; do
       if [[ $i = $a ]]; then
	   ((dem++))
       fi
    done
   echo "So lan lap: $dem"
}
showInfos ()
{
    DemTu $*
    LietKe $*
    DemSoLanLap $*
}
readfile ()
{
    exec 3>|$2
    while read line; do
	showInfos $line >&3
    done <"$1"
    exec 3>&-
    
}

process ()
{
    local inpuxt="$1"
    local outpuxt="$2"
    readfile $inpuxt $outpuxt
}

process $inpuxt $outpuxt