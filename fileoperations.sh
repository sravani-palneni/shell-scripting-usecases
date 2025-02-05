#!/bin/bash

# Performing File Opeartions Using Bash Scripting
# ***********************************************

echo "Enter the directory name that you want to create: "
read dirname

mkdir "$dirname"   # Creating the Directory
echo " Directory $dirname is created successfully"

cd "$dirname" 	   # Changing to the directory created above.
echo "Enter the name of the file that you want to create in the above directory $dirname"
read filename

touch "$filename"   # Creating a file
echo "File $filename created successfully in the directory $dirname"
