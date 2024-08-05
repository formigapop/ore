#!/bin/bash

# Usage: ./run_ore.sh [devnet|mainnet]

if [ "$1" == "devnet" ]; then
    ORE_EXEC="./ore_devnet"
    RPC_URL="https://api.devnet.solana.com"
    LOG_FILE="ore_devnet.log"
    CLAIM_LOG_FILE="ore_devnet_claim.log"
elif [ "$1" == "mainnet" ]; then
    ORE_EXEC="./ore_mainnet"
    RPC_URL="https://rpc.macaco.club"
    LOG_FILE="ore_mainnet.log"
    CLAIM_LOG_FILE="ore_mainnet_claim.log"
else
    echo "Usage: $0 [devnet|mainnet]"
    exit 1
fi

# Path to keypair file
KEYPAIR_PATH="./id.json"

# Start the ore process in the background
nohup $ORE_EXEC --rpc $RPC_URL --keypair $KEYPAIR_PATH mine > $LOG_FILE 2>&1 &

# Get the PID of the ore process
echo $! > ore.pid
