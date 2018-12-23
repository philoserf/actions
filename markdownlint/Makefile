MARKDOWNLINT_VER:=0.5.0
IMAGE_VER:=1
VERSION:=${MARKDOWNLINT_VER}-${IMAGE_VER}
BASE:=philoserf/markdownlint

local:
	docker build --rm --force-rm --tag markdownlint:local .

publish: local
	docker login --username ${D_USER} --password ${D_PASS}
	docker tag markdownlint:local ${BASE}:${VERSION}
	docker tag markdownlint:local ${BASE}:latest
	docker push ${BASE}:${VERSION}
	docker push ${BASE}:latest
	docker login --username ${Q_USER} --password ${Q_PASS} quay.io
	docker tag markdownlint:local quay.io/${BASE}:${VERSION}
	docker tag markdownlint:local quay.io/${BASE}:latest
	docker push quay.io/${BASE}:${VERSION}
	docker push quay.io/${BASE}:latest

