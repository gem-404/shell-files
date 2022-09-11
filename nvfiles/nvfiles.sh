#! /bin/bash


no_of_args=`echo $#` # stores the number of arguments provided in the command line
files=( "$@" )

echo $files

# ext=$(echo $file | cut -d "." -f 2) # This is not the very best method of finding a file's extension
# esp. if the filename has more than one '.' for example, main.min.css or main.min.bundle.js
# The below method proves to be the best suited for finding such extensions.
ext=`echo "${file##*.}"`

pyfile=./main.py
jsfile=./main.js
shfile=./main.sh
htmlfile=./main.html
gofile=./main.go

file=$1
touch $file

# if [ $no_of_args -eq 0 ]; then
#     nvim # but one can also use, $ set -- defaultarg1 defaultarg2
# elif [ $no_of_args -lt 2 ]; then
#     file=$1
#     file_adder()
# else
#     file=( "$@" ) # if the number of arguments provided are more than one, then, store them in an array.
#     for file; do
#         file_adder()
#     done
# fi

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
