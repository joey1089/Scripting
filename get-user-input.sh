#!/bin/bash
<<COMMENTS
    This gets the user input & prints it out with the variables.
    Stores the user info & prints it back on screen and deletes the saved local file.
    Before running this script give executable permissions.
COMMENTS
# set -x  # used only for debugging the script 
# set -e # used to exit immediately when a cmd fails and it exits with error
echo "Today is " `date '+%A %d-%B, %Y'` 
echo "Your time is " `date +%T`
echo "Your shell is " `ps`
echo $PWD
echo "Wait for 2 seconds ..."
sleep 2s
echo "what is your name ? "
read name
#echo $name
echo "where do you live ? "
read residence
#echo $residence
#echo "We got your name $name and you live in $residence nice!"

get_ur_working_directory() {
    echo $PWD
    echo "We got your name $name and you live in $residence, nice!" >> urinfo.txt
}

echo "Your current working directory is $(get_ur_working_directory)"

FILE=urinfo.txt
if [ -f "$FILE" ]; then
    echo "$FILE exists. Check it out in 2 Seconds."
    echo "$(cat $FILE)"  # reads info before the file gets deleted
    sleep 2s
    rm $FILE
else
    echo "No info saved!"
fi







