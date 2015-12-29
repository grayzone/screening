#!/bin/bash

echo "1. Delete all the containers"
docker rm -f $(docker ps -a -q)

echo "2. Delete untagged images"
docker rmi -f $(docker images --filter dangling=true -q)


echo "3. Pull the latest images"
docker pull grayzone/screening
docker pull grayzone/postgresql

echo "4. Create db container."
docker run --name postgresql -d -v /var/lib/pgsql/data:/var/lib/pgsql/data grayzone/postgresql

echo "sleep 5 seconds to wait for db service is ready."
sleep 5

echo "5. Create web container."
docker run --name screening --link postgresql -d -p 80:8080 grayzone/screening




#  0 * * * * /home/workspace/go/src/github.com/grayzone/screening/cron.sh > /tmp/logs/screening_$(date +\%Y\%m\%d_\%H\%M\%S).log 2>&1 &
