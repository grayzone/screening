#!/bin/bash

# delete existing containers
docker rm -f $(docker ps -a -q)

# delete existing images
docker rmi -f $(docker images -a -q)

cd ..
rm -rf docker 
git clone https://github.com/grayzone/docker.git

cd docker/centos
docker build -t grayzone/centos .

cd ../golang
docker build -t grayzone/golang .

cd ../beego
docker build -t grayzone/beego .

cd ../postgresql
sed -i 's/\r//' postgresql-setup.sh
sed -i 's/\r//' start_postgres.sh
docker build -t grayzone/postgresql .

cd ../../screening
docker build -t grayzone/screening .
