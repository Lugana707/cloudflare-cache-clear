FROM alpine:3.8
LABEL maintainer="lugana707@github"

RUN apk update && apk add bash curl
WORKDIR /src
ADD pipe.sh ./

ENTRYPOINT [ "./pipe.sh" ]
