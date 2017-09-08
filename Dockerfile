FROM alpine:latest
MAINTAINER David Magnus Henriques <eorlbruder@magnus-henriques.de>

RUN apk add --update curl

RUN curl http://downloads.drone.io/release/linux/amd64/drone.tar.gz | tar zx
RUN install -t /usr/local/bin drone

RUN rm -rf /var/cache/apk/*

ENTRYPOINT ["drone"]
