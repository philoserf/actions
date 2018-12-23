test:
	find . -type f -name Dockerfile -exec dockerlint {} \;

buildall:
	find . -type f -name Dockerfile -maxdepth 2 -print | cut -f 2 -d "/" | xargs -n1 -I{} docker build --rm --force-rm --tag test:temp {}
