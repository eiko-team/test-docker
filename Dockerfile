FROM ubuntu:19.04

RUN apt-get update
RUN (apt-get install -y golang || snap install go --classic)
RUN apt-get install -y git
RUN go get -u github.com/jstemmer/go-junit-report
RUN go get -u github.com/julienschmidt/httprouter
RUN go get -u cloud.google.com/go/datastore
RUN go get -u golang.org/x/crypto/bcrypt
RUN go get -u golang.org/x/lint/golint
RUN go get -u github.com/dgrijalva/jwt-go
RUN apt-get clean
RUN rm -fr /var/lib/api/lists/*

RUN cp /root/go/bin/* /usr/local/bin/
