FROM node:11-alpine as builder
LABEL maintainer="Mark Ayers <mark@philoserf.com>"
ENV VER=0.3.9
RUN npm install --global dockerlint@${VER}
ENTRYPOINT [ "dockerlint" ]
CMD [ "--help" ]

# Deprecated in favor of hadolint/hadolint
