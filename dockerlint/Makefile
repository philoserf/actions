DOCKERLINT_VER:=0.3.9
IMAGE_VER:=1
VERSION:=${DOCKERLINT_VER}-${IMAGE_VER}
BASE:=philoserf/dockerlint

local:
	docker build --rm --force-rm --tag dockerlint:local .

publish: local
	docker login --username ${D_USER} --password ${D_PASS}
	docker tag dockerlint:local ${BASE}:${VERSION}
	docker tag dockerlint:local ${BASE}:latest
	docker push ${BASE}:${VERSION}
	docker push ${BASE}:latest
	docker login --username ${Q_USER} --password ${Q_PASS} quay.io
	docker tag dockerlint:local quay.io/${BASE}:${VERSION}
	docker tag dockerlint:local quay.io/${BASE}:latest
	docker push quay.io/${BASE}:${VERSION}
	docker push quay.io/${BASE}:latest

