FROM alpine:3.8
MAINTAINER lugana707

RUN apk update && apk add bash
ADD ./pipe.sh /

RUN [ "/pipe.sh" ]
