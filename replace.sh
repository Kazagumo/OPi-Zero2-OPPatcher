#!/bin/bash
# author:Kazagumo
# description:simpily replace the file of openwrt for some device


echo "[OPi Zero2 Patcher]Starting replace..."
if [ ! -f "Makefile" ];then
    cp ./* ../ -R
    cd ../
fi

cat replace.list | while read line
do
    if [ -d "./$line" ]; then
        src_path="./replace_dir/"$line
        echo "[OPi Zero2 Patcher]Replacing ./"$line" ..."
        rm -rf "./"$line
        cp $src_path "./"$line -R
    else
        echo "[OPi Zero2 Patcher]Error: ./"$line" Not found!"
    fi
done

