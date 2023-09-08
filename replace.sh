#!/bin/bash
# author:Kazagumo
# description:simpily replace the file of openwrt for some device
$REPO="opicm4-openwrt-patcher"
SCRIPT_PATH=$PWD"/"$REPO
OP_PATH=$PWD

echo "["$REPO"]Starting replace..."


cat $SCRIPT_PATH"/replace.list" | while read line
do
    if [ -d $OP_PATH"/$line" ]; then
        src_path=$SCRIPT_PATH"/replace_dir/"$line
        echo "["$REPO"]Replacing "$PO_PATH"/"$line" ..."
        rm -rf "$OP_PATH/"$line
        cp -R $src_path "$OP_PATH/"$line
    else
        echo "["$REPO"]Error: "$OP_PATH"/"$line" Not found!"
    fi
done

