#!/bin/bash
#
# move all snippet files to Xcode CodeSnippets path
#
# Author: yixiaoluo
#

userName=$USER
srcPath=/Users/$userName/Library/Developer/Xcode/UserData/CodeSnippets/
targetPath=$(pwd)

if [ ! -d $srcPath ]; then
    echo '当前目录不存在，请确认当前Xcode版本，找到对应存储CodeSnippets的目录'
    exit
fi

for file in `ls $srcPath`; do
    cp $srcPath/$file $targetPath
done
echo copied to $targetPath


