#!/bin/bash

# User ffmpeg convert audio file to mp3
# change .wma files to .mp3

log="./convertToMp3_Log"

echo "Process Start" >> ${log}
for file in *.wma ;
do
#newName=`echo "${file}" | sed 's/\(.*\.\)wma /\1mp3/'`
newName="${file%.*}.mp3"
echo "Convert \"${file}\" to: \"${newName}\""

if ffmpeg -i "${file}" -f mp3 "${newName}"; then
echo "Successful converted \"${file}\" to: \"${newName}\"" >> ${log}
rm "${file}"
else
echo "Failed converted \"${file}\" to: \"${newName}\"" >> ${log}
fi

#ffmpeg -i "${file}" -f mp3 "${newName}"
# The return value is stored in $?. 0 indicates success, others indicates error.
#if [ $? -eq 0 ]; then
#    echo OK
#else
#    echo FAIL
#fi
done

echo "Process Done" >> ${log}

# user "tail -f convertToMp3_Log" to check log message dynamically
