FROM centos:7
RUN yum install -y mysql
RUN mkdir /data

ADD mysql_backup.sh /usr/src/
ADD ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
