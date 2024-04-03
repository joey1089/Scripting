#!/bin/bash
# This gets the user input & prints it out with the variables
# before running this script give run permissions
set -x  # used only for debugging the script # if commented fn inputs will not work
# set -e # used to exit immediately when a cmd fails and it exits with error
echo "Today is " `date`
echo "Your shell is " `ps`
echo $PWD
get_ur_info() {
    echo "what is your name ? "
    read name
    echo $name
    echo "where do you live ? "
    read residence
    echo $residence
    echo "We got your name $name and you live in $residence nice!"
}
get_ur_working_directory() {
    echo $PWD
}
echo "Here we go $(get_ur_info)"
echo "Your current working directory is $(get_ur_working_directory)"





