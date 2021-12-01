FROM node:alpine

LABEL "maintainer"="Mark Ayers <mark@philoserf.com>"
LABEL "repository"="https://github.com/philoserf/actions"
LABEL "homepage"="https://philoserf.github.io/actions"

LABEL "com.github.actions.name"="markdownlint"
LABEL "com.github.actions.description"="using markdownlint-cli2"
LABEL "com.github.actions.color"="white"
LABEL "com.github.actions.icon"="check"

RUN npm install --global markdownlint-cli2@0.3.2

ENTRYPOINT ["markdownlint-cli2"]
