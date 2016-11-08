#!/bin/bash
#
# Input your credit
#
echo "Please type your Email (your account)"
read email
echo "Password"
read password
#
# if the output file exit, remove it.
#
if [ -f "egaFileIDs.txt" ]
then
    rm egaFileIDs.txt
fi
#
# Get the file IDs for each dataset of CLUC data.
#
for id in EGAD00001001626 EGAD00001002069 EGAD00001002071 EGAD00001002109 EGAD00001002250 EGAD00010000934 EGAD00010000935  EGAD00010000936 EGAD00010000937 EGAD00010000938 EGAD00010000939 EGAD00010001006
do
    java -jar EgaDemoClient.jar -p $email $password -lfd $id >> egaFileIDs.txt
done

echo "The retrieval of EGA file IDs is done!"
