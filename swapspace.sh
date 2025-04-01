#!/bin/bash

# Adding 4GB of Swap Space
# ************************

swapfile="/swapfile"
swapsize="4G"

# First Checking whether there is already a swap file

if sudo swapon --show | grep -q "$swapfile"; then
        # There is already a Swap file
        # In this case we need to change the swap size to required size

        # For that First Disable the current swap
        sudo swapoff /swapfile

        # Resize the swap file to 4 BG
        sudo fallocate -l 4G /swapfile

        # Setting permission to swap file
        sudo chmod 600 /swapfile

        # Setup139.84.199.156 the swap file
        sudo mkswap /swapfile

        # Reactivate the swap file
        sudo swapon /swapfile

        # Making the swap file permanent
        echo "/swapfile none swap sw 0 0" | sudo tee -a /etc/fstab

        # Finally checking the created swap file
        sudo swapon --show
else
        # Swap file does not exist
        # Create a swap file of 4G space
        sudo fallocate -l $swapsize $swapfile
        sudo chmod 600 /swapfile
        sudo mkswap /swapfile
        sudo swapon /swapfile
        echo "/swapfile none swap sw 0 0" | sudo tee -a /etc/fstab
        sudo swapon --show
fi

