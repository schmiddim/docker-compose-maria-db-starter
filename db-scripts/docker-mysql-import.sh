#!/bin/bash
# Restore
source ../.env

cat ../db-dumps/backup.sql | docker exec -i  $DB_SERVICE_NAME  /usr/bin/mysql -uroot -p$MYSQL_PASSWORD  $MYSQL_DATABASE ;echo 'done'

