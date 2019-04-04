FROM fine/cron
ADD mysql_backup.sh /usr/src/
ADD config.ini /usr/src/
RUN yum install -y mysql
