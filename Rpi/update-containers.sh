#!/usr/bin/env bash

# Stop all containers
docker-compose down

# Update all images
docker-compose pull

# Start all containers
docker-compose up -d
