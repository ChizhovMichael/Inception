FROM alpine:3.13
RUN apk update && apk upgrade

# bash and rc-service
RUN apk add bash openrc redis

COPY ./conf/redis.conf /etc/redis.conf

EXPOSE 6379

COPY ./tools/start.sh /home/start.sh
RUN chmod 755 /home/start.sh
ENTRYPOINT ["/home/start.sh"]