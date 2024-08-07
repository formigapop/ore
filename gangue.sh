#!/bin/bash

# Define the files to be downloaded
FILES=("install_ore.sh" "run_ore.sh" "stop_ore.sh")

# Define the URLs for the files
URLS=(
    "https://raw.githubusercontent.com/formigapop/ore/main/install_ore.sh"
    "https://raw.githubusercontent.com/formigapop/ore/main/run_ore.sh"
    "https://raw.githubusercontent.com/formigapop/ore/main/stop_ore.sh"
)

# Loop through the files and URLs
for i in "${!FILES[@]}"; do
    FILE="${FILES[$i]}"
    URL="${URLS[$i]}"
    
    # Remove the file if it already exists
    if [ -f "$FILE" ]; then
        echo "Removing existing $FILE..."
        rm "$FILE"
    fi
    
    # Download the file
    echo "Downloading $FILE..."
    wget -O "$FILE" "$URL"
    
    # Update permissions
    chmod +x "$FILE"
done

# Run the install script
sh install_ore.sh
