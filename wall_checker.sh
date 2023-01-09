#!/bin/bash

# check whether the word anime is in file
# if not, then the word anime_wallpaper must be in file

file=~/lab/shell-files/wall_changer.sh

word=`head -n 3 $file | tail -n 1 | cut -d/ -f 2`

echo $word

if [ $word == anime ]; then
    sed -i '3s/anime/anime_wallpapers/' $file
else
    sed -i '3s/anime_wallpapers/anime/' $file
fi

cd ~/lab/shell-files
git add wall_changer.sh
git commit -am "Just changed from either anime_wallpaper or anime to either anime_wallpaper to anime"
cd -

# ------------ Needs some change below --------------- #

#######################################
# status=`ping -c 3 www.google.com`   #
#                                     #
# if [[ $status -ge 0 ]]; then        #
#     git push;                       #
# fi                                  #
#                                     #
#######################################

