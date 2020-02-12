MARKDOWNLINT_VER:=0.22.0
IMAGE_VER:=1
VERSION:=${MARKDOWNLINT_VER}-${IMAGE_VER}
BASE:=philoserf/markdownlint

local:
	docker build --rm --force-rm --tag markdownlint:local .

publish: local
	docker login --username ${DOCKER_USER} --password ${DOCKER_PASS}
	docker tag markdownlint:local ${BASE}:${VERSION}
	docker tag markdownlint:local ${BASE}:latest
	docker push ${BASE}:${VERSION}
	docker push ${BASE}:latest
