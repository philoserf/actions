PANDOC_VER:=2.11.4
IMAGE_VER:=1
VERSION:=${PANDOC_VER}-${IMAGE_VER}
BASE:=philoserf/pandoc

local:
	docker build --rm --force-rm --tag pandoc:local .

publish: local
	docker login --username ${DOCKER_USER} --password ${DOCKER_PASS}
	docker tag pandoc:local ${BASE}:${VERSION}
	docker tag pandoc:local ${BASE}:latest
	docker push ${BASE}:${VERSION}
	docker push ${BASE}:latest
