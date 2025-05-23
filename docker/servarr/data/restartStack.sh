#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

echo "$(date '+%Y-%m-%d %H:%M:%S') - Starting restartStack.sh for Servarr..."

DOCKER_COMPOSE_FILE="$HOME/servarr/compose.yml"
DOCKER_DOWN="docker compose down"
DOCKER_UP="docker compose up -d"

# Check if docker-compose file exists
if [ ! -f "$DOCKER_COMPOSE_FILE" ]; then
    echo "Error: compose.yml not found at $DOCKER_COMPOSE_FILE"
    exit 1
fi

cd ~/servarr

echo "$(date '+%Y-%m-%d %H:%M:%S') - Stopping containers..."
$DOCKER_DOWN
if [ $? -ne 0 ]; then
    echo "Error: Failed to stop containers"
    exit 1
fi

echo "Waiting for containers to stop..."
sleep 15

echo "Starting containers..."
$DOCKER_UP
if [ $? -ne 0 ]; then
    echo "Error: Failed to start containers"
    exit 1
fi

echo "$(date '+%Y-%m-%d %H:%M:%S') - Containers restarted successfully"
