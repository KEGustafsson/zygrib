#!/bin/bash
docker build -t opencpn .
docker run --name opencpn --entrypoint opencpn opencpn &
sleep 10
mkdir -p $PWD/config
docker cp opencpn:/root/.opencpn/. $PWD/config
docker stop opencpn
docker rm opencpn
#docker-compose up -d

