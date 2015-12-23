#!/bin/bash

# create DB user and database 
docker run --name postgresql -it -d -e 'DB_USER=screening' -e 'DB_PASS=123456' -e 'DB_NAME=screening' -p 5432:5432 grayzone/postgresql

