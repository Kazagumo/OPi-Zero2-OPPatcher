#!/bin/bash
# author:Kazagumo
# description:simpily replace the file of openwrt for some device
SCRIPT_PATH=$PWD"/OPi-Zero2-OPPatcher"
OP_PATH=$PWD

echo "[OPi Zero2 Patcher]Starting replace..."


cat $SCRIPT_PATH"/replace.list" | while read line
do
    if [ -d $OP_PATH"/$line" ]; then
        src_path=$SCRIPT_PATH"/replace_dir/"$line
        echo "[OPi Zero2 Patcher]Replacing "$PO_PATH"/"$line" ..."
        rm -rf "$OP_PATH/"$line
        cp -R $src_path "$OP_PATH/"$line
        find "$OP_PATH/"$line -type d -exec chmod +x {} \;
    else
        echo "[OPi Zero2 Patcher]Error: "$OP_PATH"/"$line" Not found!"
    fi
done

