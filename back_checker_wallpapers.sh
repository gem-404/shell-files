#!/bin/bash

wallpaper_file=~/.wallpapers.txt
temp_file=/temp/wallpapers.txt

sort -u $wallpaper_file | uniq > $temp_file
tac $temp_file > $temp_file

for pic_file in $(tac $wallpaper_file); do
    walqi $pic_file
done
