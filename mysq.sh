#!/bin/bash

echo " MYSQL: Disable or Enable [ E | D ]"
read resp

case $resp in
    "D" | "d")
        systemctl disable mysql
        systemctl stop mysql
    ;;

    "E" | "e")
        systemctl start mysql
        systemctl enable mysql
    ;;

    *)
        echo "$resp is not appropriate... Answer with either 'E' or 'D'"
        exit
esac



