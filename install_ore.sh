#!/bin/bash

# Define URLs for the files to be downloaded
COALORE_URL="https://github.com/formigapop/ore/releases/download/coalore-2.4/coalore"
COAL_URL="https://github.com/formigapop/ore/releases/download/coal-2.3/coal"
ORE_URL="https://github.com/formigapop/ore/releases/download/ore-cli-2.3/ore_mainnet"

# Define the destination directory
DEST_DIR="."

# Create the destination directory if it doesn't exist
mkdir -p $DEST_DIR

# Remove the ore_mainnet file if it already exists
if [ -f "$DEST_DIR/ore_mainnet" ]; then
    echo "Removing existing ore_mainnet..."
    rm $DEST_DIR/ore_mainnet
fi
# Remove the ore_mainnet file if it already exists
if [ -f "$DEST_DIR/coal" ]; then
    echo "Removing existing coal..."
    rm $DEST_DIR/coal
fi
# Remove the ore_mainnet file if it already exists
if [ -f "$DEST_DIR/coalore" ]; then
    echo "Removing existing coalore..."
    rm $DEST_DIR/coalore
fi

# Download the files
echo "Downloading ore_mainnet..."
wget -O $DEST_DIR/ore $ORE_URL
wget -O $DEST_DIR/coal $COAL_URL
wget -O $DEST_DIR/coalore $COALORE_URL

# Create an empty id.json file
echo "Creating id.json..."
touch $DEST_DIR/id.json

# Updating permissions
chmod +x $DEST_DIR/ore
chmod +x $DEST_DIR/coal
chmod +x $DEST_DIR/coalore

echo "Setup complete!"
