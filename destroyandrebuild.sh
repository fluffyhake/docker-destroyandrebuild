#!/bin/bash

docker kill $(docker ps -q)
sleep 5
docker rm $(docker ps -a -q)

docker system prune -a

docker-compose up -d
