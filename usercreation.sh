#!/bin/bash

# Creating a user and setting a complex password to that user
# ***********************************************************

# Asking the user to enter the username
echo "Enter the username to be created"
read username

if grep "$username" /etc/passwd; then
 echo "Username $username already exists."
else
  sudo useradd $username

# Setting a password for the user
  password=$(openssl rand -base64 12)
  echo "$username:$password" | sudo chpasswd

  if grep "$username" /etc/passwd; then
         echo "User with username $username created successfully with password $password"
  fi
fi
