FROM node:11-alpine as builder
LABEL maintainer="Mark Ayers <mark@philoserf.com>"
RUN npm install --global dockerlint
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
