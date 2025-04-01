#!/bin/bash

# Disabling the SELinux Status
# ****************************

# First Checking the current status of SELinuiix
se_status=$(sestatus | grep "SELinux status" |awk '{print $3}')
#echo "SeLinux is currently in $se_status status"

# Disabling the SeLinux
if [ "$se_status" == "enabled" ]; then
        sudo sed -i 's/^SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config
fi;

# We need to reboot the server for the changes to take effect.
# So run sudo reboot to reboot your server.
# After reboot check the status of SeLinux. Run the command sudo sestatus command
