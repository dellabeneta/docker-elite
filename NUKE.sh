#!/bin/bash

# Stop all running containers
docker stop $(docker ps -aq) 2>/dev/null

# Remove all containers
docker rm -f $(docker ps -aq) 2>/dev/null

# Remove all images
docker image rm -f $(docker image ls -aq) 2>/dev/null

# Remove all volumes
docker volume rm -f $(docker volume ls -q) 2>/dev/null

# Remove all networks
docker network rm $(docker network ls -q) 2>/dev/null

# Prune all unused builders
docker builder prune -a -f