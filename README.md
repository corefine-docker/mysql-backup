# mysql-backup

docker run --link mysql:mysql -name mysql-backup -e DBS='aaa bb' -e PASS='jk@2019' -v /data/docker_volume/mysql_backup:/data -d fine/mysql-backup

do backup: docker start mysql-backup
