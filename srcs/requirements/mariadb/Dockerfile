FROM alpine:3.12
RUN apk update && apk upgrade

RUN	apk add mysql mysql-client --no-cache
# bash and rc-service
RUN apk add bash openrc

RUN mkdir -p /run/mysqld
# create mysql datadir
RUN	mkdir -p /var/lib/mysql
COPY ./conf/my.cnf /etc/mysql/
# COPY ./tools/init /root/init
RUN	rm -rf /etc/my.cnf*

COPY ./tools/docker-entrypoint.sh /root/init.sh
RUN chmod 755 /root/init.sh
ENTRYPOINT ["/root/init.sh"]

EXPOSE 3306 33060
CMD ["mysqld"]