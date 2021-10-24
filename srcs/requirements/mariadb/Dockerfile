FROM alpine:3.13
RUN apk update && apk upgrade

RUN	apk add mysql mysql-client perl supervisor --no-cache
# bash and rc-service
RUN apk add bash openrc

RUN mkdir -p /run/mysqld
# create mysql datadir
RUN	mkdir -p /var/lib/mysql
COPY ./conf/my.cnf /etc/mysql/
RUN	rm -rf /etc/my.cnf*
# Supervisord
COPY ./conf/supervisord.conf /etc/supervisord.conf

COPY ./tools/docker-entrypoint.sh /root/init.sh
RUN chmod 755 /root/init.sh
ENTRYPOINT ["/root/init.sh"]

EXPOSE 3306 33060
CMD ["mysqld"]