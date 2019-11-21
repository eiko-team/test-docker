DKNAME = eikoapp/test-docker
DKTAG = $(shell git rev-parse --short HEAD)

all: build tag push

build:
	docker build -t $(DKNAME) .

tag:
	docker tag $(DKNAME) "$(DKNAME):$(DKTAG)"

push:
	docker push $(DKNAME):latest
	docker push $(DKNAME):$(DKTAG)

test-build:
	@dgoss edit -ti eikoapp/test-docker:latest bash

test:
	@dgoss run -ti eikoapp/test-docker:latest bash
