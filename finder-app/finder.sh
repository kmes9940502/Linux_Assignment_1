#!/bin/sh
filesdir=$1
searchstr=$2
counter=0
strcounter=0

#check if the parameters is valid
if [ $# -ne 2 ]; then
    echo "Invalid parameters!!"
    exit 1
else
    #check if the directory exist
    if [ -d "$filesdir" ]; then
        echo "Path: ${filesdir}, searching key: ${searchstr}"
    else
        echo "Directory does not exists!!"
        exit 1
    fi
fi


#execution start here

for i in $(find "$filesdir" -type f)
do
    counter=`expr $counter + 1`
done

keyLine="grep -r ${searchstr} ${filesdir}"

for j in $(${keyLine})
do
    strcounter=`expr $strcounter + 1`
done
echo "The number of files are ${counter} and the number of matching lines are ${strcounter}"
exit 0