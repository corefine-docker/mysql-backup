#!/bin/bash
set -e
exec /usr/src/mysql_backup.sh
exec "$@"
