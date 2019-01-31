FROM node:11.8-alpine as builder
LABEL maintainer="Mark Ayers <mark@philoserf.com>"
RUN npm install --global markdownlint-cli
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
