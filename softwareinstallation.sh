#!/bin/bash

# Installing Apache Web Server and PHP
# ************************************

# Firstly updating all the installed packages and their dependencies

echo "Updating the installed Packages"
sudo yum update

echo "Installing Apache Web Server"
sudo yum -y install httpd

echo "Apache Web Server is successfully installed"

# Starting the Apache Web Server and Configuring it to run on Boot

echo "Starting the Apache Web Server"
sudo systemctl start httpd

echo "Configuring the Apache Web Server to run on startup"
sudo systemctl enable httpd

# To Check the status of the Apache Server run this command sudo systemctl status httpd


echo "Installing PHP"
sudo yum -y install php
echo "PHP installed successfully"

