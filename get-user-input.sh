#!/bin/bash
<<COMMENTS
    Just for fun created this code. This gets the user input & prints it out with the variables.
    Stores the user info & prints it back on screen and deletes the saved local file.
    Before running this script give executable permissions.
COMMENTS
# set -x  # used only for debugging the script 
# set -e # used to exit immediately when a cmd fails and it exits with error
echo "Today is " `date '+%A %d-%B, %Y'` 
echo "Your time is " `date +%T`
echo "Your shell is " `ps`
#echo $PWD
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

echo "Saving your information at $(get_ur_working_directory)"

FILE=urinfo.txt
if [ -f "$FILE" ]; then    
    echo "$(cat $FILE)"  # reads info before the file gets deleted
    echo "$(ls -alh)"
    echo "Your information stored in $FILE"
    echo "This files will self-destruct in 3 secs!!!" 
    #Learned -e allows \n to added to create new line.
    sleep 1s
    echo -e "\n ."
    sleep 1s
    echo " .."
    sleep 1s
    echo " ..."
    sleep 3s
    rm $FILE
    if [ ! -f "$FILE" ]; then
        echo -e "\n"
        echo "$FILE Deleted Successfully!"
        echo -e "\n"
        echo "$(ls -alh)"
        echo -e "\n"
        echo "HAPPY Coding, People!!!"
    else
        echo "$FILE not deleted!"
        echo "$(ls -alh)"
    fi
else
    echo "No info saved!"
fi







