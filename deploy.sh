#!/usr/bin/env bash

echo "Pulling"
git pull

echo "building"
docker-compose up -d --build
