FROM node:13-alpine3.11

LABEL "maintainer"="Mark Ayers <mark@philoserf.com>"
LABEL "repository"="https://github.com/philoserf/actions"
LABEL "homepage"="https://github.com/philoserf/actions/tree/master/markdownlint"
LABEL "com.github.actions.name"="markdownlint"
LABEL "com.github.actions.description"="https://github.com/DavidAnson/markdownlint"
LABEL "com.github.actions.color"="yellow"
LABEL "com.github.actions.icon"="check"

ENV VER=0.22.0
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
