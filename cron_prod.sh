#!/bin/bash

# for prod


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
docker pull grayzone/postgresql

echo "@@. Create db container."

# add volume
# docker run --name postgresql -d -v /var/lib/pgsql:/var/lib/pgsql grayzone/postgresql

# init DB in command.
docker run --name postgresql -d -e 'DB_USER=screening' -e 'DB_PASS=123456' -e 'DB_NAME=screening'  grayzone/postgresql

echo "@@. Wait for db service is ready."
sleep 10

echo "@@. Create web container."
docker run --name screening --link postgresql -d -p 80:8080 screening --entrypoint=prod

# crontab script
# 0 8-18 * * * /home/workspace/go/src/github.com/grayzone/screening/cron_prod.sh > /tmp/logs/screening_$(date +\%Y\%m\%d_\%H\%M\%S).log 2>&1 &

