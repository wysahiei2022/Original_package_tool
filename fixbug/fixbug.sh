#!/bin/bash

LOCALDIR=`cd "$( dirname $0 )" && pwd`
cd $LOCALDIR

./rm.sh > /dev/null 2>&1

echo "
--------------------

支持的ROM:

MIUI

Flyme

H2OS

Color
--------------------
"
source ../Config.sh

if [ $fix = "miui" ];then
 ./miui.sh
 echo "修复完成"
 cd ../
else
 echo "" > /dev/null 2>&1
fi

if [ $fix = "flyme" ];then
 ./flyme.sh
 echo "修复完成"
 cd ../
else
 echo "" > /dev/null 2>&1
fi
 
if [ $fix = "h2os" ];then
 ./h2os.sh
 echo "修复完成"
 cd ../
else
 echo "" > /dev/null 2>&1
fi
 
if [ $fix = "color" ];then
 ./color.sh
 echo "修复完成"
 cd ../
else
 echo "" > /dev/null 2>&1
fi

