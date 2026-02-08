#!/bin/bash
set -e

CONTAINER_NAME=flask
IMAGE=rathod2038/sample-python-flask-app:latest

echo "Stopping old container if exists..."
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

echo "Freeing port 5000 if occupied..."
sudo kill -9 $(sudo lsof -t -i:5000) 2>/dev/null || true

echo "Starting new container..."
docker run -d --name $CONTAINER_NAME -p 5000:5000 $IMAGE
