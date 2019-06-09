PANDOC_VER:=2.7.2
IMAGE_VER:=2
VERSION:=${PANDOC_VER}-${IMAGE_VER}
BASE:=philoserf/pandoc

local:
	docker build --rm --force-rm --tag pandoc:local .

publish: local
	docker login --username ${D_USER} --password ${D_PASS}
	docker tag pandoc:local ${BASE}:${VERSION}
	docker tag pandoc:local ${BASE}:latest
	docker push ${BASE}:${VERSION}
	docker push ${BASE}:latest
	docker login --username ${Q_USER} --password ${Q_PASS} quay.io
	docker tag pandoc:local quay.io/${BASE}:${VERSION}
	docker tag pandoc:local quay.io/${BASE}:latest
	docker push quay.io/${BASE}:${VERSION}
	docker push quay.io/${BASE}:latest

