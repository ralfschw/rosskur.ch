#!/bin/bash

docker build -t rosskur.ch .
docker stop rosskur.ch
docker rm rosskur.ch
docker-compose -f ~/projects/traefik-config/docker-compose.yml up -d rosskur.ch
docker image prune --filter "dangling=true" -f
