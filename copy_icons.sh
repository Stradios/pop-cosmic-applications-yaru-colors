#!/bin/bash

# Check if the files exist in the current directory
if [ -e "pop-cosmic-applications.svg" ] && [ -e "pop-cosmic-launcher.svg" ] && [ -e "pop-cosmic-workspaces.svg" ]; then
    # Copy the files to the destination directory with sudo privileges
    sudo cp pop-cosmic-applications.svg pop-cosmic-launcher.svg pop-cosmic-workspaces.svg /usr/share/icons/hicolor/scalable/actions
    echo "Files copied successfully."
else
    echo "One or more files not found in the current directory."
fi

