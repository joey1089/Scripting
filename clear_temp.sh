#! /bin/bash
# Sometimes system store temps files that no longer needed 
# To be cautious, we are going to check if system is restarted 
# Before we clearing out the temp files
# warning & advice check - https://superuser.com/questions/499039/how-to-cleanup-tmp-folder-safely-on-linux
# Alternate https://manpages.ubuntu.com/manpages/bionic/man8/tmpreaper.8.html


if [ -f /var/run/reboot-required ]; then
  echo 'Reboot required!'
else
  echo 'Reboot not required!'
  echo 'Deleting temp files...'
  find /tmp -mtime +7 -and -not -exec fuser -s {} ";" -and -exec rm {} ";"
fi
