#!/bin/bash
set -e

if [[ "$USER" ]] ;then
    sed -i 's/USER="[0-9.]*"/USER="'$USER'"/' /usr/src/config.ini
fi
if [[ "$HOST" ]] ;then
    sed -i 's/HOST="[0-9.]*"/HOST="'$HOST'"/' /usr/src/config.ini
fi
if [[ "$PORT" ]] ;then
    sed -i 's/PORT="[0-9.]*"/PORT="'$PORT'"/' /usr/src/config.ini
fi
if [[ "$CRON" ]] ;then
    sed -i 's/CRON="[0-9.]*"/CRON="'$CRON'"/' /usr/src/config.ini
fi

for line in `cat /usr/src/config.ini`
do
    eval "$line"
done

echo -e "at $CRON exec job: mysqldump -h$HOST -u$USER -P$PORT -p$PASS --databases $DBS"
echo "$CRON /usr/src/mysql_backup.sh" > /usr/src/jobs
# exec "$@"
