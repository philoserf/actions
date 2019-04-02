FROM node:11-alpine as builder
LABEL maintainer="Mark Ayers <mark@philoserf.com>"
ENV VER=0.13.0
RUN npm install --global markdownlint-cli@${VER}
ENTRYPOINT [ "markdownlint" ]
CMD [ "--help" ]

# Example:
#
# docker run \
#   --volume $PWD:$PWD \
#   --workdir $PWD \
#   --interactive \
#   --tty \
#   --rm \
#   philoserf/markdownlint \
#     README.md
