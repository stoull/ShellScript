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


#remove the space in file name
#example file name:19-014-0100.mp3 .mp3
#result file name:19-014-0100.mp3
$ for file in *.mp3 ;
do target=`echo "$file" | sed 's/ //g'`;
echo "$target";
mv "$file" "$target";
done;

#remove the duplicate file extension in file name
#example file name:19-014-0100.mp3.mp3
#result file name:19-014-0100.mp3
$ for file in *.mp3 ;
do target=`echo "$file" | sed 's/\.mp3\.mp3$/.mp3/g'`;
echo "$target";
mv "$file" "$target";
done;
