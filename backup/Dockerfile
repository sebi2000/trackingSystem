FROM alpine:latest

RUN apk update
RUN apk add mongodb-tools

RUN ["mkdir","/backup"]

COPY scripts/backup.sh /opt/backup.sh

RUN ["chmod","+x","/opt/backup.sh"]

COPY config/cronjobs /etc/crontabs/root

CMD ["crond", "-f", "-d", "8"]


