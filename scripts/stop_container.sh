#!/bin/bash
set -e

echo "Stopping existing containers..."

CONTAINER_IDS=$(docker ps -aq)

if [ -n "$CONTAINER_IDS" ]; then
    docker rm -f $CONTAINER_IDS
    echo "Containers removed successfully."
else
    echo "No containers to stop."
fi
