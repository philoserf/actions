IMAGE_VER:=1
VERSION:=${IMAGE_VER}
BASE:=philoserf/gh-pages

local:
	docker build --rm --force-rm --tag gh-pages:local .

publish: local
	docker login --username ${DOCKER_USER} --password ${DOCKER_PASS}
	docker tag gh-pages:local ${BASE}:${VERSION}
	docker tag gh-pages:local ${BASE}:latest
	docker push ${BASE}:${VERSION}
	docker push ${BASE}:latest
