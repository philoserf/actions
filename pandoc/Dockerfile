FROM alpine:3.9 as builder

WORKDIR /var/tmp
ENV VER 2.7.2
ENV URL https://github.com/jgm/pandoc/releases/download/${VER}/pandoc-${VER}-linux.tar.gz
ADD ${URL} pandoc.tgz
RUN tar -xzf pandoc.tgz \
  && mv pandoc-${VER} pandoc

FROM alpine:3.9 as runner

LABEL "maintainer"="Mark Ayers <mark@philoserf.com>"
LABEL "repository"="https://github.com/philoserf/dockerfiles"
LABEL "homepage"="https://github.com/philoserf/dockerfiles/tree/master/pandoc"
LABEL "com.github.actions.name"="pandoc"
LABEL "com.github.actions.description"="https://pandoc.org"
LABEL "com.github.actions.color"="yellow"
LABEL "com.github.actions.icon"="check"

COPY --from=builder /var/tmp/pandoc/bin/ /usr/bin/
COPY --from=builder /etc/ssl/cert.pem /etc/ssl/certs/ca-certificates.crt

ENTRYPOINT ["pandoc"]
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
