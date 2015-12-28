#!/bin/bash

#delete all the containers
docker rm -f $(docker ps -a -q)

#delete untagged images
docker rmi -f $(docker images --filter dangling=true -q)


#pull the latest image
docker pull grayzone/screening


# launch
docker run -d -p 80:8080 --name screening grayzone/screening




#  0 * * * * /home/workspace/go/src/github.com/grayzone/screening/cron.sh > /tmp/logs/screening_$(date +\%Y\%m\%d_\%H\%M\%S).log 2>&1 &
