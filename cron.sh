#!/bin/bash

#delete all the containers
docker rm -f $(docker ps -a -q)

#delete untagged images
docker rmi -f $(docker images --filter dangling=true -q)


#pull the latest image
docker pull grayzone/screening
docker pull grayzone/postgresql

# launch
docker-compose up -d




#  0 * * * * /home/workspace/go/src/github.com/grayzone/screening/cron.sh > /tmp/logs/screening_$(date +\%Y\%m\%d_\%H\%M\%S).log 2>&1 &
