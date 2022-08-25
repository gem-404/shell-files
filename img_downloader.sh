#! /bin/bash

# This file will download images from a server if the directory
# has images only as its files.

link=$1
ext="jpg|jpeg|png|mp3|zip|mp4|pdf|zshrc|zsh_history"

echo $link

mkdir pictures && cd pictures
curl $link -o pictures.html

echo "some emojis 👍"

pics=$(cat pictures.html | grep $ext)

echo $pics

for pic in $pics; do
    link=`echo '$pic' | rev | cut -d'.' -f 1 | rev`
    wget $link
    echo $pic
done

rm pictures.html
cd ../
rm -rf ./pictures
