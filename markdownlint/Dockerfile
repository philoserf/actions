FROM node:11.5-alpine as builder
LABEL maintainer "Mark Ayers <mark@philoserf.com>"
RUN npm install --global markdownlint-cli
ENTRYPOINT [ "markdownlint" ]
CMD [ "--help" ]
