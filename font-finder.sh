#!/bin/bash


dir="/usr/share/figlet/fonts/"

files=$(ls $dir)

for file in $files; do

    req_ext="flf"
    ext=$(echo $file | cut -d "." -f 2)

    if [ "$ext" == "$req_ext" ]; then
        figlet -f $file "hello"
        # ...
        read -p "Do you love the font :: " ans
        clear

        if [ $ans == "y" ]; then
            echo $file >> ~/Desktop/fonts.txt
        fi
    fi

done
    
