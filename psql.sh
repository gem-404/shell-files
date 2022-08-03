#!/bin/bash

echo " POSTGRESQL: Disable or Enable [ E | D ]"
read resp

case $resp in
    "D" | "d")
        systemctl disable postgresql
        systemctl stop postgresql
    ;;

    "E" | "e")
        systemctl start postgresql
        systemctl enable postgresql
    ;;

    *)
        echo "$resp is not appropriate... Answer with either 'E' or 'D'"
        exit
esac



