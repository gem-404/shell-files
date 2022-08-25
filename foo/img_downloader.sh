#! /bin/bash

# This file will download images from a server if the directory
# has images only as its files.

link=$1
ext="jpg|jpeg|png|mp3|zip|mp4|pdf|zshrc|zsh_history"

curl  $link -o pictures.html
orig_link='http://127.0.0.1:8000/'

pics=$(cat pictures.html | egrep $ext)

for pic in $pics; do
    # link=`echo $pic | cut -d '"' -f 2`
    link=`echo $pic | grep -o '".*"' | tr -d '"'`
    # orig_link+=$link
    wget 'http://127.0.0.1:8000/'$link
done

# rm pictures.html
# cd ../
# rm -rf ./pictures
