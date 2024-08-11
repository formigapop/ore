#!/bin/bash

# Define URLs for the files to be downloaded
MAINNET_URL="https://github.com/formigapop/ore/releases/download/ore-cli-2.3/ore_mainnet"

# Define the destination directory
DEST_DIR="."

# Create the destination directory if it doesn't exist
mkdir -p $DEST_DIR

# Remove the ore_mainnet file if it already exists
if [ -f "$DEST_DIR/ore_mainnet" ]; then
    echo "Removing existing ore_mainnet..."
    rm $DEST_DIR/ore_mainnet
fi

# Download the files
echo "Downloading ore_mainnet..."
wget -O $DEST_DIR/ore_mainnet $MAINNET_URL

# Create an empty id.json file
echo "Creating id.json..."
touch $DEST_DIR/id.json

# Updating permissions
chmod +x $DEST_DIR/ore_mainnet

echo "Setup complete!"
