#! /bin/bash

file=$1
ext=$(echo $file | cut -d "." -f 2)

pyfile=./main.py
jsfile=./main.js
shfile=./main.sh
htmlfile=./main.html
gofile=./main.go


file_adder() {
    if [ ! -s "$file" ]; then
        case $ext in
            py)
                cat $pyfile > $file
                nvim $file
                ;;
            js)
                cat $jsfile > $file
                nvim $file
                ;;
            sh)
                cat $shfile > $file
                nvim $file
                ;;
            html)
                cat $htmlfile > $file
                nvim $file
                ;;
            go)
                cat $gofile > $file
                nvim $file
                ;;
            *)
                nvim $file
                ;;
        esac
    else
        nvim $file
    fi
}

file_adder
