#!/bin/bash
# author:Kazagumo
# description:simpily replace the file of openwrt for some device
SCRIPT_PATH=$(cd `dirname $0`; pwd)
OP_PATH=$PWD

echo "[OPi Zero2 Patcher]Starting replace..."

cp -r $SCRIPT_PATH"/*" $OP_PATH"/"


cat $SCRIPT_PATH"/replace.list" | while read line
do
    if [ -d $OP_PATH"/$line" ]; then
        src_path=$OP_PATH"/replace_dir/"$line
        echo "[OPi Zero2 Patcher]Replacing ./"$line" ..."
        rm -rf "$OP_PATH/"$line
        cp $src_path "$OP_PATH/"$line -R
    else
        echo "[OPi Zero2 Patcher]Error: "$OP_PATH"/"$line" Not found!"
    fi
done

