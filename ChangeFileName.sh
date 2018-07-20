#!/bin/bash
path="$@"
cdResult=`cd $path`
if [[ -z "${cdResult// }" ]]; then
    name=0
    eName=".png"
    namePre="em_"
    for file in `ls $path`
        do
            name=$(echo "$name + 1"|bc)
            fileName=$namePre$name$eName
            mv $file $fileName
        done
else
    echo "No SuchFile"
fi
