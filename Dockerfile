FROM gliderlabs/alpine:3.3
MAINTAINER Paul Howell

EXPOSE 514 514/udp

VOLUME /var/log

RUN apk add --update rsyslog; rm -rf /var/cache/apk/*

CMD ["rsyslogd", "-n"]
