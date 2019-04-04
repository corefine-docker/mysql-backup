#!/bin/bash

for line in `cat /usr/src/config.ini`
do
    eval "$line"
done

echo -e "start run backup: -h$HOST -u$USER -P$PORT -p$PASS --databases $DBS"
for db in $DBS
do
echo $(date '+%Y-%m-%d %H:%M:%S') start backup $db...
mysqldump -h"$HOST" -u"$USER" -p"$PASS" --databases $db > /data/$(date +%Y-%m-%d).sql
echo $(date '+%Y-%m-%d %H:%M:%S') finish backup $db!
done
