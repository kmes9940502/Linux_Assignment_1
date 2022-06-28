#!/bin/bash

writefile=$1
writestr=$2
if [ $# -ne 2 ]; then
    echo "Invalid parameters"
    exit 1
fi
if mkdir -p "$(dirname ${writefile})" && touch "${writefile}"; then
    :
else
    echo "The file cannot been created!!"
    exit 1
fi

echo "${writestr}" > ${writefile}

exit 0