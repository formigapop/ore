#!/bin/bash
# Usage: ./run_ore.sh [--rpc <rpc_url>] [--priority-fee <fee>] [--cores <num_cores>] [--jito]

# Default values
RPC_URL="https://api.mainnet-beta.solana.com"
PRIORITY_FEE=4
CORES=""
JITO=""

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
        --jito)
            JITO="--jito"
            shift 1
            ;;
        --cores)
            CORES="--cores $2"
            shift 2
            ;;
        *)
            echo "Usage: $0 [--rpc <rpc_url>] [--priority-fee <fee>] [--cores <num_cores>] [--jito]"
            exit 1
            ;;
    esac
done

# Path to keypair file
KEYPAIR_PATH="./id.json"

# Variables
ORE_EXEC="./coalore"
LOG_FILE="coalore.log"

# Start the ore process in the background
nohup $ORE_EXEC --rpc $RPC_URL --keypair $KEYPAIR_PATH mine --merged ore --priority-fee $PRIORITY_FEE $CORES $JITO > $LOG_FILE 2>&1 &

# Get the PID of the ore process
echo $! > coalore.pid
