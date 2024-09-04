#!/bin/sh
echo "Stopping all containers"
docker stop $(docker ps -a -q)

echo "Removing unused containers"
docker rm $(docker ps -a -q)

echo "Removing unused networks"
docker network prune -f

echo "Removing unused images"
docker image prune -f
