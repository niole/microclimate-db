#!/bin/bash

echo $'Starting a mysql instance .. \n'

docker run \
--name db \
-v ./conf:/etc/mysql/conf.d \
-p 3306:3306 \
-e MYSQL_ROOT_PASSWORD=pw \
-e MYSQL_USER=niole \
-e MYSQL_PASSWORD=pw \
-e MYSQL_DATABASE=default \
-d mysql:8.0.22
