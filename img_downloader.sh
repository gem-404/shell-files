#! /bin/bash

# This file will download images from a server if the directory
# has images only as its files.

link=$1
ext="jpg|jpeg|png"

echo $link

mkdir pictures && cd pictures
curl $link -o pictures.html

echo "some emojis 👍"

pics=$(cat pictures.html | grep $ext)

echo $pics

for pic in $pics; do
    echo $pic
done

rm pictures.html 
cd ../
rm -rf ./pictures

# I will have to confirm sth from the internet first...
# I will have to confirm how to check whether you are
# connected to the internet via a linux command
