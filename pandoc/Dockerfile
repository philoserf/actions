FROM alpine:3.9 as builder

WORKDIR /var/tmp
ENV VER 2.7.1
ENV URL https://github.com/jgm/pandoc/releases/download/${VER}/pandoc-${VER}-linux.tar.gz
ADD ${URL} pandoc.tgz
RUN tar -xzf pandoc.tgz \
  && mv pandoc-${VER} pandoc

FROM alpine:3.9 as runner
LABEL maintainer="Mark Ayers <mark@philoserf.com>"

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
