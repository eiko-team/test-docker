FROM ubuntu:19.10

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git
RUN apt-get install -y wget
RUN apt-get install -y tar
RUN apt-get install -y curl
RUN apt-get install -y make
RUN apt-get install -y gcc
RUN apt-get clean

RUN wget -q https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz
RUN tar -C /tmp -xf /go1.13.4.linux-amd64.tar.gz
RUN mv /tmp/go /usr/local
ENV PATH="/usr/local/go/bin:${PATH}"

RUN go get -u github.com/jstemmer/go-junit-report
RUN go get -u github.com/julienschmidt/httprouter
RUN go get -u cloud.google.com/go/datastore
RUN go get -u golang.org/x/crypto/bcrypt
RUN go get -u golang.org/x/lint/golint
RUN go get -u github.com/dgrijalva/jwt-go
RUN go get -u github.com/mmcloughlin/geohash
RUN mkdir -p /root/go/src/tmp && \
    cd /root/go/src/tmp && \
    go mod init tmp && \
    go get github.com/algolia/algoliasearch-client-go/v3@v3.4.0
RUN rm -fr /var/lib/api/lists/*

RUN cp /root/go/bin/* /usr/local/bin/
