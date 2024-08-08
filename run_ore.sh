#!/bin/bash

# Usage: ./run_ore.sh [--rpc <rpc_url>] [--priority-fee <fee>] [--threads <num_threads>]

# Default values
RPC_URL="https://api.mainnet-beta.solana.com"
PRIORITY_FEE=4000
THREADS=""

# Parse arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --rpc)
            RPC_URL=$2
            shift 2
            ;;
        --priority-fee)
            PRIORITY_FEE=$2
            shift 2
            ;;
        --threads)
            THREADS="--threads $2"
            shift 2
            ;;
        *)
            echo "Usage: $0 [--rpc <rpc_url>] [--priority-fee <fee>] [--threads <num_threads>]"
            exit 1
            ;;
    esac
done

# Path to keypair file
KEYPAIR_PATH="./id.json"

# Variables
ORE_EXEC="./ore_mainnet"
LOG_FILE="ore_mainnet.log"
CLAIM_LOG_FILE="ore_mainnet_claim.log"

# Start the ore process in the background
nohup $ORE_EXEC --rpc $RPC_URL --keypair $KEYPAIR_PATH mine --priority-fee $PRIORITY_FEE --buffer-time 2 $THREADS > $LOG_FILE 2>&1 &

# Get the PID of the ore process
echo $! > ore.pid
