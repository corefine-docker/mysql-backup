#!/bin/bash

if [ -z "$USER" ] ;then
    USER="root"
fi
if [ -z "$HOST" ] ;then
    HOST="mysql"
fi
if [ -z "$PORT" ] ;then
    PORT="3306"
fi

echo -e "$(date '+%Y-%m-%d %H:%M:%S') backup work: -h$HOST -u$USER -P$PORT -p$PASS --databases $DBS"
for db in $DBS
do
    echo $(date '+%Y-%m-%d %H:%M:%S') start backup $db...
    mysqldump -h"$HOST" -u"$USER" -p"$PASS" --databases $db > /data/$db-$(date +%Y-%m-%d).sql
    echo $(date '+%Y-%m-%d %H:%M:%S') finish backup $db!
done
