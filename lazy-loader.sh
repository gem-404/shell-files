#!/bin/bash

file=~/Desktop/fonts.txt
clear
font_arrays=$(cat $file)

for font in $font_arrays; do
    figlet -f $font "motherfucker"
    sleep 10
    clear
done

