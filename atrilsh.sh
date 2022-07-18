#/bin/bash

js_dir=$HOME/ebooks/js
linux_dir=$HOME/ebooks/linux
py_dir=$HOME/ebooks/python
servers_dir=$HOME/ebooks/serverless
go_dir=$HOME/ebooks/go
node_dir=$HOME/ebooks/node
pyserverless_dir=$HOME/ebooks/python-serverless

echo "What books do you want to open?
     (1) : From JS directory?
     (2) : From Linux directory?
     (3) : From Python directory?
     (4) : From Node directory?
     (5) : From Golang directory?
     (6) : From serverless directory?
     (7) : From python-serverless directory?
"

read -p ">>> " resp

listfiles() {
    files=$(ls $1)
    for file in $files; do
        echo "
        ($name) : $file
        "
    done

    read "What ebook do you wanna read? >> " ebook
    # value ebook is just a placeholder for the book name,
    # learn how to get the actual filename from the array
    # given the index.

    cd $1 && test -f ebook && atril ebook &
}

case resp in
    1) 
        files=$js_dir
        listfiles $files
        ;;

    2)
        files=$linux_dir
        listfiles $files
        ;;
    3)
        files=$py_dir
        listfiles $files
        ;;
    4)
        files=$node_dir
        listfiles $files
        ;;
    5)
        files=$go_dir
        listfiles $files
        ;;
    6)
        files=$servers_dir
        listfiles $files
        ;;
    7)
        files=$pyserverless_dir
        listfiles $files
        ;;
    *)
        echo "Please input a valid value "
        ;;
esac

# To be completed later!!!
