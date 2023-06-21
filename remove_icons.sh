#!/bin/bash

# Specify the file names to remove
files=("pop-cosmic-applications.svg" "pop-cosmic-launcher.svg" "pop-cosmic-workspaces.svg")

# Specify the directory path
directory="/usr/share/icons/hicolor/scalable/actions"

# Move to the directory
cd "$directory" || exit

# Iterate over the files and remove them
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        rm "$file"
        echo "Removed $file"
    else
        echo "File $file not found"
    fi
done

