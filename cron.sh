#!/bin/bash

# for dev

echo "@@. Delete all the containers"
docker ps -a -q | while read line 
do
	echo "remove container: ${line}"
	docker rm -f ${line}
done

echo "@@. Delete untagged images"
docker images --filter dangling=true -q | while read line
do 
	echo "remove image : ${line}"
	docker rmi -f ${line}
done

echo "@@. Pull the latest images"
docker pull grayzone/screening

echo "@@. Create web container."
docker run --name screening -d -p 80:8080 grayzone/screening 



# crontab script
# 0 8-18 * * * /home/workspace/go/src/github.com/grayzone/screening/cron.sh > /tmp/logs/screening_$(date +\%Y\%m\%d_\%H\%M\%S).log 2>&1 &
