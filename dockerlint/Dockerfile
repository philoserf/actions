FROM node:11-alpine as builder
LABEL maintainer="Mark Ayers <mark@philoserf.com>"
ENV VER=0.3.11
RUN npm install --global dockerlint@{VER}
ENTRYPOINT [ "dockerlint" ]
CMD [ "--help" ]

# Example:
#
# docker run \
#   --volume $PWD:$PWD \
#   --workdir $PWD \
#   --interactive \
#   --tty \
#   --rm \
#   philoserf/dockerlint \
#     Dockerfile
