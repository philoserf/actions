FROM alpine:3

LABEL "maintainer"="Mark Ayers <mark@philoserf.com>"
LABEL "repository"="https://github.com/philoserf/actions"
LABEL "homepage"="https://github.com/philoserf/actions/tree/master/pandoc"
LABEL "com.github.actions.name"="pandoc"
LABEL "com.github.actions.description"="https://pandoc.org"
LABEL "com.github.actions.color"="yellow"
LABEL "com.github.actions.icon"="check"

WORKDIR /var/tmp
ENV VER 2.16.2
ENV URL https://github.com/jgm/pandoc/releases/download/${VER}/pandoc-${VER}-linux-amd64.tar.gz
ADD ${URL} pandoc.tgz
RUN tar -xzf pandoc.tgz \
  && rm -rf pandoc.tgz \
  && mv pandoc-${VER} /pandoc

ENTRYPOINT ["/pandoc"]
CMD ["--help"]

# Example:
#
# docker run \
#   --volume $PWD:$PWD \
#   --workdir $PWD \
#   --interactive \
#   --tty \
#   --rm \
#   philoserf/pandoc \
#     --from=markdown \
#     --to=gfm \
#     --wrap=none \
#     --output=README.md \
#     README.md
