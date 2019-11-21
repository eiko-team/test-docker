DKNAME = eikoapp/test-docker
DKTAG = $(shell git rev-parse --short HEAD)

all: build tag push

build:
	docker build -t $(DKNAME) .

tag:
	docker tag $(DKNAME) "$(DKNAME):$(DKTAG)"

push:
	docker push $(DKNAME)
	docker push $(DKNAME):$(DKTAG)
