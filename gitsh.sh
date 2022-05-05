#! /bin/bash

filename=$1
message=$2

git add $filename && git commit -m "$message"
