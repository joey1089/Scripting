# Not for direct execution - only for cronjob
# Add or remove what you wanted to run after reboot here, always log any actions.
@reboot date >> /var/log/apt/automaticupdates.log
@reboot echo "================================================================================" >> /var/log/apt/automaticupdates.log
@reboot date >> /var/log/apt/automaticupgrades.log
@reboot echo  "================================================================================" >> /var/log/apt/automaticupgrades.log
@reboot /usr/bin/apt update -q -y >> /var/log/apt/automaticupdates.log
@reboot /usr/bin/apt upgrade -q -y >> /var/log/apt/automaticupgrades.log
@reboot echo >> "==============================================================================" >> /var/log/apt/chkrootkit.log
@reboot date >> /var/log/apt/chkrootkit.log
@reboot /usr/sbin/chkrootkit >> /var/log/apt/chkrootkit.log
@reboot date >> /var/log/apt/autoclean.log
@reboot /usr/bin/apt autoremove -y >> /var/log/apt/autoremove.log
@reboot echo >> "====================================================" >> /var/log/apt/autoremove.log
