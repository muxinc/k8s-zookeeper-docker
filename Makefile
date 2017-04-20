VERSION=v2
PROJECT_ID=muxinc
PROJECT=gcr.io/${PROJECT_ID}

all: build

build:
	docker build --pull -t ${PROJECT}/k8s-zookeeper:${VERSION} .

push: build
	gcloud docker -- push ${PROJECT}/k8s-zookeeper:${VERSION}

.PHONY: all build push
