#!/bin/bash

source ../.env
docker exec  $DB_SERVICE_NAME /usr/bin/mysqldump -uroot -p$MYSQL_PASSWORD $MYSQL_DATABASE -r /root/backup.sql
docker cp $DB_SERVICE_NAME:/root/backup.sql  ../db-dumps/backup.sql
