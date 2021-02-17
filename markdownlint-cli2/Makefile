NAME:=docker.io/philoserf/markdownlint:latest
DATE:=$(shell date +%Y%m%d)

local:
	docker build --squash --label ${DATE} --tag ${NAME} .

publish: local
	docker login --username ${DOCKER_USER} --password ${DOCKER_PASS}
	docker push ${NAME}
