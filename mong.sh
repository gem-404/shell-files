#! /bin/bash

echo " MONGODB: Disable or enable [ E | D ]"
read resp

case $resp in
    "D" | "d")
        systemctl disable mongodb
        systemctl stop mongodb
    ;;

    "E" | "e")
        systemctl start mongodb
        systemctl enable mongodb
    ;;

    *)
        echo "$resp is not appropriate... Answer with either 'E' or 'D'"
        exit
esac

