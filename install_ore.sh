#!/bin/bash

# Define URLs for the files to be downloaded
DEVNET_URL="https://github.com/formigapop/ore/releases/download/ubuntu/ore_devnet"
MAINNET_URL="https://github.com/formigapop/ore/releases/download/ore-cli-1.1.1/ore_mainnet"

# Define the destination directory
DEST_DIR="."

# Create the destination directory if it doesn't exist
mkdir -p $DEST_DIR

# Download the files
echo "Downloading ore_devnet..."
wget -O $DEST_DIR/ore_devnet $DEVNET_URL

echo "Downloading ore_mainnet..."
wget -O $DEST_DIR/ore_mainnet $MAINNET_URL

# Create an empty id.json file
echo "Creating id.json..."
touch $DEST_DIR/id.json

# Updating permissions
chmod +x $DEST_DIR/ore_devnet
chmod +x $DEST_DIR/ore_mainnet

echo "Setup complete!"
