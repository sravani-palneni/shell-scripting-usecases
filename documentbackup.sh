#!/bin/bash

# Automating the backup Process: Script to back up files and directories
# **********************************************************************

source_dir="/C/Users/srava/Documents/Shell-Scripting-UseCases/scripts"
destination_dir="/C/Users/srava/Documents/Shell-Scripting-UseCases/backup"

date=$(date +"%Y-%m-%d_%H-%M-%S")
backup_name="backup_$date.tar.gz"

# Creating the backup 
tar -czf "$destination_dir/$backup_name" "$source_dir"

# Notifying the user
echo "Backup completed: $destination_dir/$backup_name"
