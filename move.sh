#!/bin/bash
#
# move all snippet files to Xcode CodeSnippets path
#
# Author: yixiaoluo
#

srcPath='./'
userName=$USER
targetPath=/Users/$userName/Library/Developer/Xcode/UserData/CodeSnippets/

if [ ! -d $targetPath ]; then
    echo '当前目录不存在，请确认当前Xcode版本，找到对应存储CodeSnippets的目录'
    exit
fi

for file in `ls $srcPath`; do
    cp $file $targetPath
done
echo copied to $targetPath


