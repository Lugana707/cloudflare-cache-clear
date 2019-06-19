FROM alpine:3.8
MAINTAINER lugana707

RUN apk update && apk add bash curl
ADD ./pipe.sh /

RUN [ "/pipe.sh" ]
