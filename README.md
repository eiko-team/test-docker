# test-docker
docker image to properly test the app


## building image
```bash
docker build -t eikoapp/test-docker .
docker push eikoapp/test-docker
```

## Testing the image
```bash
make test-build
goss a file /usr/local/go/bin/go
goss a command "go version"
goss a file /root/go/src/github.com/jstemmer/go-junit-report
goss a file /root/go/src/github.com/julienschmidt/httprouter
goss a file /root/go/src/cloud.google.com/go/datastore
goss a file /root/go/src/golang.org/x/crypto/bcrypt
goss a file /root/go/src/golang.org/x/lint/golint
goss a file /root/go/src/github.com/dgrijalva/jwt-go
goss a file /root/go/src/github.com/mmcloughlin/geohash
goss a file /root/go/src/github.com/algolia/algoliasearch-client-go
goss a file /usr/bin/gcc
goss a file /usr/bin/make
goss a file /usr/bin/git
goss a file /usr/bin/wget
goss a file /usr/bin/tar
goss a file /usr/bin/curl
```
Then exit and run `make test`

