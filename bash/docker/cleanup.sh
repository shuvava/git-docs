#!/usr/bin/env bash

echo "cleanup all docker files"
docker rm -f $(docker ps -a -q)
docker image prune -a -f
docker volume rm $(docker volume ls -q)