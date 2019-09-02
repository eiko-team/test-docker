FROM ubuntu:19.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install golang -y || snap install go --classic
RUN apt-get install -y git

# Installing go-junit-report to make xml output of `go test`
RUN go get -u github.com/jstemmer/go-junit-report
RUN cp /root/go/bin/go-junit-report /usr/local/bin/
