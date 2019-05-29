# mysql-backup

docker run --link mysql:mysql --name mysql-backup -e DBS='aaa bb' -e PASS='pass' -v /data/docker_volume/mysql_backup:/data -d fine/mysql-backup

do backup: docker start mysql-backup

envs:
- HOST: default mysql
- USER: default root
- PORT: default 3306 
- PASS: no default
- DBS: no default
