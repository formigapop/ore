#!/bin/bash

# Stop the ore process
pkill -f "coalore"
pkill -f "coal"
pkill -f "ore"

echo "All coal and ore mining processes have been stopped."
